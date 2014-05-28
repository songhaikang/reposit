package com.shk.baseframe.web.uc.mapper;

import com.shk.baseframe.common.utils.JQGridPage;
import com.shk.baseframe.web.uc.domain.UserInfo;

import java.util.List;

/**
 * @author: Ivan Vigoss
 * Date: 14-2-20
 * Time: AM11:11
 */


public interface UserInfoMapper {


    List<UserInfo> getUserListJQgrid(JQGridPage jqGridPage);

    Integer getUserListCountJQgrid(JQGridPage jqGridPage);







}
