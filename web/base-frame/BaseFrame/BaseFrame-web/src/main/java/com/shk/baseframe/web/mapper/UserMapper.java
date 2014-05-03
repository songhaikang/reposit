package com.shk.baseframe.web.mapper;

import com.shk.baseframe.api.uc.domain.User;

import java.util.List;

/**
 * @author: Ivan Vigoss
 * Date: 14-2-20
 * Time: AM11:11
 */
public interface UserMapper {

    User getUser(String userId);

    void update(User user);

    List<User> getUserList();

    void add(User user);
}
