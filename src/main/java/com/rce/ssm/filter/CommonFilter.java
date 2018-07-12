package com.rce.ssm.filter;

import com.rce.ssm.model.User;
import com.rce.ssm.tool.PublicStatic;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class CommonFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String path = request.getServletPath();
        System.out.println("path:" + path);
        if (request.getQueryString() != null) {
            path += "?" + request.getQueryString();
        }

        String currentURL = request.getRequestURI();
        String ctxPath = request.getContextPath();

        String targetURL = currentURL.substring(ctxPath.length());
        HttpSession session = request.getSession(false);

        System.out.println("targetURL:" + targetURL + "\nctxPath:" + ctxPath + "\ncurrentURL:" + currentURL + "\nQuary" + path);

        if (targetURL.indexOf("login") > 0 || targetURL.equals("/") || targetURL.indexOf("register") > 0 || targetURL.indexOf("forget") > 0 || targetURL.indexOf("verify") > 0 || targetURL.indexOf("css") > 0 || targetURL.indexOf("js") > 0 || targetURL.indexOf("woff") > 0 || targetURL.indexOf("eot") > 0 || targetURL.indexOf("svg") > 0 || targetURL.indexOf("ttf") > 0 || targetURL.indexOf("png") > 0 || targetURL.indexOf("jpg") > 0 || targetURL.indexOf("gif") > 0 || targetURL.startsWith("/goods/") || targetURL.indexOf("search") > 0 ) {
            filterChain.doFilter(request, response);
        } else {
            User user = (User) request.getSession().getAttribute(PublicStatic.USER);
            if (user != null) {
                filterChain.doFilter(request, response);
            } else {
                response.sendRedirect(request.getContextPath() + "/login/index?pathlocation=" + request.getContextPath() + path);
                return;
            }
        }
    }

    public void destroy() {

    }
}
