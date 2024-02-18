package com.tube.Content;

import com.tube.VideoData;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "fetchContentServlet", value = "/fetchContentServlet")
public class fetchContentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String channelName="Hello bhava  Login here ";

        String videoName="logo.jpeg";
        String file;//video.mp4
        String video_image;//thumbnail
        String video_title;//titiel
        String video_category;//category
        String video_description;//description
        String channel_name; //channel name
        String channel_logo;// logo of channel.jpg


        RequestDispatcher requestDispatcher=request.getRequestDispatcher("robotics.jsp");
        request.setAttribute("channelName",channelName);
        request.setAttribute("videoName","media/"+videoName);


        ArrayList<VideoData> videoDataArrayList=new ArrayList<>();
        videoDataArrayList=videoJDBC.getVideoDetails();
        int arraySize=videoDataArrayList.size();
        for(int i=0;i<arraySize;i++){
             VideoData obj=videoDataArrayList.get(i);
            request.setAttribute("channelName",obj.getVideo_title());
//            request.setAttribute("videoName");
            requestDispatcher.forward(request,response);
        }




    }

//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
}