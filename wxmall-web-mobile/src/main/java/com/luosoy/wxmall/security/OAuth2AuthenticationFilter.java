package com.luosoy.wxmall.security;

import com.luosoy.common.config.WeixinSDkConfig;
import com.luosoy.frame.exception.SystemException;
import com.weixin.sdk.oauth2.client.OAuthClientConfig;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.AuthenticatingFilter;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.util.StringUtils;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;


public class OAuth2AuthenticationFilter extends AuthenticatingFilter {

    private static final Logger LOGGER = LoggerFactory.getLogger(OAuth2AuthenticationFilter.class);
    @Autowired
    private WeixinSDkConfig wxSdkConfig;
    //oauth2 authc code参数名
    private String authcCodeParam = "code";
    //oauth2服务器响应类型
    private String responseType = "code";
    private String failureUrl;

    public void setFailureUrl(String failureUrl) {
        this.failureUrl = failureUrl;
    }

    @Override
    protected AuthenticationToken createToken(ServletRequest request, ServletResponse response) throws Exception {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        String code = httpRequest.getParameter(authcCodeParam);
        return new OAuth2Token(code);
    }

    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) {
        return getSubject(request, response).isAuthenticated();
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        String error = request.getParameter("error");
        String errorDescription = request.getParameter("error_description");
        if (!StringUtils.isEmpty(error)) {//如果服务端返回了错误
            WebUtils.issueRedirect(request, response, failureUrl + "?error=" + error + "error_description=" + errorDescription);
            return false;
        }

        Subject subject = getSubject(request, response);
        if (!subject.isAuthenticated()) {
            if (StringUtils.isEmpty(request.getParameter(authcCodeParam))) {
                //如果用户没有身份验证，且没有auth code，则重定向到服务端授权
                setLoginUrl(getOAuth2LoginUrl(request));
                saveRequestAndRedirectToLogin(request, response);
                return false;
            }
        }

        return executeLogin(request, response);
    }

    @Override
    protected boolean onLoginSuccess(AuthenticationToken token, Subject subject, ServletRequest request,
            ServletResponse response) throws Exception {
        issueSuccessRedirect(request, response);
        return false;
    }

    @Override
    protected boolean onLoginFailure(AuthenticationToken token, AuthenticationException ae, ServletRequest request,
            ServletResponse response) {
        Subject subject = getSubject(request, response);
        if (subject.isAuthenticated() || subject.isRemembered()) {
            try {
                issueSuccessRedirect(request, response);
            } catch (Exception ex) {
                LOGGER.error(ex.getMessage());
                throw new SystemException(ex.getMessage(), SystemException.REQUEST_EXCEPTION);
            }
        } else {
            try {
                WebUtils.issueRedirect(request, response, failureUrl);
            } catch (IOException ex) {
                LOGGER.error(ex.getMessage());
                throw new SystemException(ex.getMessage(), SystemException.REQUEST_EXCEPTION);
            }
        }
        return false;
    }

    private String getOAuth2LoginUrl(ServletRequest request) throws UnsupportedEncodingException {
        StringBuilder rurl = new StringBuilder("http://");
        rurl.append(request.getServerName());
        int port = request.getServerPort();
        if (port != 80) {
            rurl.append(":").append(port);
        }
        rurl.append(request.getServletContext().getContextPath()).append(getSuccessUrl());
        StringBuilder loginUrl = new StringBuilder(OAuthClientConfig.OAUTH_URL);
        loginUrl.append("?appid=").append(wxSdkConfig.getWx_app_id())
                .append("&redirect_uri=").append(URLEncoder.encode(rurl.toString(), "utf-8"))
                .append("&response_type=").append(responseType)
                .append("&scope=").append(OAuthClientConfig.SNSSCOPE_USERINFO)
                .append("&state=STATE#wechat_redirect");

        return loginUrl.toString();
    }

}
