<!DOCTYPE html>
<html lang="en">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.util.*, java.io.*" %>
    <%
    if(session.getAttribute("name")==null){
     response.sendRedirect("login.jsp");
     }

      %>



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
          /* video {
            margin-top: 4rem;
            margin-left: 10rem;
            border: 1px solid rgba(0, 0, 0, 0);
            border-radius: 20px;
            padding-top: auto;
          } */

          .section2 {
            margin-left: 11rem;
            margin-top: -.5rem;
            margin-right: 10rem;
            width: 1000px;
            background-color: rgba(165, 42, 42, 0);
            position: relative;
            font-size: large;


          }
          yt-formatted-string[has-link-only_]:not([force-default-style]) a.yt-simple-endpoint.yt-formatted-string:visited{
            color: rgb(27, 27, 27);
          }
          #owner.ytd-watch-metadata{
            margin-bottom:-2rem ;
          }
          yt-formatted-string[has-link-only_]:not([force-default-style]) a.yt-simple-endpoint.yt-formatted-string:visited{
            color: black;
          }
          .navbar1{
            overflow: hidden;
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
          <div class="side_logo" style="margin-left: 87rem;margin-top: 10rem;position: fixed;">
            <img src="media/background/TECH1.png" alt="" style="margin-left: -5rem;">
            <div class="background_text" style="margin-left: 17px;  width:280px;padding: 20px; padding-top:3px ; ">
              <div style="font-size: 30px;font-weight: 500;">Our mission is to give</div> everyone a voice
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
          <video width="1020" height=auto controls style="position: relative;" class="video_player1" >


            <!-- <source src="media/video1.mp4" type="video/mp4">
            <source src="media/video1.mp4" type="video/ogg"> -->
            <source src="<%=request.getAttribute("video_file") %>" type="video/mp4" >
            <!-- <source src="media/content/videos/video1.mp4" type="video/ogg"> -->
            Your browser does not support the video tag.
          </video>
          <div class="section2" style="">

            <div id="top-row" class="style-scope ytd-watch-metadata">

              <div id="owner" class="item style-scope ytd-watch-metadata">
                <ytd-video-owner-renderer watch-metadata-refresh=""
                  class="style-scope ytd-watch-metadata"><!--css-build:shady--><!--css-build:shady--><a
                    class="yt-simple-endpoint style-scope ytd-video-owner-renderer" tabindex="-1"
                    href="#">
  
                    <yt-img-shadow id="avatar" width="40" class="style-scope ytd-video-owner-renderer no-transition"
                      loaded="" style="background-color: transparent; margin-left: -1rem;"><!--css-build:shady--><!--css-build:shady-->
                      <img
                        id="img" draggable="false" class="style-scope yt-img-shadow" alt="" width="40"
                        src="<%=request.getAttribute("channel_logo")%>"></yt-img-shadow></a>
                  <div id="upload-info" class="style-scope ytd-video-owner-renderer"><ytd-channel-name id="channel-name"
                      class="style-scope ytd-video-owner-renderer"><!--css-build:shady--><!--css-build:shady-->
                      <div id="container" class="style-scope ytd-channel-name">
                        <div id="text-container" class="style-scope ytd-channel-name">
                          <yt-formatted-string id="text" link-inherit-color="" title="<%=request.getAttribute("channel_name")%>"
                            class="style-scope ytd-channel-name complex-string" ellipsis-truncate=""
                            ellipsis-truncate-styling="" has-link-only_=""><a
                              class="yt-simple-endpoint style-scope yt-formatted-string" spellcheck="false"
                              href="#" dir="auto">&nbsp;|&nbsp;<%=request.getAttribute("channel_name")%>&nbsp;|&nbsp;
                            </a></yt-formatted-string>
                        </div>
                        <tp-yt-paper-tooltip fit-to-visible-bounds="" class="style-scope ytd-channel-name"
                          role="tooltip" tabindex="-1"
                          style="inset: -26.8px auto auto 52.0938px;"><!--css-build:shady-->
                          <div id="tooltip" class="style-scope tp-yt-paper-tooltip hidden" style-target="tooltip">
                            <!-- <%=request.getAttribute("video_id")%> -->

                          </div>
                        </tp-yt-paper-tooltip>
                      </div>
                      <ytd-badge-supported-renderer class="style-scope ytd-channel-name" disable-upgrade="" hidden="">
                      </ytd-badge-supported-renderer>
                    </ytd-channel-name>
                    <!-- <yt-formatted-string id="owner-sub-count"
                      class="style-scope ytd-video-owner-renderer" aria-label="12K subscribers">
                      12K
                      subscribers
                    </yt-formatted-string> -->
                    </div>
                  <div id="purchase-button" class="style-scope ytd-video-owner-renderer" hidden=""></div>
                  <div id="sponsor-button" class="style-scope ytd-video-owner-renderer"></div>
                  <div id="analytics-button" class="style-scope ytd-video-owner-renderer"></div>
                </ytd-video-owner-renderer>
                <div id="subscribe-button" class="style-scope ytd-watch-metadata"><ytd-subscribe-button-renderer
                    class="style-scope ytd-watch-metadata" use-keyboard-focused="" animated-action-enabled=""
                    foreground-lottie-ref="{}" background-lottie-ref="{}"><!--css-build:shady--><!--css-build:shady-->

                  </ytd-subscribe-button-renderer></div>
              </div>



            </div>
               
            <yt-formatted-string id="video-title" class="style-scope ytd-rich-grid-media"
            aria-label="<%=request.getAttribute("video_description")%>">
            ---------------------------------------------------------------------------------------------------------------------
            <%=request.getAttribute("video_title")%>
        
         </yt-formatted-string>
         <yt-formatted-string id="video-title" class="style-scope ytd-rich-grid-media"
         aria-label="<%=request.getAttribute("video_title")%>">
         ---------------------------------------------------------------------------------------------------------------------
     
      </yt-formatted-string>   

         Description : <%=request.getAttribute("video_description")%>
           
          </div>


        </main>


        <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> -->

      </body>


      <!--   *****************************************************************************-->