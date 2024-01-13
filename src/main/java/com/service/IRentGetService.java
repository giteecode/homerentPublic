package com.service;

import com.bean.TMessage;
import com.bean.TRentget;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IRentGetService {

    /**
     * 发布求租信息
     *
     * @return
     * @throws Exception
     */
    int addRentGet(TRentget rentget) throws Exception;

    /**
     * 查询所有
     *
     * @return
     */
    List<TRentget> findAll();

    /**
     * 条件查找
     *
     * @param param
     * @return
     */
    List<TRentget> selectAllByParams(@Param("param") Map<String, Object> param);

    /**
     * 条件查找显示给用户
     *
     * @param param
     * @return
     */
    List<TRentget> selectByParams(@Param("param") Map<String, Object> param);

    /**
     * 根据id查询
     *
     * @param rgId
     * @return
     */
    TRentget findByid(Integer rgId);


    /**
     * 删除：批量修改状态
     *
     * @param listId
     * @return
     */
    int updateRentGetAll(List<Integer> listId) throws Exception;

    /**
     * 删除：单个修改状态
     *
     * @param uid
     * @return
     */
    int updateRentGet(Integer uid) throws Exception;

    /**
     * 激活：单个修改状态
     *
     * @param uid
     * @return
     */
    int updatejihuoRentGet(Integer uid) throws Exception;

    /**
     * 求租信息的修改
     *
     * @param rentget
     */
    int updateRentGetInfo(TRentget rentget) throws Exception;
}
