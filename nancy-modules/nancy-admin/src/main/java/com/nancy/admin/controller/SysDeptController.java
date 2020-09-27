package com.nancy.admin.controller;

import com.nancy.common.core.web.controller.BaseController;
import com.nancy.common.core.web.entity.BaseResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 部门控制层
 *
 * @author yangshuo
 * @Description 部门控制层
 * @Date 2020/9/27
 * @Version 1.0
 */
@RestController
@RequestMapping("/dept")
public class SysDeptController extends BaseController {

    @GetMapping(value="/hello")
    public BaseResponse hello() {
        return BaseResponse.ok("Hello!");
    }

}
