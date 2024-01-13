package com.bean;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TContractExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TContractExample() {
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

        public Criteria andConNumIsNull() {
            addCriterion("con_num is null");
            return (Criteria) this;
        }

        public Criteria andConNumIsNotNull() {
            addCriterion("con_num is not null");
            return (Criteria) this;
        }

        public Criteria andConNumEqualTo(Integer value) {
            addCriterion("con_num =", value, "conNum");
            return (Criteria) this;
        }

        public Criteria andConNumNotEqualTo(Integer value) {
            addCriterion("con_num <>", value, "conNum");
            return (Criteria) this;
        }

        public Criteria andConNumGreaterThan(Integer value) {
            addCriterion("con_num >", value, "conNum");
            return (Criteria) this;
        }

        public Criteria andConNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("con_num >=", value, "conNum");
            return (Criteria) this;
        }

        public Criteria andConNumLessThan(Integer value) {
            addCriterion("con_num <", value, "conNum");
            return (Criteria) this;
        }

        public Criteria andConNumLessThanOrEqualTo(Integer value) {
            addCriterion("con_num <=", value, "conNum");
            return (Criteria) this;
        }

        public Criteria andConNumIn(List<Integer> values) {
            addCriterion("con_num in", values, "conNum");
            return (Criteria) this;
        }

        public Criteria andConNumNotIn(List<Integer> values) {
            addCriterion("con_num not in", values, "conNum");
            return (Criteria) this;
        }

        public Criteria andConNumBetween(Integer value1, Integer value2) {
            addCriterion("con_num between", value1, value2, "conNum");
            return (Criteria) this;
        }

        public Criteria andConNumNotBetween(Integer value1, Integer value2) {
            addCriterion("con_num not between", value1, value2, "conNum");
            return (Criteria) this;
        }

        public Criteria andConAddressIsNull() {
            addCriterion("con_address is null");
            return (Criteria) this;
        }

        public Criteria andConAddressIsNotNull() {
            addCriterion("con_address is not null");
            return (Criteria) this;
        }

        public Criteria andConAddressEqualTo(String value) {
            addCriterion("con_address =", value, "conAddress");
            return (Criteria) this;
        }

        public Criteria andConAddressNotEqualTo(String value) {
            addCriterion("con_address <>", value, "conAddress");
            return (Criteria) this;
        }

        public Criteria andConAddressGreaterThan(String value) {
            addCriterion("con_address >", value, "conAddress");
            return (Criteria) this;
        }

        public Criteria andConAddressGreaterThanOrEqualTo(String value) {
            addCriterion("con_address >=", value, "conAddress");
            return (Criteria) this;
        }

        public Criteria andConAddressLessThan(String value) {
            addCriterion("con_address <", value, "conAddress");
            return (Criteria) this;
        }

        public Criteria andConAddressLessThanOrEqualTo(String value) {
            addCriterion("con_address <=", value, "conAddress");
            return (Criteria) this;
        }

        public Criteria andConAddressLike(String value) {
            addCriterion("con_address like", value, "conAddress");
            return (Criteria) this;
        }

        public Criteria andConAddressNotLike(String value) {
            addCriterion("con_address not like", value, "conAddress");
            return (Criteria) this;
        }

        public Criteria andConAddressIn(List<String> values) {
            addCriterion("con_address in", values, "conAddress");
            return (Criteria) this;
        }

        public Criteria andConAddressNotIn(List<String> values) {
            addCriterion("con_address not in", values, "conAddress");
            return (Criteria) this;
        }

        public Criteria andConAddressBetween(String value1, String value2) {
            addCriterion("con_address between", value1, value2, "conAddress");
            return (Criteria) this;
        }

        public Criteria andConAddressNotBetween(String value1, String value2) {
            addCriterion("con_address not between", value1, value2, "conAddress");
            return (Criteria) this;
        }

        public Criteria andConTimeIsNull() {
            addCriterion("con_time is null");
            return (Criteria) this;
        }

        public Criteria andConTimeIsNotNull() {
            addCriterion("con_time is not null");
            return (Criteria) this;
        }

        public Criteria andConTimeEqualTo(String value) {
            addCriterion("con_time =", value, "conTime");
            return (Criteria) this;
        }

        public Criteria andConTimeNotEqualTo(String value) {
            addCriterion("con_time <>", value, "conTime");
            return (Criteria) this;
        }

        public Criteria andConTimeGreaterThan(String value) {
            addCriterion("con_time >", value, "conTime");
            return (Criteria) this;
        }

        public Criteria andConTimeGreaterThanOrEqualTo(String value) {
            addCriterion("con_time >=", value, "conTime");
            return (Criteria) this;
        }

        public Criteria andConTimeLessThan(String value) {
            addCriterion("con_time <", value, "conTime");
            return (Criteria) this;
        }

        public Criteria andConTimeLessThanOrEqualTo(String value) {
            addCriterion("con_time <=", value, "conTime");
            return (Criteria) this;
        }

        public Criteria andConTimeLike(String value) {
            addCriterion("con_time like", value, "conTime");
            return (Criteria) this;
        }

        public Criteria andConTimeNotLike(String value) {
            addCriterion("con_time not like", value, "conTime");
            return (Criteria) this;
        }

        public Criteria andConTimeIn(List<String> values) {
            addCriterion("con_time in", values, "conTime");
            return (Criteria) this;
        }

        public Criteria andConTimeNotIn(List<String> values) {
            addCriterion("con_time not in", values, "conTime");
            return (Criteria) this;
        }

        public Criteria andConTimeBetween(String value1, String value2) {
            addCriterion("con_time between", value1, value2, "conTime");
            return (Criteria) this;
        }

        public Criteria andConTimeNotBetween(String value1, String value2) {
            addCriterion("con_time not between", value1, value2, "conTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeIsNull() {
            addCriterion("start_time is null");
            return (Criteria) this;
        }

        public Criteria andStartTimeIsNotNull() {
            addCriterion("start_time is not null");
            return (Criteria) this;
        }

        public Criteria andStartTimeEqualTo(Date value) {
            addCriterion("start_time =", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotEqualTo(Date value) {
            addCriterion("start_time <>", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeGreaterThan(Date value) {
            addCriterion("start_time >", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("start_time >=", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeLessThan(Date value) {
            addCriterion("start_time <", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeLessThanOrEqualTo(Date value) {
            addCriterion("start_time <=", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeIn(List<Date> values) {
            addCriterion("start_time in", values, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotIn(List<Date> values) {
            addCriterion("start_time not in", values, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeBetween(Date value1, Date value2) {
            addCriterion("start_time between", value1, value2, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotBetween(Date value1, Date value2) {
            addCriterion("start_time not between", value1, value2, "startTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeIsNull() {
            addCriterion("end_time is null");
            return (Criteria) this;
        }

        public Criteria andEndTimeIsNotNull() {
            addCriterion("end_time is not null");
            return (Criteria) this;
        }

        public Criteria andEndTimeEqualTo(Date value) {
            addCriterion("end_time =", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeNotEqualTo(Date value) {
            addCriterion("end_time <>", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeGreaterThan(Date value) {
            addCriterion("end_time >", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("end_time >=", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeLessThan(Date value) {
            addCriterion("end_time <", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeLessThanOrEqualTo(Date value) {
            addCriterion("end_time <=", value, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeIn(List<Date> values) {
            addCriterion("end_time in", values, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeNotIn(List<Date> values) {
            addCriterion("end_time not in", values, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeBetween(Date value1, Date value2) {
            addCriterion("end_time between", value1, value2, "endTime");
            return (Criteria) this;
        }

        public Criteria andEndTimeNotBetween(Date value1, Date value2) {
            addCriterion("end_time not between", value1, value2, "endTime");
            return (Criteria) this;
        }

        public Criteria andPayTimeIsNull() {
            addCriterion("pay_time is null");
            return (Criteria) this;
        }

        public Criteria andPayTimeIsNotNull() {
            addCriterion("pay_time is not null");
            return (Criteria) this;
        }

        public Criteria andPayTimeEqualTo(Date value) {
            addCriterion("pay_time =", value, "payTime");
            return (Criteria) this;
        }

        public Criteria andPayTimeNotEqualTo(Date value) {
            addCriterion("pay_time <>", value, "payTime");
            return (Criteria) this;
        }

        public Criteria andPayTimeGreaterThan(Date value) {
            addCriterion("pay_time >", value, "payTime");
            return (Criteria) this;
        }

        public Criteria andPayTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("pay_time >=", value, "payTime");
            return (Criteria) this;
        }

        public Criteria andPayTimeLessThan(Date value) {
            addCriterion("pay_time <", value, "payTime");
            return (Criteria) this;
        }

        public Criteria andPayTimeLessThanOrEqualTo(Date value) {
            addCriterion("pay_time <=", value, "payTime");
            return (Criteria) this;
        }

        public Criteria andPayTimeIn(List<Date> values) {
            addCriterion("pay_time in", values, "payTime");
            return (Criteria) this;
        }

        public Criteria andPayTimeNotIn(List<Date> values) {
            addCriterion("pay_time not in", values, "payTime");
            return (Criteria) this;
        }

        public Criteria andPayTimeBetween(Date value1, Date value2) {
            addCriterion("pay_time between", value1, value2, "payTime");
            return (Criteria) this;
        }

        public Criteria andPayTimeNotBetween(Date value1, Date value2) {
            addCriterion("pay_time not between", value1, value2, "payTime");
            return (Criteria) this;
        }

        public Criteria andMonthMoneyIsNull() {
            addCriterion("month_money is null");
            return (Criteria) this;
        }

        public Criteria andMonthMoneyIsNotNull() {
            addCriterion("month_money is not null");
            return (Criteria) this;
        }

        public Criteria andMonthMoneyEqualTo(BigDecimal value) {
            addCriterion("month_money =", value, "monthMoney");
            return (Criteria) this;
        }

        public Criteria andMonthMoneyNotEqualTo(BigDecimal value) {
            addCriterion("month_money <>", value, "monthMoney");
            return (Criteria) this;
        }

        public Criteria andMonthMoneyGreaterThan(BigDecimal value) {
            addCriterion("month_money >", value, "monthMoney");
            return (Criteria) this;
        }

        public Criteria andMonthMoneyGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("month_money >=", value, "monthMoney");
            return (Criteria) this;
        }

        public Criteria andMonthMoneyLessThan(BigDecimal value) {
            addCriterion("month_money <", value, "monthMoney");
            return (Criteria) this;
        }

        public Criteria andMonthMoneyLessThanOrEqualTo(BigDecimal value) {
            addCriterion("month_money <=", value, "monthMoney");
            return (Criteria) this;
        }

        public Criteria andMonthMoneyIn(List<BigDecimal> values) {
            addCriterion("month_money in", values, "monthMoney");
            return (Criteria) this;
        }

        public Criteria andMonthMoneyNotIn(List<BigDecimal> values) {
            addCriterion("month_money not in", values, "monthMoney");
            return (Criteria) this;
        }

        public Criteria andMonthMoneyBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("month_money between", value1, value2, "monthMoney");
            return (Criteria) this;
        }

        public Criteria andMonthMoneyNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("month_money not between", value1, value2, "monthMoney");
            return (Criteria) this;
        }

        public Criteria andTotalMoneyIsNull() {
            addCriterion("total_money is null");
            return (Criteria) this;
        }

        public Criteria andTotalMoneyIsNotNull() {
            addCriterion("total_money is not null");
            return (Criteria) this;
        }

        public Criteria andTotalMoneyEqualTo(BigDecimal value) {
            addCriterion("total_money =", value, "totalMoney");
            return (Criteria) this;
        }

        public Criteria andTotalMoneyNotEqualTo(BigDecimal value) {
            addCriterion("total_money <>", value, "totalMoney");
            return (Criteria) this;
        }

        public Criteria andTotalMoneyGreaterThan(BigDecimal value) {
            addCriterion("total_money >", value, "totalMoney");
            return (Criteria) this;
        }

        public Criteria andTotalMoneyGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("total_money >=", value, "totalMoney");
            return (Criteria) this;
        }

        public Criteria andTotalMoneyLessThan(BigDecimal value) {
            addCriterion("total_money <", value, "totalMoney");
            return (Criteria) this;
        }

        public Criteria andTotalMoneyLessThanOrEqualTo(BigDecimal value) {
            addCriterion("total_money <=", value, "totalMoney");
            return (Criteria) this;
        }

        public Criteria andTotalMoneyIn(List<BigDecimal> values) {
            addCriterion("total_money in", values, "totalMoney");
            return (Criteria) this;
        }

        public Criteria andTotalMoneyNotIn(List<BigDecimal> values) {
            addCriterion("total_money not in", values, "totalMoney");
            return (Criteria) this;
        }

        public Criteria andTotalMoneyBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("total_money between", value1, value2, "totalMoney");
            return (Criteria) this;
        }

        public Criteria andTotalMoneyNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("total_money not between", value1, value2, "totalMoney");
            return (Criteria) this;
        }

        public Criteria andDepositIsNull() {
            addCriterion("deposit is null");
            return (Criteria) this;
        }

        public Criteria andDepositIsNotNull() {
            addCriterion("deposit is not null");
            return (Criteria) this;
        }

        public Criteria andDepositEqualTo(BigDecimal value) {
            addCriterion("deposit =", value, "deposit");
            return (Criteria) this;
        }

        public Criteria andDepositNotEqualTo(BigDecimal value) {
            addCriterion("deposit <>", value, "deposit");
            return (Criteria) this;
        }

        public Criteria andDepositGreaterThan(BigDecimal value) {
            addCriterion("deposit >", value, "deposit");
            return (Criteria) this;
        }

        public Criteria andDepositGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("deposit >=", value, "deposit");
            return (Criteria) this;
        }

        public Criteria andDepositLessThan(BigDecimal value) {
            addCriterion("deposit <", value, "deposit");
            return (Criteria) this;
        }

        public Criteria andDepositLessThanOrEqualTo(BigDecimal value) {
            addCriterion("deposit <=", value, "deposit");
            return (Criteria) this;
        }

        public Criteria andDepositIn(List<BigDecimal> values) {
            addCriterion("deposit in", values, "deposit");
            return (Criteria) this;
        }

        public Criteria andDepositNotIn(List<BigDecimal> values) {
            addCriterion("deposit not in", values, "deposit");
            return (Criteria) this;
        }

        public Criteria andDepositBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("deposit between", value1, value2, "deposit");
            return (Criteria) this;
        }

        public Criteria andDepositNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("deposit not between", value1, value2, "deposit");
            return (Criteria) this;
        }

        public Criteria andFirstPartyIsNull() {
            addCriterion("first_party is null");
            return (Criteria) this;
        }

        public Criteria andFirstPartyIsNotNull() {
            addCriterion("first_party is not null");
            return (Criteria) this;
        }

        public Criteria andFirstPartyEqualTo(String value) {
            addCriterion("first_party =", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyNotEqualTo(String value) {
            addCriterion("first_party <>", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyGreaterThan(String value) {
            addCriterion("first_party >", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyGreaterThanOrEqualTo(String value) {
            addCriterion("first_party >=", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyLessThan(String value) {
            addCriterion("first_party <", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyLessThanOrEqualTo(String value) {
            addCriterion("first_party <=", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyLike(String value) {
            addCriterion("first_party like", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyNotLike(String value) {
            addCriterion("first_party not like", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyIn(List<String> values) {
            addCriterion("first_party in", values, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyNotIn(List<String> values) {
            addCriterion("first_party not in", values, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyBetween(String value1, String value2) {
            addCriterion("first_party between", value1, value2, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyNotBetween(String value1, String value2) {
            addCriterion("first_party not between", value1, value2, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneIsNull() {
            addCriterion("first_phone is null");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneIsNotNull() {
            addCriterion("first_phone is not null");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneEqualTo(String value) {
            addCriterion("first_phone =", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneNotEqualTo(String value) {
            addCriterion("first_phone <>", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneGreaterThan(String value) {
            addCriterion("first_phone >", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("first_phone >=", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneLessThan(String value) {
            addCriterion("first_phone <", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneLessThanOrEqualTo(String value) {
            addCriterion("first_phone <=", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneLike(String value) {
            addCriterion("first_phone like", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneNotLike(String value) {
            addCriterion("first_phone not like", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneIn(List<String> values) {
            addCriterion("first_phone in", values, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneNotIn(List<String> values) {
            addCriterion("first_phone not in", values, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneBetween(String value1, String value2) {
            addCriterion("first_phone between", value1, value2, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneNotBetween(String value1, String value2) {
            addCriterion("first_phone not between", value1, value2, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPartyIsNull() {
            addCriterion("second_party is null");
            return (Criteria) this;
        }

        public Criteria andSecondPartyIsNotNull() {
            addCriterion("second_party is not null");
            return (Criteria) this;
        }

        public Criteria andSecondPartyEqualTo(String value) {
            addCriterion("second_party =", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyNotEqualTo(String value) {
            addCriterion("second_party <>", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyGreaterThan(String value) {
            addCriterion("second_party >", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyGreaterThanOrEqualTo(String value) {
            addCriterion("second_party >=", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyLessThan(String value) {
            addCriterion("second_party <", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyLessThanOrEqualTo(String value) {
            addCriterion("second_party <=", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyLike(String value) {
            addCriterion("second_party like", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyNotLike(String value) {
            addCriterion("second_party not like", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyIn(List<String> values) {
            addCriterion("second_party in", values, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyNotIn(List<String> values) {
            addCriterion("second_party not in", values, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyBetween(String value1, String value2) {
            addCriterion("second_party between", value1, value2, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyNotBetween(String value1, String value2) {
            addCriterion("second_party not between", value1, value2, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneIsNull() {
            addCriterion("second_phone is null");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneIsNotNull() {
            addCriterion("second_phone is not null");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneEqualTo(String value) {
            addCriterion("second_phone =", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneNotEqualTo(String value) {
            addCriterion("second_phone <>", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneGreaterThan(String value) {
            addCriterion("second_phone >", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("second_phone >=", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneLessThan(String value) {
            addCriterion("second_phone <", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneLessThanOrEqualTo(String value) {
            addCriterion("second_phone <=", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneLike(String value) {
            addCriterion("second_phone like", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneNotLike(String value) {
            addCriterion("second_phone not like", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneIn(List<String> values) {
            addCriterion("second_phone in", values, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneNotIn(List<String> values) {
            addCriterion("second_phone not in", values, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneBetween(String value1, String value2) {
            addCriterion("second_phone between", value1, value2, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneNotBetween(String value1, String value2) {
            addCriterion("second_phone not between", value1, value2, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andConStatusIsNull() {
            addCriterion("con_status is null");
            return (Criteria) this;
        }

        public Criteria andConStatusIsNotNull() {
            addCriterion("con_status is not null");
            return (Criteria) this;
        }

        public Criteria andConStatusEqualTo(Integer value) {
            addCriterion("con_status =", value, "conStatus");
            return (Criteria) this;
        }

        public Criteria andConStatusNotEqualTo(Integer value) {
            addCriterion("con_status <>", value, "conStatus");
            return (Criteria) this;
        }

        public Criteria andConStatusGreaterThan(Integer value) {
            addCriterion("con_status >", value, "conStatus");
            return (Criteria) this;
        }

        public Criteria andConStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("con_status >=", value, "conStatus");
            return (Criteria) this;
        }

        public Criteria andConStatusLessThan(Integer value) {
            addCriterion("con_status <", value, "conStatus");
            return (Criteria) this;
        }

        public Criteria andConStatusLessThanOrEqualTo(Integer value) {
            addCriterion("con_status <=", value, "conStatus");
            return (Criteria) this;
        }

        public Criteria andConStatusIn(List<Integer> values) {
            addCriterion("con_status in", values, "conStatus");
            return (Criteria) this;
        }

        public Criteria andConStatusNotIn(List<Integer> values) {
            addCriterion("con_status not in", values, "conStatus");
            return (Criteria) this;
        }

        public Criteria andConStatusBetween(Integer value1, Integer value2) {
            addCriterion("con_status between", value1, value2, "conStatus");
            return (Criteria) this;
        }

        public Criteria andConStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("con_status not between", value1, value2, "conStatus");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeIsNull() {
            addCriterion("con_create_time is null");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeIsNotNull() {
            addCriterion("con_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeEqualTo(Date value) {
            addCriterion("con_create_time =", value, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeNotEqualTo(Date value) {
            addCriterion("con_create_time <>", value, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeGreaterThan(Date value) {
            addCriterion("con_create_time >", value, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("con_create_time >=", value, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeLessThan(Date value) {
            addCriterion("con_create_time <", value, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("con_create_time <=", value, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeIn(List<Date> values) {
            addCriterion("con_create_time in", values, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeNotIn(List<Date> values) {
            addCriterion("con_create_time not in", values, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeBetween(Date value1, Date value2) {
            addCriterion("con_create_time between", value1, value2, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("con_create_time not between", value1, value2, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andFirstIdIsNull() {
            addCriterion("first_id is null");
            return (Criteria) this;
        }

        public Criteria andFirstIdIsNotNull() {
            addCriterion("first_id is not null");
            return (Criteria) this;
        }

        public Criteria andFirstIdEqualTo(Integer value) {
            addCriterion("first_id =", value, "firstId");
            return (Criteria) this;
        }

        public Criteria andFirstIdNotEqualTo(Integer value) {
            addCriterion("first_id <>", value, "firstId");
            return (Criteria) this;
        }

        public Criteria andFirstIdGreaterThan(Integer value) {
            addCriterion("first_id >", value, "firstId");
            return (Criteria) this;
        }

        public Criteria andFirstIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("first_id >=", value, "firstId");
            return (Criteria) this;
        }

        public Criteria andFirstIdLessThan(Integer value) {
            addCriterion("first_id <", value, "firstId");
            return (Criteria) this;
        }

        public Criteria andFirstIdLessThanOrEqualTo(Integer value) {
            addCriterion("first_id <=", value, "firstId");
            return (Criteria) this;
        }

        public Criteria andFirstIdIn(List<Integer> values) {
            addCriterion("first_id in", values, "firstId");
            return (Criteria) this;
        }

        public Criteria andFirstIdNotIn(List<Integer> values) {
            addCriterion("first_id not in", values, "firstId");
            return (Criteria) this;
        }

        public Criteria andFirstIdBetween(Integer value1, Integer value2) {
            addCriterion("first_id between", value1, value2, "firstId");
            return (Criteria) this;
        }

        public Criteria andFirstIdNotBetween(Integer value1, Integer value2) {
            addCriterion("first_id not between", value1, value2, "firstId");
            return (Criteria) this;
        }

        public Criteria andSecondIdIsNull() {
            addCriterion("second_id is null");
            return (Criteria) this;
        }

        public Criteria andSecondIdIsNotNull() {
            addCriterion("second_id is not null");
            return (Criteria) this;
        }

        public Criteria andSecondIdEqualTo(Integer value) {
            addCriterion("second_id =", value, "secondId");
            return (Criteria) this;
        }

        public Criteria andSecondIdNotEqualTo(Integer value) {
            addCriterion("second_id <>", value, "secondId");
            return (Criteria) this;
        }

        public Criteria andSecondIdGreaterThan(Integer value) {
            addCriterion("second_id >", value, "secondId");
            return (Criteria) this;
        }

        public Criteria andSecondIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("second_id >=", value, "secondId");
            return (Criteria) this;
        }

        public Criteria andSecondIdLessThan(Integer value) {
            addCriterion("second_id <", value, "secondId");
            return (Criteria) this;
        }

        public Criteria andSecondIdLessThanOrEqualTo(Integer value) {
            addCriterion("second_id <=", value, "secondId");
            return (Criteria) this;
        }

        public Criteria andSecondIdIn(List<Integer> values) {
            addCriterion("second_id in", values, "secondId");
            return (Criteria) this;
        }

        public Criteria andSecondIdNotIn(List<Integer> values) {
            addCriterion("second_id not in", values, "secondId");
            return (Criteria) this;
        }

        public Criteria andSecondIdBetween(Integer value1, Integer value2) {
            addCriterion("second_id between", value1, value2, "secondId");
            return (Criteria) this;
        }

        public Criteria andSecondIdNotBetween(Integer value1, Integer value2) {
            addCriterion("second_id not between", value1, value2, "secondId");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andRentoutIdIsNull() {
            addCriterion("rentout_id is null");
            return (Criteria) this;
        }

        public Criteria andRentoutIdIsNotNull() {
            addCriterion("rentout_id is not null");
            return (Criteria) this;
        }

        public Criteria andRentoutIdEqualTo(Integer value) {
            addCriterion("rentout_id =", value, "rentoutId");
            return (Criteria) this;
        }

        public Criteria andRentoutIdNotEqualTo(Integer value) {
            addCriterion("rentout_id <>", value, "rentoutId");
            return (Criteria) this;
        }

        public Criteria andRentoutIdGreaterThan(Integer value) {
            addCriterion("rentout_id >", value, "rentoutId");
            return (Criteria) this;
        }

        public Criteria andRentoutIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("rentout_id >=", value, "rentoutId");
            return (Criteria) this;
        }

        public Criteria andRentoutIdLessThan(Integer value) {
            addCriterion("rentout_id <", value, "rentoutId");
            return (Criteria) this;
        }

        public Criteria andRentoutIdLessThanOrEqualTo(Integer value) {
            addCriterion("rentout_id <=", value, "rentoutId");
            return (Criteria) this;
        }

        public Criteria andRentoutIdIn(List<Integer> values) {
            addCriterion("rentout_id in", values, "rentoutId");
            return (Criteria) this;
        }

        public Criteria andRentoutIdNotIn(List<Integer> values) {
            addCriterion("rentout_id not in", values, "rentoutId");
            return (Criteria) this;
        }

        public Criteria andRentoutIdBetween(Integer value1, Integer value2) {
            addCriterion("rentout_id between", value1, value2, "rentoutId");
            return (Criteria) this;
        }

        public Criteria andRentoutIdNotBetween(Integer value1, Integer value2) {
            addCriterion("rentout_id not between", value1, value2, "rentoutId");
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