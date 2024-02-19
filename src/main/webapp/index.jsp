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
            <nav class="nav container">
              <div class="nav__data">
                <a href="#" class="nav__logo">
                  <!-- <i class="ri-planet-line"></i>  --><img src="media/mainLogo2.jpg  " alt=""
                    class="svg-inline--fa fa-angle-double-right fa-w-14 fa-5x"></span>

                </a>

                <div class="nav__toggle" id="nav-toggle">
                  <i class="ri-menu-line nav__burger"></i>
                  <i class="ri-close-line nav__close"></i>
                </div>
              </div>

              <!--=============== NAV MENU ===============-->
              <div class="nav__menu" id="nav-menu">
                <ul class="nav__list">
                 

                  <!-- <li><a href="#" class="nav__link">Company</a></li> -->

                  <!--=============== DROPDOWN 1 ===============-->
                  <!-- <li class="dropdown__item">
                    <div class="nav__link">
                      Analytics <i class="ri-arrow-down-s-line "></i>
                    </div>


                  </li> -->

                  <!-- <li><a href="#" class="nav__link">Products</a></li> -->

                  <!--=============== DROPDOWN 2 ===============-->
                  <li class="dropdown__item">
                    <div class="nav__link">
                      User<i class="ri-arrow-down-s-line dropdown__arrow"></i>
                    </div>

                    <ul class="dropdown__menu">
                      <li>
                        <a href="#" class="dropdown__link">
                          <i class="ri-user-line"></i> Profile
                        </a>
                      </li>

                      <!-- <li>
                        <a href="#" class="dropdown__link">
                          <i class="ri-lock-line"></i> Account
                        </a>
                      </li> -->

                      <!-- <li>
                        <a href="#" class="dropdown__link">
                          <i class="ri-message-3-line"></i> Messages
                        </a>
                      </li> -->
                    </ul>
                  </li>
                  <li><a href="#" class="nav__link">Contact</a></li>
                  <li><a href="index.jsp" class="nav__link">Home</a></li>
                </ul>
              </div>
            </nav>
            <nav class="navbar1">
              <ul class="navbar1-nav">
                <li class="logo">
                  <a href="index.jsp" class="nav-link">
                    <span class="link-text logo-text" id="mainlogo">
                      <span class="svg-inline--fa fa-angle-double-right fa-w-14 fa-5x">
                        <%=session.getAttribute("name")%>
                      </span>
                    </span>
                    <svg aria-hidden="true" focusable="false" data-prefix="fad" data-icon="angle-double-right"
                      role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
                      class="svg-inline--fa fa-angle-double-right fa-w-14 fa-5x">
                      <g class="fa-group">
                        <path fill="currentColor"
                          d="M224 273L88.37 409a23.78 23.78 0 0 1-33.8 0L32 386.36a23.94 23.94 0 0 1 0-33.89l96.13-96.37L32 159.73a23.94 23.94 0 0 1 0-33.89l22.44-22.79a23.78 23.78 0 0 1 33.8 0L223.88 239a23.94 23.94 0 0 1 .1 34z"
                          class="fa-secondary"></path>
                        <path fill="currentColor"
                          d="M415.89 273L280.34 409a23.77 23.77 0 0 1-33.79 0L224 386.26a23.94 23.94 0 0 1 0-33.89L320.11 256l-96-96.47a23.94 23.94 0 0 1 0-33.89l22.52-22.59a23.77 23.77 0 0 1 33.79 0L416 239a24 24 0 0 1-.11 34z"
                          class="fa-primary"></path>
                      </g>
                    </svg>
                  </a>
                </li>

                <li class="nav-item">
                  <a href="entertainment.jsp" class="nav-link">



                    <svg viewBox="0 0 48 48" id="b" xmlns="http://www.w3.org/2000/svg" fill="#000000">
                      <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                      <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                      <g id="SVGRepo_iconCarrier">
                        <defs>
                          <style>
                            .c {
                              fill: none;
                              stroke: #ffcd1a;
                              stroke-linecap: round;
                              stroke-linejoin: round;
                            }
                          </style>
                        </defs>
                        <path class="c"
                          d="m14.7155,18.0651c-3.1363.4839-5.6744,1.1623-7.301,3.2286-1.7034,2.1637-2.4214,5.7693-2.4214,8.6218,0,2.6597-.0429,6.1373,2.6049,8.2182,2.9039,2.2822,8.6834,3.0452,12.6942,3.0452,4.2429,0,9.7694-.1687,12.7676-2.8617,2.4204-2.174,2.7891-6.3881,2.6416-10.4196-.3302-9.0254-4.6961-10.0527-10.3462-11.0066,3.2653-2.3114,6.127-8.9153,6.2371-11.8137-5.1731,2.3848-7.0809,4.4393-8.9887,10.1627-2.825-.8071-6.2004.8071-6.2004.8071-2.8617-4.9163-7.3377-6.4939-9.8325-7.191.2568,4.9896,8.1449,9.2088,8.1449,9.2088Z">
                        </path>
                        <path class="c"
                          d="m35.7295,31.4381l1.4577.1834-.2201-1.706,2.2197.532-.2752-2.8434,3.0085.5136s1.7977-1.5776,2.0729-3.357l-7.1359.2018.4219,3.1552-1.5495.2201">
                        </path>
                        <path class="c" d="m28.4958,6.7229c1.103,1.1428,1.7017,3.3141,1.7017,3.3141"></path>
                        <path class="c" d="m9.8059,10.037c-.557,1.3508.0387,4.5013.0387,4.5013"></path>
                        <path class="c"
                          d="m8.1752,38.5441c-.7608,1.1123-.7791,2.1763-.7791,2.1763,0,0,.6952.8227,5.8967-.2582">
                        </path>
                        <path class="c"
                          d="m31.3894,39.4527c1.5603,1.1576,1.5786,2.3317.5513,2.6619s-5.7809.3182-7.1188-1.0791">
                        </path>
                        <path class="c"
                          d="m20.5815,20.6507c3.2567-.0329,7.6169,3.2768,7.1829,9.4397-.434,6.163-2.0833,8.0075-11.1975,7.2046-9.1142-.8029-8.6974-3.7077-8.4415-9.2661s3.8627-7.2914,12.4561-7.3782Z">
                        </path>
                      </g>


                      <g class="fa-group">
                        <path fill="currentColor"
                          d="M448 96h-64l-64-64v134.4a96 96 0 0 0 192 0V32zm-72 80a16 16 0 1 1 16-16 16 16 0 0 1-16 16zm80 0a16 16 0 1 1 16-16 16 16 0 0 1-16 16zm-165.41 16a204.07 204.07 0 0 0-34.59 2.89V272l-43.15-64.73a183.93 183.93 0 0 0-44.37 26.17L192 304l-60.94-30.47L128 272v-80a96.1 96.1 0 0 0-96-96 32 32 0 0 0 0 64 32 32 0 0 1 32 32v256a64.06 64.06 0 0 0 64 64h176a16 16 0 0 0 16-16v-16a32 32 0 0 0-32-32h-32l128-96v144a16 16 0 0 0 16 16h32a16 16 0 0 0 16-16V289.86a126.78 126.78 0 0 1-32 4.54c-61.81 0-113.52-44.05-125.41-102.4z"
                          class="fa-secondary"></path>
                        <path fill="currentColor"
                          d="M376 144a16 16 0 1 0 16 16 16 16 0 0 0-16-16zm80 0a16 16 0 1 0 16 16 16 16 0 0 0-16-16zM131.06 273.53L192 304l-23.52-70.56a192.06 192.06 0 0 0-37.42 40.09zM256 272v-77.11a198.62 198.62 0 0 0-43.15 12.38z"
                          class="fa-primary"></path>
                      </g>
                    </svg>
                    <span class="link-text">Entertainment </span>
                  </a>
                </li>

                <li class="nav-item">
                  <a href="robotics.jsp" class="nav-link">
                    <svg aria-hidden="true" focusable="false" data-prefix="fad" data-icon="alien-monster" role="img"
                      xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"
                      class="svg-inline--fa fa-alien-monster fa-w-18 fa-9x">
                      <g class="fa-group">
                        <path fill="currentColor"
                          d="M560,128H528a15.99954,15.99954,0,0,0-16,16v80H480V176a15.99954,15.99954,0,0,0-16-16H416V96h48a16.00079,16.00079,0,0,0,16-16V48a15.99954,15.99954,0,0,0-16-16H432a15.99954,15.99954,0,0,0-16,16V64H368a15.99954,15.99954,0,0,0-16,16v48H224V80a15.99954,15.99954,0,0,0-16-16H160V48a15.99954,15.99954,0,0,0-16-16H112A15.99954,15.99954,0,0,0,96,48V80a16.00079,16.00079,0,0,0,16,16h48v64H112a15.99954,15.99954,0,0,0-16,16v48H64V144a15.99954,15.99954,0,0,0-16-16H16A15.99954,15.99954,0,0,0,0,144V272a16.00079,16.00079,0,0,0,16,16H64v80a16.00079,16.00079,0,0,0,16,16h48v80a16.00079,16.00079,0,0,0,16,16h96a16.00079,16.00079,0,0,0,16-16V432a15.99954,15.99954,0,0,0-16-16H192V384H384v32H336a15.99954,15.99954,0,0,0-16,16v32a16.00079,16.00079,0,0,0,16,16h96a16.00079,16.00079,0,0,0,16-16V384h48a16.00079,16.00079,0,0,0,16-16V288h48a16.00079,16.00079,0,0,0,16-16V144A15.99954,15.99954,0,0,0,560,128ZM224,320H160V224h64Zm192,0H352V224h64Z"
                          class="fa-secondary"></path>
                        <path fill="currentColor" d="M160,320h64V224H160Zm192-96v96h64V224Z" class="fa-primary"></path>
                      </g>
                    </svg>
                    <span class="link-text">Robotics</span>
                  </a>
                </li>

                <li class="nav-item">
                  <a href="programming.jsp" class="nav-link">
                    <svg fill="#f0cb14" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg" stroke="#f0cb14">
                      <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                      <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                      <g id="SVGRepo_iconCarrier">
                        <g id="Coding">
                          <path
                            d="M80.917,377.0605H202V439.16H139a9.8965,9.8965,0,1,0,0,19.7929H373a9.8965,9.8965,0,1,0,0-19.7929H310V377.0605H431.0864a49.9023,49.9023,0,0,0,49.5528-44.1254H31.36A49.91,49.91,0,0,0,80.917,377.0605Z">
                          </path>
                          <path
                            d="M431.0869,53.0474H80.9175A49.9181,49.9181,0,0,0,31,102.9648V313.1416H481V102.9648A49.9144,49.9144,0,0,0,431.0869,53.0474ZM201.2354,231.6016a9.8993,9.8993,0,1,1-16.4708,10.9863l-36-54a9.9133,9.9133,0,0,1,0-10.9863l36-54a9.8993,9.8993,0,0,1,16.4708,10.9863L168.9,183.0947Zm86.7128-117.5537-45,144a9.899,9.899,0,1,1-18.8964-5.9063l45-144a9.899,9.899,0,1,1,18.8964,5.9063Zm75.2872,74.54-36,54a9.8993,9.8993,0,0,1-16.4708-10.9863L343.1,183.0947l-32.335-48.5068a9.8993,9.8993,0,0,1,16.4708-10.9863l36,54A9.9133,9.9133,0,0,1,363.2354,188.5879Z">
                          </path>
                        </g>
                      </g>
                    </svg>
                    <span class="link-text">programming</span>
                  </a>
                </li>

                <li class="nav-item">
                  <a href="rocket_science.jsp" class="nav-link">
                    <svg aria-hidden="true" focusable="false" data-prefix="fad" data-icon="space-shuttle" role="img"
                      xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"
                      class="svg-inline--fa fa-space-shuttle fa-w-20 fa-5x">
                      <g class="fa-group">
                        <path fill="currentColor"
                          d="M32 416c0 35.35 21.49 64 48 64h16V352H32zm154.54-232h280.13L376 168C243 140.59 222.45 51.22 128 34.65V160h18.34a45.62 45.62 0 0 1 40.2 24zM32 96v64h64V32H80c-26.51 0-48 28.65-48 64zm114.34 256H128v125.35C222.45 460.78 243 371.41 376 344l90.67-16H186.54a45.62 45.62 0 0 1-40.2 24z"
                          class="fa-secondary"></path>
                        <path fill="currentColor"
                          d="M592.6 208.24C559.73 192.84 515.78 184 472 184H186.54a45.62 45.62 0 0 0-40.2-24H32c-23.2 0-32 10-32 24v144c0 14 8.82 24 32 24h114.34a45.62 45.62 0 0 0 40.2-24H472c43.78 0 87.73-8.84 120.6-24.24C622.28 289.84 640 272 640 256s-17.72-33.84-47.4-47.76zM488 296a8 8 0 0 1-8-8v-64a8 8 0 0 1 8-8c31.91 0 31.94 80 0 80z"
                          class="fa-primary"></path>
                      </g>
                    </svg>
                    <span class="link-text">rocket science</span>
                  </a>
                </li>

                <!-- <li class="nav-item" id="themeButton">
          <a href="#" class="nav-link">
            <svg class="theme-icon" id="lightIcon" aria-hidden="true" focusable="false" data-prefix="fad"
              data-icon="moon-stars" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
              class="svg-inline--fa fa-moon-stars fa-w-16 fa-7x">
              <g class="fa-group">
                <path fill="currentColor"
                  d="M320 32L304 0l-16 32-32 16 32 16 16 32 16-32 32-16zm138.7 149.3L432 128l-26.7 53.3L352 208l53.3 26.7L432 288l26.7-53.3L512 208z"
                  class="fa-secondary"></path>
                <path fill="currentColor"
                  d="M332.2 426.4c8.1-1.6 13.9 8 8.6 14.5a191.18 191.18 0 0 1-149 71.1C85.8 512 0 426 0 320c0-120 108.7-210.6 227-188.8 8.2 1.6 10.1 12.6 2.8 16.7a150.3 150.3 0 0 0-76.1 130.8c0 94 85.4 165.4 178.5 147.7z"
                  class="fa-primary"></path>
              </g>
            </svg>
            <svg class="theme-icon" id="solarIcon" aria-hidden="true" focusable="false" data-prefix="fad"
              data-icon="sunglasses" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"
              class="svg-inline--fa fa-sunglasses fa-w-18 fa-7x">
              <g class="fa-group">
                <path fill="currentColor"
                  d="M502.42 240.5l-94.7-47.3 33.5-100.4c4.5-13.6-8.4-26.5-21.9-21.9l-100.4 33.5-47.41-94.8a17.31 17.31 0 0 0-31 0l-47.3 94.7L92.7 70.8c-13.6-4.5-26.5 8.4-21.9 21.9l33.5 100.4-94.7 47.4a17.31 17.31 0 0 0 0 31l94.7 47.3-33.5 100.5c-4.5 13.6 8.4 26.5 21.9 21.9l100.41-33.5 47.3 94.7a17.31 17.31 0 0 0 31 0l47.31-94.7 100.4 33.5c13.6 4.5 26.5-8.4 21.9-21.9l-33.5-100.4 94.7-47.3a17.33 17.33 0 0 0 .2-31.1zm-155.9 106c-49.91 49.9-131.11 49.9-181 0a128.13 128.13 0 0 1 0-181c49.9-49.9 131.1-49.9 181 0a128.13 128.13 0 0 1 0 181z"
                  class="fa-secondary"></path>
                <path fill="currentColor" d="M352 256a96 96 0 1 1-96-96 96.15 96.15 0 0 1 96 96z"
                  class="fa-primary">
                </path>
              </g>
            </svg>
            <svg class="theme-icon" id="darkIcon" aria-hidden="true" focusable="false" data-prefix="fad"
              data-icon="sunglasses" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"
              class="svg-inline--fa fa-sunglasses fa-w-18 fa-7x">
              <g class="fa-group">
                <path fill="currentColor"
                  d="M574.09 280.38L528.75 98.66a87.94 87.94 0 0 0-113.19-62.14l-15.25 5.08a16 16 0 0 0-10.12 20.25L395.25 77a16 16 0 0 0 20.22 10.13l13.19-4.39c10.87-3.63 23-3.57 33.15 1.73a39.59 39.59 0 0 1 20.38 25.81l38.47 153.83a276.7 276.7 0 0 0-81.22-12.47c-34.75 0-74 7-114.85 26.75h-73.18c-40.85-19.75-80.07-26.75-114.85-26.75a276.75 276.75 0 0 0-81.22 12.45l38.47-153.8a39.61 39.61 0 0 1 20.38-25.82c10.15-5.29 22.28-5.34 33.15-1.73l13.16 4.39A16 16 0 0 0 180.75 77l5.06-15.19a16 16 0 0 0-10.12-20.21l-15.25-5.08A87.95 87.95 0 0 0 47.25 98.65L1.91 280.38A75.35 75.35 0 0 0 0 295.86v70.25C0 429 51.59 480 115.19 480h37.12c60.28 0 110.38-45.94 114.88-105.37l2.93-38.63h35.76l2.93 38.63c4.5 59.43 54.6 105.37 114.88 105.37h37.12C524.41 480 576 429 576 366.13v-70.25a62.67 62.67 0 0 0-1.91-15.5zM203.38 369.8c-2 25.9-24.41 46.2-51.07 46.2h-37.12C87 416 64 393.63 64 366.11v-37.55a217.35 217.35 0 0 1 72.59-12.9 196.51 196.51 0 0 1 69.91 12.9zM512 366.13c0 27.5-23 49.87-51.19 49.87h-37.12c-26.69 0-49.1-20.3-51.07-46.2l-3.12-41.24a196.55 196.55 0 0 1 69.94-12.9A217.41 217.41 0 0 1 512 328.58z"
                  class="fa-secondary"></path>
                <path fill="currentColor"
                  d="M64.19 367.9c0-.61-.19-1.18-.19-1.8 0 27.53 23 49.9 51.19 49.9h37.12c26.66 0 49.1-20.3 51.07-46.2l3.12-41.24c-14-5.29-28.31-8.38-42.78-10.42zm404-50l-95.83 47.91.3 4c2 25.9 24.38 46.2 51.07 46.2h37.12C489 416 512 393.63 512 366.13v-37.55a227.76 227.76 0 0 0-43.85-10.66z"
                  class="fa-primary"></path>
              </g>
            </svg>
            <span class="link-text">Theme</span>
          </a>
        </li>
        <li class="nav-item" id="themeButton">
          <a href="Logout" class="nav-link">
            <svg class="theme-icon" id="lightIcon" aria-hidden="true" focusable="false" data-prefix="fad"
              data-icon="moon-stars" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
              class="svg-inline--fa fa-moon-stars fa-w-16 fa-7x">
              <g class="fa-group">
                <path fill="currentColor"
                  d="M320 32L304 0l-16 32-32 16 32 16 16 32 16-32 32-16zm138.7 149.3L432 128l-26.7 53.3L352 208l53.3 26.7L432 288l26.7-53.3L512 208z"
                  class="fa-secondary"></path>
                <path fill="currentColor"
                  d="M332.2 426.4c8.1-1.6 13.9 8 8.6 14.5a191.18 191.18 0 0 1-149 71.1C85.8 512 0 426 0 320c0-120 108.7-210.6 227-188.8 8.2 1.6 10.1 12.6 2.8 16.7a150.3 150.3 0 0 0-76.1 130.8c0 94 85.4 165.4 178.5 147.7z"
                  class="fa-primary"></path>
              </g>
            </svg>
            <svg class="theme-icon" id="solarIcon" aria-hidden="true" focusable="false" data-prefix="fad"
              data-icon="sun" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
              class="svg-inline--fa fa-sun fa-w-16 fa-7x">
              <g class="fa-group">
                <path fill="currentColor"
                  d="M502.42 240.5l-94.7-47.3 33.5-100.4c4.5-13.6-8.4-26.5-21.9-21.9l-100.4 33.5-47.41-94.8a17.31 17.31 0 0 0-31 0l-47.3 94.7L92.7 70.8c-13.6-4.5-26.5 8.4-21.9 21.9l33.5 100.4-94.7 47.4a17.31 17.31 0 0 0 0 31l94.7 47.3-33.5 100.5c-4.5 13.6 8.4 26.5 21.9 21.9l100.41-33.5 47.3 94.7a17.31 17.31 0 0 0 31 0l47.31-94.7 100.4 33.5c13.6 4.5 26.5-8.4 21.9-21.9l-33.5-100.4 94.7-47.3a17.33 17.33 0 0 0 .2-31.1zm-155.9 106c-49.91 49.9-131.11 49.9-181 0a128.13 128.13 0 0 1 0-181c49.9-49.9 131.1-49.9 181 0a128.13 128.13 0 0 1 0 181z"
                  class="fa-secondary"></path>
                <path fill="currentColor" d="M352 256a96 96 0 1 1-96-96 96.15 96.15 0 0 1 96 96z"
                  class="fa-primary">
                </path>
              </g>
            </svg>
            <svg class="theme-icon" id="darkIcon" aria-hidden="true" focusable="false" data-prefix="fad"
              data-icon="sunglasses" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"
              class="svg-inline--fa fa-sunglasses fa-w-18 fa-7x">
              <g class="fa-group">
                <path fill="currentColor"
                  d="M574.09 280.38L528.75 98.66a87.94 87.94 0 0 0-113.19-62.14l-15.25 5.08a16 16 0 0 0-10.12 20.25L395.25 77a16 16 0 0 0 20.22 10.13l13.19-4.39c10.87-3.63 23-3.57 33.15 1.73a39.59 39.59 0 0 1 20.38 25.81l38.47 153.83a276.7 276.7 0 0 0-81.22-12.47c-34.75 0-74 7-114.85 26.75h-73.18c-40.85-19.75-80.07-26.75-114.85-26.75a276.75 276.75 0 0 0-81.22 12.45l38.47-153.8a39.61 39.61 0 0 1 20.38-25.82c10.15-5.29 22.28-5.34 33.15-1.73l13.16 4.39A16 16 0 0 0 180.75 77l5.06-15.19a16 16 0 0 0-10.12-20.21l-15.25-5.08A87.95 87.95 0 0 0 47.25 98.65L1.91 280.38A75.35 75.35 0 0 0 0 295.86v70.25C0 429 51.59 480 115.19 480h37.12c60.28 0 110.38-45.94 114.88-105.37l2.93-38.63h35.76l2.93 38.63c4.5 59.43 54.6 105.37 114.88 105.37h37.12C524.41 480 576 429 576 366.13v-70.25a62.67 62.67 0 0 0-1.91-15.5zM203.38 369.8c-2 25.9-24.41 46.2-51.07 46.2h-37.12C87 416 64 393.63 64 366.11v-37.55a217.35 217.35 0 0 1 72.59-12.9 196.51 196.51 0 0 1 69.91 12.9zM512 366.13c0 27.5-23 49.87-51.19 49.87h-37.12c-26.69 0-49.1-20.3-51.07-46.2l-3.12-41.24a196.55 196.55 0 0 1 69.94-12.9A217.41 217.41 0 0 1 512 328.58z"
                  class="fa-secondary"></path>
                <path fill="currentColor"
                  d="M64.19 367.9c0-.61-.19-1.18-.19-1.8 0 27.53 23 49.9 51.19 49.9h37.12c26.66 0 49.1-20.3 51.07-46.2l3.12-41.24c-14-5.29-28.31-8.38-42.78-10.42zm404-50l-95.83 47.91.3 4c2 25.9 24.38 46.2 51.07 46.2h37.12C489 416 512 393.63 512 366.13v-37.55a227.76 227.76 0 0 0-43.85-10.66z"
                  class="fa-primary"></path>
              </g>
            </svg>
            <span class="link-text">Logout</span>
          </a>
        </li> -->

                <li class="nav-item" id="themeButton">
                  <a href="#" class="nav-link">
                    <svg class="theme-icon" id="lightIcon" aria-hidden="true" focusable="false" data-prefix="fad"
                      data-icon="moon-stars" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
                      class="svg-inline--fa fa-moon-stars fa-w-16 fa-7x">

                      <g class="fa-group">
                        <path fill="currentColor"
                          d="M502.42 240.5l-94.7-47.3 33.5-100.4c4.5-13.6-8.4-26.5-21.9-21.9l-100.4 33.5-47.41-94.8a17.31 17.31 0 0 0-31 0l-47.3 94.7L92.7 70.8c-13.6-4.5-26.5 8.4-21.9 21.9l33.5 100.4-94.7 47.4a17.31 17.31 0 0 0 0 31l94.7 47.3-33.5 100.5c-4.5 13.6 8.4 26.5 21.9 21.9l100.41-33.5 47.3 94.7a17.31 17.31 0 0 0 31 0l47.31-94.7 100.4 33.5c13.6 4.5 26.5-8.4 21.9-21.9l-33.5-100.4 94.7-47.3a17.33 17.33 0 0 0 .2-31.1zm-155.9 106c-49.91 49.9-131.11 49.9-181 0a128.13 128.13 0 0 1 0-181c49.9-49.9 131.1-49.9 181 0a128.13 128.13 0 0 1 0 181z"
                          class="fa-secondary"></path>
                        <path fill="currentColor" d="M352 256a96 96 0 1 1-96-96 96.15 96.15 0 0 1 96 96z"
                          class="fa-primary">
                        </path>
                      </g>
                    </svg>
                    <svg class="theme-icon" id="solarIcon" aria-hidden="true" focusable="false" data-prefix="fad"
                      data-icon="sunglasses" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"
                      class="svg-inline--fa fa-sunglasses fa-w-18 fa-7x">
                      <svg viewBox="0 0 73 73" version="1.1" xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink" fill="#000000">
                        <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                        <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                        <g id="SVGRepo_iconCarrier">
                          <title>design-and-ux/color-theory</title>
                          <desc>Created with Sketch.</desc>
                          <defs> </defs>
                          <g id="design-and-ux/color-theory" stroke="none" stroke-width="1" fill="none"
                            fill-rule="evenodd">
                            <g id="container" transform="translate(2.000000, 2.000000)" fill="#FFFFFF"
                              fill-rule="nonzero" stroke="#10422F" stroke-width="2">
                              <rect id="mask" x="-1" y="-1" width="71" height="71" rx="14"> </rect>
                            </g>
                            <g id="rgb" transform="translate(11.000000, 11.000000)" fill-rule="nonzero">
                              <path
                                d="M41.1835937,15.234375 C41.1835937,23.6200256 34.3856506,30.4179687 26,30.4179687 C17.6143494,30.4179687 10.8164062,23.6200256 10.8164062,15.234375 C10.8164062,6.84872439 17.6143494,0.05078125 26,0.05078125 C34.3856506,0.05078125 41.1835937,6.84872439 41.1835937,15.234375 Z"
                                id="Shape" fill="#42C0E2"> </path>
                              <path
                                d="M52,34.8280029 C52,43.2136535 45.2020569,50.0115967 36.8164062,50.0115967 C28.4307556,50.0115967 21.6328125,43.2136535 21.6328125,34.8280029 C21.6328125,26.4423523 28.4307556,19.6444092 36.8164062,19.6444092 C45.2020569,19.6444092 52,26.4423523 52,34.8280029 Z"
                                id="Shape" fill="#FFD061"> </path>
                              <path
                                d="M22.4195252,29.9922791 C23.5676574,30.2695922 24.7665711,30.4179687 26,30.4179687 C32.6947937,30.4179687 38.377533,26.0849 40.3968811,20.0700989 C39.2487488,19.7923889 38.0498352,19.6444092 36.8164062,19.6444092 C30.1216125,19.6444092 24.4388733,23.9774781 22.4195252,29.9922791 Z"
                                id="Shape" fill="#49BD90"> </path>
                              <path
                                d="M30.3671875,34.8280029 C30.3671875,43.2136535 23.5692444,50.0115967 15.1835937,50.0115967 C6.79794314,50.0115967 0,43.2136535 0,34.8280029 C0,26.4423523 6.79794314,19.6444092 15.1835937,19.6444092 C23.5692444,19.6444092 30.3671875,26.4423523 30.3671875,34.8280029 Z"
                                id="Shape" fill="#FA70B2"> </path>
                              <path
                                d="M11.6031189,20.0700989 C13.622467,26.0849 19.3052063,30.4179687 26,30.4179687 C27.2334289,30.4179687 28.4323426,30.2695922 29.5804748,29.9922791 C27.5611267,23.9774781 21.8783875,19.6444092 15.1835937,19.6444092 C13.9501648,19.6444092 12.7512512,19.7923889 11.6031189,20.0700989 Z"
                                id="Shape" fill="#AF7BC6"> </path>
                              <path
                                d="M21.6328125,34.8280029 C21.6328125,38.9797668 23.2998657,42.7415467 26,45.4825439 C28.7001343,42.7415467 30.3671875,38.9797668 30.3671875,34.8280029 C30.3671875,30.676239 28.7001343,26.9144592 26,24.1734619 C23.2998657,26.9144592 21.6328125,30.676239 21.6328125,34.8280029 Z"
                                id="Shape" fill="#EF6122"> </path>
                              <path
                                d="M29.5804748,29.9934692 C28.4323426,30.2703857 27.2330322,30.4179687 26,30.4179687 C24.7669678,30.4179687 23.5676574,30.2703857 22.4195252,29.9934692 C23.162201,27.7817078 24.3995972,25.7984619 26,24.1734619 C27.6004028,25.7984619 28.837799,27.7817078 29.5804748,29.9934692 Z"
                                id="Shape" fill="#FFFFFF"> </path>
                            </g>
                          </g>
                        </g>
                      </svg>


                    </svg>
                    <svg class="theme-icon" id="darkIcon" aria-hidden="true" focusable="false" data-prefix="fad"
                      data-icon="sunglasses" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"
                      class="svg-inline--fa fa-sunglasses fa-w-18 fa-7x">

                      <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                        <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                        <g id="SVGRepo_iconCarrier">
                          <path fill-rule="evenodd" clip-rule="evenodd"
                            d="M18 2.75C17.5858 2.75 17.25 2.41421 17.25 2C17.25 1.58579 17.5858 1.25 18 1.25H22C22.3034 1.25 22.5768 1.43273 22.6929 1.71299C22.809 1.99324 22.7449 2.31583 22.5304 2.53033L19.8107 5.25H22C22.4142 5.25 22.75 5.58579 22.75 6C22.75 6.41421 22.4142 6.75 22 6.75H18C17.6967 6.75 17.4232 6.56727 17.3071 6.28701C17.191 6.00676 17.2552 5.68417 17.4697 5.46967L20.1894 2.75H18ZM13.5 8.75C13.0858 8.75 12.75 8.41421 12.75 8C12.75 7.58579 13.0858 7.25 13.5 7.25H16.5C16.8034 7.25 17.0768 7.43273 17.1929 7.71299C17.309 7.99324 17.2449 8.31583 17.0304 8.53033L15.3107 10.25H16.5C16.9142 10.25 17.25 10.5858 17.25 11C17.25 11.4142 16.9142 11.75 16.5 11.75H13.5C13.1967 11.75 12.9232 11.5673 12.8071 11.287C12.691 11.0068 12.7552 10.6842 12.9697 10.4697L14.6894 8.75H13.5Z"
                            fill="#e7cb18"></path>
                          <path
                            d="M12 22C17.5228 22 22 17.5228 22 12C22 11.5373 21.3065 11.4608 21.0672 11.8568C19.9289 13.7406 17.8615 15 15.5 15C11.9101 15 9 12.0899 9 8.5C9 6.13845 10.2594 4.07105 12.1432 2.93276C12.5392 2.69347 12.4627 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z"
                            fill="#e7cb18"></path>
                        </g>
                      </svg>




                    </svg>
                    <span class="link-text">Theme</span>
                  </a>
                </li>
                <li class="nav-item" id="themeButton">
                  <a href="Logout" class="nav-link">


                    <svg fill="#d5b510" width="241px" height="241px" viewBox="0 0 32 32" version="1.1"
                      xmlns="http://www.w3.org/2000/svg" stroke="#d5b510">
                      <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                      <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                      <g id="SVGRepo_iconCarrier">
                        <title>logout</title>
                        <path
                          d="M0 9.875v12.219c0 1.125 0.469 2.125 1.219 2.906 0.75 0.75 1.719 1.156 2.844 1.156h6.125v-2.531h-6.125c-0.844 0-1.5-0.688-1.5-1.531v-12.219c0-0.844 0.656-1.5 1.5-1.5h6.125v-2.563h-6.125c-1.125 0-2.094 0.438-2.844 1.188-0.75 0.781-1.219 1.75-1.219 2.875zM6.719 13.563v4.875c0 0.563 0.5 1.031 1.063 1.031h5.656v3.844c0 0.344 0.188 0.625 0.5 0.781 0.125 0.031 0.25 0.031 0.313 0.031 0.219 0 0.406-0.063 0.563-0.219l7.344-7.344c0.344-0.281 0.313-0.844 0-1.156l-7.344-7.313c-0.438-0.469-1.375-0.188-1.375 0.563v3.875h-5.656c-0.563 0-1.063 0.469-1.063 1.031z">
                        </path>
                      </g>
                    </svg>
                    <span class="link-text">Logout</span>
                  </a>
                </li>
              </ul>
            </nav>
          </header>
          <background>
            <!--     ***************************************************************** -->
            <div class="side_logo" style="margin-left: 88rem;margin-top: 10rem;position: fixed;">
              <img src="media/side_Logo2.png" alt="">
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
                              
                                <a id="thumbnail" class="yt-simple-endpoint inline-block style-scope ytd-thumbnail"
                                  aria-hidden="true" tabindex="-1" rel="null"  href="PlayVideoServlet?video_id=<%out.print(video_id);%>" >
                                
                                </form>
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







