package com.nancy.admin.api;

import com.nancy.common.core.web.entity.BaseResponse;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author yangshuo
 * @Description SysUserApi
 * @Date 2020/10/3
 * @Version 1.0
 */
@RequestMapping("/user")
public interface SysUserApi {

    /**
     * 根据用户名查询用户
     *
     * @param name
     * @return
     */
    BaseResponse findByUserName(String name);

}
