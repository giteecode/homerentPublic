package com.controller;

import com.bean.ResponseResult;
import com.bean.TUser;
import com.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/upload")
public class UploadController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/uploadHardIcon")
    @ResponseBody
    public ResponseResult fileupload(HttpServletRequest request, @RequestParam("upload") MultipartFile upload, TUser user) {
        ResponseResult rr = new ResponseResult();
        String path = request.getSession().getServletContext().getRealPath("/upload/");
        //String path = "F:\\idea_workspace\\love-Home-Rent\\src\\main\\webapp\\upload\\";
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }
        System.out.println("-------------------->>>>" + upload);
        String fileName = upload.getOriginalFilename();
        String uuid = UUID.randomUUID().toString().replace("-", "");
        fileName = uuid + ".jpg";
        try {
            upload.transferTo(new File(path, fileName));
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        TUser newUser = ((TUser) request.getSession().getAttribute("user"));
        Integer id = newUser.getId();
        if (id != null) {
            user.setId(id);
            user.setHardIcon(fileName);
            try {
                userService.updateUserInfo(user);
                TUser userById = userService.findUserById(id);
                HttpSession session = request.getSession();
                session.setAttribute("user", userById);
                rr.setMessage("修改头像成功");
                rr.setState(1);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            rr.setMessage("修改头像失败");
            rr.setState(0);
        }

        return rr;
    }

}
