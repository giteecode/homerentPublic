package com.mappers;

import com.bean.TCollect;
import com.bean.TCollectExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TCollectMapper {
    long countByExample(TCollectExample example);

    int deleteByExample(TCollectExample example);

    int deleteByPrimaryKey(Integer colId);

    int insert(TCollect record);

    int insertSelective(TCollect record);

    List<TCollect> selectByExample(TCollectExample example);

    TCollect selectByPrimaryKey(Integer colId);

    int updateByExampleSelective(@Param("record") TCollect record, @Param("example") TCollectExample example);

    int updateByExample(@Param("record") TCollect record, @Param("example") TCollectExample example);

    int updateByPrimaryKeySelective(TCollect record);

    int updateByPrimaryKey(TCollect record);
}