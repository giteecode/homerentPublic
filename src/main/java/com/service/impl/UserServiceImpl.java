package com.service.impl;

import com.bean.TUser;
import com.bean.TUserExample;
import com.mappers.TUserMapper;
import com.service.IUserService;
import com.utils.Md5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private TUserMapper userMapper;

    /**
     * 用户名的异步校验
     *
     * @param username
     * @return
     * @throws Exception
     */
    @Override
    public Boolean checkUsername(String username) throws Exception {
        TUserExample tUserExample = new TUserExample();
        TUserExample.Criteria criteria = tUserExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<TUser> tUsers = userMapper.selectByExample(tUserExample);
        for (TUser tUser : tUsers) {
            String username1 = tUser.getUsername();
            System.out.println(username1);
            if (username.equals(username1)) {
                return false;
            }

        }

        return true;
    }


    /**
     * 查询所有
     *
     * @return
     * @throws Exception
     */
    public List<TUser> findAllUser() throws Exception {
        List<TUser> tUsers = userMapper.selectByExample(null);
        return tUsers;
    }

    @Override
    public int addUser(TUser user) throws Exception {
        String md5 = Md5Util.MD5(user.getPassword());
        user.setPassword(md5);
        user.setName("匿名用户");
        user.setCreateTime(new Date());
        user.setStatus(1);
        user.setIsOwner(0);
        return userMapper.insertSelective(user);
    }

    @Override
    public boolean checkPhone(String phone) {
        TUserExample tUserExample = new TUserExample();
        TUserExample.Criteria criteria = tUserExample.createCriteria();
        criteria.andPhoneEqualTo(phone);
        List<TUser> tUsers = userMapper.selectByExample(tUserExample);
        for (TUser tUser : tUsers) {
            String userPhone1 = tUser.getPhone();
            System.out.println(userPhone1);
            if (phone.equals(userPhone1)) {
                return false;
            }

        }

        return true;
    }


    public List<TUser> login(String username) throws Exception {
        TUserExample tUserExample = new TUserExample();
        TUserExample.Criteria criteria = tUserExample.createCriteria();
        TUserExample.Criteria criteria1 = tUserExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        criteria1.andPhoneEqualTo(username);
        tUserExample.or(criteria1);
        List<TUser> tUsers = userMapper.selectByExample(tUserExample);
        return tUsers;
    }

    @Override
    public boolean checkUsernameOrPhone(String username) throws Exception {
        TUserExample tUserExample = new TUserExample();
        TUserExample.Criteria criteria = tUserExample.createCriteria();
        TUserExample.Criteria criteria1 = tUserExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        criteria1.andPhoneEqualTo(username);
        tUserExample.or(criteria1);
        List<TUser> tUsers = userMapper.selectByExample(tUserExample);
        if (!tUsers.isEmpty()) {
            return true;
        }

        return false;
    }

    @Override
    public TUser findUserById(Integer uid) throws Exception {
        return userMapper.selectByPrimaryKey(uid);
    }

    @Override
    public TUser findById(Integer uid) throws Exception {
        return userMapper.selectById(uid);
    }

    @Override
    public TUser findById2RentOut(Integer uid) throws Exception {
        return userMapper.selectById2RentOut(uid);
    }

    @Override
    public TUser findById2Message(Integer uid) throws Exception {
        return userMapper.selectById2Message(uid);
    }

    @Override
    public int updateUserAll(List<Integer> listId) throws Exception {
        TUser user = new TUser();
        TUserExample tUserExample = new TUserExample();
        TUserExample.Criteria criteria = tUserExample.createCriteria();
        System.out.println(!listId.isEmpty());
        if (!listId.isEmpty()) {
            criteria.andIdIn(listId);
            user.setStatus(0);
            return userMapper.updateByExampleSelective(user, tUserExample);
        }
        return 0;
    }

    @Override
    public int updateUser(Integer uid) throws Exception {
        TUser user = new TUser();
        if (uid != null && !uid.equals(" ")) {
            user.setId(uid);
            user.setStatus(0);
            return userMapper.updateByPrimaryKeySelective(user);
        }
        return 0;
    }

    @Override
    public int jihuoUserAll(List<Integer> listId) throws Exception {
        TUser user = new TUser();
        TUserExample tUserExample = new TUserExample();
        TUserExample.Criteria criteria = tUserExample.createCriteria();
        System.out.println(!listId.isEmpty());
        if (!listId.isEmpty()) {
            criteria.andIdIn(listId);
            user.setStatus(1);
            return userMapper.updateByExampleSelective(user, tUserExample);
        }
        return 0;
    }

    @Override
    public int jihuoeUser(Integer uid) throws Exception {
        TUser user = new TUser();
        if (uid != null && !uid.equals(" ")) {
            user.setId(uid);
            user.setStatus(1);
            return userMapper.updateByPrimaryKeySelective(user);
        }
        return 0;
    }

    @Override
    public int updateUserInfo(TUser user) throws Exception {
        return userMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public List<TUser> selectAllByParams(Map<String, String> param) {
        List<TUser> users = userMapper.selectAllByParams(param);
        return users;

    }
}
