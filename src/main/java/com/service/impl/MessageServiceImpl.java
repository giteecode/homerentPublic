package com.service.impl;

import com.bean.TMessage;
import com.bean.TMessageExample;
import com.bean.TUser;
import com.bean.TUserExample;
import com.mappers.TMessageMapper;
import com.mappers.TUserMapper;
import com.service.IMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class MessageServiceImpl implements IMessageService {

    @Autowired
    private TMessageMapper messageMapper;
    @Autowired
    private TUserMapper userMapper;


    public int addMessage(TMessage message) throws Exception {
        message.setmCreateTime(new Date());
        message.setmStatus(1);
        return messageMapper.insertSelective(message);
    }

    @Override
    public List<TMessage> selectAllByParams(Map<String, String> param) {
        return messageMapper.selectAllByParams(param);
    }

    @Override
    public TMessage findByid(Integer messageId) {
        return messageMapper.selectById(messageId);
    }

    @Override
    public int updateMessageAll(List<Integer> listId) throws Exception {
        TMessage message = new TMessage();
        TMessageExample tMessageExample = new TMessageExample();
        TMessageExample.Criteria criteria = tMessageExample.createCriteria();
        System.out.println(!listId.isEmpty());
        if (!listId.isEmpty()) {
            criteria.andMessageIdIn(listId);
            message.setmStatus(0);
            return messageMapper.updateByExampleSelective(message, tMessageExample);
        }
        return 0;
    }


    public int updateMessage(Integer uid) throws Exception {
        TMessage message = new TMessage();
        if (uid != null && !uid.equals(" ")) {
            message.setMessageId(uid);
            message.setmStatus(0);
            return messageMapper.updateByPrimaryKeySelective(message);
        }
        return 0;
    }

    @Override
    public int updateMessageInfo(TMessage message) throws Exception {
        return messageMapper.updateByPrimaryKeySelective(message);
    }


}
