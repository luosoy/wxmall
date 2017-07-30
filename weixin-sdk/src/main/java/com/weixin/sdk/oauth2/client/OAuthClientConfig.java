/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.weixin.sdk.oauth2.client;

/**
 *
 * @author lenovo
 */
public class OAuthClientConfig {

    public static final String SESSION_USER_MAP = "session_user_map";

    public static final String SNSSCOPE_BASE = "snsapi_base";

    public static final String SNSSCOPE_USERINFO = "snsapi_userinfo";

    /**
     * 微信oath2授权地址;通过该地址拿到用户授权code码
     */
    public static final String OAUTH_URL = "https://open.weixin.qq.com/connect/oauth2/authorize";

    /**
     * 根据code获取openId以及access_token
     */
    public static final String OAUTH_URL_ACCESS_TOKEN = "https://api.weixin.qq.com/sns/oauth2/access_token";

    /**
     * 刷新网页授权token，获取更长时效的token值（可选）,该接口拿到的值可以延长用户授权
     */
    public static final String OAUTH_URL_REFRESHTOKEN = "https://api.weixin.qq.com/sns/oauth2/refresh_token";

    /**
     * 授权后获取用户信息 无需用户关注公众号 scope=snsapi_userinfo *
     */
    public static final String OAUTH_URL_GETUSERINFO = "https://api.weixin.qq.com/sns/userinfo";

    /**
     * 检验授权凭证（access_token）是否有效
     */
    public static final String OAUTH_URL_TOKEN_CHECK = "https://api.weixin.qq.com/sns/auth?access_token=ACCESS_TOKEN&openid=OPENID";
}
