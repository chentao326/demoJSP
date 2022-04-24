package com.demo.login_register;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author : chentao
 * @time : 12:51 2022/3/25
 */
public class registerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        User user=new User(username,password);

        try{
            boolean result = loginDao.register(user);
            if (result == true){
                System.out.println("注册成功");
                req.getRequestDispatcher("success.jsp").forward(req,resp);
            }else {
                req.getRequestDispatcher("register.jsp").forward(req,resp);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
