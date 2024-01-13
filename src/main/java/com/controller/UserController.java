package com.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.bean.ResponseResult;
import com.bean.TUser;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.IUserService;
import com.utils.Md5Util;
import com.utils.SendMessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.*;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;

    /**
     * 随机产生验证码
     */
    private static String newcode = "";

    public static String getNewcode() {
        return newcode;
    }

    public static void setNewcode() {
        //随机产生六位数字字符串的验证码
        int code1 = (int) ((Math.random() * 9 + 1) * 100000);
        newcode = String.valueOf(code1);
        System.out.println(newcode);
        /*Random random = new Random();
        for (int i=0;i<6;i++)
        {
            newcode+=random.nextInt(10);
        }
       */

    }


    /**
     * 用户名的校验
     *
     * @param username
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/checkUsername")
    @ResponseBody
    public ResponseResult<TUser> checkUsername(String username, Model model) throws Exception {
        ResponseResult<TUser> rr = new ResponseResult<>();
        System.out.println(username + "----->>>" + userService.checkUsername(username));
        if (userService.checkUsername(username) && username != null) {
            rr.setState(1);
            rr.setMessage("用户名不存在");
        } else {
            rr.setState(0);
            rr.setMessage("用户名已存在");
        }
        return rr;
    }

    /**
     * @param phone
     * @return
     * @throws Exception
     */
    @RequestMapping("/checkPhone")
    @ResponseBody
    public ResponseResult<TUser> checkPhone(@RequestParam("phone") String phone) throws Exception {
        ResponseResult<TUser> rr = new ResponseResult<>();
        System.out.println(phone + "----->>>" + userService.checkPhone(phone));
        if (userService.checkPhone(phone) && phone != null) {
            rr.setState(1);
            rr.setMessage("手机号不存在");
        } else {
            rr.setState(0);
            rr.setMessage("手机号已存在");
        }
        return rr;
    }


    //提供一个用户短信校验的方法
    @RequestMapping("/sendMessage")
    @ResponseBody
    public ResponseResult sendMessage(@RequestParam("phone") String phone, HttpServletRequest request) {
        ResponseResult rr = new ResponseResult();
        setNewcode();
        String code = getNewcode();
        System.out.println("发送的验证码为：" + code);
        if (phone != null && !(phone.equals(""))) {
            if (code != null) {
                //发短信
                SendSmsResponse response = null; // TODO 填写你需要测试的手机号码
                try {
                    response = SendMessageUtil.sendSms(phone, code);
                } catch (ClientException e) {
                    e.printStackTrace();
                }
                System.out.println("短信接口返回的数据----------------");
                System.out.println("Code=" + response.getCode());
                System.out.println("Message=" + response.getMessage());
                System.out.println("RequestId=" + response.getRequestId());
                System.out.println("BizId=" + response.getBizId());

                HttpSession session = request.getSession();
                session.setAttribute(phone + "code", code);
                session.setMaxInactiveInterval(60 * 3);
                rr.setState(1);
                rr.setMessage("验证码发送成功");

            } else {
                rr.setState(0);
                rr.setMessage("验证码发送失败");
            }
        } else {
            rr.setState(0);
            rr.setMessage("手机号不能为空");
        }

        return rr;

    }

    /**
     * 用户注册
     *
     * @param verifyCode
     * @param username
     * @param phone
     * @param password
     * @param request
     * @param user
     * @return
     * @throws Exception
     */
    @RequestMapping("/reg")
    @ResponseBody
    public ResponseResult addUser(
//            @RequestParam(value = "verifyCode") String verifyCode,
                                  @RequestParam(value = "username") String username,
                                  @RequestParam(value = "phone") String phone,
                                  @RequestParam(value = "password") String password,
                                  HttpServletRequest request,
                                  TUser user) throws Exception {
        ResponseResult rr = new ResponseResult();
        HttpSession session = request.getSession();//设置session
        if (phone != null && !(phone.equals(""))) {
            String sessionCode = (String) session.getAttribute(phone + "code");

//            if (verifyCode.equals(sessionCode) && verifyCode != null && !verifyCode.equals("")) {
                user.setUsername(username);
                user.setPassword(password);
                user.setPhone(phone);
                if (userService.addUser(user) != 0) {
                    rr.setState(1);
                    rr.setMessage("恭喜您！注册成功");
                    return rr;
                }

//            } else {
//                rr.setState(0);
//                rr.setMessage("对不起！注册失败,验证码不匹配");
//            }
        } else {
            rr.setState(0);
            rr.setMessage("对不起！注册失败,手机号不能为空");
        }

        return rr;
    }


    @RequestMapping("/login")
    @ResponseBody
    public ResponseResult login(@RequestParam("username") String username,
                                @RequestParam("password") String password,
                                ModelAndView model,
                                HttpServletRequest request) throws Exception {
        ResponseResult rr = new ResponseResult();

        if (username != null && username != "") {
            String md5Pwd = Md5Util.MD5(password);
            List<TUser> tUsers = userService.login(username);
            if (!tUsers.isEmpty()) {
                for (TUser user : tUsers) {
                    if (user.getStatus() == 1 && md5Pwd.equals(user.getPassword())) {
                        HttpSession session = request.getSession();
                        session.setAttribute("user", user);
                        model.setViewName("index");
                        rr.setState(1);
                        rr.setMessage("恭喜您！登录成功");
                    } else if (user.getStatus() == 0) {
                        rr.setState(0);
                        rr.setMessage("对不起！用户未激活");
                    } else {
                        rr.setState(0);
                        rr.setMessage("对不起！账号与密码不匹配，登录失败");
                    }

                }
            } else {
                rr.setState(0);
                rr.setMessage("对不起！账号不存在，登录失败");
            }


        }

        return rr;
    }

    /**
     * 用户名或手机号的校验
     *
     * @param username
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/checkUsernameOrPhone")
    @ResponseBody
    public ResponseResult<TUser> checkUsernameOrPhone(String username, Model model) throws Exception {
        ResponseResult<TUser> rr = new ResponseResult<>();
        System.out.println(username + "----->>>" + userService.checkUsername(username));
        if (userService.checkUsernameOrPhone(username) && username != null) {
            rr.setState(1);
            rr.setMessage("用户名或手机号存在");
        } else {
            rr.setState(0);
            rr.setMessage("用户名或手机号不存在");

        }
        return rr;
    }


    /**
     * 用户管理：根据条件查询
     *
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/findAllUser")
    public String findAllUser(
            @RequestParam(value = "usernameOrphone", required = false) String usernameOrphone,
            @RequestParam(value = "isOwner", required = false) Integer isOwner,
            @RequestParam(value = "sex", required = false) Integer sex,
            @RequestParam(value = "status", required = false) Integer status,
            @RequestParam(value = "Info", required = false) String Info,
            @RequestParam(value = "pageNo", defaultValue = "1") Integer pageStar,
            @RequestParam(value = "pageSize", defaultValue = "8") Integer pagelength,
            Model model, HttpServletRequest request) throws Exception {

        Map<String, String> map = new HashMap<String, String>();
        if (sex != null) {
            String sexs = sex.toString();
            map.put("sex", sexs);
        }
        if (status != null) {
            String statu = status.toString();
            map.put("status", statu);
        }
        if (usernameOrphone != null) {

            map.put("usernameOrphone", usernameOrphone);
        }
        if (isOwner != null) {
            String owner = isOwner.toString();
            map.put("isOwner", owner);
        }
        if (Info != null) {
            map.put("Info", Info);
        }

        PageHelper.startPage(pageStar, pagelength);
        List<TUser> users = userService.selectAllByParams(map);
        PageInfo<TUser> page = new PageInfo<TUser>(users, 5);
        for (TUser user : users) {
            System.out.println("------------------>>>>" + user);
        }
        model.addAttribute("pageInfo", page);

        return "list_user";
    }

    //用户管理修改个人信息
    @RequestMapping("/updateManagerUserInfo")
    @ResponseBody
    public ResponseResult updateManagerUserInfo(
            @RequestParam("uid") Integer id,
            @RequestParam("username") String username,
            @RequestParam("uname") String name,
            @RequestParam("sex") Integer sex,
            @RequestParam("age") Integer age,
            @RequestParam("phone") String phone,
            @RequestParam("status") Integer status,
            @RequestParam("isOwner") Integer isOwner,
            TUser user,
            Model model,
            HttpServletRequest request) throws Exception {
        ResponseResult rr = new ResponseResult();

        System.out.println("id------->>" + id);
        if (id != null) {
            user.setId(id);
            user.setUsername(username);
            user.setName(name);
            user.setSex(sex);
            user.setAge(age);
            user.setStatus(status);
            user.setPhone(phone);
            user.setIsOwner(isOwner);
            userService.updateUserInfo(user);
            TUser userById = userService.findUserById(user.getId());
            model.addAttribute("user", userById);
            rr.setState(1);
            rr.setMessage("修改成功");
        } else {
            rr.setState(0);
            rr.setMessage("修改失败");
        }

        return rr;
    }


    /**
     * 修改个人信息
     *
     * @param id
     * @param name
     * @param sex
     * @param age
     * @param job
     * @param address
     * @param user
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/updateUserInfo")
    @ResponseBody
    public ResponseResult updateUserInfo(@RequestParam("uid") Integer id,
                                         @RequestParam("uname") String name,
                                         @RequestParam("sex") Integer sex,
                                         @RequestParam("age") Integer age,
                                         @RequestParam("job") String job,
                                         @RequestParam("address") String address,
                                         TUser user, HttpServletRequest request) throws Exception {

        ResponseResult<TUser> rr = new ResponseResult<>();
        if (id != null) {
            user.setId(id);
            user.setName(name);
            user.setSex(sex);
            user.setAge(age);
            user.setJob(job);
            user.setAddress(address);
            userService.updateUserInfo(user);
            TUser userById = userService.findUserById(id);
            HttpSession session = request.getSession();
            session.setAttribute("user", userById);
            rr.setState(1);
            rr.setMessage("修改成功");
        } else {
            rr.setState(0);
            rr.setMessage("修改失败");
        }

        //redirect:/main/toShowUserInfo
        return rr;
    }

    /**
     * 根据id查询
     *
     * @param userId
     * @param model
     * @return
     */
    @RequestMapping("/findById/{userId}")
    @ResponseBody
    public TUser findUserById(@PathVariable Integer userId, Model model) throws Exception {
        if (userId != null && !userId.equals(" ")) {
            TUser userById = userService.findUserById(userId);
            model.addAttribute("userById", userById);
            return userById;
        }

        return null;
    }

    /**
     * 根据id禁用
     *
     * @param ids
     * @return
     */
    @RequestMapping("/deleteUser/{ids}")
    public String deleteUser(@PathVariable("ids") String ids) throws Exception {
        // 批量刪除
        if (ids.contains("-")) {
            List<Integer> listId = new ArrayList<>();
            String[] split_ids = ids.split("-");
            for (String string : split_ids) {
                listId.add(Integer.parseInt(string));
                userService.updateUserAll(listId);

            }
            // 单个删除
        } else {
            Integer id = Integer.parseInt(ids);
            userService.updateUser(id);

        }
        return "redirect:/user/findAllUser";
    }

    /**
     * 根据id禁用
     *
     * @param ids
     * @return
     */
    @RequestMapping("/jihuoUser/{ids}")
    public String jihuoUser(@PathVariable("ids") String ids) throws Exception {
        // 批量激活
        if (ids.contains("-")) {
            List<Integer> listId = new ArrayList<>();
            String[] split_ids = ids.split("-");
            for (String string : split_ids) {
                listId.add(Integer.parseInt(string));
                userService.jihuoUserAll(listId);

            }
            // 单个激活
        } else {
            Integer id = Integer.parseInt(ids);
            userService.jihuoeUser(id);

        }
        return "redirect:/user/findAllUser";
    }


    @RequestMapping(value = "/managerUser", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String findUser(
            // @RequestParam(value="Info", required = false)String  Info,
            @RequestParam(value = "usernameOrphone", required = false) String usernameOrphone,
            @RequestParam(value = "isOwner", required = false) Integer isOwner,
            @RequestParam(value = "sex", required = false) Integer sex,
            @RequestParam(value = "status", required = false) Integer status,
            @RequestParam(value = "Info", required = false) String dateStart,
            @RequestParam(value = "Info", required = false) String finalTime,
            @RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
            @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
            Model model, HttpSession session
    ) {
        JSONObject result = new JSONObject();
        Map<String, String> map = new HashMap<String, String>();
        if (dateStart != null && !dateStart.equals("") && finalTime != null && !finalTime.equals("")) {
            String startTime = dateStart + " " + "00:00:00";
            String endTime = finalTime + " " + "23:59:59";
            map.put("startTime", startTime);
            map.put("endTime", endTime);
        }
        if (sex != null) {
            String sexs = sex.toString();
            map.put("sex", sexs);
        }
        if (status != null) {
            String statu = status.toString();
            map.put("status", statu);
        }
        if (usernameOrphone != null) {

            map.put("usernameOrphone", usernameOrphone);
        }
        if (isOwner != null) {
            String owner = isOwner.toString();
            map.put("isOwner", owner);
        }
//        if(Info != null) {
//            map.put("Info", Info);
//        }

        PageHelper.startPage(pageNo, pageSize);
        List<TUser> users = userService.selectAllByParams(map);
        PageInfo<TUser> page = new PageInfo<TUser>(users, 3);
        for (TUser user : users) {
            System.out.println(user);
        }
        model.addAttribute("pageInfo", page);
        result.put("pageInfo", page);
        return JSON.toJSONString(result);

    }


    /**
     * 修改密码1
     *
     * @return
     * @throws Exception
     */
    @RequestMapping("/updatePwd1")
    public String updatePwd(@RequestParam(value = "verifyCode") String verifyCode,
                            @RequestParam(value = "phone") String phone,
                            HttpServletRequest request
    ) throws Exception {

        HttpSession session = request.getSession();//设置session
        if (phone != null && !(phone.equals(""))) {
            String sessionCode = (String) session.getAttribute(phone + "code");

            if (verifyCode.equals(sessionCode) && verifyCode != null && !verifyCode.equals("")) {

                return "redirect:/main/toShowPwdVerifyNext";

            }
        }

        return "password-verify";
    }


    @RequestMapping("/updatePwd2")
    @ResponseBody
    public ResponseResult updatePwd2(@RequestParam(value = "uid") Integer id,
                                     @RequestParam(value = "password") String password,
                                     HttpServletRequest request,
                                     TUser user) throws Exception {
        ResponseResult rr = new ResponseResult();
        if (id != null) {
            user.setId(id);
            String md5Pwd = Md5Util.MD5(password);
            user.setPassword(md5Pwd);
            userService.updateUserInfo(user);
            TUser userById = userService.findUserById(id);
            HttpSession session = request.getSession();
            session.setAttribute("user", userById);
            rr.setState(1);
            rr.setMessage("修改成功");
        } else {
            rr.setState(0);
            rr.setMessage("修改失败");
        }

        return rr;
    }

    /**
     * 退出
     *
     * @param session
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();    // 获取session信息，使session信息失效，直接返回登录界面，并连接跳转。
        return "redirect:/main/toIndex";
    }


}
