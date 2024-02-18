package com.tube.VideoPlayer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;


@WebServlet(name = "PlayVideoServlet", value = "/PlayVideoServlet")
public class PlayVideoServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String video_id = request.getParameter("video_id");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("demoPlayer.jsp");
        String DB_url="jdbc:mysql://localhost:3306/techtube?useSSL=false" ;
        String DB_username="root" ;
        String  DB_password="1234" ;
        try {
            Connection connection = DriverManager.getConnection(DB_url, DB_username, DB_password);
            PreparedStatement statementQuery = connection.prepareStatement("SELECT * FROM video WHERE video_id=?");

            statementQuery.setString(1,video_id);
            ResultSet resultSet = statementQuery.executeQuery();
            String video_file=null;
            String video_title=null;
            String video_image=null;
            String video_category=null;
            String video_description=null;
            String channel_name=null;
            String channel_logo=null;
            String date=null;

            while(resultSet.next()) {
                video_file = resultSet.getString("video_file");
                video_title = resultSet.getString("video_title");
                video_image = resultSet.getString("video_image");
                video_category = resultSet.getString("video_category");
                video_description = resultSet.getString("video_description");
                channel_name = resultSet.getString("channel_name");
                channel_logo = resultSet.getString("channel_logo");
            }
            request.setAttribute("video_file","media/content/videos/video1.mp4");
            request.setAttribute("video_id",video_id);
            request.setAttribute("video_title",video_title);
            request.setAttribute("video_image",video_image);
            request.setAttribute("video_category",video_category);
            request.setAttribute("video_description",video_description);
            request.setAttribute("channel_name",channel_name);
            request.setAttribute("channel_logo",channel_logo);
            requestDispatcher.forward(request,response);
            response.sendRedirect("demoPlayer.jsp");

        }catch(Exception e){

        }
    }
}