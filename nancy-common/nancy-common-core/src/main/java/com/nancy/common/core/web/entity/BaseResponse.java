package com.nancy.common.core.web.entity;

import com.nancy.common.core.web.constant.Constants;
import com.nancy.common.core.web.constant.HttpStatus;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * HTTP响应封装
 *
 * @author yangshuo
 * @Description HTTP响应封装
 * @Date 2020/9/27
 * @Version 1.0
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BaseResponse<T> {

    /**
     * 返回码
     */
    private Integer code;

    /**
     * 消息
     */
    private String msg;

    /**
     * 数据
     */
    private T data;

    /**
     * 请求失败，带默认消息
     *
     * @return
     */
    public static BaseResponse error() {
        return error(HttpStatus.SC_INTERNAL_SERVER_ERROR, "未知异常，请联系管理员");
    }

    /**
     * 请求失败，携带消息
     *
     * @param msg
     * @return
     */
    public static BaseResponse error(String msg) {
        return error(HttpStatus.SC_INTERNAL_SERVER_ERROR, msg);
    }

    /**
     * 请求失败，携带code和msg
     *
     * @param code
     * @param msg
     * @return
     */
    public static BaseResponse error(int code, String msg) {
        BaseResponse baseResponse = new BaseResponse();
        baseResponse.setCode(code);
        baseResponse.setMsg(msg);
        return baseResponse;
    }

    /**
     * 请求成功，携带msg
     *
     * @param msg
     * @return
     */
    public static BaseResponse ok(String msg) {
        BaseResponse baseResponse = new BaseResponse();
        baseResponse.setCode(HttpStatus.SC_OK);
        baseResponse.setMsg(msg);
        return baseResponse;
    }

    /**
     * 请求成功，携带data
     *
     * @param data
     * @return
     */
    public static BaseResponse ok(Object data) {
        BaseResponse baseResponse = new BaseResponse();
        baseResponse.setCode(HttpStatus.SC_OK);
        baseResponse.setMsg(Constants.SUCCESS);
        baseResponse.setData(data);
        return baseResponse;
    }

    /**
     * 请求成功
     *
     * @return
     */
    public static BaseResponse ok() {
        BaseResponse baseResponse = new BaseResponse();
        baseResponse.setCode(HttpStatus.SC_OK);
        baseResponse.setMsg(Constants.SUCCESS);
        return baseResponse;
    }

}
