package com.nancy.admin.mapper;

import com.nancy.admin.entity.SysUser;

/**
 * @author yangshuo
 * @Description SysUserMapper
 * @Date 2020/10/3
 * @Version 1.0
 */
public interface SysUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysUser record);

    int insertSelective(SysUser record);

    SysUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysUser record);

    int updateByPrimaryKey(SysUser record);

    /**
     * 根据用户名查询用户
     *
     * @param name
     * @return
     */
    SysUser findByName(String name);
}