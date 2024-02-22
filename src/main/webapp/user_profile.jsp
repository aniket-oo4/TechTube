<!DOCTYPE html>
<html lang="en">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.util.*, java.io.*,java.sql.*" %>
    <% 
    if(session.getAttribute("name")==null){ response.sendRedirect("login.jsp"); } %>
     
        
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

.gradient-custom-2 {
/* fallback for old browsers */
background: #fbc2eb;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(251, 194, 235, 1), rgba(166, 193, 238, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(251, 194, 235, 1), rgba(166, 193, 238, 1))
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

          <main>

<!-- 
        <h1 style="margin-top: 20rem;margin-left: 14rem;">  Sorry We are currrently working on this page <br>
       <a href="index.jsp"> click to goback</a></h1> -->

       <!-- <section class="h-100 gradient-custom-2">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col col-lg-9 col-xl-7">
              <div class="card">
                <div class="rounded-top text-white d-flex flex-row" style="background-color: #000; height:200px;">
                  <div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp"
                      alt="Generic placeholder image" class="img-fluid img-thumbnail mt-4 mb-2"
                      style="width: 150px; z-index: 1">
                    <button type="button" class="btn btn-outline-dark" data-mdb-ripple-color="dark"
                      style="z-index: 1;">
                      Edit profile
                    </button>
                  </div>
                  <div class="ms-3" style="margin-top: 130px;">
                    <h5>Andy Horwitz</h5>
                    <p>New York</p>
                  </div>
                </div>
                <div class="p-4 text-black" style="background-color: #f8f9fa;">
                  <div class="d-flex justify-content-end text-center py-1">
                    <div>
                      <p class="mb-1 h5">253</p>
                      <p class="small text-muted mb-0">Photos</p>
                    </div>
                    <div class="px-3">
                      <p class="mb-1 h5">1026</p>
                      <p class="small text-muted mb-0">Followers</p>
                    </div>
                    <div>
                      <p class="mb-1 h5">478</p>
                      <p class="small text-muted mb-0">Following</p>
                    </div>
                  </div>
                </div>
                <div class="card-body p-4 text-black">
                  <div class="mb-5">
                    <p class="lead fw-normal mb-1">About</p>
                    <div class="p-4" style="background-color: #f8f9fa;">
                      <p class="font-italic mb-1">Web Developer</p>
                      <p class="font-italic mb-1">Lives in New York</p>
                      <p class="font-italic mb-0">Photographer</p>
                    </div>
                  </div>
                  <div class="d-flex justify-content-between align-items-center mb-4">
                    <p class="lead fw-normal mb-0">Recent photos</p>
                    <p class="mb-0"><a href="#!" class="text-muted">Show all</a></p>
                  </div>
                  <div class="row g-2">
                    <div class="col mb-2">
                      <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(112).webp"
                        alt="image 1" class="w-100 rounded-3">
                    </div>
                    <div class="col mb-2">
                      <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(107).webp"
                        alt="image 1" class="w-100 rounded-3">
                    </div>
                  </div>
                  <div class="row g-2">
                    <div class="col">
                      <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(108).webp"
                        alt="image 1" class="w-100 rounded-3">
                    </div>
                    <div class="col">
                      <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(114).webp"
                        alt="image 1" class="w-100 rounded-3">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section> -->
      <section style="background-color: #eee;margin: 10rem;">
        <div class="container py-5">

      
          <div class="row">
            <div class="col-lg-4">
              <div class="card mb-4">
                <div class="card-body text-center">
                  <img src="media/content/channelLogo/Anuv Jain.jpg" alt="avatar"
                    class="rounded-circle img-fluid" style="width: 150px;">
                  <h5 class="my-3"><%=session.getAttribute("name")%></h5>
                  <p class="text-muted mb-1">Full Stack Developer</p>
                  <p class="text-muted mb-4">Bay Area, San Francisco, CA</p>
                  <div class="d-flex justify-content-center mb-2">
                    <button type="button" class="btn btn-primary">Follow</button>
                    <button type="button" class="btn btn-outline-primary ms-1">Message</button>
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
                      <p class="text-muted mb-0"><%=session.getAttribute("name")%></p>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Email</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">example@example.com</p>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Phone</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">(097) 234-5678</p>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Mobile</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">(098) 765-4321</p>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Address</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">Bay Area, San Francisco, CA</p>
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

        </body>


        <!--   *****************************************************************************-->







