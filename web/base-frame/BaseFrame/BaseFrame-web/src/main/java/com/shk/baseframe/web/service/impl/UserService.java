package com.shk.baseframe.web.service.impl;

import com.shk.baseframe.api.uc.domain.User;

import java.util.List;

/**
 * @author: Ivan Vigoss
 * Date: 14-2-20
 * Time: AM11:47
 */
public interface UserService {

    User getUser(String userId);

    void update(User user);

    List<User> getAllUsers();

    void add(User user);
}
