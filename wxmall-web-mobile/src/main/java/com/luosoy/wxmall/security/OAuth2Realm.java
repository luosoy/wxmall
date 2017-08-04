package com.luosoy.wxmall.security;

import com.luosoy.common.config.WeixinSDkConfig;
import com.luosoy.dto.OAuthUserInfoDTO;
import com.weixin.sdk.oauth2.client.OAuthClient;
import com.weixin.sdk.oauth2.client.OAuthClientConfig;
import com.weixin.sdk.oauth2.client.URLConnectionClient;
import com.weixin.sdk.oauth2.client.request.OAuthBearerClientRequest;
import com.weixin.sdk.oauth2.client.request.OAuthClientRequest;
import com.weixin.sdk.oauth2.client.response.OAuthAccessTokenResponse;
import com.weixin.sdk.oauth2.client.response.OAuthResourceResponse;
import com.weixin.sdk.oauth2.common.OAuth;
import com.weixin.sdk.oauth2.common.exception.OAuthProblemException;
import com.weixin.sdk.oauth2.common.exception.OAuthSystemException;
import com.weixin.sdk.oauth2.common.message.types.GrantType;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class OAuth2Realm extends AuthorizingRealm {

    private static final Logger LOGGER = LoggerFactory.getLogger(OAuth2Realm.class);
    
    @Autowired
    private WeixinSDkConfig wxSdkConfig;

    

    @Override
    public boolean supports(AuthenticationToken token) {
        return token instanceof OAuth2Token;//表示此Realm只支持OAuth2Token类型
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        return authorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        OAuth2Token oAuth2Token = (OAuth2Token) token;
        String code = oAuth2Token.getAuthCode();
        if (StringUtils.isBlank(code)) {
            LOGGER.error("code is blank,please check callback url");
            throw new AuthenticationException("code is blank,please check callback url");
        }
        OAuthUserInfoDTO userInfo = getUserInfor(code);
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(userInfo, code, getName());
        return authenticationInfo;
    }

    private OAuthUserInfoDTO getUserInfor(String code) {

        try {
            OAuthClient oAuthClient = new OAuthClient(new URLConnectionClient());
            OAuthClientRequest accessTokenRequest = OAuthClientRequest
                    .tokenLocation(OAuthClientConfig.OAUTH_URL_ACCESS_TOKEN)
                    .setAppid(wxSdkConfig.getWx_app_id())
                    .setAppsecret(wxSdkConfig.getWx_app_secret())
                    .setCode(code)
                    .setGrantType(GrantType.AUTHORIZATION_CODE)
                    .setView("web")
                    .buildQueryMessage();

            OAuthAccessTokenResponse oAuthResponse = oAuthClient.accessToken(accessTokenRequest, OAuth.HttpMethod.POST);
            if (StringUtils.isNotBlank(oAuthResponse.getErrorCode())) {
                LOGGER.error(oAuthResponse.getErrorMsg());
                throw new RuntimeException(oAuthResponse.getErrorMsg());
            }

            String accessToken = oAuthResponse.getAccessToken();
            String openid = oAuthResponse.getOpenid();
            Long expiresIn = oAuthResponse.getExpiresIn();

            OAuthClientRequest userInfoRequest = new OAuthBearerClientRequest(OAuthClientConfig.OAUTH_URL_GETUSERINFO)
                    .setAccessToken(accessToken)
                    .setOpenid(openid)
                    .setLang("zh_CN").buildQueryMessage();

            OAuthResourceResponse resourceResponse = oAuthClient.resource(userInfoRequest, OAuth.HttpMethod.GET, OAuthResourceResponse.class);
            if (StringUtils.isNotBlank(resourceResponse.getParam("errcode"))) {
                LOGGER.error(resourceResponse.getParam("errmsg"));
                throw new AuthenticationException(resourceResponse.getParam("errmsg"));
            }
            OAuthUserInfoDTO userInfoDTO = new OAuthUserInfoDTO();
            userInfoDTO.setAccessToken(accessToken);
            userInfoDTO.setOpenid(openid);
            userInfoDTO.setExpiresIn(expiresIn);
            userInfoDTO.setNickname(resourceResponse.getParam("nickname"));
            userInfoDTO.setSex(resourceResponse.getParam("sex"));
            userInfoDTO.setLanguage(resourceResponse.getParam("language"));
            userInfoDTO.setCity(resourceResponse.getParam("city"));
            userInfoDTO.setProvince(resourceResponse.getParam("province"));
            userInfoDTO.setCountry(resourceResponse.getParam("country"));
            userInfoDTO.setHeadimgurl(resourceResponse.getParam("headimgurl"));
            return userInfoDTO;
        } catch (OAuthProblemException | OAuthSystemException | AuthenticationException ex) {
            LOGGER.error(ex.getMessage());
            throw new AuthenticationException(ex);
        }
    }
}
