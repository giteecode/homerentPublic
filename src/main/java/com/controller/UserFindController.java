package com.controller;

import com.bean.ResponseResult;
import com.bean.TUser;
import com.service.IMessageService;
import com.service.IRentGetService;
import com.service.IRentOutService;
import com.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * 这是用户与房屋出租、求租以及留言三张表关联的
 */
@Controller
@RequestMapping("userFind")
public class UserFindController {

    @Autowired
    private IUserService userService;
    @Autowired
    private IRentGetService rentGetService;
    @Autowired
    private IRentOutService rentOutService;
    @Autowired
    private IMessageService messageService;

    /**
     * 根据id查询：显示个人求租信息
     *
     * @param userId
     * @param model
     * @return
     */
    @RequestMapping("/findId/{userId}")
    public String findId(@PathVariable Integer userId, Model model) throws Exception {
        if (userId != null && !userId.equals(" ")) {
            TUser userById = userService.findById(userId);
            model.addAttribute("userRentGetByid", userById);
        }

        return "userRentGet";
    }

    /**
     * 根据id查询：显示留言信息
     *
     * @param userId
     * @param model
     * @return
     */
    @RequestMapping("/findUserMessageById/{userId}")
    public String findUserMessageById(@PathVariable Integer userId, Model model) throws Exception {
        if (userId != null && !userId.equals(" ")) {
            TUser userById = userService.findById2Message(userId);
            System.out.println(userById);
            model.addAttribute("userMessageByid", userById);
        }

        return "userMessage";
    }


    /**
     * 显示个人中心
     *
     * @return
     */
    @RequestMapping("/toShowUserCenter/{userId}")
    public String toShowUserCenter(@PathVariable Integer userId, Model model) throws Exception {
        if (userId != null && !userId.equals(" ")) {
            TUser userById = userService.findById2RentOut(userId);
            model.addAttribute("userRentOutByid", userById);
        }
        return "ucenter";
    }

    /**
     * 根据id删除求租
     *
     * @param ids
     * @return
     */
    @RequestMapping("/deleteRentGet/{ids}")
    @ResponseBody
    public ResponseResult deleteRentGet(@PathVariable("ids") String ids) throws Exception {
        ResponseResult rr = new ResponseResult();
        // 刪除
        System.out.println(ids);
        if (ids != null) {
            System.out.println("---------------->>" + ids);
            Integer id = Integer.parseInt(ids);
            rentGetService.updateRentGet(id);
            rr.setState(1);
            rr.setMessage("删除成功！");
        } else {
            rr.setState(0);
            rr.setMessage("删除失败！请联系管理员");
        }

        return rr;
    }

    /**
     * 根据id删除房屋信息
     *
     * @param ids
     * @return
     */
    @RequestMapping("/deleteRentOut/{ids}")
    @ResponseBody
    public ResponseResult deleteRentOut(@PathVariable("ids") String ids) throws Exception {
        ResponseResult rr = new ResponseResult();
        // 批量刪除
        if (ids != null) {
            Integer id = Integer.parseInt(ids);
            int j = rentOutService.deleteOne(id);
            if (j != 0) {
                rr.setState(1);
                rr.setMessage("删除成功！");
            } else {
                rr.setState(0);
                rr.setMessage("删除失败！");
            }
        }
        return rr;
    }


    /**
     * 根据id删除房屋信息
     *
     * @param ids
     * @return
     */
    @RequestMapping("/deleteMessage/{ids}")
    @ResponseBody
    public ResponseResult deleteMessage(@PathVariable("ids") String ids) throws Exception {
        ResponseResult rr = new ResponseResult();
        // 批量刪除
        if (ids != null) {
            Integer id = Integer.parseInt(ids);
            int j = messageService.updateMessage(id);
            if (j != 0) {
                rr.setState(1);
                rr.setMessage("删除成功！");
            } else {
                rr.setState(0);
                rr.setMessage("删除失败！");
            }
        }
        return rr;
    }


}
