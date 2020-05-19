package com.sdh.service;

import com.sdh.domain.User;

public interface IUserDaoService {
    //用户登录
    boolean login(User user);
}
