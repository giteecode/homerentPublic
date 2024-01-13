package com.mappers;

import com.bean.TMessage;
import com.bean.TRentget;
import com.bean.TRentgetExample;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TRentgetMapper {
    long countByExample(TRentgetExample example);

    int deleteByExample(TRentgetExample example);

    int deleteByPrimaryKey(Integer rgId);

    int insert(TRentget record);

    int insertSelective(TRentget record);

    List<TRentget> selectByExample(TRentgetExample example);

    TRentget selectByPrimaryKey(Integer rgId);

    int updateByExampleSelective(@Param("record") TRentget record, @Param("example") TRentgetExample example);

    int updateByExample(@Param("record") TRentget record, @Param("example") TRentgetExample example);

    int updateByPrimaryKeySelective(TRentget record);

    int updateByPrimaryKey(TRentget record);

    List<TRentget> selectAllByParams(@Param("param") Map<String, Object> param);

    List<TRentget> selectByParams(@Param("param") Map<String, Object> param);

    TRentget selectByrgId(Integer rgId);
}