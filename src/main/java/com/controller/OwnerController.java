package com.controller;


import com.bean.ResponseResult;
import com.bean.TOwner;
import com.bean.TRentget;
import com.bean.TUser;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mappers.TUserMapper;
import com.service.IOwnerService;
import com.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/owner")
public class OwnerController {

    @Autowired
    private IOwnerService ownerService;

    @Autowired
    private IUserService userService;

    /*
     * 表单提交日期绑定
     */
    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        //转换日期 注意这里的转化要和传进来的字符串的格式一直 如2015-9-9 就应该为yyyy-MM-dd
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));// CustomDateEditor为自定义日期编辑器
    }


    @RequestMapping("/pushRequestOwner")
    public String pushRequestOwner() {
        return "request_ownerInfo";
    }


    @RequestMapping("/findOwnerInfo")
    public String findOwnerInfo() {
        return "ownerInfo";
    }


    @RequestMapping("/addRequestOwner")
    public String addRequestOwner(
            @RequestParam("upload") MultipartFile upload,
            @RequestParam("ownerName") String ownerName,
            @RequestParam("ownerIdcard") String ownerIdcard,
            @RequestParam("requestDesc") String requestDesc,
            HttpServletRequest request,
            Model model,
            TOwner owner) throws Exception {
        System.out.println(upload);
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

        HttpSession session = request.getSession();
        TUser user = (TUser) session.getAttribute("user");
        int i = 0;
        owner.setOwnerIdcard(ownerIdcard);
        owner.setOwnerName(ownerName);
        owner.setOwnerRoomPhoto(fileName);
        owner.setRequestDesc(requestDesc);
        if (user != null) {
            owner.setOwnerUserId(user.getId());
        }
        if (ownerIdcard != null && !ownerIdcard.equals(" ") && ownerName != null && !ownerName.equals(" ") && fileName != null && !fileName.equals(" ") && requestDesc != null && !requestDesc.equals(" ")) {
            i = ownerService.addRequestOwner(owner);
        }

        if (i != 0) {
            return "requestSuccess";
        }

        return "request_ownerInfo";
    }

    /**
     * 根据id查询
     *
     * @param ownerId
     * @param model
     * @return
     */
    @RequestMapping("/findById/{ownerId}")
    @ResponseBody
    public TOwner findOwnerById(@PathVariable Integer ownerId, HttpServletRequest request, Model model) throws Exception {
        if (ownerId != null && !ownerId.equals(" ")) {
            TOwner findByid = ownerService.findByid(ownerId);
            System.out.println(findByid);
            model.addAttribute("owner", findByid);
            HttpSession session = request.getSession();
            session.setAttribute("ownerInfo", findByid);
            return findByid;
        }
        return null;
    }


    /**
     * 申请房东管理
     *
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/findAllOwner")
    public String findAllRentget(
            @RequestParam(value = "Info", required = false) String Info,
            @RequestParam(value = "userName", required = false) String userName,
            @RequestParam(value = "getStatus", required = false) Integer getStatus,
            @RequestParam(value = "ownerIssuccess", required = false) Integer ownerIssuccess,
            @RequestParam(value = "ownerName", required = false) String ownerName,
            @RequestParam(value = "ownerIdcard", required = false) String ownerIdcard,
            @RequestParam(value = "dateStart", required = false) Date dateStart,
            @RequestParam(value = "finalTime", required = false) Date finalTime,
            @RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
            @RequestParam(value = "pageSize", defaultValue = "16") Integer pageSize,
            Model model, HttpServletRequest request) throws Exception {

        Map<String, Object> map = new HashMap<String, Object>();
        SimpleDateFormat smf = new SimpleDateFormat();
        if (dateStart != null && !dateStart.equals("") && finalTime != null && !finalTime.equals("")) {

            String startTime = smf.format(dateStart);
            String endTime = smf.format(finalTime);
            map.put("startTime", startTime);
            map.put("endTime", endTime);

        }

        if (getStatus != null) {
            String statu = getStatus.toString();
            map.put("mStatus", statu);
        }
        if (ownerIssuccess != null) {
            String Issuccess = ownerIssuccess.toString();
            map.put("ownerIssuccess", Issuccess);
        }
        if (userName != null) {
            map.put("userName", userName);
        }
        if (ownerName != null) {
            map.put("ownerName", ownerName);
        }
        if (ownerIdcard != null) {
            map.put("ownerIdcard", ownerIdcard);
        }
        if (Info != null) {
            map.put("Info", Info);
        }

        PageHelper.startPage(pageNo, pageSize);
        List<TOwner> owners = ownerService.selectAllByParams(map);
        PageInfo<TOwner> page = new PageInfo<TOwner>(owners, 3);
        for (TOwner rentget : owners) {
            System.out.println("------------------>>>>" + rentget);
        }
        model.addAttribute("pageOwnerInfo", page);

        return "list_Owner";
    }

    //管理修改信息
    @RequestMapping("/updateManagerownerInfo")
    @ResponseBody
    public ResponseResult updateManagerownerInfo(
            @RequestParam("ownerId") Integer ownerId,
            @RequestParam("ownerName") String ownerName,
            @RequestParam("ownerIdcard") String ownerIdcard,
            @RequestParam("requestDesc") String requestDesc,
            @RequestParam("mStatus") Integer mStatus,
            TOwner owner,
            Model model) throws Exception {
        ResponseResult rr = new ResponseResult();
        if (ownerId != null) {
            owner.setOwnerId(ownerId);
            owner.setOwnerName(ownerName);
            owner.setRequestDesc(requestDesc);
            owner.setOwnerStatus(mStatus);
            owner.setOwnerIdcard(ownerIdcard);
            int i = ownerService.updateManagerownerInfo(owner);
            if (i != 0) {
                TOwner findByid = ownerService.findByid(ownerId);
                model.addAttribute("owner", findByid);
                rr.setState(1);
                rr.setMessage("修改成功");
            } else {
                rr.setState(0);
                rr.setMessage("修改失败");
            }

        } else {
            rr.setState(0);
            rr.setMessage("修改失败");
        }

        return rr;
    }


    //同意审核
    @RequestMapping("/successInfo")
    @ResponseBody
    public ResponseResult successInfo(
            @RequestParam("ownerId") Integer ownerId,
            @RequestParam("uid") Integer uid,
            @RequestParam("ownerIdcard") String ownerIdcard,
            TOwner owner,
            TUser user,
            Model model) throws Exception {
        ResponseResult rr = new ResponseResult();
        if (ownerId != null && uid != null) {
            owner.setOwnerId(ownerId);
            owner.setOwnerIssuccess(1);
            owner.setOwnerStatus(1);
            int i = ownerService.updateManagerownerInfo(owner);
            user.setId(uid);
            user.setIdcard(ownerIdcard);
            int j = userService.updateUserInfo(user);
            if (i != 0 && j != 0) {
                rr.setState(1);
                rr.setMessage("操作成功");
            } else {
                rr.setState(0);
                rr.setMessage("操作失败");
            }

        } else {
            rr.setState(0);
            rr.setMessage("操作失败");
        }

        return rr;
    }

    //拒绝/拒绝审核
    @RequestMapping("/falseInfo")
    @ResponseBody
    public ResponseResult falseInfo(
            @RequestParam("ownerId") Integer ownerId,
            @RequestParam("ownerIssuccess") Integer ownerIssuccess,
            TOwner owner,
            Model model) throws Exception {
        ResponseResult rr = new ResponseResult();
        if (ownerId != null) {
            owner.setOwnerId(ownerId);
            owner.setOwnerIssuccess(ownerIssuccess);
            owner.setOwnerStatus(1);
            int i = ownerService.updateManagerownerInfo(owner);
            if (i != 0) {
                rr.setState(1);
                rr.setMessage("操作成功");
            } else {
                rr.setState(0);
                rr.setMessage("操作失败");
            }

        } else {
            rr.setState(0);
            rr.setMessage("操作失败");
        }

        return rr;
    }


}
