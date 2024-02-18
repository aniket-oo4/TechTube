<!DOCTYPE html>
<html lang="en">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.util.*, java.io.*" %>
    <% if(session.getAttribute("name")==null){ response.sendRedirect("loginG.jsp"); } %>



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
       
        <!--    upload form links  -->
       	<!-- Font Icon -->
	<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css" />

	<!-- Main css -->
	<link rel="stylesheet" href="css/style.css" />
       
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

          .signup .signup-content{
			/* background-image: url(media/background/Upload_background1.png); */
            background-image: url(media/background/Upload_background2.png);
  			background-repeat: no-repeat;
  			background-attachment: fixed;
			background-size: cover;
			border-radius: 20px;
			background-position: 0%;
			padding: 5px;
            padding-bottom: 10px;
		}
		label{
			font-size: large;
			/* font-family:Georgia, 'Times New Roman', Times, serif; */
			align-items: center;
            color: aliceblue;
			/* border-bottom: 1px solid  rgba(160, 62, 205, 0.53); */
            border-bottom: 1px solid  rgba(200, 103, 245, 0.769);
			padding-left: 10px;
			padding-right: 10px;
			
			border-radius: 10px;
		}
		.form-group{
			margin-bottom: -20px;
		}
		figure{
			margin-top: 6rem;
		}
		input[type=file]{
			padding-left: 50px;
			color: rgb(104, 104, 214);
			box-sizing: border-box;
            border: 1px solid #555555be;
             border-radius: 10px;
            cursor: pointer;
		}
		input[type=text]{
         background-color: transparent  ;
			box-sizing: border-box;
  border: 1px solid #555555ba;
  border-radius: 10px;
  color: azure;
		}
		select{
			width: 200px;
			height: 30px;
			font-size: large;
			background-color: #55555500;
			color: rgb(104, 104, 214);
			border-radius: 5px;
            cursor: pointer;
		}
		.form-submit{
			margin-left: 230px;
		}
        .main{
            padding: 0px;
            margin-left: 3rem;
            background-color: rgba(255, 228, 196, 0);
        
        }
