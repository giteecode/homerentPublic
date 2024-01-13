package com.mappers;

import com.bean.TContract;
import com.bean.TContractExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TContractMapper {
    long countByExample(TContractExample example);

    int deleteByExample(TContractExample example);

    int deleteByPrimaryKey(Integer conNum);

    int insert(TContract record);

    int insertSelective(TContract record);

    List<TContract> selectByExample(TContractExample example);

    TContract selectByPrimaryKey(Integer conNum);

    int updateByExampleSelective(@Param("record") TContract record, @Param("example") TContractExample example);

    int updateByExample(@Param("record") TContract record, @Param("example") TContractExample example);

    int updateByPrimaryKeySelective(TContract record);

    int updateByPrimaryKey(TContract record);
}