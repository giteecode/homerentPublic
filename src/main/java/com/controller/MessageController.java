package com.controller;

import com.bean.ResponseResult;
import com.bean.TMessage;
import com.bean.TUser;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.IMessageService;
import com.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/message")
public class MessageController {

    @Autowired
    private IMessageService messageService;
    @Autowired
    private IUserService userService;


    /**
     * 添加留言
     *
     * @param createName
     * @param title
     * @param content
     * @param userId
     * @param phone
     * @param message
     * @return
     * @throws Exception
     */
    @RequestMapping("/addMessage")
    @ResponseBody
    public ResponseResult addMessage(
            @RequestParam("uname") String createName,
            @RequestParam("title") String title,
            @RequestParam("content") String content,
            @RequestParam("uid") Integer userId,
            @RequestParam("phone") String phone,
            TMessage message
    ) throws Exception {
        ResponseResult rr = new ResponseResult();
        message.setUserId(userId);
        message.setCreateName(createName);
        message.setTitle(title);
        message.setContent(content);
        message.setmPhone(phone);
        int i = messageService.addMessage(message);
        if (i != 0) {
            rr.setState(1);
            rr.setMessage("留言成功！");
        } else {
            rr.setState(0);
            rr.setMessage("留言失败！");
        }

        return rr;

    }

    /**
     * 根据id查询
     *
     * @param messageId
     * @param model
     * @return
     */
    @RequestMapping("/findById/{messageId}")
    @ResponseBody
    public TMessage findMessageById(@PathVariable Integer messageId, Model model) throws Exception {
        if (messageId != null && !messageId.equals(" ")) {
            TMessage findByid = messageService.findByid(messageId);
            model.addAttribute("message", findByid);
            return findByid;
        }
        return null;
    }

    /**
     * 根据id删除
     *
     * @param ids
     * @return
     */
    @RequestMapping("/deleteMessage/{ids}")
    public String deleteMessage(@PathVariable("ids") String ids) throws Exception {
        // 批量刪除
        if (ids.contains("-")) {
            List<Integer> listId = new ArrayList<>();
            String[] split_ids = ids.split("-");
            for (String string : split_ids) {
                listId.add(Integer.parseInt(string));
                messageService.updateMessageAll(listId);

            }
            // 单个删除
        } else {
            Integer id = Integer.parseInt(ids);
            messageService.updateMessage(id);

        }
        return "redirect:/message/findAllMessage";
    }

    /**
     * 留言管理
     *
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/findAllMessage")
    public String findAllMessage(
            @RequestParam(value = "Info", required = false) String Info,
            @RequestParam(value = "phone", required = false) String phone,
            @RequestParam(value = "createName", required = false) String createName,
            @RequestParam(value = "mStatus", required = false) Integer mStatus,
            @RequestParam(value = "dateStart", required = false) String dateStart,
            @RequestParam(value = "finalTime", required = false) String finalTime,
            @RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
            @RequestParam(value = "pageSize", defaultValue = "8") Integer pageSize,
            Model model, HttpServletRequest request) throws Exception {

        Map<String, String> map = new HashMap<String, String>();
        System.out.println("------------->>>" + dateStart + finalTime);
        if (dateStart != null && !dateStart.equals("") && finalTime != null && !finalTime.equals("")) {
            String startTime = dateStart + " " + "00:00:00";
            String endTime = finalTime + " " + "23:59:59";
            map.put("startTime", startTime);
            map.put("endTime", endTime);

        }
        if (mStatus != null) {
            String statu = mStatus.toString();
            map.put("mStatus", statu);
        }
        if (phone != null) {
            map.put("mPhone", phone);
        }
        if (createName != null) {
            map.put("createName", createName);
        }
        if (Info != null) {
            map.put("Info", Info);
        }

        PageHelper.startPage(pageNo, pageSize);
        List<TMessage> messages = messageService.selectAllByParams(map);
        PageInfo<TMessage> page = new PageInfo<TMessage>(messages, 3);
        for (TMessage user : messages) {
            System.out.println("------------------>>>>" + user);
        }
        model.addAttribute("pageMessageInfo", page);

        return "list_message";
    }

    /**
     * 我的留言
     *
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/findMyMessage")
    public String findMyMessage(
            @RequestParam(value = "usernameOrphone", required = false) String usernameOrphone,
            @RequestParam(value = "isOwner", required = false) Integer isOwner,
            @RequestParam(value = "sex", required = false) Integer sex,
            @RequestParam(value = "mStatus", required = false) Integer mStatus,
            @RequestParam(value = "Info", required = false) String Info,
            @RequestParam(value = "Info", required = false) String dateStart,
            @RequestParam(value = "Info", required = false) String finalTime,
            @RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
            @RequestParam(value = "pageSize", defaultValue = "8") Integer pageSize,
            Model model, HttpServletRequest request) throws Exception {

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
        if (mStatus != null) {
            String statu = mStatus.toString();
            map.put("mStatus", statu);
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

        PageHelper.startPage(pageNo, pageSize);
        List<TUser> users = userService.selectAllByParams(map);
        PageInfo<TUser> page = new PageInfo<TUser>(users, 3);
        for (TUser user : users) {
            System.out.println("------------------>>>>" + user);
        }
        model.addAttribute("pageInfo", page);

        return "list_user";
    }

    //用户管理修改留言信息
    @RequestMapping("/updateManagerMessageInfo")
    @ResponseBody
    public ResponseResult updateManagerUserInfo(
            @RequestParam("mid") Integer id,
            @RequestParam("title") String title,
            @RequestParam("content") String content,
            @RequestParam("mphone") String mphone,
            @RequestParam("mStatus") Integer mStatus,
            @RequestParam("createName") String createName,
            TMessage message,
            Model model) throws Exception {
        ResponseResult rr = new ResponseResult();
        if (id != null) {
            message.setMessageId(id);
            message.setTitle(title);
            message.setContent(content);
            message.setmPhone(mphone);
            message.setmStatus(mStatus);
            message.setCreateName(createName);
            messageService.updateMessageInfo(message);
            TMessage findByid = messageService.findByid(message.getMessageId());
            System.out.println(findByid);
            model.addAttribute("message", findByid);
            rr.setState(1);
            rr.setMessage("修改成功");
        } else {
            rr.setState(0);
            rr.setMessage("修改失败");
        }

        return rr;
    }

}
