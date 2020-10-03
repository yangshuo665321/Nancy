package com.nancy.admin.service.impl;

import com.nancy.admin.entity.SysUser;
import com.nancy.admin.mapper.SysUserMapper;
import com.nancy.admin.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author yangshuo
 * @Description SysUserServiceImpl
 * @Date 2020/10/3
 * @Version 1.0
 */
@Service
public class SysUserServiceImpl implements SysUserService {

    @Autowired
    private SysUserMapper sysUserMapper;

    /**
     * 根据用户名查询用户
     *
     * @param username
     * @return
     */
    @Override
    public SysUser findByName(String username) {
        return sysUserMapper.findByName(username);
    }
}
