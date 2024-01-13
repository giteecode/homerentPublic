package com.service.impl;

import com.bean.TMessage;
import com.bean.TRentget;
import com.bean.TRentgetExample;
import com.bean.TRentget;
import com.mappers.TRentgetMapper;
import com.service.IRentGetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class RentGetServiceImpl implements IRentGetService {

    @Autowired
    private TRentgetMapper rentgetMapper;


    @Override
    public int addRentGet(TRentget rentget) throws Exception {
        rentget.setGetStatus(1);
        rentget.setGetCreateTime(new Date());
        return rentgetMapper.insertSelective(rentget);
    }

    @Override
    public List<TRentget> findAll() {
        return rentgetMapper.selectByExample(null);
    }

    @Override
    public List<TRentget> selectAllByParams(Map<String, Object> param) {
        return rentgetMapper.selectAllByParams(param);
    }

    @Override
    public List<TRentget> selectByParams(Map<String, Object> param) {
        return rentgetMapper.selectByParams(param);
    }

    @Override
    public TRentget findByid(Integer rgId) {
        return rentgetMapper.selectByrgId(rgId);
    }

    @Override
    public int updateRentGetAll(List<Integer> listId) throws Exception {
        TRentget rentget = new TRentget();
        TRentgetExample TRentgetExample = new TRentgetExample();
        TRentgetExample.Criteria criteria = TRentgetExample.createCriteria();
        System.out.println(!listId.isEmpty());
        if (!listId.isEmpty()) {
            criteria.andRgIdIn(listId);
            rentget.setGetStatus(0);
            return rentgetMapper.updateByExampleSelective(rentget, TRentgetExample);
        }
        return 0;
    }

    @Override
    public int updateRentGet(Integer uid) throws Exception {
        TRentget rentget = new TRentget();
        if (uid != null && !uid.equals(" ")) {
            rentget.setRgId(uid);
            rentget.setGetStatus(0);
            return rentgetMapper.updateByPrimaryKeySelective(rentget);
        }
        return 0;
    }

    @Override
    public int updatejihuoRentGet(Integer uid) throws Exception {
        TRentget rentget = new TRentget();
        if (uid != null && !uid.equals(" ")) {
            rentget.setRgId(uid);
            rentget.setGetStatus(1);
            return rentgetMapper.updateByPrimaryKeySelective(rentget);
        }
        return 0;
    }

    @Override
    public int updateRentGetInfo(TRentget rentget) throws Exception {
        return rentgetMapper.updateByPrimaryKeySelective(rentget);
    }
}
