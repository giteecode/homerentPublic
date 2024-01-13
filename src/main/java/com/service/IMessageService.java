package com.service;

import com.bean.TMessage;
import com.bean.TUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IMessageService {

    /**
     * 发布留言
     *
     * @param message
     * @return
     * @throws Exception
     */
    int addMessage(TMessage message) throws Exception;

    /**
     * 条件查找
     *
     * @param param
     * @return
     */
    List<TMessage> selectAllByParams(@Param("param") Map<String, String> param);

    /**
     * 根据id查询
     *
     * @param messageId
     * @return
     */
    TMessage findByid(Integer messageId);

    /**
     * 删除：批量修改状态
     *
     * @param listId
     * @return
     */
    int updateMessageAll(List<Integer> listId) throws Exception;

    /**
     * 删除：单个修改状态
     *
     * @param uid
     * @return
     */
    int updateMessage(Integer uid) throws Exception;

    /**
     * 留言信息的修改
     *
     * @param message
     */
    int updateMessageInfo(TMessage message) throws Exception;

}
