package com.shk.baseframe.common.dbmapper.uc.mapper;

import com.shk.baseframe.common.dbmapper.uc.domain.UcUserInfo;
import com.shk.baseframe.common.dbmapper.uc.domain.UcUserInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UcUserInfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uc_user_info
     *
     * @mbggenerated Wed May 28 16:13:49 CST 2014
     */
    int countByExample(UcUserInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uc_user_info
     *
     * @mbggenerated Wed May 28 16:13:49 CST 2014
     */
    int deleteByExample(UcUserInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uc_user_info
     *
     * @mbggenerated Wed May 28 16:13:49 CST 2014
     */
    int deleteByPrimaryKey(String userId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uc_user_info
     *
     * @mbggenerated Wed May 28 16:13:49 CST 2014
     */
    int insert(UcUserInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uc_user_info
     *
     * @mbggenerated Wed May 28 16:13:49 CST 2014
     */
    int insertSelective(UcUserInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uc_user_info
     *
     * @mbggenerated Wed May 28 16:13:49 CST 2014
     */
    List<UcUserInfo> selectByExample(UcUserInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uc_user_info
     *
     * @mbggenerated Wed May 28 16:13:49 CST 2014
     */
    UcUserInfo selectByPrimaryKey(String userId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uc_user_info
     *
     * @mbggenerated Wed May 28 16:13:49 CST 2014
     */
    int updateByExampleSelective(@Param("record") UcUserInfo record, @Param("example") UcUserInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uc_user_info
     *
     * @mbggenerated Wed May 28 16:13:49 CST 2014
     */
    int updateByExample(@Param("record") UcUserInfo record, @Param("example") UcUserInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uc_user_info
     *
     * @mbggenerated Wed May 28 16:13:49 CST 2014
     */
    int updateByPrimaryKeySelective(UcUserInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table uc_user_info
     *
     * @mbggenerated Wed May 28 16:13:49 CST 2014
     */
    int updateByPrimaryKey(UcUserInfo record);
}