package com.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TRentoutExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TRentoutExample() {
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

        public Criteria andRoomPriceIsNull() {
            addCriterion("room_price is null");
            return (Criteria) this;
        }

        public Criteria andRoomPriceIsNotNull() {
            addCriterion("room_price is not null");
            return (Criteria) this;
        }

        public Criteria andRoomPriceEqualTo(Double value) {
            addCriterion("room_price =", value, "roomPrice");
            return (Criteria) this;
        }

        public Criteria andRoomPriceNotEqualTo(Double value) {
            addCriterion("room_price <>", value, "roomPrice");
            return (Criteria) this;
        }

        public Criteria andRoomPriceGreaterThan(Double value) {
            addCriterion("room_price >", value, "roomPrice");
            return (Criteria) this;
        }

        public Criteria andRoomPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("room_price >=", value, "roomPrice");
            return (Criteria) this;
        }

        public Criteria andRoomPriceLessThan(Double value) {
            addCriterion("room_price <", value, "roomPrice");
            return (Criteria) this;
        }

        public Criteria andRoomPriceLessThanOrEqualTo(Double value) {
            addCriterion("room_price <=", value, "roomPrice");
            return (Criteria) this;
        }

        public Criteria andRoomPriceIn(List<Double> values) {
            addCriterion("room_price in", values, "roomPrice");
            return (Criteria) this;
        }

        public Criteria andRoomPriceNotIn(List<Double> values) {
            addCriterion("room_price not in", values, "roomPrice");
            return (Criteria) this;
        }

        public Criteria andRoomPriceBetween(Double value1, Double value2) {
            addCriterion("room_price between", value1, value2, "roomPrice");
            return (Criteria) this;
        }

        public Criteria andRoomPriceNotBetween(Double value1, Double value2) {
            addCriterion("room_price not between", value1, value2, "roomPrice");
            return (Criteria) this;
        }

        public Criteria andIsFloorIsNull() {
            addCriterion("is_floor is null");
            return (Criteria) this;
        }

        public Criteria andIsFloorIsNotNull() {
            addCriterion("is_floor is not null");
            return (Criteria) this;
        }

        public Criteria andIsFloorEqualTo(Integer value) {
            addCriterion("is_floor =", value, "isFloor");
            return (Criteria) this;
        }

        public Criteria andIsFloorNotEqualTo(Integer value) {
            addCriterion("is_floor <>", value, "isFloor");
            return (Criteria) this;
        }

        public Criteria andIsFloorGreaterThan(Integer value) {
            addCriterion("is_floor >", value, "isFloor");
            return (Criteria) this;
        }

        public Criteria andIsFloorGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_floor >=", value, "isFloor");
            return (Criteria) this;
        }

        public Criteria andIsFloorLessThan(Integer value) {
            addCriterion("is_floor <", value, "isFloor");
            return (Criteria) this;
        }

        public Criteria andIsFloorLessThanOrEqualTo(Integer value) {
            addCriterion("is_floor <=", value, "isFloor");
            return (Criteria) this;
        }

        public Criteria andIsFloorIn(List<Integer> values) {
            addCriterion("is_floor in", values, "isFloor");
            return (Criteria) this;
        }

        public Criteria andIsFloorNotIn(List<Integer> values) {
            addCriterion("is_floor not in", values, "isFloor");
            return (Criteria) this;
        }

        public Criteria andIsFloorBetween(Integer value1, Integer value2) {
            addCriterion("is_floor between", value1, value2, "isFloor");
            return (Criteria) this;
        }

        public Criteria andIsFloorNotBetween(Integer value1, Integer value2) {
            addCriterion("is_floor not between", value1, value2, "isFloor");
            return (Criteria) this;
        }

        public Criteria andAllFloorIsNull() {
            addCriterion("all_floor is null");
            return (Criteria) this;
        }

        public Criteria andAllFloorIsNotNull() {
            addCriterion("all_floor is not null");
            return (Criteria) this;
        }

        public Criteria andAllFloorEqualTo(Integer value) {
            addCriterion("all_floor =", value, "allFloor");
            return (Criteria) this;
        }

        public Criteria andAllFloorNotEqualTo(Integer value) {
            addCriterion("all_floor <>", value, "allFloor");
            return (Criteria) this;
        }

        public Criteria andAllFloorGreaterThan(Integer value) {
            addCriterion("all_floor >", value, "allFloor");
            return (Criteria) this;
        }

        public Criteria andAllFloorGreaterThanOrEqualTo(Integer value) {
            addCriterion("all_floor >=", value, "allFloor");
            return (Criteria) this;
        }

        public Criteria andAllFloorLessThan(Integer value) {
            addCriterion("all_floor <", value, "allFloor");
            return (Criteria) this;
        }

        public Criteria andAllFloorLessThanOrEqualTo(Integer value) {
            addCriterion("all_floor <=", value, "allFloor");
            return (Criteria) this;
        }

        public Criteria andAllFloorIn(List<Integer> values) {
            addCriterion("all_floor in", values, "allFloor");
            return (Criteria) this;
        }

        public Criteria andAllFloorNotIn(List<Integer> values) {
            addCriterion("all_floor not in", values, "allFloor");
            return (Criteria) this;
        }

        public Criteria andAllFloorBetween(Integer value1, Integer value2) {
            addCriterion("all_floor between", value1, value2, "allFloor");
            return (Criteria) this;
        }

        public Criteria andAllFloorNotBetween(Integer value1, Integer value2) {
            addCriterion("all_floor not between", value1, value2, "allFloor");
            return (Criteria) this;
        }

        public Criteria andRoomAgeIsNull() {
            addCriterion("room_age is null");
            return (Criteria) this;
        }

        public Criteria andRoomAgeIsNotNull() {
            addCriterion("room_age is not null");
            return (Criteria) this;
        }

        public Criteria andRoomAgeEqualTo(Integer value) {
            addCriterion("room_age =", value, "roomAge");
            return (Criteria) this;
        }

        public Criteria andRoomAgeNotEqualTo(Integer value) {
            addCriterion("room_age <>", value, "roomAge");
            return (Criteria) this;
        }

        public Criteria andRoomAgeGreaterThan(Integer value) {
            addCriterion("room_age >", value, "roomAge");
            return (Criteria) this;
        }

        public Criteria andRoomAgeGreaterThanOrEqualTo(Integer value) {
            addCriterion("room_age >=", value, "roomAge");
            return (Criteria) this;
        }

        public Criteria andRoomAgeLessThan(Integer value) {
            addCriterion("room_age <", value, "roomAge");
            return (Criteria) this;
        }

        public Criteria andRoomAgeLessThanOrEqualTo(Integer value) {
            addCriterion("room_age <=", value, "roomAge");
            return (Criteria) this;
        }

        public Criteria andRoomAgeIn(List<Integer> values) {
            addCriterion("room_age in", values, "roomAge");
            return (Criteria) this;
        }

        public Criteria andRoomAgeNotIn(List<Integer> values) {
            addCriterion("room_age not in", values, "roomAge");
            return (Criteria) this;
        }

        public Criteria andRoomAgeBetween(Integer value1, Integer value2) {
            addCriterion("room_age between", value1, value2, "roomAge");
            return (Criteria) this;
        }

        public Criteria andRoomAgeNotBetween(Integer value1, Integer value2) {
            addCriterion("room_age not between", value1, value2, "roomAge");
            return (Criteria) this;
        }

        public Criteria andRoomStructureIsNull() {
            addCriterion("room_structure is null");
            return (Criteria) this;
        }

        public Criteria andRoomStructureIsNotNull() {
            addCriterion("room_structure is not null");
            return (Criteria) this;
        }

        public Criteria andRoomStructureEqualTo(String value) {
            addCriterion("room_structure =", value, "roomStructure");
            return (Criteria) this;
        }

        public Criteria andRoomStructureNotEqualTo(String value) {
            addCriterion("room_structure <>", value, "roomStructure");
            return (Criteria) this;
        }

        public Criteria andRoomStructureGreaterThan(String value) {
            addCriterion("room_structure >", value, "roomStructure");
            return (Criteria) this;
        }

        public Criteria andRoomStructureGreaterThanOrEqualTo(String value) {
            addCriterion("room_structure >=", value, "roomStructure");
            return (Criteria) this;
        }

        public Criteria andRoomStructureLessThan(String value) {
            addCriterion("room_structure <", value, "roomStructure");
            return (Criteria) this;
        }

        public Criteria andRoomStructureLessThanOrEqualTo(String value) {
            addCriterion("room_structure <=", value, "roomStructure");
            return (Criteria) this;
        }

        public Criteria andRoomStructureLike(String value) {
            addCriterion("room_structure like", value, "roomStructure");
            return (Criteria) this;
        }

        public Criteria andRoomStructureNotLike(String value) {
            addCriterion("room_structure not like", value, "roomStructure");
            return (Criteria) this;
        }

        public Criteria andRoomStructureIn(List<String> values) {
            addCriterion("room_structure in", values, "roomStructure");
            return (Criteria) this;
        }

        public Criteria andRoomStructureNotIn(List<String> values) {
            addCriterion("room_structure not in", values, "roomStructure");
            return (Criteria) this;
        }

        public Criteria andRoomStructureBetween(String value1, String value2) {
            addCriterion("room_structure between", value1, value2, "roomStructure");
            return (Criteria) this;
        }

        public Criteria andRoomStructureNotBetween(String value1, String value2) {
            addCriterion("room_structure not between", value1, value2, "roomStructure");
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

        public Criteria andRoomPictureIsNull() {
            addCriterion("room_picture is null");
            return (Criteria) this;
        }

        public Criteria andRoomPictureIsNotNull() {
            addCriterion("room_picture is not null");
            return (Criteria) this;
        }

        public Criteria andRoomPictureEqualTo(String value) {
            addCriterion("room_picture =", value, "roomPicture");
            return (Criteria) this;
        }

        public Criteria andRoomPictureNotEqualTo(String value) {
            addCriterion("room_picture <>", value, "roomPicture");
            return (Criteria) this;
        }

        public Criteria andRoomPictureGreaterThan(String value) {
            addCriterion("room_picture >", value, "roomPicture");
            return (Criteria) this;
        }

        public Criteria andRoomPictureGreaterThanOrEqualTo(String value) {
            addCriterion("room_picture >=", value, "roomPicture");
            return (Criteria) this;
        }

        public Criteria andRoomPictureLessThan(String value) {
            addCriterion("room_picture <", value, "roomPicture");
            return (Criteria) this;
        }

        public Criteria andRoomPictureLessThanOrEqualTo(String value) {
            addCriterion("room_picture <=", value, "roomPicture");
            return (Criteria) this;
        }

        public Criteria andRoomPictureLike(String value) {
            addCriterion("room_picture like", value, "roomPicture");
            return (Criteria) this;
        }

        public Criteria andRoomPictureNotLike(String value) {
            addCriterion("room_picture not like", value, "roomPicture");
            return (Criteria) this;
        }

        public Criteria andRoomPictureIn(List<String> values) {
            addCriterion("room_picture in", values, "roomPicture");
            return (Criteria) this;
        }

        public Criteria andRoomPictureNotIn(List<String> values) {
            addCriterion("room_picture not in", values, "roomPicture");
            return (Criteria) this;
        }

        public Criteria andRoomPictureBetween(String value1, String value2) {
            addCriterion("room_picture between", value1, value2, "roomPicture");
            return (Criteria) this;
        }

        public Criteria andRoomPictureNotBetween(String value1, String value2) {
            addCriterion("room_picture not between", value1, value2, "roomPicture");
            return (Criteria) this;
        }

        public Criteria andOutStatusIsNull() {
            addCriterion("out_status is null");
            return (Criteria) this;
        }

        public Criteria andOutStatusIsNotNull() {
            addCriterion("out_status is not null");
            return (Criteria) this;
        }

        public Criteria andOutStatusEqualTo(Integer value) {
            addCriterion("out_status =", value, "outStatus");
            return (Criteria) this;
        }

        public Criteria andOutStatusNotEqualTo(Integer value) {
            addCriterion("out_status <>", value, "outStatus");
            return (Criteria) this;
        }

        public Criteria andOutStatusGreaterThan(Integer value) {
            addCriterion("out_status >", value, "outStatus");
            return (Criteria) this;
        }

        public Criteria andOutStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("out_status >=", value, "outStatus");
            return (Criteria) this;
        }

        public Criteria andOutStatusLessThan(Integer value) {
            addCriterion("out_status <", value, "outStatus");
            return (Criteria) this;
        }

        public Criteria andOutStatusLessThanOrEqualTo(Integer value) {
            addCriterion("out_status <=", value, "outStatus");
            return (Criteria) this;
        }

        public Criteria andOutStatusIn(List<Integer> values) {
            addCriterion("out_status in", values, "outStatus");
            return (Criteria) this;
        }

        public Criteria andOutStatusNotIn(List<Integer> values) {
            addCriterion("out_status not in", values, "outStatus");
            return (Criteria) this;
        }

        public Criteria andOutStatusBetween(Integer value1, Integer value2) {
            addCriterion("out_status between", value1, value2, "outStatus");
            return (Criteria) this;
        }

        public Criteria andOutStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("out_status not between", value1, value2, "outStatus");
            return (Criteria) this;
        }

        public Criteria andOutCreateTimeIsNull() {
            addCriterion("out_create_time is null");
            return (Criteria) this;
        }

        public Criteria andOutCreateTimeIsNotNull() {
            addCriterion("out_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andOutCreateTimeEqualTo(Date value) {
            addCriterion("out_create_time =", value, "outCreateTime");
            return (Criteria) this;
        }

        public Criteria andOutCreateTimeNotEqualTo(Date value) {
            addCriterion("out_create_time <>", value, "outCreateTime");
            return (Criteria) this;
        }

        public Criteria andOutCreateTimeGreaterThan(Date value) {
            addCriterion("out_create_time >", value, "outCreateTime");
            return (Criteria) this;
        }

        public Criteria andOutCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("out_create_time >=", value, "outCreateTime");
            return (Criteria) this;
        }

        public Criteria andOutCreateTimeLessThan(Date value) {
            addCriterion("out_create_time <", value, "outCreateTime");
            return (Criteria) this;
        }

        public Criteria andOutCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("out_create_time <=", value, "outCreateTime");
            return (Criteria) this;
        }

        public Criteria andOutCreateTimeIn(List<Date> values) {
            addCriterion("out_create_time in", values, "outCreateTime");
            return (Criteria) this;
        }

        public Criteria andOutCreateTimeNotIn(List<Date> values) {
            addCriterion("out_create_time not in", values, "outCreateTime");
            return (Criteria) this;
        }

        public Criteria andOutCreateTimeBetween(Date value1, Date value2) {
            addCriterion("out_create_time between", value1, value2, "outCreateTime");
            return (Criteria) this;
        }

        public Criteria andOutCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("out_create_time not between", value1, value2, "outCreateTime");
            return (Criteria) this;
        }

        public Criteria andIsqualifiedIsNull() {
            addCriterion("isqualified is null");
            return (Criteria) this;
        }

        public Criteria andIsqualifiedIsNotNull() {
            addCriterion("isqualified is not null");
            return (Criteria) this;
        }

        public Criteria andIsqualifiedEqualTo(Integer value) {
            addCriterion("isqualified =", value, "isqualified");
            return (Criteria) this;
        }

        public Criteria andIsqualifiedNotEqualTo(Integer value) {
            addCriterion("isqualified <>", value, "isqualified");
            return (Criteria) this;
        }

        public Criteria andIsqualifiedGreaterThan(Integer value) {
            addCriterion("isqualified >", value, "isqualified");
            return (Criteria) this;
        }

        public Criteria andIsqualifiedGreaterThanOrEqualTo(Integer value) {
            addCriterion("isqualified >=", value, "isqualified");
            return (Criteria) this;
        }

        public Criteria andIsqualifiedLessThan(Integer value) {
            addCriterion("isqualified <", value, "isqualified");
            return (Criteria) this;
        }

        public Criteria andIsqualifiedLessThanOrEqualTo(Integer value) {
            addCriterion("isqualified <=", value, "isqualified");
            return (Criteria) this;
        }

        public Criteria andIsqualifiedIn(List<Integer> values) {
            addCriterion("isqualified in", values, "isqualified");
            return (Criteria) this;
        }

        public Criteria andIsqualifiedNotIn(List<Integer> values) {
            addCriterion("isqualified not in", values, "isqualified");
            return (Criteria) this;
        }

        public Criteria andIsqualifiedBetween(Integer value1, Integer value2) {
            addCriterion("isqualified between", value1, value2, "isqualified");
            return (Criteria) this;
        }

        public Criteria andIsqualifiedNotBetween(Integer value1, Integer value2) {
            addCriterion("isqualified not between", value1, value2, "isqualified");
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