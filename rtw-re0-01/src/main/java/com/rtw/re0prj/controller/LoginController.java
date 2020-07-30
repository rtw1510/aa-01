package com.rtw.re0prj.controller;

import com.rtw.re0prj.beans.User;
import com.rtw.re0prj.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("rtw")
public class LoginController {
    @Resource
    LoginService loginService;
    @RequestMapping("login.do")
    public ModelAndView doLogin(HttpServletRequest request,User user){
        String username = request.getParameter("username");
        ModelAndView mv = new ModelAndView();
        User user1 = loginService.login(user);
        if (user1!=null){
            mv.setViewName("/WEB-INF/jsp/loginSuccess.jsp");
        }else{
            mv.setViewName("/WEB-INF/jsp/loginFail.jsp");
        }
        return mv;
    }
}
