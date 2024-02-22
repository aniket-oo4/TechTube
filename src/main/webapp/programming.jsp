<!DOCTYPE html>
<html lang="en">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.util.*, java.io.*,java.sql.*" %>
    <% 
    if(session.getAttribute("name")==null){ response.sendRedirect("login.jsp"); } %>
      <%! 
      String DB_url="jdbc:mysql://localhost:3306/techtube?useSSL=false" ;
       String DB_username="root" ; 
       String  DB_password="1234" ; %>

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
              <img src="media/background/TECH1.png" alt="" style="margin-left: -5rem;">
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

            <div id="contents" class="style-scope ytd-rich-grid-renderer">


              <ytd-rich-grid-row class="style-scope ytd-rich-grid-renderer"><!--css-build:shady--><!--css-build:shady-->
                <div id="contents" class="style-scope ytd-rich-grid-row">

                  <ytd-rich-item-renderer class="style-scope ytd-rich-grid-row"
                    items-per-row="3"><!--css-build:shady--><!--css-build:shady-->
                    <div id="content" class="style-scope ytd-rich-item-renderer"><ytd-rich-grid-media
                        class="style-scope ytd-rich-item-renderer"
                        lockup="true"><!--css-build:shady--><!--css-build:shady-->

                        <div id="dismissed" class="style-scope ytd-rich-grid-media">
                          <div id="dismissed-content" class="style-scope ytd-rich-grid-media"></div>
                        </div><yt-interaction id="interaction"
                          class="extended style-scope ytd-rich-grid-media"><!--css-build:shady--><!--css-build:shady-->
                          <div class="stroke style-scope yt-interaction"></div>
                          <div class="fill style-scope yt-interaction"></div>
                        </yt-interaction>
                      </ytd-rich-grid-media></div>
                  </ytd-rich-item-renderer>
                  <ytd-rich-item-renderer class="style-scope ytd-rich-grid-row"
                    items-per-row="3"><!--css-build:shady--><!--css-build:shady-->
                    <div id="content" class="style-scope ytd-rich-item-renderer"><ytd-rich-grid-media
                        class="style-scope ytd-rich-item-renderer"
                        lockup="true"><!--css-build:shady--><!--css-build:shady-->

                        <div id="dismissed" class="style-scope ytd-rich-grid-media">
                          <div id="dismissed-content" class="style-scope ytd-rich-grid-media"></div>
                        </div><yt-interaction id="interaction"
                          class="extended style-scope ytd-rich-grid-media"><!--css-build:shady--><!--css-build:shady-->
                          <div class="stroke style-scope yt-interaction"></div>
                          <div class="fill style-scope yt-interaction"></div>
                        </yt-interaction>
                      </ytd-rich-grid-media></div>
                  </ytd-rich-item-renderer>
                  <ytd-rich-item-renderer class="style-scope ytd-rich-grid-row"
                    items-per-row="3"><!--css-build:shady--><!--css-build:shady-->
                    <div id="content" class="style-scope ytd-rich-item-renderer"><ytd-ad-slot-renderer
                        class="style-scope ytd-rich-item-renderer"
                        layout=""><!--css-build:shady--><!--css-build:shady-->
                        <div id="fulfilled-layout" class="style-scope ytd-ad-slot-renderer">
                          <ytd-in-feed-ad-layout-renderer
                            class="style-scope ytd-ad-slot-renderer"><!--css-build:shady--><!--css-build:shady-->
                            <div id="rendering-content" class="style-scope ytd-in-feed-ad-layout-renderer">
                              <ytd-video-display-full-buttoned-renderer
                                class="style-scope ytd-in-feed-ad-layout-renderer"
                                lockup="true"><!--css-build:shady--><!--css-build:shady-->

                                <div id="dismissed" class="style-scope ytd-video-display-full-buttoned-renderer">
                                  <div id="dismissed-content"
                                    class="style-scope ytd-video-display-full-buttoned-renderer">
                                  </div>
                                </div>
                              </ytd-video-display-full-buttoned-renderer>
                            </div>
                          </ytd-in-feed-ad-layout-renderer>
                        </div>
                      </ytd-ad-slot-renderer></div>
                  </ytd-rich-item-renderer>
                </div>

              </ytd-rich-grid-row>


              <ytd-rich-grid-row class="style-scope ytd-rich-grid-renderer"><!--css-build:shady--><!--css-build:shady-->
                <div id="contents" class="style-scope ytd-rich-grid-row">
                  <% 
                  try{ 
                    Connection connection=DriverManager.getConnection(DB_url,DB_username,DB_password);
                    PreparedStatement statementQuery=connection.prepareStatement("SELECT * FROM video"); 
                 
                     ResultSet resultSet=statementQuery.executeQuery();
                      int video_id;
                    String video_file;
                     String video_title;
                      String video_image; 
                      String video_category;
                       String video_description;
                        String channel_name; 
                        String channel_logo;
                         String date; 
                         int cnt=0;
                    while(resultSet.next()) {
                       video_id=resultSet.getInt("video_id");
                    video_file=resultSet.getString("video_file");
                    video_title=resultSet.getString("video_title");
                    video_image=resultSet.getString("video_image");
                    video_category=resultSet.getString("video_category");
                    video_description=resultSet.getString("video_description");
                    channel_name=resultSet.getString("channel_name");
                     channel_logo=resultSet.getString("channel_logo");
                
                    cnt+=1;
                     %>
                    
                    <ytd-rich-item-renderer class="style-scope ytd-rich-grid-row"
                      items-per-row="3" ><!--css-build:shady--><!--css-build:shady-->
                      
                      <div id="content" class="style-scope ytd-rich-item-renderer">
                        
                        <ytd-rich-grid-media class="style-scope ytd-rich-item-renderer"
                          lockup="true"><!--css-build:shady--><!--css-build:shady-->
                          <div id="dismissible" class="style-scope ytd-rich-grid-media">
                            <div id="thumbnail" class="style-scope ytd-rich-grid-media">
                              <ytd-thumbnail rich-grid-thumbnail="" use-hovered-property="" width="9999"
                                class="style-scope ytd-rich-grid-media" size="large" loaded="">
                                <!--css-build:shady--><!--css-build:shady-->
                                <input type="hidden" name="video_id" id="video_id" value="<%out.print(video_id);%>">
                                <a id="thumbnail" class="yt-simple-endpoint inline-block style-scope ytd-thumbnail"
                                  aria-hidden="true" tabindex="-1" rel="null"  href="PlayVideoServlet?video_id=<%out.print(video_id);%>">

                                  <yt-image alt="" ftl-eligible="" notify-on-loaded="" notify-on-unloaded=""
                                    class="style-scope ytd-thumbnail">
                                    <!-- <img alt="" style="background-color: transparent;"  class="yt-core-image yt-core-image--fill-parent-height yt-core-image--fill-parent-width yt-core-image--content-mode-scale-aspect-fill yt-core-image--loaded"
                          src="<%=request.getAttribute("videoName")%>"> -->
                                    <img alt="" style="background-color: transparent;"
                                      class="yt-core-image yt-core-image--fill-parent-height yt-core-image--fill-parent-width yt-core-image--content-mode-scale-aspect-fill yt-core-image--loaded"
                                      src="<% out.print(video_image);%>"> <!--  thumbnail -->
                                  </yt-image>
                                  <!-- src="media/logo.jpeg" -->
                                  <div id="overlays" class="style-scope ytd-thumbnail">
                                    <ytd-thumbnail-overlay-time-status-renderer class="style-scope ytd-thumbnail"
                                      overlay-style="DEFAULT"><!--css-build:shady--><!--css-build:shady--><ytd-badge-supported-renderer
                                        is-thumbnail-badge=""
                                        class="style-scope ytd-thumbnail-overlay-time-status-renderer"
                                        system-icons=""><!--css-build:shady--><!--css-build:shady--><dom-repeat
                                          id="repeat" as="badge"
                                          class="style-scope ytd-badge-supported-renderer"><template
                                            is="dom-repeat"></template></dom-repeat></ytd-badge-supported-renderer>
                                      <!-- <div id="time-status" class="style-scope ytd-thumbnail-overlay-time-status-renderer">
                              <yt-icon size="16" class="style-scope ytd-thumbnail-overlay-time-status-renderer"
                                disable-upgrade="" hidden=""></yt-icon><span id="text"
                                class="style-scope ytd-thumbnail-overlay-time-status-renderer"
                                aria-label="1 hour, 8 minutes, 47 seconds">
                                1:08:47
                              </span></div> -->
                                    </ytd-thumbnail-overlay-time-status-renderer><ytd-thumbnail-overlay-now-playing-renderer
                                      class="style-scope ytd-thumbnail"><!--css-build:shady--><!--css-build:shady--><span
                                        id="overlay-text"
                                        class="style-scope ytd-thumbnail-overlay-now-playing-renderer">Now
                                        playing </span>
                                      <ytd-thumbnail-overlay-equalizer
                                        class="style-scope ytd-thumbnail-overlay-now-playing-renderer"><!--css-build:shady--><!--css-build:shady--><svg
                                          xmlns="http://www.w3.org/2000/svg" id="equalizer" viewBox="0 0 55 95"
                                          class="style-scope ytd-thumbnail-overlay-equalizer">
                                          <g class="style-scope ytd-thumbnail-overlay-equalizer">
                                            <rect class="bar style-scope ytd-thumbnail-overlay-equalizer" x="0"></rect>
                                            <rect class="bar style-scope ytd-thumbnail-overlay-equalizer" x="20"></rect>
                                            <rect class="bar style-scope ytd-thumbnail-overlay-equalizer" x="40"></rect>
                                          </g>
                                        </svg>
                                      </ytd-thumbnail-overlay-equalizer>
                                    </ytd-thumbnail-overlay-now-playing-renderer>
                                  </div>
                                  <div id="mouseover-overlay" class="style-scope ytd-thumbnail"></div>
                                  <div id="hover-overlays" class="style-scope ytd-thumbnail"></div>
                                </a>
                              </ytd-thumbnail><ytd-playlist-thumbnail is-double-stack="" use-hovered-property=""
                                width="9999" class="style-scope ytd-rich-grid-media" thumbnail-size="large"
                                enable-web-modern-collections-v2="" size="large"
                                hidden=""><!--css-build:shady--><!--css-build:shady--><yt-collections-stack
                                  class="collections-stack-wiz style-scope ytd-playlist-thumbnail">
                                  <div>
                                    <div class="collections-stack-wiz__collection-stack2" style=""></div>
                                    <div
                                      class="collections-stack-wiz__collection-stack1 collections-stack-wiz__collection-stack1--large"
                                      style=""></div>
                                  </div>
                                </yt-collections-stack>
                                <a id="thumbnail" class="yt-simple-endpoint style-scope ytd-playlist-thumbnail"
                                  tabindex="-1" aria-hidden="true" href="/watch?v=ya-pUARZjxo">
                                  <div id="playlist-thumbnails" class="style-scope ytd-playlist-thumbnail">

                                  </div>

                                  
                                  
                                 
                                </a>
                              </ytd-playlist-thumbnail>
                            </div>
                            <div id="thumbnail-underlay" class="style-scope ytd-rich-grid-media" hidden=""></div>
                            <div id="details" class="style-scope ytd-rich-grid-media">
                            
                              <!-- <a id="avatar-link"
                                class="yt-simple-endpoint style-scope ytd-rich-grid-media" tabindex="-1"
                                title="Coding Wallah Sir" href="/@CodingWallahSir">
                                <yt-img-shadow id="avatar" width="48"
                                  class="style-scope ytd-rich-grid-media no-transition"
                                  style="background-color: transparent;"
                                  loaded="">
                                  <img id="img" draggable="false"
                                    class="style-scope yt-img-shadow" alt="" width="48"
                                    src="<% out.print(channel_logo);%>">
                                </yt-img-shadow>
                              </a> -->
                                    <div id="meta" class="style-scope ytd-rich-grid-media">
                                      <h3 class="style-scope ytd-rich-grid-media">
                                        <ytd-badge-supported-renderer class="top-badge style-scope ytd-rich-grid-media" collection-truncate="" disable-upgrade="" hidden="">

                                        </ytd-badge-supported-renderer>
                                          <a id="video-title-link" class="yt-simple-endpoint focus-on-expand style-scope ytd-rich-grid-media" aria-label="<% out.print(video_title); %>" title="<% out.print(video_title); %>"href="#">
                                          <yt-formatted-string id="video-title" class="style-scope ytd-rich-grid-media" aria-label="<% out.print(video_title); %>">
                                            <% out.print(video_title); %>
                                          </yt-formatted-string></a>
                                        </h3>
                                          <ytd-video-meta-block class="grid style-scope ytd-rich-grid-media byline-separated" rich-meta="" amsterdam-post-mvp=""><!--css-build:shady--><!--css-build:shady-->
                                        <div id="metadata" class="style-scope ytd-video-meta-block">
                                          <div id="byline-container" class="style-scope ytd-video-meta-block">

                            
                                            
                                            <ytd-channel-name id="channel-name" class=" style-scope ytd-video-meta-block style-scope ytd-video-meta-block"><!--css-build:shady--><!--css-build:shady-->
                                              <div id="container" class="style-scope ytd-channel-name">
                                                <div id="text-container" class="style-scope ytd-channel-name">
                                                  <yt-formatted-string id="text" link-inherit-color="" title="<% out.print(channel_name); %> " class="style-scope ytd-channel-name complex-string" ellipsis-truncate="" ellipsis-truncate-styling="" has-link-only_="">
                                                    <yt-img-shadow id="avatar" width="48"
                                                    class="style-scope ytd-rich-grid-media no-transition"
                                                    style="background-color: transparent;"
                                                    loaded=""><!--css-build:shady--><!--css-build:shady--><img id="img" draggable="false"
                                                      class="style-scope yt-img-shadow" alt="" width="48"
                                                      src="<% out.print(channel_logo);%>">
                                                  </yt-img-shadow>
                                                    <a class="yt-simple-endpoint style-scope " spellcheck="false" href="#" dir="auto" style="font-size: smaller;">&nbsp;&nbsp;<% out.print(channel_name);%>
                                                    </a>
                                                  </yt-formatted-string>
                                                </div>
                                                <!-- <tp-yt-paper-tooltip fit-to-visible-bounds="" class="style-scope ytd-channel-name" role="tooltip" tabindex="-1">
                                                  <div id="tooltip" class="hidden style-scope tp-yt-paper-tooltip" style-target="tooltip">
                
                                                    <% out.print(channel_name); %>
                                                    <% out.print(video_id); %>
                
                                                  </div>
                                                </tp-yt-paper-tooltip> -->
                                              </div>
                                              <ytd-badge-supported-renderer class="style-scope ytd-channel-name" system-icons="" disable-upgrade="" hidden=""><!--css-build:shady--><!--css-build:shady-->
                                                <dom-repeat id="repeat" as="badge" class="style-scope ytd-badge-supported-renderer">
                                                  <template is="dom-repeat"></template>
                                                </dom-repeat>
                                              </ytd-badge-supported-renderer>
                                            </ytd-channel-name>

                                            
                                            <yt-formatted-string id="video-info" class="style-scope ytd-video-meta-block" is-empty="" hidden=""><yt-attributed-string class="style-scope yt-formatted-string"></yt-attributed-string></yt-formatted-string>
                                          </div>
                                          <div id="metadata-line" class="style-scope ytd-video-meta-block">
                
                                            <ytd-badge-supported-renderer class="inline-metadata-badge style-scope ytd-video-meta-block" hidden="" system-icons="">
                                              <dom-repeat id="repeat" as="badge" class="style-scope ytd-badge-supported-renderer"><template is="dom-repeat"></template></dom-repeat></ytd-badge-supported-renderer>
                                            <div id="separator" class="style-scope ytd-video-meta-block" hidden="">•</div>
                
                                            <!-- <span class="inline-metadata-item style-scope ytd-video-meta-block">10K views</span> -->
                
                                            <span class="inline-metadata-item style-scope ytd-video-meta-block" style="font-size:medium;" >updated  <%=resultSet.getDate("upload_date_time") %></span>
                                            <dom-repeat strip-whitespace="" class="style-scope ytd-video-meta-block"><template is="dom-repeat"></template></dom-repeat>
                                          </div>
                                        </div>

                                        <div id="additional-metadata-line" class="style-scope ytd-video-meta-block">
                                          <dom-repeat class="style-scope ytd-video-meta-block"><template is="dom-repeat"></template></dom-repeat>
                                        </div>
                
                                      </ytd-video-meta-block><ytd-badge-supported-renderer class="video-badge style-scope ytd-rich-grid-media" disable-upgrade="" hidden=""></ytd-badge-supported-renderer><ytd-badge-supported-renderer class="title-badge style-scope ytd-rich-grid-media" disable-upgrade="" hidden=""></ytd-badge-supported-renderer><yt-formatted-string id="view-more" link-inherit-color="" class="style-scope ytd-rich-grid-media" is-empty="" hidden=""><!--css-build:shady--><!--css-build:shady--><yt-attributed-string class="style-scope yt-formatted-string"></yt-attributed-string></yt-formatted-string>
                                      <div id="buttons" class="style-scope ytd-rich-grid-media"></div>
                                    </div>
                              <div id="menu" class="style-scope ytd-rich-grid-media"><ytd-menu-renderer
                                  class="style-scope ytd-rich-grid-media"
                                  safe-area=""><!--css-build:shady--><!--css-build:shady-->
                                  <div id="top-level-buttons-computed"
                                    class="top-level-buttons style-scope ytd-menu-renderer">
                                  </div>
                                  <div id="flexible-item-buttons" class="style-scope ytd-menu-renderer"></div>
                                  <yt-icon-button id="button" class="dropdown-trigger style-scope ytd-menu-renderer"
                                    style-target="button"><!--css-build:shady--><!--css-build:shady--><button
                                      id="button" class="style-scope yt-icon-button" aria-label="Action menu"><yt-icon
                                        class="style-scope ytd-menu-renderer"><!--css-build:shady--><!--css-build:shady--><yt-icon-shape
                                          class="style-scope yt-icon"><icon-shape class="yt-spec-icon-shape">
                                            <div style="width: 100%; height: 100%; fill: currentcolor;"><svg
                                                xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24"
                                                height="24" viewBox="0 0 24 24" width="24" focusable="false"
                                                style="pointer-events: none; display: block; width: 100%; height: 100%;">
                                                <path
                                                  d="M12 16.5c.83 0 1.5.67 1.5 1.5s-.67 1.5-1.5 1.5-1.5-.67-1.5-1.5.67-1.5 1.5-1.5zM10.5 12c0 .83.67 1.5 1.5 1.5s1.5-.67 1.5-1.5-.67-1.5-1.5-1.5-1.5.67-1.5 1.5zm0-6c0 .83.67 1.5 1.5 1.5s1.5-.67 1.5-1.5-.67-1.5-1.5-1.5-1.5.67-1.5 1.5z">
                                                </path>
                                              </svg></div>
                                          </icon-shape></yt-icon-shape></yt-icon></button><yt-interaction
                                      id="interaction"
                                      class="circular style-scope yt-icon-button"><!--css-build:shady--><!--css-build:shady-->
                                      <div class="stroke style-scope yt-interaction"></div>
                                      <div class="fill style-scope yt-interaction"></div>
                                    </yt-interaction></yt-icon-button><yt-button-shape id="button-shape"
                                    version="modern" class="style-scope ytd-menu-renderer" disable-upgrade=""
                                    hidden=""></yt-button-shape>
                                </ytd-menu-renderer></div>
                            </div>
                            <div id="attached-survey" class="style-scope ytd-rich-grid-media"></div>
                          </div>
                          <div id="dismissed" class="style-scope ytd-rich-grid-media">
                            <div id="dismissed-content" class="style-scope ytd-rich-grid-media"></div>
                          </div><yt-interaction id="interaction"
                            class="extended style-scope ytd-rich-grid-media"><!--css-build:shady--><!--css-build:shady-->
                            <div class="stroke style-scope yt-interaction"></div>
                            <div class="fill style-scope yt-interaction"></div>
                          </yt-interaction>
                        </ytd-rich-grid-media>
                      </div>
                    </ytd-rich-item-renderer>
                    <%
                     if(cnt==3) { 
                      %>
                </div>
              </ytd-rich-grid-row>
              <ytd-rich-grid-row class="style-scope ytd-rich-grid-renderer"><!--css-build:shady--><!--css-build:shady-->
                <div id="contents" class="style-scope ytd-rich-grid-row">
                  <%
                   cnt=0;
                   } %>
                    <% 
                  } 
                } catch(Exception e){ 
                  out.print(e); 
                } %>

                      <ytd-rich-section-renderer
                        class="style-scope ytd-rich-grid-renderer"><!--css-build:shady--><!--css-build:shady-->
                        <div id="content" class="style-scope ytd-rich-section-renderer"><ytd-brand-video-shelf-renderer
                            class="style-scope ytd-rich-section-renderer" elements-per-row="3" rounded-container=""
                            modern=""><!--css-build:shady--><!--css-build:shady-->

                            <!-- <div id="dismissed" class="style-scope ytd-brand-video-shelf-renderer"></div> -->
                          </ytd-brand-video-shelf-renderer></div>
                      </ytd-rich-section-renderer>

                      <ytd-continuation-item-renderer
                        class="style-scope ytd-rich-grid-renderer"><!--css-build:shady--><!--css-build:shady-->
                        <tp-yt-paper-spinner id="spinner" class="style-scope ytd-continuation-item-renderer"
                          aria-hidden="true"><!--css-build:shady-->
                          <div id="spinnerContainer" class="  style-scope tp-yt-paper-spinner">
                            <div class="spinner-layer layer-1 style-scope tp-yt-paper-spinner">
                              <div class="circle-clipper left style-scope tp-yt-paper-spinner">
                                <div class="circle style-scope tp-yt-paper-spinner"></div>
                              </div>
                              <div class="circle-clipper right style-scope tp-yt-paper-spinner">
                                <div class="circle style-scope tp-yt-paper-spinner"></div>
                              </div>
                            </div>
                            <div class="spinner-layer layer-2 style-scope tp-yt-paper-spinner">
                              <div class="circle-clipper left style-scope tp-yt-paper-spinner">
                                <div class="circle style-scope tp-yt-paper-spinner"></div>
                              </div>
                              <div class="circle-clipper right style-scope tp-yt-paper-spinner">
                                <div class="circle style-scope tp-yt-paper-spinner"></div>
                              </div>
                            </div>
                            <div class="spinner-layer layer-3 style-scope tp-yt-paper-spinner">
                              <div class="circle-clipper left style-scope tp-yt-paper-spinner">
                                <div class="circle style-scope tp-yt-paper-spinner"></div>
                              </div>
                              <div class="circle-clipper right style-scope tp-yt-paper-spinner">
                                <div class="circle style-scope tp-yt-paper-spinner"></div>
                              </div>
                            </div>
                            <div class="spinner-layer layer-4 style-scope tp-yt-paper-spinner">
                              <div class="circle-clipper left style-scope tp-yt-paper-spinner">
                                <div class="circle style-scope tp-yt-paper-spinner"></div>
                              </div>
                              <div class="circle-clipper right style-scope tp-yt-paper-spinner">
                                <div class="circle style-scope tp-yt-paper-spinner"></div>
                              </div>
                            </div>
                          </div>
                        </tp-yt-paper-spinner>
                        <div id="button" class="style-scope ytd-continuation-item-renderer" hidden=""></div>
                      </ytd-continuation-item-renderer>


                </div>

          </main>


          <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> -->

        </body>


        <!--   *****************************************************************************-->







