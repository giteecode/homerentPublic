package com.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TRentgetExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TRentgetExample() {
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

        public Criteria andRgIdIsNull() {
            addCriterion("rg_id is null");
            return (Criteria) this;
        }

        public Criteria andRgIdIsNotNull() {
            addCriterion("rg_id is not null");
            return (Criteria) this;
        }

        public Criteria andRgIdEqualTo(Integer value) {
            addCriterion("rg_id =", value, "rgId");
            return (Criteria) this;
        }

        public Criteria andRgIdNotEqualTo(Integer value) {
            addCriterion("rg_id <>", value, "rgId");
            return (Criteria) this;
        }

        public Criteria andRgIdGreaterThan(Integer value) {
            addCriterion("rg_id >", value, "rgId");
            return (Criteria) this;
        }

        public Criteria andRgIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("rg_id >=", value, "rgId");
            return (Criteria) this;
        }

        public Criteria andRgIdLessThan(Integer value) {
            addCriterion("rg_id <", value, "rgId");
            return (Criteria) this;
        }

        public Criteria andRgIdLessThanOrEqualTo(Integer value) {
            addCriterion("rg_id <=", value, "rgId");
            return (Criteria) this;
        }

        public Criteria andRgIdIn(List<Integer> values) {
            addCriterion("rg_id in", values, "rgId");
            return (Criteria) this;
        }

        public Criteria andRgIdNotIn(List<Integer> values) {
            addCriterion("rg_id not in", values, "rgId");
            return (Criteria) this;
        }

        public Criteria andRgIdBetween(Integer value1, Integer value2) {
            addCriterion("rg_id between", value1, value2, "rgId");
            return (Criteria) this;
        }

        public Criteria andRgIdNotBetween(Integer value1, Integer value2) {
            addCriterion("rg_id not between", value1, value2, "rgId");
            return (Criteria) this;
        }

        public Criteria andRgNameIsNull() {
            addCriterion("rg_name is null");
            return (Criteria) this;
        }

        public Criteria andRgNameIsNotNull() {
            addCriterion("rg_name is not null");
            return (Criteria) this;
        }

        public Criteria andRgNameEqualTo(String value) {
            addCriterion("rg_name =", value, "rgName");
            return (Criteria) this;
        }

        public Criteria andRgNameNotEqualTo(String value) {
            addCriterion("rg_name <>", value, "rgName");
            return (Criteria) this;
        }

        public Criteria andRgNameGreaterThan(String value) {
            addCriterion("rg_name >", value, "rgName");
            return (Criteria) this;
        }

        public Criteria andRgNameGreaterThanOrEqualTo(String value) {
            addCriterion("rg_name >=", value, "rgName");
            return (Criteria) this;
        }

        public Criteria andRgNameLessThan(String value) {
            addCriterion("rg_name <", value, "rgName");
            return (Criteria) this;
        }

        public Criteria andRgNameLessThanOrEqualTo(String value) {
            addCriterion("rg_name <=", value, "rgName");
            return (Criteria) this;
        }

        public Criteria andRgNameLike(String value) {
            addCriterion("rg_name like", value, "rgName");
            return (Criteria) this;
        }

        public Criteria andRgNameNotLike(String value) {
            addCriterion("rg_name not like", value, "rgName");
            return (Criteria) this;
        }

        public Criteria andRgNameIn(List<String> values) {
            addCriterion("rg_name in", values, "rgName");
            return (Criteria) this;
        }

        public Criteria andRgNameNotIn(List<String> values) {
            addCriterion("rg_name not in", values, "rgName");
            return (Criteria) this;
        }

        public Criteria andRgNameBetween(String value1, String value2) {
            addCriterion("rg_name between", value1, value2, "rgName");
            return (Criteria) this;
        }

        public Criteria andRgNameNotBetween(String value1, String value2) {
            addCriterion("rg_name not between", value1, value2, "rgName");
            return (Criteria) this;
        }

        public Criteria andRgPhoneIsNull() {
            addCriterion("rg_phone is null");
            return (Criteria) this;
        }

        public Criteria andRgPhoneIsNotNull() {
            addCriterion("rg_phone is not null");
            return (Criteria) this;
        }

        public Criteria andRgPhoneEqualTo(String value) {
            addCriterion("rg_phone =", value, "rgPhone");
            return (Criteria) this;
        }

        public Criteria andRgPhoneNotEqualTo(String value) {
            addCriterion("rg_phone <>", value, "rgPhone");
            return (Criteria) this;
        }

        public Criteria andRgPhoneGreaterThan(String value) {
            addCriterion("rg_phone >", value, "rgPhone");
            return (Criteria) this;
        }

        public Criteria andRgPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("rg_phone >=", value, "rgPhone");
            return (Criteria) this;
        }

        public Criteria andRgPhoneLessThan(String value) {
            addCriterion("rg_phone <", value, "rgPhone");
            return (Criteria) this;
        }

        public Criteria andRgPhoneLessThanOrEqualTo(String value) {
            addCriterion("rg_phone <=", value, "rgPhone");
            return (Criteria) this;
        }

        public Criteria andRgPhoneLike(String value) {
            addCriterion("rg_phone like", value, "rgPhone");
            return (Criteria) this;
        }

        public Criteria andRgPhoneNotLike(String value) {
            addCriterion("rg_phone not like", value, "rgPhone");
            return (Criteria) this;
        }

        public Criteria andRgPhoneIn(List<String> values) {
            addCriterion("rg_phone in", values, "rgPhone");
            return (Criteria) this;
        }

        public Criteria andRgPhoneNotIn(List<String> values) {
            addCriterion("rg_phone not in", values, "rgPhone");
            return (Criteria) this;
        }

        public Criteria andRgPhoneBetween(String value1, String value2) {
            addCriterion("rg_phone between", value1, value2, "rgPhone");
            return (Criteria) this;
        }

        public Criteria andRgPhoneNotBetween(String value1, String value2) {
            addCriterion("rg_phone not between", value1, value2, "rgPhone");
            return (Criteria) this;
        }

        public Criteria andRgTitleIsNull() {
            addCriterion("rg_title is null");
            return (Criteria) this;
        }

        public Criteria andRgTitleIsNotNull() {
            addCriterion("rg_title is not null");
            return (Criteria) this;
        }

        public Criteria andRgTitleEqualTo(String value) {
            addCriterion("rg_title =", value, "rgTitle");
            return (Criteria) this;
        }

        public Criteria andRgTitleNotEqualTo(String value) {
            addCriterion("rg_title <>", value, "rgTitle");
            return (Criteria) this;
        }

        public Criteria andRgTitleGreaterThan(String value) {
            addCriterion("rg_title >", value, "rgTitle");
            return (Criteria) this;
        }

        public Criteria andRgTitleGreaterThanOrEqualTo(String value) {
            addCriterion("rg_title >=", value, "rgTitle");
            return (Criteria) this;
        }

        public Criteria andRgTitleLessThan(String value) {
            addCriterion("rg_title <", value, "rgTitle");
            return (Criteria) this;
        }

        public Criteria andRgTitleLessThanOrEqualTo(String value) {
            addCriterion("rg_title <=", value, "rgTitle");
            return (Criteria) this;
        }

        public Criteria andRgTitleLike(String value) {
            addCriterion("rg_title like", value, "rgTitle");
            return (Criteria) this;
        }

        public Criteria andRgTitleNotLike(String value) {
            addCriterion("rg_title not like", value, "rgTitle");
            return (Criteria) this;
        }

        public Criteria andRgTitleIn(List<String> values) {
            addCriterion("rg_title in", values, "rgTitle");
            return (Criteria) this;
        }

        public Criteria andRgTitleNotIn(List<String> values) {
            addCriterion("rg_title not in", values, "rgTitle");
            return (Criteria) this;
        }

        public Criteria andRgTitleBetween(String value1, String value2) {
            addCriterion("rg_title between", value1, value2, "rgTitle");
            return (Criteria) this;
        }

        public Criteria andRgTitleNotBetween(String value1, String value2) {
            addCriterion("rg_title not between", value1, value2, "rgTitle");
            return (Criteria) this;
        }

        public Criteria andMinPriceIsNull() {
            addCriterion("min_price is null");
            return (Criteria) this;
        }

        public Criteria andMinPriceIsNotNull() {
            addCriterion("min_price is not null");
            return (Criteria) this;
        }

        public Criteria andMinPriceEqualTo(Double value) {
            addCriterion("min_price =", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceNotEqualTo(Double value) {
            addCriterion("min_price <>", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceGreaterThan(Double value) {
            addCriterion("min_price >", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("min_price >=", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceLessThan(Double value) {
            addCriterion("min_price <", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceLessThanOrEqualTo(Double value) {
            addCriterion("min_price <=", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceIn(List<Double> values) {
            addCriterion("min_price in", values, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceNotIn(List<Double> values) {
            addCriterion("min_price not in", values, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceBetween(Double value1, Double value2) {
            addCriterion("min_price between", value1, value2, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceNotBetween(Double value1, Double value2) {
            addCriterion("min_price not between", value1, value2, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceIsNull() {
            addCriterion("max_price is null");
            return (Criteria) this;
        }

        public Criteria andMaxPriceIsNotNull() {
            addCriterion("max_price is not null");
            return (Criteria) this;
        }

        public Criteria andMaxPriceEqualTo(Double value) {
            addCriterion("max_price =", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceNotEqualTo(Double value) {
            addCriterion("max_price <>", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceGreaterThan(Double value) {
            addCriterion("max_price >", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("max_price >=", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceLessThan(Double value) {
            addCriterion("max_price <", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceLessThanOrEqualTo(Double value) {
            addCriterion("max_price <=", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceIn(List<Double> values) {
            addCriterion("max_price in", values, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceNotIn(List<Double> values) {
            addCriterion("max_price not in", values, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceBetween(Double value1, Double value2) {
            addCriterion("max_price between", value1, value2, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceNotBetween(Double value1, Double value2) {
            addCriterion("max_price not between", value1, value2, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andLiveTimeIsNull() {
            addCriterion("live_time is null");
            return (Criteria) this;
        }

        public Criteria andLiveTimeIsNotNull() {
            addCriterion("live_time is not null");
            return (Criteria) this;
        }

        public Criteria andLiveTimeEqualTo(Date value) {
            addCriterion("live_time =", value, "liveTime");
            return (Criteria) this;
        }

        public Criteria andLiveTimeNotEqualTo(Date value) {
            addCriterion("live_time <>", value, "liveTime");
            return (Criteria) this;
        }

        public Criteria andLiveTimeGreaterThan(Date value) {
            addCriterion("live_time >", value, "liveTime");
            return (Criteria) this;
        }

        public Criteria andLiveTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("live_time >=", value, "liveTime");
            return (Criteria) this;
        }

        public Criteria andLiveTimeLessThan(Date value) {
            addCriterion("live_time <", value, "liveTime");
            return (Criteria) this;
        }

        public Criteria andLiveTimeLessThanOrEqualTo(Date value) {
            addCriterion("live_time <=", value, "liveTime");
            return (Criteria) this;
        }

        public Criteria andLiveTimeIn(List<Date> values) {
            addCriterion("live_time in", values, "liveTime");
            return (Criteria) this;
        }

        public Criteria andLiveTimeNotIn(List<Date> values) {
            addCriterion("live_time not in", values, "liveTime");
            return (Criteria) this;
        }

        public Criteria andLiveTimeBetween(Date value1, Date value2) {
            addCriterion("live_time between", value1, value2, "liveTime");
            return (Criteria) this;
        }

        public Criteria andLiveTimeNotBetween(Date value1, Date value2) {
            addCriterion("live_time not between", value1, value2, "liveTime");
            return (Criteria) this;
        }

        public Criteria andRoomAddressIsNull() {
            addCriterion("room_address is null");
            return (Criteria) this;
        }

        public Criteria andRoomAddressIsNotNull() {
            addCriterion("room_address is not null");
            return (Criteria) this;
        }

        public Criteria andRoomAddressEqualTo(String value) {
            addCriterion("room_address =", value, "roomAddress");
            return (Criteria) this;
        }

        public Criteria andRoomAddressNotEqualTo(String value) {
            addCriterion("room_address <>", value, "roomAddress");
            return (Criteria) this;
        }

        public Criteria andRoomAddressGreaterThan(String value) {
            addCriterion("room_address >", value, "roomAddress");
            return (Criteria) this;
        }

        public Criteria andRoomAddressGreaterThanOrEqualTo(String value) {
            addCriterion("room_address >=", value, "roomAddress");
            return (Criteria) this;
        }

        public Criteria andRoomAddressLessThan(String value) {
            addCriterion("room_address <", value, "roomAddress");
            return (Criteria) this;
        }

        public Criteria andRoomAddressLessThanOrEqualTo(String value) {
            addCriterion("room_address <=", value, "roomAddress");
            return (Criteria) this;
        }

        public Criteria andRoomAddressLike(String value) {
            addCriterion("room_address like", value, "roomAddress");
            return (Criteria) this;
        }

        public Criteria andRoomAddressNotLike(String value) {
            addCriterion("room_address not like", value, "roomAddress");
            return (Criteria) this;
        }

        public Criteria andRoomAddressIn(List<String> values) {
            addCriterion("room_address in", values, "roomAddress");
            return (Criteria) this;
        }

        public Criteria andRoomAddressNotIn(List<String> values) {
            addCriterion("room_address not in", values, "roomAddress");
            return (Criteria) this;
        }

        public Criteria andRoomAddressBetween(String value1, String value2) {
            addCriterion("room_address between", value1, value2, "roomAddress");
            return (Criteria) this;
        }

        public Criteria andRoomAddressNotBetween(String value1, String value2) {
            addCriterion("room_address not between", value1, value2, "roomAddress");
            return (Criteria) this;
        }

        public Criteria andRoomDescIsNull() {
            addCriterion("room_desc is null");
            return (Criteria) this;
        }

        public Criteria andRoomDescIsNotNull() {
            addCriterion("room_desc is not null");
            return (Criteria) this;
        }

        public Criteria andRoomDescEqualTo(String value) {
            addCriterion("room_desc =", value, "roomDesc");
            return (Criteria) this;
        }

        public Criteria andRoomDescNotEqualTo(String value) {
            addCriterion("room_desc <>", value, "roomDesc");
            return (Criteria) this;
        }

        public Criteria andRoomDescGreaterThan(String value) {
            addCriterion("room_desc >", value, "roomDesc");
            return (Criteria) this;
        }

        public Criteria andRoomDescGreaterThanOrEqualTo(String value) {
            addCriterion("room_desc >=", value, "roomDesc");
            return (Criteria) this;
        }

        public Criteria andRoomDescLessThan(String value) {
            addCriterion("room_desc <", value, "roomDesc");
            return (Criteria) this;
        }

        public Criteria andRoomDescLessThanOrEqualTo(String value) {
            addCriterion("room_desc <=", value, "roomDesc");
            return (Criteria) this;
        }

        public Criteria andRoomDescLike(String value) {
            addCriterion("room_desc like", value, "roomDesc");
            return (Criteria) this;
        }

        public Criteria andRoomDescNotLike(String value) {
            addCriterion("room_desc not like", value, "roomDesc");
            return (Criteria) this;
        }

        public Criteria andRoomDescIn(List<String> values) {
            addCriterion("room_desc in", values, "roomDesc");
            return (Criteria) this;
        }

        public Criteria andRoomDescNotIn(List<String> values) {
            addCriterion("room_desc not in", values, "roomDesc");
            return (Criteria) this;
        }

        public Criteria andRoomDescBetween(String value1, String value2) {
            addCriterion("room_desc between", value1, value2, "roomDesc");
            return (Criteria) this;
        }

        public Criteria andRoomDescNotBetween(String value1, String value2) {
            addCriterion("room_desc not between", value1, value2, "roomDesc");
            return (Criteria) this;
        }

        public Criteria andRoomAreaIsNull() {
            addCriterion("room_area is null");
            return (Criteria) this;
        }

        public Criteria andRoomAreaIsNotNull() {
            addCriterion("room_area is not null");
            return (Criteria) this;
        }

        public Criteria andRoomAreaEqualTo(Integer value) {
            addCriterion("room_area =", value, "roomArea");
            return (Criteria) this;
        }

        public Criteria andRoomAreaNotEqualTo(Integer value) {
            addCriterion("room_area <>", value, "roomArea");
            return (Criteria) this;
        }

        public Criteria andRoomAreaGreaterThan(Integer value) {
            addCriterion("room_area >", value, "roomArea");
            return (Criteria) this;
        }

        public Criteria andRoomAreaGreaterThanOrEqualTo(Integer value) {
            addCriterion("room_area >=", value, "roomArea");
            return (Criteria) this;
        }

        public Criteria andRoomAreaLessThan(Integer value) {
            addCriterion("room_area <", value, "roomArea");
            return (Criteria) this;
        }

        public Criteria andRoomAreaLessThanOrEqualTo(Integer value) {
            addCriterion("room_area <=", value, "roomArea");
            return (Criteria) this;
        }

        public Criteria andRoomAreaIn(List<Integer> values) {
            addCriterion("room_area in", values, "roomArea");
            return (Criteria) this;
        }

        public Criteria andRoomAreaNotIn(List<Integer> values) {
            addCriterion("room_area not in", values, "roomArea");
            return (Criteria) this;
        }

        public Criteria andRoomAreaBetween(Integer value1, Integer value2) {
            addCriterion("room_area between", value1, value2, "roomArea");
            return (Criteria) this;
        }

        public Criteria andRoomAreaNotBetween(Integer value1, Integer value2) {
            addCriterion("room_area not between", value1, value2, "roomArea");
            return (Criteria) this;
        }

        public Criteria andRenovationintIsNull() {
            addCriterion("renovationint is null");
            return (Criteria) this;
        }

        public Criteria andRenovationintIsNotNull() {
            addCriterion("renovationint is not null");
            return (Criteria) this;
        }

        public Criteria andRenovationintEqualTo(Integer value) {
            addCriterion("renovationint =", value, "renovationint");
            return (Criteria) this;
        }

        public Criteria andRenovationintNotEqualTo(Integer value) {
            addCriterion("renovationint <>", value, "renovationint");
            return (Criteria) this;
        }

        public Criteria andRenovationintGreaterThan(Integer value) {
            addCriterion("renovationint >", value, "renovationint");
            return (Criteria) this;
        }

        public Criteria andRenovationintGreaterThanOrEqualTo(Integer value) {
            addCriterion("renovationint >=", value, "renovationint");
            return (Criteria) this;
        }

        public Criteria andRenovationintLessThan(Integer value) {
            addCriterion("renovationint <", value, "renovationint");
            return (Criteria) this;
        }

        public Criteria andRenovationintLessThanOrEqualTo(Integer value) {
            addCriterion("renovationint <=", value, "renovationint");
            return (Criteria) this;
        }

        public Criteria andRenovationintIn(List<Integer> values) {
            addCriterion("renovationint in", values, "renovationint");
            return (Criteria) this;
        }

        public Criteria andRenovationintNotIn(List<Integer> values) {
            addCriterion("renovationint not in", values, "renovationint");
            return (Criteria) this;
        }

        public Criteria andRenovationintBetween(Integer value1, Integer value2) {
            addCriterion("renovationint between", value1, value2, "renovationint");
            return (Criteria) this;
        }

        public Criteria andRenovationintNotBetween(Integer value1, Integer value2) {
            addCriterion("renovationint not between", value1, value2, "renovationint");
            return (Criteria) this;
        }

        public Criteria andGetStatusIsNull() {
            addCriterion("get_status is null");
            return (Criteria) this;
        }

        public Criteria andGetStatusIsNotNull() {
            addCriterion("get_status is not null");
            return (Criteria) this;
        }

        public Criteria andGetStatusEqualTo(Integer value) {
            addCriterion("get_status =", value, "getStatus");
            return (Criteria) this;
        }

        public Criteria andGetStatusNotEqualTo(Integer value) {
            addCriterion("get_status <>", value, "getStatus");
            return (Criteria) this;
        }

        public Criteria andGetStatusGreaterThan(Integer value) {
            addCriterion("get_status >", value, "getStatus");
            return (Criteria) this;
        }

        public Criteria andGetStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("get_status >=", value, "getStatus");
            return (Criteria) this;
        }

        public Criteria andGetStatusLessThan(Integer value) {
            addCriterion("get_status <", value, "getStatus");
            return (Criteria) this;
        }

        public Criteria andGetStatusLessThanOrEqualTo(Integer value) {
            addCriterion("get_status <=", value, "getStatus");
            return (Criteria) this;
        }

        public Criteria andGetStatusIn(List<Integer> values) {
            addCriterion("get_status in", values, "getStatus");
            return (Criteria) this;
        }

        public Criteria andGetStatusNotIn(List<Integer> values) {
            addCriterion("get_status not in", values, "getStatus");
            return (Criteria) this;
        }

        public Criteria andGetStatusBetween(Integer value1, Integer value2) {
            addCriterion("get_status between", value1, value2, "getStatus");
            return (Criteria) this;
        }

        public Criteria andGetStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("get_status not between", value1, value2, "getStatus");
            return (Criteria) this;
        }

        public Criteria andGetCreateTimeIsNull() {
            addCriterion("get_create_time is null");
            return (Criteria) this;
        }

        public Criteria andGetCreateTimeIsNotNull() {
            addCriterion("get_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andGetCreateTimeEqualTo(Date value) {
            addCriterion("get_create_time =", value, "getCreateTime");
            return (Criteria) this;
        }

        public Criteria andGetCreateTimeNotEqualTo(Date value) {
            addCriterion("get_create_time <>", value, "getCreateTime");
            return (Criteria) this;
        }

        public Criteria andGetCreateTimeGreaterThan(Date value) {
            addCriterion("get_create_time >", value, "getCreateTime");
            return (Criteria) this;
        }

        public Criteria andGetCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("get_create_time >=", value, "getCreateTime");
            return (Criteria) this;
        }

        public Criteria andGetCreateTimeLessThan(Date value) {
            addCriterion("get_create_time <", value, "getCreateTime");
            return (Criteria) this;
        }

        public Criteria andGetCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("get_create_time <=", value, "getCreateTime");
            return (Criteria) this;
        }

        public Criteria andGetCreateTimeIn(List<Date> values) {
            addCriterion("get_create_time in", values, "getCreateTime");
            return (Criteria) this;
        }

        public Criteria andGetCreateTimeNotIn(List<Date> values) {
            addCriterion("get_create_time not in", values, "getCreateTime");
            return (Criteria) this;
        }

        public Criteria andGetCreateTimeBetween(Date value1, Date value2) {
            addCriterion("get_create_time between", value1, value2, "getCreateTime");
            return (Criteria) this;
        }

        public Criteria andGetCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("get_create_time not between", value1, value2, "getCreateTime");
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