package com.service;


import com.bean.TUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IUserService {

    /**
     * 用户名的异步校验
     *
     * @param username
     * @return
     * @throws Exception
     */
    Boolean checkUsername(String username) throws Exception;

    /**
     * 查询所有用户
     *
     * @return
     */
    List<TUser> findAllUser() throws Exception;

    /**
     * 注册
     *
     * @param user
     * @return
     * @throws Exception
     */
    int addUser(TUser user) throws Exception;

    /**
     * 手机号的异步校验
     *
     * @param phone
     * @return
     */
    boolean checkPhone(String phone) throws Exception;

    /**
     * 登录
     *
     * @param username
     * @return
     */
    List<TUser> login(String username) throws Exception;

    /**
     * 根据用户名或手机号进行验证
     *
     * @param username
     * @return
     */
    boolean checkUsernameOrPhone(String username) throws Exception;

    /**
     * 根据用户id查询
     *
     * @param uid
     * @return
     */
    TUser findUserById(Integer uid) throws Exception;

    /**
     * 根据用户id查询:多表联查-查询求租信息
     *
     * @param uid
     * @return
     */
    TUser findById(Integer uid) throws Exception;

    /**
     * 根据用户id查询:多表联查-查询房屋发布信息
     *
     * @param uid
     * @return
     */
    TUser findById2RentOut(Integer uid) throws Exception;

    /**
     * 根据用户id查询:多表联查-查询留言信息
     *
     * @param uid
     * @return
     */
    TUser findById2Message(Integer uid) throws Exception;

    /**
     * 禁用：批量修改状态
     *
     * @param listId
     * @return
     */
    int updateUserAll(List<Integer> listId) throws Exception;

    /**
     * 禁用：单个修改状态
     *
     * @param uid
     * @return
     */
    int updateUser(Integer uid) throws Exception;

    /**
     * 激活：批量修改状态
     *
     * @param listId
     * @return
     */
    int jihuoUserAll(List<Integer> listId) throws Exception;

    /**
     * 激活：单个修改状态
     *
     * @param uid
     * @return
     */
    int jihuoeUser(Integer uid) throws Exception;

    /**
     * 个人信息的修改
     *
     * @param user
     */
    int updateUserInfo(TUser user) throws Exception;

    /**
     * 条件查找
     *
     * @param param
     * @return
     */
    List<TUser> selectAllByParams(@Param("param") Map<String, String> param);


}
