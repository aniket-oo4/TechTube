package com.tube.UserProfile;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "RemoveUsers", value = "/RemoveUsers")
public class RemoveUsers extends HttpServlet {

    public static  final String DB_url="jdbc:mysql://localhost:3306/techtube?useSSL=false";
    public static final String DB_username="root";
    public static  final String DB_password="1234";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_name=request.getParameter("user_name");
        PrintWriter out=response.getWriter();
        if(RemoveUser(user_name))
        {
            out.println("<script>alert('Removed user  successful!!'); window.location.replace(\"http://localhost/Login/ManageUsers.jsp\");</script>");

        }
        else {
            out.println("<script>alert('Unsuccessfull ?? something went wrong!!'); window.location.replace(\"http://localhost/Login/ManageUsers.jsp\");</script>");

        }
    }

    public static boolean RemoveUser(String user_name){

        try{

            // check username is valid or not by calling check user function

            Connection connection= DriverManager.getConnection(DB_url , DB_username,DB_password);
            PreparedStatement statementQuery = connection.prepareStatement("DELETE FROM `techtube`.`users` WHERE (`user_name` = '"+user_name+"');");

            statementQuery.executeUpdate();




        }catch (SQLException e) {
            e.printStackTrace();// printing which error occur
            return false;
        }
        return true;
    }

}