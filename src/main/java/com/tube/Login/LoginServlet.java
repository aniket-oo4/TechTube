package com.tube.Login;

import com.tube.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

import static com.tube.MyJDBC.validateUserLogin;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")  // value must be same as jsp file form tag action attributes value
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        HttpSession session= request.getSession();  // session
        PrintWriter out=response.getWriter();
        RequestDispatcher dispatcher=null;  // redirector of links

        String user_name=request.getParameter("username");
//        String email_id=request.getParameter("email");
        String password=request.getParameter("password");

        User user=validateUserLogin(user_name,password); // return result of myjdbc class validate user p=login function return user object  other wise retun null
        dispatcher=request.getRequestDispatcher("login.jsp");
        // if valid
        if(user!=null){

            request.setAttribute("status","success");
            session.setAttribute("name",user.getUser_name());// setting session name
//            response.sendRedirect("index.jsp");
//            dispatcher=request.getRequestDispatcher("index.jsp");  //**8
            out.println("<script>alert('Login success!!'); window.location.replace(\"http://localhost/Login/index.jsp\");</script>");

        }
        // if user == null then show msg unsuccessfull login
        else{
//              out.println("<script>alert('Data is invalid ');</script>");
            request.setAttribute("status","Invalid");
//            response.sendRedirect("login.jsp");
//               out.println(user.getUser_name());
//            out.println(password+"  "+user_name);
//                out.println("Login Failed !!");

            out.println("<script>alert('Login Unsuccessful!!'); window.location.replace(\"http://localhost/Login/login.jsp\");</script>");

        }
//        dispatcher.forward(request,response);  // **8
    }


}