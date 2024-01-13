package com.mappers;

import com.bean.TCount;
import com.bean.TCountExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TCountMapper {
    long countByExample(TCountExample example);

    int deleteByExample(TCountExample example);

    int deleteByPrimaryKey(Integer countId);

    int insert(TCount record);

    int insertSelective(TCount record);

    List<TCount> selectByExample(TCountExample example);

    TCount selectByPrimaryKey(Integer countId);

    int updateByExampleSelective(@Param("record") TCount record, @Param("example") TCountExample example);

    int updateByExample(@Param("record") TCount record, @Param("example") TCountExample example);

    int updateByPrimaryKeySelective(TCount record);

    int updateByPrimaryKey(TCount record);
}