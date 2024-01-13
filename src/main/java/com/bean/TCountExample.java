package com.bean;

import java.util.ArrayList;
import java.util.List;

public class TCountExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TCountExample() {
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

        public Criteria andCountIdIsNull() {
            addCriterion("count_id is null");
            return (Criteria) this;
        }

        public Criteria andCountIdIsNotNull() {
            addCriterion("count_id is not null");
            return (Criteria) this;
        }

        public Criteria andCountIdEqualTo(Integer value) {
            addCriterion("count_id =", value, "countId");
            return (Criteria) this;
        }

        public Criteria andCountIdNotEqualTo(Integer value) {
            addCriterion("count_id <>", value, "countId");
            return (Criteria) this;
        }

        public Criteria andCountIdGreaterThan(Integer value) {
            addCriterion("count_id >", value, "countId");
            return (Criteria) this;
        }

        public Criteria andCountIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("count_id >=", value, "countId");
            return (Criteria) this;
        }

        public Criteria andCountIdLessThan(Integer value) {
            addCriterion("count_id <", value, "countId");
            return (Criteria) this;
        }

        public Criteria andCountIdLessThanOrEqualTo(Integer value) {
            addCriterion("count_id <=", value, "countId");
            return (Criteria) this;
        }

        public Criteria andCountIdIn(List<Integer> values) {
            addCriterion("count_id in", values, "countId");
            return (Criteria) this;
        }

        public Criteria andCountIdNotIn(List<Integer> values) {
            addCriterion("count_id not in", values, "countId");
            return (Criteria) this;
        }

        public Criteria andCountIdBetween(Integer value1, Integer value2) {
            addCriterion("count_id between", value1, value2, "countId");
            return (Criteria) this;
        }

        public Criteria andCountIdNotBetween(Integer value1, Integer value2) {
            addCriterion("count_id not between", value1, value2, "countId");
            return (Criteria) this;
        }

        public Criteria andCountNameIsNull() {
            addCriterion("count_name is null");
            return (Criteria) this;
        }

        public Criteria andCountNameIsNotNull() {
            addCriterion("count_name is not null");
            return (Criteria) this;
        }

        public Criteria andCountNameEqualTo(String value) {
            addCriterion("count_name =", value, "countName");
            return (Criteria) this;
        }

        public Criteria andCountNameNotEqualTo(String value) {
            addCriterion("count_name <>", value, "countName");
            return (Criteria) this;
        }

        public Criteria andCountNameGreaterThan(String value) {
            addCriterion("count_name >", value, "countName");
            return (Criteria) this;
        }

        public Criteria andCountNameGreaterThanOrEqualTo(String value) {
            addCriterion("count_name >=", value, "countName");
            return (Criteria) this;
        }

        public Criteria andCountNameLessThan(String value) {
            addCriterion("count_name <", value, "countName");
            return (Criteria) this;
        }

        public Criteria andCountNameLessThanOrEqualTo(String value) {
            addCriterion("count_name <=", value, "countName");
            return (Criteria) this;
        }

        public Criteria andCountNameLike(String value) {
            addCriterion("count_name like", value, "countName");
            return (Criteria) this;
        }

        public Criteria andCountNameNotLike(String value) {
            addCriterion("count_name not like", value, "countName");
            return (Criteria) this;
        }

        public Criteria andCountNameIn(List<String> values) {
            addCriterion("count_name in", values, "countName");
            return (Criteria) this;
        }

        public Criteria andCountNameNotIn(List<String> values) {
            addCriterion("count_name not in", values, "countName");
            return (Criteria) this;
        }

        public Criteria andCountNameBetween(String value1, String value2) {
            addCriterion("count_name between", value1, value2, "countName");
            return (Criteria) this;
        }

        public Criteria andCountNameNotBetween(String value1, String value2) {
            addCriterion("count_name not between", value1, value2, "countName");
            return (Criteria) this;
        }

        public Criteria andCountNumIsNull() {
            addCriterion("count_num is null");
            return (Criteria) this;
        }

        public Criteria andCountNumIsNotNull() {
            addCriterion("count_num is not null");
            return (Criteria) this;
        }

        public Criteria andCountNumEqualTo(Integer value) {
            addCriterion("count_num =", value, "countNum");
            return (Criteria) this;
        }

        public Criteria andCountNumNotEqualTo(Integer value) {
            addCriterion("count_num <>", value, "countNum");
            return (Criteria) this;
        }

        public Criteria andCountNumGreaterThan(Integer value) {
            addCriterion("count_num >", value, "countNum");
            return (Criteria) this;
        }

        public Criteria andCountNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("count_num >=", value, "countNum");
            return (Criteria) this;
        }

        public Criteria andCountNumLessThan(Integer value) {
            addCriterion("count_num <", value, "countNum");
            return (Criteria) this;
        }

        public Criteria andCountNumLessThanOrEqualTo(Integer value) {
            addCriterion("count_num <=", value, "countNum");
            return (Criteria) this;
        }

        public Criteria andCountNumIn(List<Integer> values) {
            addCriterion("count_num in", values, "countNum");
            return (Criteria) this;
        }

        public Criteria andCountNumNotIn(List<Integer> values) {
            addCriterion("count_num not in", values, "countNum");
            return (Criteria) this;
        }

        public Criteria andCountNumBetween(Integer value1, Integer value2) {
            addCriterion("count_num between", value1, value2, "countNum");
            return (Criteria) this;
        }

        public Criteria andCountNumNotBetween(Integer value1, Integer value2) {
            addCriterion("count_num not between", value1, value2, "countNum");
            return (Criteria) this;
        }

        public Criteria andCountTypeIsNull() {
            addCriterion("count_type is null");
            return (Criteria) this;
        }

        public Criteria andCountTypeIsNotNull() {
            addCriterion("count_type is not null");
            return (Criteria) this;
        }

        public Criteria andCountTypeEqualTo(Integer value) {
            addCriterion("count_type =", value, "countType");
            return (Criteria) this;
        }

        public Criteria andCountTypeNotEqualTo(Integer value) {
            addCriterion("count_type <>", value, "countType");
            return (Criteria) this;
        }

        public Criteria andCountTypeGreaterThan(Integer value) {
            addCriterion("count_type >", value, "countType");
            return (Criteria) this;
        }

        public Criteria andCountTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("count_type >=", value, "countType");
            return (Criteria) this;
        }

        public Criteria andCountTypeLessThan(Integer value) {
            addCriterion("count_type <", value, "countType");
            return (Criteria) this;
        }

        public Criteria andCountTypeLessThanOrEqualTo(Integer value) {
            addCriterion("count_type <=", value, "countType");
            return (Criteria) this;
        }

        public Criteria andCountTypeIn(List<Integer> values) {
            addCriterion("count_type in", values, "countType");
            return (Criteria) this;
        }

        public Criteria andCountTypeNotIn(List<Integer> values) {
            addCriterion("count_type not in", values, "countType");
            return (Criteria) this;
        }

        public Criteria andCountTypeBetween(Integer value1, Integer value2) {
            addCriterion("count_type between", value1, value2, "countType");
            return (Criteria) this;
        }

        public Criteria andCountTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("count_type not between", value1, value2, "countType");
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