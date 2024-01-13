package com.service;

import com.bean.TRentget;
import com.bean.TRentout;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IRentOutService {

    /**
     * 发布房屋信息
     *
     * @return
     * @throws Exception
     */
    int addRentGet(TRentout rentout) throws Exception;

    /**
     * 条件查找
     *
     * @param param
     * @return
     */
    List<TRentout> selectAllByParams(@Param("param") Map<String, Object> param);


    /**
     * 根据id查询
     *
     * @param rgId
     * @return
     */
    TRentout findByid(Integer rgId);


    /**
     * 删除：批量修改状态
     *
     * @param listId
     * @return
     */
    int deleteAll(List<Integer> listId) throws Exception;

    /**
     * 删除：单个修改状态
     *
     * @param uid
     * @return
     */
    int deleteOne(Integer uid) throws Exception;

    /**
     * 激活：批量修改状态
     *
     * @param listId
     * @return
     */
    int jihuoAll(List<Integer> listId) throws Exception;

    /**
     * 激活：单个修改状态
     *
     * @param uid
     * @return
     */
    int jihuoOne(Integer uid) throws Exception;

    /**
     * 房屋信息的修改
     *
     * @param rentout
     */
    int updateInfo(TRentout rentout) throws Exception;

    /**
     * 查询五个
     *
     * @return
     */
    List<TRentout> findFive();

    /**
     * 查询三个
     *
     * @return
     */
    List<TRentout> findThree();

    /**
     * 页面显示房屋
     *
     * @return
     */
    List<TRentout> findIndex();
}
