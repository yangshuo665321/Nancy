package com.nancy.admin.service;

import com.nancy.admin.entity.SysUser;

/**
 * @author yangshuo
 * @Description SysUserService
 * @Date 2020/10/3
 * @Version 1.0
 */
public interface SysUserService {

    /**
     * 根据用户名查询用户
     *
     * @param username
     * @return
     */
    SysUser findByName(String username);

}
