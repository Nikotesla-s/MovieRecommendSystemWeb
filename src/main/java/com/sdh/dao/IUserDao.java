package com.sdh.dao;

import com.sdh.domain.User;

public interface IUserDao {

    /**
     * @param username
     * @return User
     *
     */
    User finUserByName(String username);
}
