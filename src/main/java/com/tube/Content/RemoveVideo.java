package com.tube.Content;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "RemoveVideo", value = "/RemoveVideo")
public class RemoveVideo extends HttpServlet {
    public static  final String DB_url="jdbc:mysql://localhost:3306/techtube?useSSL=false";
    public static final String DB_username="root";
    public static  final String DB_password="1234";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String video_id=request.getParameter("video_id").toString();
        PrintWriter out=response.getWriter();
        if(RemoveVideo(video_id))
        {
            out.println("<script>alert('Removed video  successfully!!'); window.location.replace(\"http://localhost/Login/ManageContent.jsp\");</script>");

        }
        else {
            out.println("<script>alert('Unsuccessfull ?? something went wrong!!'); window.location.replace(\"http://localhost/Login/ManageContent.jsp\");</script>");

        }


    }

    public static boolean RemoveVideo(String video_id){

        try{

            // check username is valid or not by calling check user function

            Connection connection= DriverManager.getConnection(DB_url , DB_username,DB_password);
            PreparedStatement statementQuery = connection.prepareStatement("DELETE FROM `techtube`.`video` WHERE (`video_id` = '"+video_id+"');");

            statementQuery.executeUpdate();




        }catch (SQLException e) {
            e.printStackTrace();// printing which error occur
            return false;
        }
        return true;
    }

}