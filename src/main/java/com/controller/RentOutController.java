package com.controller;

import com.bean.ResponseResult;
import com.bean.TRentget;
import com.bean.TRentout;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.IRentOutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/rentout")
public class RentOutController {


    @Autowired
    private IRentOutService rentOutService;

    /*
     * 表单提交日期绑定
     */
    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        //转换日期 注意这里的转化要和传进来的字符串的格式一直 如2015-9-9 就应该为yyyy-MM-dd
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));// CustomDateEditor为自定义日期编辑器
    }

    @RequestMapping("pushRoom")
    public String pushRoom() {
        return "pushRoom";
    }


    /**
     * 发布房屋信息
     *
     * @return
     * @throws Exception
     */
    @RequestMapping("/addRentOut")
    public String addRentGet(
            @RequestParam("uname") String name,
            @RequestParam("phone") String phone,
            @RequestParam("roomDesc") String roomDesc,
            @RequestParam("roomAddress") String roomAddress,
            @RequestParam("roomPrice") Integer roomPrice,
            @RequestParam("isFloor") Integer isFloor,
            @RequestParam("allFloor") Integer allFloor,
            @RequestParam("roomAge") Integer roomAge,
            @RequestParam("renovationint") Integer renovationint,
            @RequestParam("roomStructure") String roomStructure,
            @RequestParam("upload") MultipartFile upload,
            @RequestParam("userId") Integer userId,
            @RequestParam("roomArea") Integer roomArea,
            HttpServletRequest request,
            TRentout rentout,
            Model model
    ) throws Exception {
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

        if (name != null && !name.equals(" ")) {
            rentout.setRgName(name);
        }
        if (isFloor != null && !isFloor.equals(" ")) {
            rentout.setIsFloor(isFloor);
        }
        if (allFloor != null && !allFloor.equals(" ")) {
            rentout.setAllFloor(allFloor);
        }
        if (roomPrice != null && !roomPrice.equals(" ")) {
            double minPrice1 = Double.valueOf(roomPrice);
            rentout.setRoomPrice(minPrice1);
        }
        if (upload != null && !upload.equals(" ")) {
            rentout.setRoomPicture(fileName);
        }
        if (userId != null && !userId.equals(" ")) {
            rentout.setUserId(userId);
        }
        rentout.setRenovationint(renovationint);
        rentout.setRoomStructure(roomStructure);
        rentout.setRgPhone(phone);
        rentout.setRoomAge(roomAge);
        rentout.setRoomDesc(roomDesc);
        rentout.setRoomAddress(roomAddress);
        rentout.setRoomArea(roomArea);
        int i = 0;
        i = rentOutService.addRentGet(rentout);
        if (i != 0) {
            model.addAttribute("msg", "发布房屋信息成功");

        } else {
            model.addAttribute("msg", "发布房屋信息失败");
        }

        return "pushRoomSuccess";
    }

    /**
     * 房屋信息管理
     *
     * @param model
     * @param request
     * @return
     * @throws Exception
     */

    @RequestMapping("/findAllRentOut")
    public String findAllRentget(
            @RequestParam(value = "Info", required = false) String Info,
            @RequestParam(value = "phone", required = false) String rgPhone,
            @RequestParam(value = "userIdCard", required = false) String userIdCard,
            @RequestParam(value = "roomAddress", required = false) String roomAddress,
            @RequestParam(value = "rgName", required = false) String rgName,
            @RequestParam(value = "PriceBegin", required = false) Integer PriceBegin,
            @RequestParam(value = "PriceEnd", required = false) Integer PriceEnd,
            @RequestParam(value = "roomAreaStart", required = false) Integer roomAreaStart,
            @RequestParam(value = "roomAreaEnd", required = false) Integer roomAreaEnd,
            @RequestParam(value = "roomAgeStart", required = false) Integer roomAgeStart,
            @RequestParam(value = "roomAgeEnd", required = false) Integer roomAgeEnd,
            @RequestParam(value = "outStatus", required = false) Integer outStatus,
            @RequestParam(value = "isFloor", required = false) Integer isFloor,
            @RequestParam(value = "renovationint", required = false) Integer renovationint,
            @RequestParam(value = "dateStart", required = false) Date dateStart,
            @RequestParam(value = "finalTime", required = false) Date finalTime,
            @RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
            @RequestParam(value = "pageSize", defaultValue = "8") Integer pageSize,
            Model model, HttpServletRequest request) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        SimpleDateFormat smf = new SimpleDateFormat();
        if (dateStart != null && !dateStart.equals("") && finalTime != null && !finalTime.equals("")) {

            String startTime = smf.format(dateStart);
            String endTime = smf.format(finalTime);
            map.put("startTime", startTime);
            map.put("endTime", endTime);
        }
        if (isFloor != null) {
            String isFloor1 = isFloor.toString();
            map.put("isFloor", isFloor1);
        }
        if (renovationint != null) {

            map.put("renovationint", renovationint);
        }
        if (roomAreaStart != null) {

            map.put("roomAreaStart", roomAreaStart);
        }
        if (roomAreaEnd != null) {

            map.put("roomAreaEnd", roomAreaEnd);
        }
        if (roomAgeStart != null) {

            map.put("roomAgeStart", roomAgeStart);
        }
        if (roomAgeEnd != null) {

            map.put("roomAgeEnd", roomAgeEnd);
        }
        if (outStatus != null) {

            map.put("outStatus", outStatus);
        }

        if (PriceBegin != null) {
            String minPrice = PriceBegin.toString();
            Double aDouble = Double.valueOf(minPrice);
            map.put("PriceBegin", aDouble);
        }
        if (PriceEnd != null) {
            String maxPrice = PriceEnd.toString();
            Double aDouble = Double.valueOf(maxPrice);
            map.put("PriceEnd", aDouble);
        }
        if (rgName != null) {
            map.put("rgName", rgName);
        }
        if (userIdCard != null) {
            map.put("userIdCard", userIdCard);
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
        List<TRentout> rentouts = rentOutService.selectAllByParams(map);
        PageInfo<TRentout> page = new PageInfo<TRentout>(rentouts, 3);
        for (TRentout rentout : rentouts) {
            System.out.println("------------------>>>>" + rentout);
        }
        model.addAttribute("pageRentoutInfo", page);

        return "list_rentOut";
    }

    /**
     * 根据id删除
     *
     * @param ids
     * @return
     */
    @RequestMapping("/delete/{ids}")
    @ResponseBody
    public ResponseResult deleteMessage(@PathVariable("ids") String ids) throws Exception {
        ResponseResult rr = new ResponseResult();
        // 批量刪除
        if (ids.contains("-")) {
            List<Integer> listId = new ArrayList<>();
            String[] split_ids = ids.split("-");
            for (String string : split_ids) {
                listId.add(Integer.parseInt(string));
                int i = rentOutService.deleteAll(listId);
                if (i != 0) {
                    rr.setState(1);
                    rr.setMessage("删除成功！");
                } else {
                    rr.setState(0);
                    rr.setMessage("删除失败！");
                }

            }
            // 单个删除
        } else {
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
     * 根据id激活
     *
     * @param ids
     * @return
     */
    @RequestMapping("/jihuo/{ids}")
    @ResponseBody
    public ResponseResult jihuo(@PathVariable("ids") String ids) throws Exception {
        ResponseResult rr = new ResponseResult();
        // 批量激活
        if (ids.contains("-")) {
            List<Integer> listId = new ArrayList<>();
            String[] split_ids = ids.split("-");
            for (String string : split_ids) {
                listId.add(Integer.parseInt(string));
                int i = rentOutService.jihuoAll(listId);
                if (i != 0) {
                    rr.setState(1);
                    rr.setMessage("激活成功！");
                } else {
                    rr.setState(0);
                    rr.setMessage("激活失败！");
                }

            }
            // 单个激活
        } else {
            Integer id = Integer.parseInt(ids);
            int j = rentOutService.jihuoOne(id);
            if (j != 0) {
                rr.setState(1);
                rr.setMessage("激活成功！");
            } else {
                rr.setState(0);
                rr.setMessage("激活失败！");
            }
        }
        return rr;
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
    public TRentout findById(@PathVariable Integer rgId, Model model) throws Exception {
        if (rgId != null && !rgId.equals(" ")) {
            TRentout findByid = rentOutService.findByid(rgId);
            model.addAttribute("rentOut", findByid);
            return findByid;
        }
        return null;
    }


    //修改房屋信息
    @RequestMapping("/updateManagerInfo")
    @ResponseBody
    public ResponseResult updateManagerRentGetInfo(
            @RequestParam("mid") Integer rgId,
            @RequestParam("mphone") String mphone,
            @RequestParam("mStatus") Integer mStatus,
            @RequestParam("createName") String createName,
            TRentout rentout,
            Model model) throws Exception {
        ResponseResult rr = new ResponseResult();
        if (rgId != null) {
            rentout.setRgId(rgId);
            rentout.setRgPhone(mphone);
            rentout.setOutStatus(mStatus);
            rentout.setRgName(createName);
            int i = rentOutService.updateInfo(rentout);
            System.out.println("------------->>>" + i);
            if (i != 0) {

                TRentout findByid = rentOutService.findByid(rgId);
                model.addAttribute("rentOut", findByid);
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
     * 房屋信息管理
     *
     * @param model
     * @param request
     * @return
     * @throws Exception
     */

    @RequestMapping("/findRentOut")
    public String findRentget(
            @RequestParam(value = "Info", required = false) String Info,
            @RequestParam(value = "phone", required = false) String rgPhone,
            @RequestParam(value = "userIdCard", required = false) String userIdCard,
            @RequestParam(value = "roomAddress", required = false) String roomAddress,
            @RequestParam(value = "rgName", required = false) String rgName,
            @RequestParam(value = "PriceBegin", required = false) Integer PriceBegin,
            @RequestParam(value = "PriceEnd", required = false) Integer PriceEnd,
            @RequestParam(value = "roomAreaStart", required = false) Integer roomAreaStart,
            @RequestParam(value = "roomAreaEnd", required = false) Integer roomAreaEnd,
            @RequestParam(value = "roomAgeStart", required = false) Integer roomAgeStart,
            @RequestParam(value = "roomAgeEnd", required = false) Integer roomAgeEnd,
            @RequestParam(value = "isFloor", required = false) Integer isFloor,
            @RequestParam(value = "renovationint", required = false) Integer renovationint,
            @RequestParam(value = "dateStart", required = false) Date dateStart,
            @RequestParam(value = "finalTime", required = false) Date finalTime,
            @RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
            @RequestParam(value = "pageSize", defaultValue = "15") Integer pageSize,
            Model model, HttpServletRequest request) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        SimpleDateFormat smf = new SimpleDateFormat();
        if (dateStart != null && !dateStart.equals("") && finalTime != null && !finalTime.equals("")) {

            String startTime = smf.format(dateStart);
            String endTime = smf.format(finalTime);
            map.put("startTime", startTime);
            map.put("endTime", endTime);
        }
        if (isFloor != null) {
            String isFloor1 = isFloor.toString();
            map.put("isFloor", isFloor1);
        }
        if (renovationint != null) {

            map.put("renovationint", renovationint);
        }
        if (roomAreaStart != null) {

            map.put("roomAreaStart", roomAreaStart);
        }
        if (roomAreaEnd != null) {

            map.put("roomAreaEnd", roomAreaEnd);
        }
        if (roomAgeStart != null) {

            map.put("roomAgeStart", roomAgeStart);
        }
        if (roomAgeEnd != null) {

            map.put("roomAgeEnd", roomAgeEnd);
        }
        if (PriceBegin != null) {
            String minPrice = PriceBegin.toString();
            Double aDouble = Double.valueOf(minPrice);
            map.put("PriceBegin", aDouble);
        }
        if (PriceEnd != null) {
            String maxPrice = PriceEnd.toString();
            Double aDouble = Double.valueOf(maxPrice);
            map.put("PriceEnd", aDouble);
        }
        if (rgName != null) {
            map.put("rgName", rgName);
        }
        if (userIdCard != null) {
            map.put("userIdCard", userIdCard);
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
        map.put("outStatus", 1);
        PageHelper.startPage(pageNo, pageSize);
        List<TRentout> rentouts = rentOutService.selectAllByParams(map);
        PageInfo<TRentout> page = new PageInfo<TRentout>(rentouts, 3);
        for (TRentout rentout : rentouts) {
            System.out.println("------------------>>>>" + rentout);
        }
        model.addAttribute("pageRentoutInfo", page);

        return "room";
    }

    /**
     * 根据id查询：显示房屋详情
     *
     * @param rgId
     * @param model
     * @return
     */
    @RequestMapping("/findRoomById/{rgId}")
    public String findRoomById(@PathVariable Integer rgId, Model model) throws Exception {
        if (rgId != null && !rgId.equals(" ")) {
            TRentout findByid = rentOutService.findByid(rgId);
            model.addAttribute("rentOut", findByid);
            //猜你喜欢
            List<TRentout> three = rentOutService.findThree();
            model.addAttribute("Likes", three);

            //最近发布
            List<TRentout> five = rentOutService.findFive();
            model.addAttribute("newPush", five);
            return "roomInfo";
        }
        return "error";
    }


}
