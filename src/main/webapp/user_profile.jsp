<!DOCTYPE html>
<html lang="en">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.util.*, java.io.*,java.sql.*" %>
    <% 
    if(session.getAttribute("name")==null){ response.sendRedirect("login.jsp"); } %>
     
        
        <head>
          <meta name="viewport" content="width=device-width, initial-scale=1.0" />
          <script defer src="theme.js"></script>
          <title>TechTube</title>
          <!-- Favicon-->
          <link rel="apple-touch-icon" sizes="180x180" href="assets/apple-touch-icon.png">
          <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32x32.png">
          <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon-16x16.png">
          <link rel="manifest" href="assets/site.webmanifest">
          <link rel="stylesheet" href="style.css" />
          <link rel="stylesheet" href="youtube/style.css">
          <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700&display=swap" rel="stylesheet" />

          <!--=============== REMIXICONS  navbar2===============-->
          <link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">

          <!--=============== CSS navbar 2 ===============-->
          <link rel="stylesheet" href="assets2/css/styles.css">

          <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"> -->
          <style>
            .navbar1:hover .logo svg {
              margin-left: 1.70rem;
            }

            .navbar1:hover .logo-text {
              left: 0px;
              margin-left: 4.40rem;
            }

            .navbar1 {
              scrollbar-width: 1px;
              scrollbar-width: none;
            }
            ytd-video-meta-block.grid #channel-name.ytd-video-meta-block, .ytd-video-meta-block[meta-block].grid #channel-name.ytd-video-meta-block{
             /* font-family:Verdana, Geneva, Tahoma, sans-serif; */
             /* --yt-endpoint-hover-color: #dcda6f; */
             font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

          </style>
        </head>

        <body>
          <header>
            <%@include file="includes/top-navbar.jsp"%>
            <%@include file="includes/main-navbar1.jsp"%>
          </header>
          <background>
            <!--     ***************************************************************** -->
            <div class="side_logo" style="margin-left: 88rem;margin-top: 10rem;position: fixed;">
             
              <div class="background_text" style="margin-left: 17px;  width:280px;padding: 20px; padding-top:3px ; ">
                <span style="font-size: 30px;font-weight: 500;">Our mission is to give</span> everyone a voice
                &nbsp;&nbsp;&nbsp;&nbsp;and show them the world. &nbsp;&nbsp;&nbsp;&nbsp;We believe that everyone
                &nbsp;&nbsp;&nbsp;&nbsp;deserves to have a voice, &nbsp;&nbsp;&nbsp;&nbsp;and that the world is a
                &nbsp;&nbsp;&nbsp;&nbsp;better place when we &nbsp;&nbsp;&nbsp;&nbsp;listen, share and build
                &nbsp;&nbsp;&nbsp;&nbsp;community through our &nbsp;&nbsp;&nbsp;&nbsp;stories.
              </div>
            </div>

            <!-- <div class="background1" style="margin-left: 89rem;margin-top: 40rem;position: fixed;">
  <img src="media/background/background1.png" alt="">
</div>

<div class="background1" style="margin-left: 88rem;margin-top: 23rem;position: fixed;">
  <img src="media/background/background2.png" alt="">
</div> -->

            <!-- ************************************************************************* -->
          </background>
          <main>


        <h1 style="margin-top: 20rem;margin-left: 14rem;">  Sorry We are currrently working on this page <br>
       <a href="index.jsp"> click to goback</a></h1>
          </main>


          <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> -->

        </body>


        <!--   *****************************************************************************-->







