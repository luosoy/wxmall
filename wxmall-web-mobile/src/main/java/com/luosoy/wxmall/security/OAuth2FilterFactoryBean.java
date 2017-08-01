/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.luosoy.wxmall.security;

import com.weixin.sdk.oauth2.client.OAuthClientConfig;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;

/**
 *
 * @author lenovo
 */
public class OAuth2FilterFactoryBean extends ShiroFilterFactoryBean {

    private String loginUrl;

    @Override
    public String getLoginUrl() {
        if (StringUtils.isBlank(loginUrl)) {
            loginUrl = OAuthClientConfig.OAUTH_URL;
        }
        return loginUrl;
    }

    @Override
    public void setLoginUrl(String loginUrl) {
        this.loginUrl = loginUrl;
    }

}
