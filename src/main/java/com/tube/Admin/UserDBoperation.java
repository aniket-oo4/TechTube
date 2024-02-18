package com.tube.Admin;

import javax.servlet.http.HttpServlet;

public class UserDBoperation  extends HttpServlet {
    public static  final String DB_url="jdbc:mysql://localhost:3306/techtube?useSSL=false";
    public static final String DB_username="root";
    public static  final String DB_password="1234";

    private static String Select_User_By_ID="select * from users ";

}
