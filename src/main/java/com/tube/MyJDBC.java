package com.tube;

import javax.servlet.http.HttpServlet;
import java.sql.*;

public class MyJDBC  extends HttpServlet {
    public static  final String DB_url="jdbc:mysql://localhost:3306/techtube?useSSL=false";
    public static final String DB_username="root";
    public static  final String DB_password="1234";



    // registering new user connectivity
    public static boolean RegisterUser(String username,String email_id,String password,String contact_no){

        try{

            // check username is valid or not by calling check user function
            if(!checkUser(username)){
                Connection connection=DriverManager.getConnection(DB_url , DB_username,DB_password);
                PreparedStatement statementQuery=connection.prepareStatement(" INSERT INTO users(user_name,email_id,password,contact_no)"+"VALUES(?,?,?,?)");

                // setting values to parameters ? ?
                statementQuery.setString(1,username);
                statementQuery.setString(2,email_id);
                statementQuery.setString(3,password);
                statementQuery.setString(4,contact_no);

                statementQuery.executeUpdate();
                return true;
            }


        }catch (SQLException e) {
            e.printStackTrace();// printing which error occur
        }
        return false;
    }

    // checking username already exists or not   true if exist false it not
    public static boolean checkUser(String username){
        try{
            Connection connection=DriverManager.getConnection(DB_url,DB_username,DB_password);
            PreparedStatement statementQuery=connection.prepareStatement("SELECT * FROM users WHERE user_name=?");

            statementQuery.setString(1,username);
            ResultSet resultSet=statementQuery.executeQuery();
            // if resultset return info then username is availabel
            if(!resultSet.next())
            {

                return false;
            }


        }catch(SQLException e){
            e.printStackTrace();
        }
        return true;
    }




    // login code *************************
    // function which accepting  input from login page  name and password  to validate that they are in the data base or not
//    public static User validateUserLogin(String username,String password){
    public static User validateUserLogin(String username,String password){


        try {


            Connection connection=DriverManager.getConnection(DB_url,DB_username,DB_password);
            PreparedStatement statementQuery=connection.prepareStatement("SELECT * FROM users WHERE user_name=? AND password=?");  // query which will be going to execute
            // placing values(user details ) in the place of ?
            // parameter idex notihng but the index of ? mark in the satement query  first index refers to username and second index refers to pass word
            statementQuery.setString(1,username);
            statementQuery.setString(2,password);

            // storing result of the Query  in Resultset object
            ResultSet resultSet=statementQuery.executeQuery(); // rwturns the result of query all info about user in row format
            //  next() function return true / false
            //  true - if result set returned  information about user  then it points to the first row
            // false - if query returned no data then result set points to null
            if(resultSet.next())
            {
                int userId=resultSet.getInt("user_id");
//                 username=resultSet.getString("username");
                String email_id=resultSet.getString("email_id");
                String contact_no=resultSet.getString("contact_no");

                // finally returning object of user class to proceed further for other operations on this user
                return new User(userId,username,email_id,password,contact_no);
//                return true;

            }


        } catch (SQLException e) {
            e.printStackTrace();// printing which error occur
        }
        // return null when user is not valid
        return null;
//        return new User(1,"aniket","aniket","aniket","aniket");
//        return false;

    }


}
