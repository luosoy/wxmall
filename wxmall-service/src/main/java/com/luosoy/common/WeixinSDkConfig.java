/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.luosoy.common;

import java.io.Serializable;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class WeixinSDkConfig implements Serializable {

    private static final long serialVersionUID = -7984000155168830338L;
    @Value("${token}")
    private String token;
    @Value("${wx_app_id}")
    private String wx_app_id;
    @Value("${wx_app_secret}")
    private String wx_app_secret;
    @Value("${encryptMessage}")
    private String encryptMessage;
    @Value("${encodingAesKey}")
    private String encodingAesKey;
    @Value("${wx_mch_id}")
    private String wx_mch_id;
    @Value("${wx_notify_url}")
    private String wx_notify_url;
    @Value("${wx_secret_key}")
    private String wx_secret_key;
    @Value("${wx_sub_mch_id}")
    private String wx_sub_mch_id;
    @Value("${cert_local_path}")
    private String cert_local_path;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getWx_app_id() {
        return wx_app_id;
    }

    public void setWx_app_id(String wx_app_id) {
        this.wx_app_id = wx_app_id;
    }

    public String getWx_app_secret() {
        return wx_app_secret;
    }

    public void setWx_app_secret(String wx_app_secret) {
        this.wx_app_secret = wx_app_secret;
    }

    public String getEncryptMessage() {
        return encryptMessage;
    }

    public void setEncryptMessage(String encryptMessage) {
        this.encryptMessage = encryptMessage;
    }

    public String getEncodingAesKey() {
        return encodingAesKey;
    }

    public void setEncodingAesKey(String encodingAesKey) {
        this.encodingAesKey = encodingAesKey;
    }

    public String getWx_mch_id() {
        return wx_mch_id;
    }

    public void setWx_mch_id(String wx_mch_id) {
        this.wx_mch_id = wx_mch_id;
    }

    public String getWx_notify_url() {
        return wx_notify_url;
    }

    public void setWx_notify_url(String wx_notify_url) {
        this.wx_notify_url = wx_notify_url;
    }

    public String getWx_secret_key() {
        return wx_secret_key;
    }

    public void setWx_secret_key(String wx_secret_key) {
        this.wx_secret_key = wx_secret_key;
    }

    public String getWx_sub_mch_id() {
        return wx_sub_mch_id;
    }

    public void setWx_sub_mch_id(String wx_sub_mch_id) {
        this.wx_sub_mch_id = wx_sub_mch_id;
    }

    public String getCert_local_path() {
        return cert_local_path;
    }

    public void setCert_local_path(String cert_local_path) {
        this.cert_local_path = cert_local_path;
    }

}
