package com.mappers;

import com.bean.TOwner;
import com.bean.TOwnerExample;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TOwnerMapper {
    long countByExample(TOwnerExample example);

    int deleteByExample(TOwnerExample example);

    int deleteByPrimaryKey(Integer ownerId);

    int insert(TOwner record);

    int insertSelective(TOwner record);

    List<TOwner> selectByExample(TOwnerExample example);

    TOwner selectByPrimaryKey(Integer ownerId);

    int updateByExampleSelective(@Param("record") TOwner record, @Param("example") TOwnerExample example);

    int updateByExample(@Param("record") TOwner record, @Param("example") TOwnerExample example);

    int updateByPrimaryKeySelective(TOwner record);

    int updateByPrimaryKey(TOwner record);


    TOwner selectByownerId(Integer ownerId);

    List<TOwner> selectAllByParams(@Param("param") Map<String, Object> param);
}