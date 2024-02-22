package com.tube.Content;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "User_Upload_Servlet", value = "/User_Upload_Servlet")
public class User_Upload_Servlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String video_file="media/content/videos/"+request.getParameter("video_file");
        String video_title=request.getParameter("video_title");
        String video_image="media/content/thumbnails/"+request.getParameter("video_image");
        String video_category=request.getParameter("video_category");
        String video_description=request.getParameter("video_description");
        String channel_name =request.getParameter("channel_name");
        String channel_logo="media/content/channelLogo/"+request.getParameter("channel_logo");
        PrintWriter out=response.getWriter();
        RequestDispatcher dispatcher=null;
        dispatcher=request.getRequestDispatcher("adminindex.jsp");

        if(videoJDBC.uploadVideo(video_file,video_image,video_title,video_category,video_description,channel_name,channel_logo))
        {
            out.println("<script>alert('Uploaded successful!!'); window.location.replace(\"http://localhost/Login/upload_video_user.jsp\");</script>");

        }
        else {
            out.println("<script>alert('Unsuccessfull ?? something went wrong!!'); window.location.replace(\"http://localhost/Login/upload_video_user.jsp\");</script>");

        }


    }
}