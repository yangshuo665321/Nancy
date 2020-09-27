package com.nancy.common.core.web.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 基础模型
 *
 * @author yangshuo
 * @Description 基础模型
 * @Date 2020/9/27
 * @Version 1.0
 */
@Data
public class BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    private Long id;

    /**
     * 创建者
     */
    private String createBy;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新者
     */
    private String lastUpdateBy;

    /**
     * 更新时间
     */
    private Date lastUpdateTime;
}
