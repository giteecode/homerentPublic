package com.service.impl;

import com.bean.TRentget;
import com.bean.TRentout;
import com.bean.TRentoutExample;
import com.mappers.TRentoutMapper;
import com.service.IRentOutService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class RentOutServiceImpl implements IRentOutService {

    @Autowired
    TRentoutMapper rentoutMapper;

    @Override
    public int addRentGet(TRentout rentout) throws Exception {
        rentout.setOutStatus(1);
        rentout.setOutCreateTime(new Date());
        return rentoutMapper.insertSelective(rentout);
    }


    @Override
    public List<TRentout> selectAllByParams(Map<String, Object> param) {
        return rentoutMapper.selectAllByParams(param);
    }

    @Override
    public TRentout findByid(Integer rgId) {
        return rentoutMapper.selectByrgId(rgId);
    }

    @Override
    public int deleteAll(List<Integer> listId) throws Exception {
        TRentout rentout = new TRentout();
        TRentoutExample example = new TRentoutExample();
        TRentoutExample.Criteria criteria = example.createCriteria();
        if (!listId.isEmpty()) {
            criteria.andRgIdIn(listId);
            rentout.setOutStatus(2);
            return rentoutMapper.updateByExampleSelective(rentout, example);
        }
        return 0;
    }

    @Override
    public int deleteOne(Integer id) throws Exception {
        TRentout rentout = new TRentout();
        if (id != null && !id.equals(" ")) {
            rentout.setRgId(id);
            rentout.setOutStatus(2);
            return rentoutMapper.updateByPrimaryKeySelective(rentout);
        }
        return 0;
    }

    @Override
    public int jihuoAll(List<Integer> listId) throws Exception {
        TRentout rentout = new TRentout();
        TRentoutExample example = new TRentoutExample();
        TRentoutExample.Criteria criteria = example.createCriteria();
        if (!listId.isEmpty()) {
            criteria.andRgIdIn(listId);
            rentout.setOutStatus(1);
            return rentoutMapper.updateByExampleSelective(rentout, example);
        }
        return 0;
    }

    @Override
    public int jihuoOne(Integer id) throws Exception {
        TRentout rentout = new TRentout();
        if (id != null && !id.equals(" ")) {
            rentout.setRgId(id);
            rentout.setOutStatus(1);
            return rentoutMapper.updateByPrimaryKeySelective(rentout);
        }
        return 0;
    }

    @Override
    public int updateInfo(TRentout rentout) throws Exception {
        return rentoutMapper.updateByPrimaryKeySelective(rentout);
    }

    @Override
    public List<TRentout> findFive() {
        int offset = 0;
        int limit = 5;
        return rentoutMapper.selectBylimit(offset, limit);
    }

    @Override
    public List<TRentout> findThree() {
        int offset = 5;
        int limit = 4;
        return rentoutMapper.selectBylimit(offset, limit);
    }

    @Override
    public List<TRentout> findIndex() {
        int offset = 0;
        int limit = 9;
        return rentoutMapper.selectBylimit(offset, limit);
    }


}
