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

          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

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
            .dark{
                color:black ;
            }
            .col-sm-3{
                border-bottom:3px solid rgb(86, 3, 86) ;
                border-radius: 10px;
            }
            .form-submit{
                padding: 5px;
            }
            .form-submit:hover{
             background-color: blueviolet;
             color: #eee;
            }

          </style>
        </head>

        <body>
          <header>
            <%@include file="includes/top-navbar.jsp"%>
            <%@include file="includes/main-navbar1.jsp"%>
          </header>

          <main>
            <input type="hidden" value="<%=session.getAttribute("name") %>" name="user_name">
            <% 
            try{ 
              String user_name=session.getAttribute("name").toString();
              Connection connection=DriverManager.getConnection(DB_url,DB_username,DB_password);
              PreparedStatement statementQuery=connection.prepareStatement("SELECT * FROM users Where user_name=?"); 
              statementQuery.setString(1,user_name);
               ResultSet resultSet=statementQuery.executeQuery();
               if(resultSet.next()){
                
              
               %>


<section style="background-color: #eee;margin: 11rem;margin-top: 5rem;margin-bottom: 5rem;">
        <div class="container py-5">

      
          <div class="row" style="margin-left: 20rem;">
            <div class="col-lg-4">
              <div class="card mb-4" style="margin-left: 10rem; background-color: blueviolet; width: 20rem;color: #eee;font-size: large;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Upload Your Video Here 
              </div>
          
            </div>
            <form method="post" action="User_Upload_Servlet" class="register-form" id="register-form">

            <div class="col-lg-8" style="width: 40;" >
              <div class="card mb-4" style="margin-top: 2rem;">
                <div class="card-body" >
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Upload video</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">
                        <input type="file" name="video_file" id="video_file" required />
                    </p>
                    </div>
                    ________________________________________________________
                    <br>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Upload Title</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">

                        <input type="text" name="video_title" id="video_title" placeholder="Title Of video" required/>

                      </p>
                    </div>
                    ________________________________________________________
                    <br>
                </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Thumbnail  </p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">

                        <input type="file" name="video_image" id="video_image" />

                      </p>
                    </div>
                    ________________________________________________________
                    <br>
                </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">channel  name</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">

                        <input type="text" name="channel_name" id="channel_name" placeholder="channel name" required/>

                      </p>
                    </div>
                    ________________________________________________________
                    <br>
                
                </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">channel_logo</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">

                        <input type="file" name="channel_logo" id="channel_logo" required/>

                      </p>
                    </div>
                  
                    ________________________________________________________
                    <br>
                </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0"> video_category</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">

                        <select name="video_category" id="video_category" style="cursor:pointer;">
                            <optgroup label="Trends">
                            <option value="others">others</option>
                            <option value="entertainment">entertainment</option>
                            <option value="robotics">robotics</option>
                            <option value="programming">programming</option>
                            <option value="rocket_science">rocket science</option>
                            </optgroup>	
                    
                          </select>

                      </p>
                    </div>
                    ________________________________________________________
                    <br>
                </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">video description</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">

                        <textarea  name="video_description" id="video_description" placeholder="description of video" required ></textarea>

                      </p>
                    </div>
                    ________________________________________________________
                    <br>
                </div>
                  <hr>
                </div>
              </div>
              <div class="row">
              
            
            </div>
          </div>

       

            <div class="form-group form-button">
                <input type="submit" name="signup" id="signup" class="form-submit" value="Upload" />
            </div>
        </form>




        </div>
      </section>
   </main>


          <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> -->

          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
          <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>



  
<% 
    
    
}
}
  catch(Exception e){ 
    out.print(e); 
  } %>
     
        </body>


        <!--   *****************************************************************************-->







