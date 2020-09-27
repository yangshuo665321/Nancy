package com.nancy.common.core.web.constant;

/**
 * 返回状态码
 *
 * @author yangshuo
 * @Description 返回状态码
 * @Date 2020/9/27
 * @Version 1.0
 */
public interface HttpStatus {

    // ###### 1xx Informational ######

    /**
     * 请求继续
     */
    Integer SC_CONTINUE = 100;

    // ###### 2xx Success ######

    /**
     * 请求成功
     */
    Integer SC_OK = 200;

    // ###### 3xx Redirection ######

    /**
     * 多选
     */
    Integer SC_MULTIPLE_CHOICES = 300;

    // ###### 4xx Client Error ######

    /**
     * 失败的请求
     */
    Integer SC_BAD_REQUEST = 400;

    // ###### 5xx Server Error ######

    /**
     * 服务器内部错误
     */
    Integer SC_INTERNAL_SERVER_ERROR = 500;

}
