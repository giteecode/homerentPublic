package com.controller;


import com.bean.TRentout;
import com.service.IRentOutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/main")
public class IndexController {

    @Autowired
    private IRentOutService rentOutService;

    /**
     * 显示主页
     *
     * @return
     */
    @RequestMapping("/toIndex")
    public String toIndex(Model model) {
        List<TRentout> rentouts = rentOutService.findIndex();
        model.addAttribute("rooms", rentouts);
        return "index";
    }

    /**
     * 登录界面
     *
     * @return
     */
    @RequestMapping("/toShowLogin")
    public String toShowLogin() {

        return "login";
    }

    /**
     * 合同界面
     *
     * @return
     */
    @RequestMapping("/toShowHT")
    public String toShowHT() {

        return "room_hetong";
    }

    /**
     * 注册界面
     *
     * @return
     */
    @RequestMapping("/toShowReg")
    public String toShowReg() {

        return "register";
    }

    /**
     * 显示关于恋家页面
     *
     * @return
     */
    @RequestMapping("/toShowAsFor")
    public String toShowAsFor() {

        return "asForlianjia";
    }

    /**
     * 显示恋家注意界面
     *
     * @return
     */
    @RequestMapping("/toShowQuestions")
    public String toShowQuestions() {

        return "questions";
    }

    /**
     * 显示房屋地图搜索页面
     *
     * @return
     */
    @RequestMapping("/toShowMap")
    public String toShowRoom() {

        return "roomMap";
    }

    /**
     * 显示发布留言投诉页面
     *
     * @return
     */
    @RequestMapping("/toShowPushMessage")
    public String toShowPushMessage() {

        return "push_message";
    }

    /**
     * 显示用户信息页面
     *
     * @return
     */
    @RequestMapping("/toShowUserInfo")
    public String toShowUserInfo() {

        return "profile";
    }

    /**
     * 房源发布的界面
     *
     * @return
     */
    @RequestMapping("/toShowPushRent")
    public String toShowPushRent() {

        return "pushRent";
    }

    /**
     * 显示安全中心界面
     *
     * @return
     */
    @RequestMapping("/toShowSafe")
    public String toShowSafe() {

        return "safe";
    }

    /**
     * 显示账单
     *
     * @return
     */
    @RequestMapping("/toShowBill")
    public String toShowBill() {

        return "bill";
    }

    /**
     * 显示修改密码1
     *
     * @return
     */
    @RequestMapping("/toShowPwdVerify")
    public String toShowPwdVerify() {

//        return "password-verify";
        return "password-verify-next";
    }

    /**
     * 显示修改密码2
     *
     * @return
     */
    @RequestMapping("/toShowPwdVerifyNext")
    public String toShowPwdVerifyNext() {

        return "password-verify-next";
    }

    /**
     * 显示修改密码成功
     *
     * @return
     */
    @RequestMapping("/toShowPwdVerifySuccess")
    public String toShowPwdVerifySuccess() {

        return "password-verify-success";
    }

    /**
     * 显示修改密码失败
     *
     * @return
     */
    @RequestMapping("/toShowPwdVerifyFalse")
    public String toShowPwdVerifyFalse() {

        return "password-verify-false";
    }

    /**
     * 统计
     *
     * @return
     */
    @RequestMapping("/toShowEchart")
    public String toShowEchart() {

        return "room_Echart";
    }

}
