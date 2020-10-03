package com.nancy.admin.controller;

import com.nancy.admin.api.SysUserApi;
import com.nancy.admin.service.SysUserService;
import com.nancy.common.core.web.controller.BaseController;
import com.nancy.common.core.web.entity.BaseResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author yangshuo
 * @Description SysUserController
 * @Date 2020/10/3
 * @Version 1.0
 */
@RestController
public class SysUserController extends BaseController implements SysUserApi {

    @Autowired
    private SysUserService sysUserService;

    /**
     * 根据用户名查询用户
     *
     * @param name
     * @return
     */
    @GetMapping(value="/findByName")
    @Override
    public BaseResponse findByUserName(@RequestParam("name") String name) {
        return BaseResponse.ok(sysUserService.findByName(name));
    }

}
