package com.mappers;

import com.bean.TRentget;
import com.bean.TRentout;
import com.bean.TRentoutExample;

import java.util.List;
import java.util.Map;

import com.bean.TimeDO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TRentoutMapper {
    long countByExample(TRentoutExample example);

    int deleteByExample(TRentoutExample example);

    int deleteByPrimaryKey(Integer rgId);

    int insert(TRentout record);

    int insertSelective(TRentout record);

    List<TRentout> selectByExample(TRentoutExample example);

    TRentout selectByPrimaryKey(Integer rgId);

    int updateByExampleSelective(@Param("record") TRentout record, @Param("example") TRentoutExample example);

    int updateByExample(@Param("record") TRentout record, @Param("example") TRentoutExample example);

    int updateByPrimaryKeySelective(TRentout record);

    int updateByPrimaryKey(TRentout record);

    List<TRentout> selectAllByParams(@Param("param") Map<String, Object> param);

    TRentout selectByrgId(Integer rgId);

    List<TRentout> selectBylimit(@Param("offset") int offset, @Param("limit") int limit);

    //TimeDO selectByTime();

}