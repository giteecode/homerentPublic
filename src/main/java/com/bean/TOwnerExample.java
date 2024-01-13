package com.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TOwnerExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TOwnerExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andOwnerIdIsNull() {
            addCriterion("owner_id is null");
            return (Criteria) this;
        }

        public Criteria andOwnerIdIsNotNull() {
            addCriterion("owner_id is not null");
            return (Criteria) this;
        }

        public Criteria andOwnerIdEqualTo(Integer value) {
            addCriterion("owner_id =", value, "ownerId");
            return (Criteria) this;
        }

        public Criteria andOwnerIdNotEqualTo(Integer value) {
            addCriterion("owner_id <>", value, "ownerId");
            return (Criteria) this;
        }

        public Criteria andOwnerIdGreaterThan(Integer value) {
            addCriterion("owner_id >", value, "ownerId");
            return (Criteria) this;
        }

        public Criteria andOwnerIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("owner_id >=", value, "ownerId");
            return (Criteria) this;
        }

        public Criteria andOwnerIdLessThan(Integer value) {
            addCriterion("owner_id <", value, "ownerId");
            return (Criteria) this;
        }

        public Criteria andOwnerIdLessThanOrEqualTo(Integer value) {
            addCriterion("owner_id <=", value, "ownerId");
            return (Criteria) this;
        }

        public Criteria andOwnerIdIn(List<Integer> values) {
            addCriterion("owner_id in", values, "ownerId");
            return (Criteria) this;
        }

        public Criteria andOwnerIdNotIn(List<Integer> values) {
            addCriterion("owner_id not in", values, "ownerId");
            return (Criteria) this;
        }

        public Criteria andOwnerIdBetween(Integer value1, Integer value2) {
            addCriterion("owner_id between", value1, value2, "ownerId");
            return (Criteria) this;
        }

        public Criteria andOwnerIdNotBetween(Integer value1, Integer value2) {
            addCriterion("owner_id not between", value1, value2, "ownerId");
            return (Criteria) this;
        }

        public Criteria andOwnerNameIsNull() {
            addCriterion("owner_name is null");
            return (Criteria) this;
        }

        public Criteria andOwnerNameIsNotNull() {
            addCriterion("owner_name is not null");
            return (Criteria) this;
        }

        public Criteria andOwnerNameEqualTo(String value) {
            addCriterion("owner_name =", value, "ownerName");
            return (Criteria) this;
        }

        public Criteria andOwnerNameNotEqualTo(String value) {
            addCriterion("owner_name <>", value, "ownerName");
            return (Criteria) this;
        }

        public Criteria andOwnerNameGreaterThan(String value) {
            addCriterion("owner_name >", value, "ownerName");
            return (Criteria) this;
        }

        public Criteria andOwnerNameGreaterThanOrEqualTo(String value) {
            addCriterion("owner_name >=", value, "ownerName");
            return (Criteria) this;
        }

        public Criteria andOwnerNameLessThan(String value) {
            addCriterion("owner_name <", value, "ownerName");
            return (Criteria) this;
        }

        public Criteria andOwnerNameLessThanOrEqualTo(String value) {
            addCriterion("owner_name <=", value, "ownerName");
            return (Criteria) this;
        }

        public Criteria andOwnerNameLike(String value) {
            addCriterion("owner_name like", value, "ownerName");
            return (Criteria) this;
        }

        public Criteria andOwnerNameNotLike(String value) {
            addCriterion("owner_name not like", value, "ownerName");
            return (Criteria) this;
        }

        public Criteria andOwnerNameIn(List<String> values) {
            addCriterion("owner_name in", values, "ownerName");
            return (Criteria) this;
        }

        public Criteria andOwnerNameNotIn(List<String> values) {
            addCriterion("owner_name not in", values, "ownerName");
            return (Criteria) this;
        }

        public Criteria andOwnerNameBetween(String value1, String value2) {
            addCriterion("owner_name between", value1, value2, "ownerName");
            return (Criteria) this;
        }

        public Criteria andOwnerNameNotBetween(String value1, String value2) {
            addCriterion("owner_name not between", value1, value2, "ownerName");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardIsNull() {
            addCriterion("owner_idcard is null");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardIsNotNull() {
            addCriterion("owner_idcard is not null");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardEqualTo(String value) {
            addCriterion("owner_idcard =", value, "ownerIdcard");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardNotEqualTo(String value) {
            addCriterion("owner_idcard <>", value, "ownerIdcard");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardGreaterThan(String value) {
            addCriterion("owner_idcard >", value, "ownerIdcard");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardGreaterThanOrEqualTo(String value) {
            addCriterion("owner_idcard >=", value, "ownerIdcard");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardLessThan(String value) {
            addCriterion("owner_idcard <", value, "ownerIdcard");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardLessThanOrEqualTo(String value) {
            addCriterion("owner_idcard <=", value, "ownerIdcard");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardLike(String value) {
            addCriterion("owner_idcard like", value, "ownerIdcard");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardNotLike(String value) {
            addCriterion("owner_idcard not like", value, "ownerIdcard");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardIn(List<String> values) {
            addCriterion("owner_idcard in", values, "ownerIdcard");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardNotIn(List<String> values) {
            addCriterion("owner_idcard not in", values, "ownerIdcard");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardBetween(String value1, String value2) {
            addCriterion("owner_idcard between", value1, value2, "ownerIdcard");
            return (Criteria) this;
        }

        public Criteria andOwnerIdcardNotBetween(String value1, String value2) {
            addCriterion("owner_idcard not between", value1, value2, "ownerIdcard");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoIsNull() {
            addCriterion("owner_room_photo is null");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoIsNotNull() {
            addCriterion("owner_room_photo is not null");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoEqualTo(String value) {
            addCriterion("owner_room_photo =", value, "ownerRoomPhoto");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoNotEqualTo(String value) {
            addCriterion("owner_room_photo <>", value, "ownerRoomPhoto");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoGreaterThan(String value) {
            addCriterion("owner_room_photo >", value, "ownerRoomPhoto");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoGreaterThanOrEqualTo(String value) {
            addCriterion("owner_room_photo >=", value, "ownerRoomPhoto");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoLessThan(String value) {
            addCriterion("owner_room_photo <", value, "ownerRoomPhoto");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoLessThanOrEqualTo(String value) {
            addCriterion("owner_room_photo <=", value, "ownerRoomPhoto");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoLike(String value) {
            addCriterion("owner_room_photo like", value, "ownerRoomPhoto");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoNotLike(String value) {
            addCriterion("owner_room_photo not like", value, "ownerRoomPhoto");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoIn(List<String> values) {
            addCriterion("owner_room_photo in", values, "ownerRoomPhoto");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoNotIn(List<String> values) {
            addCriterion("owner_room_photo not in", values, "ownerRoomPhoto");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoBetween(String value1, String value2) {
            addCriterion("owner_room_photo between", value1, value2, "ownerRoomPhoto");
            return (Criteria) this;
        }

        public Criteria andOwnerRoomPhotoNotBetween(String value1, String value2) {
            addCriterion("owner_room_photo not between", value1, value2, "ownerRoomPhoto");
            return (Criteria) this;
        }

        public Criteria andRequestDescIsNull() {
            addCriterion("request_desc is null");
            return (Criteria) this;
        }

        public Criteria andRequestDescIsNotNull() {
            addCriterion("request_desc is not null");
            return (Criteria) this;
        }

        public Criteria andRequestDescEqualTo(String value) {
            addCriterion("request_desc =", value, "requestDesc");
            return (Criteria) this;
        }

        public Criteria andRequestDescNotEqualTo(String value) {
            addCriterion("request_desc <>", value, "requestDesc");
            return (Criteria) this;
        }

        public Criteria andRequestDescGreaterThan(String value) {
            addCriterion("request_desc >", value, "requestDesc");
            return (Criteria) this;
        }

        public Criteria andRequestDescGreaterThanOrEqualTo(String value) {
            addCriterion("request_desc >=", value, "requestDesc");
            return (Criteria) this;
        }

        public Criteria andRequestDescLessThan(String value) {
            addCriterion("request_desc <", value, "requestDesc");
            return (Criteria) this;
        }

        public Criteria andRequestDescLessThanOrEqualTo(String value) {
            addCriterion("request_desc <=", value, "requestDesc");
            return (Criteria) this;
        }

        public Criteria andRequestDescLike(String value) {
            addCriterion("request_desc like", value, "requestDesc");
            return (Criteria) this;
        }

        public Criteria andRequestDescNotLike(String value) {
            addCriterion("request_desc not like", value, "requestDesc");
            return (Criteria) this;
        }

        public Criteria andRequestDescIn(List<String> values) {
            addCriterion("request_desc in", values, "requestDesc");
            return (Criteria) this;
        }

        public Criteria andRequestDescNotIn(List<String> values) {
            addCriterion("request_desc not in", values, "requestDesc");
            return (Criteria) this;
        }

        public Criteria andRequestDescBetween(String value1, String value2) {
            addCriterion("request_desc between", value1, value2, "requestDesc");
            return (Criteria) this;
        }

        public Criteria andRequestDescNotBetween(String value1, String value2) {
            addCriterion("request_desc not between", value1, value2, "requestDesc");
            return (Criteria) this;
        }

        public Criteria andOwnerStatusIsNull() {
            addCriterion("owner_status is null");
            return (Criteria) this;
        }

        public Criteria andOwnerStatusIsNotNull() {
            addCriterion("owner_status is not null");
            return (Criteria) this;
        }

        public Criteria andOwnerStatusEqualTo(Integer value) {
            addCriterion("owner_status =", value, "ownerStatus");
            return (Criteria) this;
        }

        public Criteria andOwnerStatusNotEqualTo(Integer value) {
            addCriterion("owner_status <>", value, "ownerStatus");
            return (Criteria) this;
        }

        public Criteria andOwnerStatusGreaterThan(Integer value) {
            addCriterion("owner_status >", value, "ownerStatus");
            return (Criteria) this;
        }

        public Criteria andOwnerStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("owner_status >=", value, "ownerStatus");
            return (Criteria) this;
        }

        public Criteria andOwnerStatusLessThan(Integer value) {
            addCriterion("owner_status <", value, "ownerStatus");
            return (Criteria) this;
        }

        public Criteria andOwnerStatusLessThanOrEqualTo(Integer value) {
            addCriterion("owner_status <=", value, "ownerStatus");
            return (Criteria) this;
        }

        public Criteria andOwnerStatusIn(List<Integer> values) {
            addCriterion("owner_status in", values, "ownerStatus");
            return (Criteria) this;
        }

        public Criteria andOwnerStatusNotIn(List<Integer> values) {
            addCriterion("owner_status not in", values, "ownerStatus");
            return (Criteria) this;
        }

        public Criteria andOwnerStatusBetween(Integer value1, Integer value2) {
            addCriterion("owner_status between", value1, value2, "ownerStatus");
            return (Criteria) this;
        }

        public Criteria andOwnerStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("owner_status not between", value1, value2, "ownerStatus");
            return (Criteria) this;
        }

        public Criteria andOwnerCreateTimeIsNull() {
            addCriterion("owner_create_time is null");
            return (Criteria) this;
        }

        public Criteria andOwnerCreateTimeIsNotNull() {
            addCriterion("owner_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andOwnerCreateTimeEqualTo(Date value) {
            addCriterion("owner_create_time =", value, "ownerCreateTime");
            return (Criteria) this;
        }

        public Criteria andOwnerCreateTimeNotEqualTo(Date value) {
            addCriterion("owner_create_time <>", value, "ownerCreateTime");
            return (Criteria) this;
        }

        public Criteria andOwnerCreateTimeGreaterThan(Date value) {
            addCriterion("owner_create_time >", value, "ownerCreateTime");
            return (Criteria) this;
        }

        public Criteria andOwnerCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("owner_create_time >=", value, "ownerCreateTime");
            return (Criteria) this;
        }

        public Criteria andOwnerCreateTimeLessThan(Date value) {
            addCriterion("owner_create_time <", value, "ownerCreateTime");
            return (Criteria) this;
        }

        public Criteria andOwnerCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("owner_create_time <=", value, "ownerCreateTime");
            return (Criteria) this;
        }

        public Criteria andOwnerCreateTimeIn(List<Date> values) {
            addCriterion("owner_create_time in", values, "ownerCreateTime");
            return (Criteria) this;
        }

        public Criteria andOwnerCreateTimeNotIn(List<Date> values) {
            addCriterion("owner_create_time not in", values, "ownerCreateTime");
            return (Criteria) this;
        }

        public Criteria andOwnerCreateTimeBetween(Date value1, Date value2) {
            addCriterion("owner_create_time between", value1, value2, "ownerCreateTime");
            return (Criteria) this;
        }

        public Criteria andOwnerCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("owner_create_time not between", value1, value2, "ownerCreateTime");
            return (Criteria) this;
        }

        public Criteria andOwnerUserIdIsNull() {
            addCriterion("owner_user_id is null");
            return (Criteria) this;
        }

        public Criteria andOwnerUserIdIsNotNull() {
            addCriterion("owner_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andOwnerUserIdEqualTo(Integer value) {
            addCriterion("owner_user_id =", value, "ownerUserId");
            return (Criteria) this;
        }

        public Criteria andOwnerUserIdNotEqualTo(Integer value) {
            addCriterion("owner_user_id <>", value, "ownerUserId");
            return (Criteria) this;
        }

        public Criteria andOwnerUserIdGreaterThan(Integer value) {
            addCriterion("owner_user_id >", value, "ownerUserId");
            return (Criteria) this;
        }

        public Criteria andOwnerUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("owner_user_id >=", value, "ownerUserId");
            return (Criteria) this;
        }

        public Criteria andOwnerUserIdLessThan(Integer value) {
            addCriterion("owner_user_id <", value, "ownerUserId");
            return (Criteria) this;
        }

        public Criteria andOwnerUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("owner_user_id <=", value, "ownerUserId");
            return (Criteria) this;
        }

        public Criteria andOwnerUserIdIn(List<Integer> values) {
            addCriterion("owner_user_id in", values, "ownerUserId");
            return (Criteria) this;
        }

        public Criteria andOwnerUserIdNotIn(List<Integer> values) {
            addCriterion("owner_user_id not in", values, "ownerUserId");
            return (Criteria) this;
        }

        public Criteria andOwnerUserIdBetween(Integer value1, Integer value2) {
            addCriterion("owner_user_id between", value1, value2, "ownerUserId");
            return (Criteria) this;
        }

        public Criteria andOwnerUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("owner_user_id not between", value1, value2, "ownerUserId");
            return (Criteria) this;
        }

        public Criteria andOwnerIssuccessIsNull() {
            addCriterion("owner_issuccess is null");
            return (Criteria) this;
        }

        public Criteria andOwnerIssuccessIsNotNull() {
            addCriterion("owner_issuccess is not null");
            return (Criteria) this;
        }

        public Criteria andOwnerIssuccessEqualTo(Integer value) {
            addCriterion("owner_issuccess =", value, "ownerIssuccess");
            return (Criteria) this;
        }

        public Criteria andOwnerIssuccessNotEqualTo(Integer value) {
            addCriterion("owner_issuccess <>", value, "ownerIssuccess");
            return (Criteria) this;
        }

        public Criteria andOwnerIssuccessGreaterThan(Integer value) {
            addCriterion("owner_issuccess >", value, "ownerIssuccess");
            return (Criteria) this;
        }

        public Criteria andOwnerIssuccessGreaterThanOrEqualTo(Integer value) {
            addCriterion("owner_issuccess >=", value, "ownerIssuccess");
            return (Criteria) this;
        }

        public Criteria andOwnerIssuccessLessThan(Integer value) {
            addCriterion("owner_issuccess <", value, "ownerIssuccess");
            return (Criteria) this;
        }

        public Criteria andOwnerIssuccessLessThanOrEqualTo(Integer value) {
            addCriterion("owner_issuccess <=", value, "ownerIssuccess");
            return (Criteria) this;
        }

        public Criteria andOwnerIssuccessIn(List<Integer> values) {
            addCriterion("owner_issuccess in", values, "ownerIssuccess");
            return (Criteria) this;
        }

        public Criteria andOwnerIssuccessNotIn(List<Integer> values) {
            addCriterion("owner_issuccess not in", values, "ownerIssuccess");
            return (Criteria) this;
        }

        public Criteria andOwnerIssuccessBetween(Integer value1, Integer value2) {
            addCriterion("owner_issuccess between", value1, value2, "ownerIssuccess");
            return (Criteria) this;
        }

        public Criteria andOwnerIssuccessNotBetween(Integer value1, Integer value2) {
            addCriterion("owner_issuccess not between", value1, value2, "ownerIssuccess");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}