img{
    border-radius: 20px;
}

        </style>
      </head>

      <body>
        <header>
     
          <nav class="navbar1">
            <ul class="navbar1-nav">
              <li class="logo">
                <a href="adminindex.jsp" class="nav-link">
                  <span class="link-text logo-text" id="mainlogo">
                    <%= session.getAttribute("name")%>
                  </span>
                  <svg aria-hidden="true" focusable="false" data-prefix="fad" data-icon="angle-double-right" role="img"
                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
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
                <a href="manage_users.jsp" class="nav-link">

                  <svg width="171px" height="171px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                    <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                    <g id="SVGRepo_iconCarrier">
                      <path
                        d="M1.5 6.5C1.5 3.46243 3.96243 1 7 1C10.0376 1 12.5 3.46243 12.5 6.5C12.5 9.53757 10.0376 12 7 12C3.96243 12 1.5 9.53757 1.5 6.5Z"
                        fill="#e7cb18"></path>
                      <path
                        d="M14.4999 6.5C14.4999 8.00034 14.0593 9.39779 13.3005 10.57C14.2774 11.4585 15.5754 12 16.9999 12C20.0375 12 22.4999 9.53757 22.4999 6.5C22.4999 3.46243 20.0375 1 16.9999 1C15.5754 1 14.2774 1.54153 13.3005 2.42996C14.0593 3.60221 14.4999 4.99966 14.4999 6.5Z"
                        fill="#e7cb18"></path>
                      <path
                        d="M0 18C0 15.7909 1.79086 14 4 14H10C12.2091 14 14 15.7909 14 18V22C14 22.5523 13.5523 23 13 23H1C0.447716 23 0 22.5523 0 22V18Z"
                        fill="#e7cb18"></path>
                      <path
                        d="M16 18V23H23C23.5522 23 24 22.5523 24 22V18C24 15.7909 22.2091 14 20 14H14.4722C15.4222 15.0615 16 16.4633 16 18Z"
                        fill="#e7cb18"></path>
                    </g>
                  </svg>
                  <span class="link-text">Manage Users</span>
                </a>
              </li>

              <li class="nav-item">
                <a href="#" class="nav-link">
                  <svg viewBox="0 0 1024 1024" class="icon" version="1.1" xmlns="http://www.w3.org/2000/svg"
                    fill="#000000">
                    <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                    <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                    <g id="SVGRepo_iconCarrier">
                      <path d="M759.3 352h84.3c15.5 0 28.1 9.2 28.1 20.5v277.3c0 11.3-12.6 20.5-28.1 20.5h-70.3"
                        fill="#f7ff8a"></path>
                      <path
                        d="M843.5 695h-70.2v-49.5h70.2c1.4 0 2.5-0.2 3.3-0.4v-268c-0.9-0.2-2-0.4-3.3-0.4h-84.2v-49.5h84.3c29.6 0 52.8 19.9 52.8 45.3v277.3c0 25.4-23.3 45.2-52.9 45.2z"
                        fill="#333333"></path>
                      <path
                        d="M203.5 258h531c13.7 0 24.7 11.1 24.7 24.7v457.8c0 13.7-11.1 24.7-24.7 24.7h-531c-13.7 0-24.7-11.1-24.7-24.7V282.7c-0.1-13.6 11-24.7 24.7-24.7z"
                        fill="#FFFFFF"></path>
                      <path
                        d="M734.5 790h-531c-27.3 0-49.5-22.2-49.5-49.5V282.7c0-27.3 22.2-49.5 49.5-49.5h531c27.3 0 49.5 22.2 49.5 49.5v457.8c0 27.3-22.2 49.5-49.5 49.5z m-531-507.3v457.8h531V282.7h-531z"
                        fill="#333333"></path>
                      <path
                        d="M595.8 521.2L407 656c-5.6 4-13.3 2.7-17.3-2.9-1.5-2.1-2.3-4.6-2.3-7.2V376.3c0-6.8 5.5-12.4 12.4-12.4 2.6 0 5.1 0.8 7.2 2.3L595.8 501c5.6 4 6.9 11.7 2.9 17.3-0.8 1.1-1.8 2.1-2.9 2.9z"
                        fill="#f7ff8a"></path>
                      <path
                        d="M399.9 683c-2.1 0-4.1-0.2-6.2-0.5-9.8-1.6-18.4-7-24.1-15.1-4.5-6.3-6.9-13.8-6.9-21.6V376.3c0-20.5 16.6-37.1 37.1-37.1 7.8 0 15.2 2.4 21.6 6.9l188.8 134.8c8.1 5.8 13.4 14.3 15 24.1 1.6 9.8-0.6 19.6-6.4 27.7-2.4 3.4-5.3 6.3-8.7 8.7L421.3 676.2c-6.3 4.5-13.8 6.8-21.4 6.8z m12.2-282.6v221.5l155.1-110.7-155.1-110.8zM581.4 501s0 0.1 0 0z"
                        fill="#333333"></path>
                    </g>
                  </svg>
                  <span class="link-text">Manage Content</span>
                </a>
              </li>

              <li class="nav-item">
                <a href="upload_video_form.jsp" class="nav-link">
                  <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                    fill="#000000">
                    <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                    <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                    <g id="SVGRepo_iconCarrier">
                      <defs>
                        <path id="upload-a"
                          d="M6.29289322,0.292893219 C6.68341751,-0.0976310729 7.31658249,-0.0976310729 7.70710678,0.292893219 C8.09763107,0.683417511 8.09763107,1.31658249 7.70710678,1.70710678 L5.70710678,3.70710678 C5.31658249,4.09763107 4.68341751,4.09763107 4.29289322,3.70710678 C3.90236893,3.31658249 3.90236893,2.68341751 4.29289322,2.29289322 L6.29289322,0.292893219 Z M0,11 L16,11 L16,13 L0,13 L0,11 Z">
                        </path>
                        <path id="upload-c"
                          d="M11,3.41421356 L11,12.0014708 C11,12.5529433 10.5522847,13 10,13 C9.44771525,13 9,12.5529433 9,12.0014708 L9,3.41421356 L6.70710678,5.70710678 C6.31658249,6.09763107 5.68341751,6.09763107 5.29289322,5.70710678 C4.90236893,5.31658249 4.90236893,4.68341751 5.29289322,4.29289322 L9.29289322,0.292893219 C9.68341751,-0.0976310729 10.3165825,-0.0976310729 10.7071068,0.292893219 L14.7071068,4.29289322 C15.0976311,4.68341751 15.0976311,5.31658249 14.7071068,5.70710678 C14.3165825,6.09763107 13.6834175,6.09763107 13.2928932,5.70710678 L11,3.41421356 Z M18,16 L18,10 C18,9.44771525 18.4477153,9 19,9 C19.5522847,9 20,9.44771525 20,10 L20,17 C20,17.5522847 19.5522847,18 19,18 L1,18 C0.44771525,18 0,17.5522847 0,17 L0,10 C0,9.44771525 0.44771525,9 1,9 C1.55228475,9 2,9.44771525 2,10 L2,16 L18,16 Z">
                        </path>
                      </defs>
                      <g fill="none" fill-rule="evenodd" transform="translate(2 3)">
                        <g transform="translate(2 3)">
                          <mask id="upload-b" fill="#ffffff">
                            <use xlink:href="#upload-a"></use>
                          </mask>
                          <use fill="#D8D8D8" fill-rule="nonzero" xlink:href="#upload-a"></use>
                          <g fill="#1c1c1c" mask="url(#upload-b)">
                            <rect width="24" height="24" transform="translate(-4 -6)"></rect>
                          </g>
                        </g>
                        <mask id="upload-d" fill="#ffffff">
                          <use xlink:href="#upload-c"></use>
                        </mask>
                        <use fill="#000000" fill-rule="nonzero" xlink:href="#upload-c"></use>
                        <g fill="#e7cb18" mask="url(#upload-d)">
                          <rect width="24" height="24" transform="translate(-2 -3)"></rect>
                        </g>
                      </g>
                    </g>
                  </svg>

                  <span class="link-text">Upload video</span>
                </a>
              </li>



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
                          <g id="container" transform="translate(2.000000, 2.000000)" fill="#FFFFFF" fill-rule="nonzero"
                            stroke="#10422F" stroke-width="2">
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
      
        <main>
            <div class="main">
                <section class="signup">
                    <div class="container">
                        <div class="signup-content">
                            <div class="signup-form">
                                
        
                                <form method="post" action="Upload_Servlet" class="register-form" id="register-form">
                                    <div class="form-group">
                                        <label for="video_file">
                                            upload video
                                        </label><br><br><br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="file" name="video_file" id="video_file" required />
                                    </div>
                                    <div class="form-group">
                                        <label for="video_title"> title </label>
                                        <br><br><br>
                                        <input type="text" name="video_title" id="video_title" placeholder="Title Of video" required/>
                                    </div>
                                    <div class="form-group">
                                        <label for="video_image">
                                            thumbnail
                                        </label><br><br><br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="file" name="video_image" id="video_image" />
                                    </div>
                                    <div class="form-group">
                                        <label for="video_title"> channel name</label>
                                        <br><br><br><input type="text" name="channel_name" id="channel_name" placeholder="channel name" required/>
                                    </div>
                                    <div class="form-group">
                                        <label for="channel_logo">
                                            channel_logo
                                        </label><br><br><br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="file" name="channel_logo" id="channel_logo" required/>
                                    </div>
                                    <div class="form-group">
                                        <label for="video_category">
                                            video_category
                                        </label><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <select name="video_category" id="video_category">
                                            <optgroup label="Trends">
                                            <option value="others">others</option>
                                            <option value="entertainment">entertainment</option>
                                            <option value="robotics">robotics</option>
                                            <option value="programming">programming</option>
                                            <option value="rocket_science">rocket science</option>
                                            </optgroup>	
                                    
                                          </select>
                                        
                                    </div>
                                    <div class="form-group" style="margin-bottom: 3px;">
                                        <label for="video_description">
                                            description
                                        </label><br><br><br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="text" name="video_description" id="video_description" placeholder="description of video" required/>
                                    </div>
                                                                            
                                
                                    <!-- <div class="form-group">
                                        <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" required />
                                        <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all
                                            statements in
                                            <a href="#" class="term-service">Terms of service</a></label>
                                    </div> -->
        
                                    <div class="form-group form-button">
                                        <input type="submit" name="signup" id="signup" class="form-submit" value="Upload" />
                                    </div>
                                </form>
                            </div>
                            <div class="signup-image">
                                <figure>
                                    <img src="images/upload_image1.jpg" alt="sing up image" />
                                </figure>
                                
        
                            
                            </div>
                        </div>
                    </div>
                </section> <!-- Sign up form -->

            </div>



        </main>

<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
        <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> -->

      </body>


      <!--   *****************************************************************************-->