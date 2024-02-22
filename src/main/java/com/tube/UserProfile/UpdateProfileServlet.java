package com.tube.UserProfile;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "UpdateProfileServlet", value = "/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {


    public static  final String DB_url="jdbc:mysql://localhost:3306/techtube?useSSL=false";
    public static final String DB_username="root";
    public static  final String DB_password="1234";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user_profile="media/content/user_profile/"+request.getParameter("profile-image");
        String user_bio=request.getParameter("user-bio");
        String user_address=request.getParameter("user-address");
        String user_name=request.getParameter("user-name");
        PrintWriter out=response.getWriter();
        RequestDispatcher dispatcher=null;
        dispatcher=request.getRequestDispatcher("user_profile.jsp");

        if(updateProfile(user_name,user_profile,user_bio,user_address))
        {
            out.println("<script>alert('Uploaded successful!!'); window.location.replace(\"http://localhost/Login/user_profile.jsp\");</script>");

        }
        else {
            out.println("<script>alert('Unsuccessfull ?? something went wrong!!'); window.location.replace(\"http://localhost/Login/user_profile.jsp\");</script>");

        }

    }


    public static boolean updateProfile(String user_name,String user_profile,String user_bio,String user_address){

        try{

            // check username is valid or not by calling check user function
            PreparedStatement statementQuery;
                Connection connection= DriverManager.getConnection(DB_url , DB_username,DB_password);
//                PreparedStatement statementQuery=connection.prepareStatement(" INSERT INTO users(user_name,email_id,password,contact_no,registration_date_time)"+"VALUES(?,?,?,?,NOW())");
                if(!user_profile.equals("media/content/user_profile/")) {
                    statementQuery = connection.prepareStatement("UPDATE `techtube`.`users` SET `user_profile` = '" + user_profile + "', `user_address` = '" + user_address + "', `user_description` = '" + user_bio + "' WHERE (`user_name` = '" + user_name + "');");
                }
                else {
                    statementQuery = connection.prepareStatement("UPDATE `techtube`.`users` SET  `user_address` = '" + user_address + "', `user_description` = '" + user_bio + "' WHERE (`user_name` = '" + user_name + "');");

                }
                // setting values to parameters ? ?
//                statementQuery.setString(1,user_profile);
//                statementQuery.setString(2,user_bio);
//                statementQuery.setString(3,user_address);
//                statementQuery.setString(4,contact_no);

                statementQuery.executeUpdate();




        }catch (SQLException e) {
            e.printStackTrace();// printing which error occur
            return false;
        }
        return true;
    }



}