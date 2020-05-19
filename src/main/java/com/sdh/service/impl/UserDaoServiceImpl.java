package com.sdh.service.impl;

import com.sdh.dao.impl.IUserDaoImpl;
import com.sdh.domain.User;
import com.sdh.service.IUserDaoService;

public class UserDaoServiceImpl implements IUserDaoService {
    @Override
    public boolean login(User user) {
        IUserDaoImpl userDao=new IUserDaoImpl();
        return userDao.findUserByIdAndPassword(user);
    }
}
