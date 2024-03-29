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
            color: black;
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


<section style="background-color: #eee;margin: 10rem;">
        <div class="container py-5">

      
          <div class="row">
            <div class="col-lg-4">
              <div class="card mb-4">
                <div class="card-body text-center">
                  <!-- <img src="media/content/channelLogo/Anuv Jain.jpg" alt="avatar"
                    class="rounded-circle img-fluid" style="width: 150px;"> -->
                    <img src="<%=resultSet.getString("user_profile")%>" alt="avatar"
                    class="rounded-circle img-fluid" style="width: 150px;">
                  <h5 class="my-3"><%out.print(user_name);%></h5>
                  
                  <!-- <p class="text-muted mb-1">Full Stack Developer</p> -->
                  <p class="text-muted mb-1"><%=resultSet.getString("user_description")%></p>
                  <p class="text-muted mb-4"><%=resultSet.getString("user_address")%></p>
                  <div class="d-flex justify-content-center mb-2">
                    <!-- <button type="button" class="btn btn-primary">Follow</button> -->
                    <!-- <button type="button" class="btn btn-outline-primary ms-1">image</button>
                    <button type="button" class="btn btn-outline-primary ms-1">bio</button>
                    <button type="button" class="btn btn-outline-primary ms-1">address</button> -->


                    <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  update profile
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update Profile</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" >
       
        <form action="UpdateProfileServlet" method="post" class="inner-form">
          <input type="hidden"  name="user-name" value="<%out.print(user_name);%>">
          <label for="profile-image"> Update Image: <br>
            <input type="file" name="profile-image"   id="profile-image" style="margin-left:90px ;" value="<%=resultSet.getString("user_profile")%>"><br>
            ________________________________________________________<br>

          </label>
          <label for="user-bio"> Update Bio:<br> 
           <textarea name="user-bio" id="user-bio" cols="30" rows="4" ><%=resultSet.getString("user_description")%></textarea> 
           <!-- <input type="text" name="user-bio" style="width: 20rem;height: 10rem;"> -->
            <br>
            ________________________________________________________<br>
          </label>
          <label for="user-addres"> Update Address<br> 
            <textarea name="user-address" id="user-address" cols="30" rows="5" ><%=resultSet.getString("user_address")%></textarea> 
            <!-- <input type="text" name="user-bio" style="width: 20rem;height: 10rem;"> -->
             <br>
             ________________________________________________________<br>
           </label>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
        <input type="submit" class="btn btn-primary" value="Save Changes">
      </form>
      </div>
    </div>
  </div>
</div>
 <!--  modal close   -->

                  </div>
                </div>
              </div>

            </div>
            <div class="col-lg-8" >
              <div class="card mb-4" style="margin-top: 6rem;">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Full Name</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0"><% out.print(user_name);%></p>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Email</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0"><%=resultSet.getString("email_id")%></p>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Mobile </p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0"><%=resultSet.getString("contact_no")%></p>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">channel-name</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0"><%=resultSet.getString("channel_name")%></p>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Address</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0"><%=resultSet.getString("user_address")%></p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
              
            
            </div>
          </div>
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







