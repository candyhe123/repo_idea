package com.lagou.exception;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GlobalExceptionResolver implements HandlerExceptionResolver {
    /**
     *
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @param e 实际抛出的异常对象
     * @return
     */
    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
        //具体的异常处理 产生异常后，跳转到一个最终的异常页面
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("error",e.getMessage());
        modelAndView.setViewName("error");
        return modelAndView;
    }
}
