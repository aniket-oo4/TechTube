package com.tube.Content;

import com.tube.VideoData;

import javax.servlet.http.HttpServlet;
import java.sql.*;
import java.util.ArrayList;

public class videoJDBC extends HttpServlet {

    public static  final String DB_url="jdbc:mysql://localhost:3306/techtube?useSSL=false";
    public static final String DB_username="root";
    public static  final String DB_password="1234";

    // registering new user connectivity
    public static boolean uploadVideo(String video_file,String video_image, String video_title,String video_category,String video_description, String channel_name, String channel_logo){

        try{

            // check username is valid or not by calling check user function

                Connection connection= DriverManager.getConnection(DB_url , DB_username,DB_password);
//                PreparedStatement statementQuery=connection.prepareStatement(" INSERT INTO users(user_name,email_id,password,contact_no,registration_date_time)"+"VALUES(?,?,?,?,NOW())");
                PreparedStatement  statementQuery=connection.prepareStatement("INSERT INTO video(video_file,video_image,video_title,channel_name,channel_logo,video_category,video_description,upload_date_time)"+"values(?,?,?,?,?,?,?,NOW())");

                // setting values to parameters ? ?
                statementQuery.setString(1,video_file);
                statementQuery.setString(2,video_image);
                statementQuery.setString(3,video_title);
                statementQuery.setString(4,channel_name);
                statementQuery.setString(5,channel_logo);
                statementQuery.setString(6,video_category);
                statementQuery.setString(7,video_description);


                statementQuery.executeUpdate();



        }catch (SQLException e) {
            e.printStackTrace();// printing which error occur
            return false;
        }
        return true;

    }


    public static  ArrayList<VideoData> getVideoDetails(){
        int video_id;
        String video_file;
        String video_image;
        String video_title;
        String video_category;
        String video_description;
        String channel_name;
        String channel_logo;
        // Declaring the ArrayList
        ArrayList<VideoData> videoDataArrayList = new ArrayList<VideoData>();
        try{
            Connection connection=DriverManager.getConnection(DB_url,DB_username,DB_password);
            PreparedStatement statementQuery=connection.prepareStatement("SELECT * FROM video  WHERE video_category=?");
            statementQuery.setString(1,"others");
            ResultSet resultSet=null;
            resultSet=statementQuery.executeQuery();
//            resultSet.beforeFirst();
            while(resultSet.next()) {
                video_id = resultSet.getInt("video_id");
                video_file = resultSet.getString("video_file");
                video_title = resultSet.getString("video_title");
                video_image = resultSet.getString("video_image");
                video_category = resultSet.getString("video_category");
                video_description = resultSet.getString("video_description");
                channel_name = resultSet.getString("channel_name");
                channel_logo = resultSet.getString("channel_logo");
                VideoData obj = new VideoData(video_file,video_image,video_title,video_category,video_description,channel_name,channel_logo);
                videoDataArrayList.add(obj);


            }
//            resultSet.close();


        }catch (Exception e)
        {
//            System.out.println(e);
            System.out.println("hello world ");
        }
        if(videoDataArrayList.isEmpty())
        {

            return null;
        }
    return videoDataArrayList;
    }


//    public static VideoData getVideoData(){
//
////        return new VideoData()
//    }
}
