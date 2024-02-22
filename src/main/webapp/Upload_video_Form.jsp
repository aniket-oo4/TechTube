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
    
  
  <!--   bootstarrp links   
  
  
  -->
       <style>
        .form-submit{
          background: #F44336;
        }
        .form-submit:hover{
          background: #ff1100;
          border: 1px solidc yellow;
        }
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
            margin-left: 7rem;
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
            /* color: aliceblue; */
            color:aqua;
			/* border-bottom: 1px solid  rgba(160, 62, 205, 0.53); */
            border-bottom: 4px solid  rgba(200, 103, 245, 0.769);
			padding-left: 10px;
			padding-right: 10px;
			
			border-radius: 10px;
		}

    label:hover{
      background-color: rgba(70, 78, 78, 0.411);
      cursor:pointer;
      border-bottom: 4px solid  rgba(200, 103, 245, 0.769);
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
            /* border: 1px solid #555555be; */
            border: 1px solid #edd1d1ba;
             border-radius: 10px;
            cursor: pointer;
            background-color: rgba(125, 114, 114, 0.267)  ;
		}
		input[type=text]{
         /* background-color: transparent  ; */
         background-color: rgba(125, 114, 114, 0.267)  ;
			box-sizing: border-box;
  border: 1px solid #edd1d1ba;
  border-radius: 10px;
  color: azure;
		}
    textarea{
      margin-top: 2rem;
         background-color: rgba(125, 114, 114, 0.267)   ;
         
			box-sizing: border-box;
      border: 1px solid #edd1d1ba;
  border-radius: 10px;
  color: azure;
  padding: 10px;
  width: 33.5rem;
		}
		select{
			width: 200px;
			height: 30px;
			font-size: large;
			/* background-color: #55555500; */
      background-color: rgba(125, 114, 114, 0.267) ;
			color: rgb(225, 225, 231);
			border-radius: 5px;
            cursor: pointer;
		}

    option:checked,optgroup,
    option {
      background-color: rgb(96, 116, 96);
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
@media only screen and (min-width: 600px) {
  .navbar1 {
    top: 0;
    width: 14rem;
    height: 100vh;
    border-right: 2px solid white;
  }

  .navbar1 {
    width: 14rem;
  }

  .navbar1 .link-text {
    display: inline;
    font-size: medium;
  }

  .navbar1.logo svg
  {
    margin-left: 1rem;
  }

  .navbar1 .logo-text
  {
    
    left: 0px;
    margin-left: 5rem;
  }

}
        </style>
      </head>

      <body>
        <header>
     
          <%@include file="includes/admin-navbar1.jsp"%>
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
                                        <!-- <input type="textarea" name="video_description" id="video_description" placeholder="description of video" required/> -->
                                        <textarea  name="video_description" id="video_description" placeholder="description of video" required ></textarea>
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