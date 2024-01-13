package com.controller;


import com.bean.ResponseResult;
import com.bean.TMessage;
import com.bean.TRentget;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.IRentGetService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.WebRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/rentget")
public class RentGetController {

    @Autowired
    private IRentGetService rentGetService;

    /*
     * 表单提交日期绑定
     */
    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        //转换日期 注意这里的转化要和传进来的字符串的格式一直 如2015-9-9 就应该为yyyy-MM-dd
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));// CustomDateEditor为自定义日期编辑器
    }

    /**
     * 发布求租信息
     *
     * @param title
     * @param name
     * @param phone
     * @param roomDesc
     * @param roomAddress
     * @param minPrice
     * @param maxPrice
     * @param liveTime
     * @param userId
     * @param roomArea
     * @param rentget
     * @return
     * @throws Exception
     */
    @RequestMapping("/addRentGet")
    @ResponseBody
    public ResponseResult addRentGet(
            @RequestParam("title") String title,
            @RequestParam("name") String name,
            @RequestParam("phone") String phone,
            @RequestParam("roomDesc") String roomDesc,
            @RequestParam("roomAddress") String roomAddress,
            @RequestParam("minPrice") Integer minPrice,
            @RequestParam("maxPrice") Integer maxPrice,
            @RequestParam("liveTime") Date liveTime,
            @RequestParam("userId") Integer userId,
            @RequestParam("roomArea") Integer roomArea,
            TRentget rentget
    ) throws Exception {
        ResponseResult rr = new ResponseResult();
        String name1 = null;
        System.out.println("--------->>>" + name.length());
        if (name.length() == 0) {
            String uuid = UUID.randomUUID().toString().replace("-", "");
            name1 = "游客" + uuid;
            System.out.println("--------->>>进来了吗 name：" + name1 + name);
            rentget.setRgName(name1);
        }
        if (name.length() != 0) {
            rentget.setRgName(name);
        }
        if (maxPrice != null && !maxPrice.equals(" ")) {
            double maxPrice1 = Double.valueOf(maxPrice);
            rentget.setMaxPrice(maxPrice1);
        }
        if (minPrice != null && !minPrice.equals(" ")) {
            double minPrice1 = Double.valueOf(minPrice);
            rentget.setMinPrice(minPrice1);
        }
        if (userId != null && !userId.equals(" ")) {
            rentget.setUserId(userId);
        }
        rentget.setLiveTime(liveTime);
        rentget.setRgTitle(title);
        rentget.setRgPhone(phone);
        rentget.setRoomDesc(roomDesc);
        rentget.setRoomAddress(roomAddress);
        rentget.setRoomArea(roomArea);
        System.out.println("插入前看name" + rentget.getRgName());
        int i = rentGetService.addRentGet(rentget);
        if (i == 1) {
            rr.setState(1);
            rr.setMessage("发布成功");
        }

        return rr;
    }

    /**
     * 防止重复提交
     *
     * @param title
     * @param phone
     * @param roomDesc
     * @param roomAddress
     * @param minPrice
     * @param maxPrice
     * @param liveTime
     * @param userId
     * @param roomArea
     * @param rentget
     * @return
     */
    @RequestMapping("/checkInfo")
    @ResponseBody
    public ResponseResult checkInfo(@RequestParam("title") String title,
                                    @RequestParam("phone") String phone,
                                    @RequestParam("roomDesc") String roomDesc,
                                    @RequestParam("roomAddress") String roomAddress,
                                    @RequestParam("minPrice") Integer minPrice,
                                    @RequestParam("maxPrice") Integer maxPrice,
                                    @RequestParam("liveTime") Date liveTime,
                                    @RequestParam("userId") Integer userId,
                                    @RequestParam("roomArea") Integer roomArea,
                                    TRentget rentget) {
        ResponseResult rr = new ResponseResult();

        double maxPrice1 = 0.00, minPrice1 = 0.00;
        if (maxPrice != null && !maxPrice.equals(" ")) {
            maxPrice1 = Double.valueOf(maxPrice);
            rentget.setMaxPrice(maxPrice1);
        }
        if (minPrice != null && !minPrice.equals(" ")) {
            minPrice1 = Double.valueOf(minPrice);
            rentget.setMinPrice(minPrice1);
        }
        //验证是否重复提交
        List<TRentget> all = rentGetService.findAll();
        for (TRentget tRentget : all) {
            if (userId != null && !userId.equals("")) {
                if (tRentget.getRgPhone().equals(phone) && tRentget.getRgTitle().equals(title) && tRentget.getMinPrice().equals(minPrice1) && tRentget.getMaxPrice().equals(maxPrice1) && tRentget.getLiveTime().equals(liveTime) && tRentget.getRoomAddress().equals(roomAddress) && tRentget.getRoomDesc().equals(roomDesc) && tRentget.getRoomArea().equals(roomArea) && tRentget.getUserId().equals(userId)) {
                    rr.setState(12);
                    rr.setMessage("重复发送");
                }
                if (tRentget.getMaxPrice() != null && !tRentget.getMaxPrice().equals("") && tRentget.getMinPrice() != null && !tRentget.getMinPrice().equals(" ")) {
                    if (tRentget.getRgPhone().equals(phone) && tRentget.getRgTitle().equals(title) && tRentget.getMinPrice().equals(minPrice1) && tRentget.getMaxPrice().equals(maxPrice1) && tRentget.getLiveTime().equals(liveTime) && tRentget.getRoomAddress().equals(roomAddress) && tRentget.getRoomDesc().equals(roomDesc) && tRentget.getRoomArea().equals(roomArea) && tRentget.getUserId().equals(userId)) {
                        rr.setState(12);
                        rr.setMessage("重复发送");
                    }
                }
            } else {
                if (tRentget.getRgPhone().equals(phone) && tRentget.getRgTitle().equals(title) && tRentget.getLiveTime().equals(liveTime) && tRentget.getRoomAddress().equals(roomAddress) && tRentget.getRoomDesc().equals(roomDesc) && tRentget.getRoomArea().equals(roomArea)) {
                    rr.setState(12);
                    rr.setMessage("重复发送");

                }
            }
        }
        System.out.println(rr.getState());
        return rr;
    }

    /**
     * 根据id删除
     *
     * @param ids
     * @return
     */
    @RequestMapping("/deleteRentGet/{ids}")
    public String deleteRentGet(@PathVariable("ids") String ids) throws Exception {
        // 批量刪除
        if (ids.contains("-")) {
            List<Integer> listId = new ArrayList<>();
            String[] split_ids = ids.split("-");
            for (String string : split_ids) {
                listId.add(Integer.parseInt(string));
                rentGetService.updateRentGetAll(listId);

            }
            // 单个删除
        } else {
            Integer id = Integer.parseInt(ids);
            rentGetService.updateRentGet(id);

        }
        return "redirect:/rentget/findAllRentget";
    }

    /**
     * 根据id激活
     *
     * @param ids
     * @return
     */
    @RequestMapping("/jihuoRentGet/{ids}")
    public String jihuoRentGet(@PathVariable("ids") String ids) throws Exception {
        if (ids != null) {
            Integer id = Integer.parseInt(ids);
            rentGetService.updatejihuoRentGet(id);

        }
        return "redirect:/rentget/findAllRentget";
    }

    /**
     * 求租信息管理
     *
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/findAllRentget")
    public String findAllRentget(
            @RequestParam(value = "Info", required = false) String Info,
            @RequestParam(value = "phone", required = false) String rgPhone,
            @RequestParam(value = "userName", required = false) String userName,
            @RequestParam(value = "roomAddress", required = false) String roomAddress,
            @RequestParam(value = "rgName", required = false) String rgName,
            @RequestParam(value = "minPriceBegin", required = false) Integer minPriceBegin,
            @RequestParam(value = "maxPriceEnd", required = false) Integer maxPriceEnd,
            @RequestParam(value = "startLiveTime", required = false) Date startLive,
            @RequestParam(value = "endLiveTime", required = false) Date endLive,
            @RequestParam(value = "getStatus", required = false) Integer getStatus,
            @RequestParam(value = "dateStart", required = false) Date dateStart,
            @RequestParam(value = "finalTime", required = false) Date finalTime,
            @RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
            @RequestParam(value = "pageSize", defaultValue = "16") Integer pageSize,
            Model model, HttpServletRequest request) throws Exception {

        Map<String, Object> map = new HashMap<String, Object>();
        SimpleDateFormat smf = new SimpleDateFormat();
        System.out.println("------------->>>" + minPriceBegin + maxPriceEnd);
        if (dateStart != null && !dateStart.equals("") && finalTime != null && !finalTime.equals("")) {

            // String startTime= dateStart+" "+"00:00:00";
            // String endTime = finalTime+" "+"23:59:59";
            String startTime = smf.format(dateStart);
            String endTime = smf.format(finalTime);
            map.put("startTime", startTime);
            map.put("endTime", endTime);

        }
        if (startLive != null && !startLive.equals("") && endLive != null && !endLive.equals("")) {

            String startLiveTime = smf.format(startLive);
            String endLiveTime = smf.format(endLive);
            map.put("startLiveTime", startLiveTime);
            map.put("endLiveTime", endLiveTime);
        }

        if (getStatus != null) {
            String statu = getStatus.toString();
            map.put("getStatus", statu);
        }

        if (minPriceBegin != null) {
            String minPrice = minPriceBegin.toString();
            Double aDouble = Double.valueOf(minPrice);
            map.put("minPriceBegin", aDouble);
        }
        if (maxPriceEnd != null) {
            String maxPrice = maxPriceEnd.toString();
            Double aDouble = Double.valueOf(maxPrice);
            map.put("maxPriceEnd", aDouble);
        }
        if (rgName != null) {
            map.put("rgName", rgName);
        }
        if (userName != null) {
            map.put("userName", userName);
        }
        if (rgPhone != null) {
            map.put("rgPhone", rgPhone);
        }
        if (roomAddress != null) {
            map.put("roomAddress", roomAddress);
        }
        if (Info != null) {
            map.put("Info", Info);
        }

        PageHelper.startPage(pageNo, pageSize);
        List<TRentget> rentgets = rentGetService.selectAllByParams(map);
        PageInfo<TRentget> page = new PageInfo<TRentget>(rentgets, 3);
        for (TRentget rentget : rentgets) {
            System.out.println("------------------>>>>" + rentget);
        }
        model.addAttribute("pageRentgetInfo", page);

        return "list_rentGet";
    }

    /**
     * 根据id查询
     *
     * @param rgId
     * @param model
     * @return
     */
    @RequestMapping("/findById/{rgId}")
    @ResponseBody
    public TRentget findMessageById(@PathVariable Integer rgId, Model model) throws Exception {
        if (rgId != null && !rgId.equals(" ")) {
            TRentget findByid = rentGetService.findByid(rgId);
            model.addAttribute("rentGet", findByid);
            return findByid;
        }
        return null;
    }


    //修改求租信息
    @RequestMapping("/updateManagerRentGetInfo")
    @ResponseBody
    public ResponseResult updateManagerRentGetInfo(
            @RequestParam("mid") Integer rgId,
            @RequestParam("title") String title,
            @RequestParam("mphone") String mphone,
            @RequestParam("mStatus") Integer mStatus,
            @RequestParam("createName") String createName,
            TRentget rentget,
            Model model) throws Exception {
        ResponseResult rr = new ResponseResult();
        if (rgId != null) {
            rentget.setRgId(rgId);
            rentget.setRgTitle(title);
            rentget.setRgPhone(mphone);
            rentget.setGetStatus(mStatus);
            rentget.setRgName(createName);
            int i = rentGetService.updateRentGetInfo(rentget);
            System.out.println("------------->>>" + i);
            if (i != 0) {

                TRentget findByid = rentGetService.findByid(rgId);
                model.addAttribute("rentGet", findByid);
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


    /**
     * 求租信息管理
     *
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/findRentget")
    public String findRentget(
            @RequestParam(value = "Info", required = false) String Info,
            @RequestParam(value = "phone", required = false) String rgPhone,
            @RequestParam(value = "userName", required = false) String userName,
            @RequestParam(value = "roomAddress", required = false) String roomAddress,
            @RequestParam(value = "rgName", required = false) String rgName,
            @RequestParam(value = "minPriceBegin", required = false) Integer minPriceBegin,
            @RequestParam(value = "minPriceEnd", required = false) Integer minPriceEnd,
            @RequestParam(value = "maxPriceBegin", required = false) Integer maxPriceBegin,
            @RequestParam(value = "maxPriceEnd", required = false) Integer maxPriceEnd,
            @RequestParam(value = "startLiveTime", required = false) Date startLive,
            @RequestParam(value = "endLiveTime", required = false) Date endLive,
            @RequestParam(value = "dateStart", required = false) Date dateStart,
            @RequestParam(value = "finalTime", required = false) Date finalTime,
            @RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
            @RequestParam(value = "pageSize", defaultValue = "16") Integer pageSize,
            Model model, HttpServletRequest request) throws Exception {
        Integer getStatus = 1;
        Map<String, Object> map = new HashMap<String, Object>();
        SimpleDateFormat smf = new SimpleDateFormat();
        if (dateStart != null && !dateStart.equals("") && finalTime != null && !finalTime.equals("")) {

            String startTime = smf.format(dateStart);
            String endTime = smf.format(finalTime);
            map.put("startTime", startTime);
            map.put("endTime", endTime);

        }
        if (startLive != null && !startLive.equals("") && endLive != null && !endLive.equals("")) {

            String startLiveTime = smf.format(startLive);
            String endLiveTime = smf.format(endLive);
            map.put("startLiveTime", startLiveTime);
            map.put("endLiveTime", endLiveTime);
        }

        if (getStatus == 1) {
            String statu = getStatus.toString();
            map.put("getStatus", statu);
        }
        if (minPriceBegin != null) {
            String minPrice1 = minPriceBegin.toString();
            Double aDouble = Double.valueOf(minPrice1);
            System.out.println(aDouble);
            map.put("minPriceBegin", aDouble);
        }
        if (minPriceEnd != null) {
            String maxPrice1 = minPriceEnd.toString();
            Double aDouble = Double.valueOf(maxPrice1);
            System.out.println(aDouble);
            map.put("minPriceEnd", aDouble);
        }
        if (maxPriceBegin != null) {
            String minPrice2 = maxPriceBegin.toString();
            Double aDouble = Double.valueOf(minPrice2);
            map.put("maxPriceBegin", aDouble);
        }
        if (maxPriceEnd != null) {
            String maxPrice2 = maxPriceEnd.toString();
            Double aDouble = Double.valueOf(maxPrice2);
            map.put("maxPriceEnd", aDouble);
        }
        if (rgName != null) {
            map.put("rgName", rgName);
        }
        if (userName != null) {
            map.put("userName", userName);
        }
        if (rgPhone != null) {
            map.put("rgPhone", rgPhone);
        }
        if (roomAddress != null) {
            map.put("roomAddress", roomAddress);
        }
        if (Info != null) {
            map.put("Info", Info);
        }

        PageHelper.startPage(pageNo, pageSize);
        List<TRentget> rentgets = rentGetService.selectAllByParams(map);
        PageInfo<TRentget> page = new PageInfo<TRentget>(rentgets, 3);
        for (TRentget rentget : rentgets) {
            System.out.println("------------------>>>>" + rentget);
        }
        model.addAttribute("pageRentgetInfo", page);

        return "rentGetInfo";
    }


}
