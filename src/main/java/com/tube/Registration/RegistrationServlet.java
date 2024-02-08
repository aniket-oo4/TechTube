package com.tube.Registration;
// *** data base file  classs

import com.tube.MyJDBC;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegistrationServlet", value = "/register")  // value is action name in html file
public class RegistrationServlet extends HttpServlet {
    // DAtabase connectivity ****************88

     public static String ReturnMsg=null;  // REturn msg for if data is invalid

    // if we click on the register or submit button on html form this class will loaded and perform backend activities on
    // following data
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        PrintWriter out=response.getWriter();  //out is a object of PrintWriter class which is used to print
//        out.print("working  ");

        // ***********************************************
          // getParameter is a predefined  method   in httpServlet Class which gain info from jsp by taking attribute
        // as a String Format
          String user_name=request.getParameter("name");
          String email_id=request.getParameter("email");
          String password=request.getParameter("pass");
          String re_password=request.getParameter("re_pass");
          String contact_no=request.getParameter("contact");

        RequestDispatcher dispatcher=null;  // redirector of links

//// checking ********
//        out.println(user_name);
//        out.println(email_id);
//        out.println(password);
//        out.println(contact_no);




        // DAtabase connectivity ****************8


    if(validateUserInput(user_name,password,re_password)){
//        if(validateUserInput("user_name","password","password")){

//        if(MyJDBC.RegisterUser("user_name","email_id","password","contact_no")) {  // RegisterUser function returns true if username is not exist and user registered successfully
            // restration successfull
        dispatcher=request.getRequestDispatcher("registration.jsp");  // dispatcher used to dispatch current web and redirect to provied web
        if(MyJDBC.RegisterUser(user_name,email_id,password,contact_no)) {
//            response.sendRedirect("regitration.jsp");
            request.setAttribute("status","success");
//            dispatcher=request.getRequestDispatcher("login.jsp"); /**8
            out.println("<script>alert('Registration successful!!'); window.location.replace(\"http://localhost/Login/login.jsp\");</script>");

           }
        else {

            request.setAttribute("status","failed");
            out.println("<script>alert('Unsuccessfull ?? user Already exist!!'); window.location.replace(\"http://localhost/Login/registration.jsp\");</script>");
//            out.println("Username already exists!!");
//           out.print("information does not register!!!");
//           out.println(user_name);
//           out.println(email_id);
//           out.println(password);
//           out.println(contact_no);

//            response.sendRedirect("login.jsp");
        }
//        dispatcher.forward(request,response); //**8

    }
    else {

//        out.println(ReturnMsg);
        out.println("<script>alert('Unsuccessfull "+ReturnMsg +"!!'); window.location.replace(\"http://localhost/Login/registration.jsp\");</script>");

//        out.print("data is not valid \n please enter again  ");
    }

    }

    public static boolean validateUserInput(String username,String password,String re_password  ){
        if(username.length()==0||password.length()==0||re_password.length()==0){
            ReturnMsg="Field must be filled is cannot be empty !!";
            return false ;
        }
        if(username.length()<6){
            ReturnMsg="User name is ToomShort !!";
            return false;
        }
        // password and repassword must be same
        if(!password.equals(re_password))
        {
            ReturnMsg="Both passWords are not SAme  !!";
            return false;
        }

//        password passed
        return true ;
    }





}