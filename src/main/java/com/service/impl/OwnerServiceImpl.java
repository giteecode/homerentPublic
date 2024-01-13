package com.service.impl;

import com.bean.TOwner;
import com.mappers.TOwnerMapper;
import com.service.IOwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class OwnerServiceImpl implements IOwnerService {

    @Autowired
    private TOwnerMapper ownerMapper;

    @Override
    public int addRequestOwner(TOwner owner) throws Exception {
        owner.setOwnerCreateTime(new Date());
        owner.setOwnerStatus(0);
        return ownerMapper.insertSelective(owner);
    }

    @Override
    public TOwner findByid(Integer ownerId) throws Exception {
        return ownerMapper.selectByownerId(ownerId);
    }

    @Override
    public List<TOwner> selectAllByParams(Map<String, Object> param) {
        return ownerMapper.selectAllByParams(param);
    }

    @Override
    public int updateManagerownerInfo(TOwner owner) throws Exception {
        return ownerMapper.updateByPrimaryKeySelective(owner);
    }
}
