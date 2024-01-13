package com.service;

import com.bean.TOwner;
import com.bean.TRentget;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IOwnerService {


    /**
     * 申请成为房东
     *
     * @param owner
     * @return
     * @throws Exception
     */
    int addRequestOwner(TOwner owner) throws Exception;


    /**
     * 根据id查询
     *
     * @param ownerId
     * @return
     */
    TOwner findByid(Integer ownerId) throws Exception;


    /**
     * 条件查找
     *
     * @param param
     * @return
     */
    List<TOwner> selectAllByParams(@Param("param") Map<String, Object> param);

    /**
     * 求租信息的修改
     *
     * @param owner
     */
    int updateManagerownerInfo(TOwner owner) throws Exception;
}
