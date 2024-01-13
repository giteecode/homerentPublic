package com.controller;

import com.bean.TimeDO;
import com.bean.TimeVO;
import com.service.ICountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/count")
public class CountController {

    @Autowired
    ICountService countService;


    @RequestMapping("/findTime")
    public @ResponseBody
    TimeVO fiindTime() {
        TimeVO rentOut = countService.findRentOut();

        return rentOut;
    }


}
