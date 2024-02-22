<!DOCTYPE html>
<html lang="en">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.util.*, java.io.*,java.sql.*" %>
    <% if(session.getAttribute("name")==null){ response.sendRedirect("loginG.jsp"); } %>



      <head>

        <!--  bootstrap links -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
          /* body{
            background-image: url(media/background/Upload_background2.png);
  			background-repeat: no-repeat;
  			background-attachment: fixed;
			background-size: cover;
      background-position: 0%;
          } */
          table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 60%;
  margin-left: 12rem;
  margin-top: 5rem;
  /* border-radius: 10px; */
  
}
th{
    background-color: rgb(98, 106, 113);
}
td, th {
  border: 1px solid #1c1a1a;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #928b8b00;
}
.dark{
    td, th {
  border: 1px solid #dddddd;
  
 
}
th{
  color: black;
}


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
main{
  width: 90rem;
}
thead{
  background-color: rgb(98, 106, 113);
}

        </style>
      </head>





 
      <body>
        <header>

          <%@include file="includes/admin-navbar1.jsp"%>
        </header>
        <background>
          <!--     ***************************************************************** -->
          <!-- <div class="side_logo" style="margin-left: 88rem;margin-top: 10rem;position: fixed;"> -->
            <!-- <img src="media/side_Logo2.png" alt=""> -->
            <!-- <div class="background_text" style="margin-left: 17px;  width:280px;padding: 20px; padding-top:3px ; ">
              <span style="font-size: 30px;font-weight: 500;">Our mission is to give</span> everyone a voice
              &nbsp;&nbsp;&nbsp;&nbsp;and show them the world. &nbsp;&nbsp;&nbsp;&nbsp;We believe that everyone
              &nbsp;&nbsp;&nbsp;&nbsp;deserves to have a voice, &nbsp;&nbsp;&nbsp;&nbsp;and that the world is a
              &nbsp;&nbsp;&nbsp;&nbsp;better place when we &nbsp;&nbsp;&nbsp;&nbsp;listen, share and build
              &nbsp;&nbsp;&nbsp;&nbsp;community through our &nbsp;&nbsp;&nbsp;&nbsp;stories.</div>
          </div> -->

          <!-- <div class="background1" style="margin-left: 89rem;margin-top: 40rem;position: fixed;">
  <img src="media/background/background1.png" alt="">
</div>

<div class="background1" style="margin-left: 88rem;margin-top: 23rem;position: fixed;">
  <img src="media/background/background2.png" alt="">
</div> -->

          <!-- ************************************************************************* -->
        </background>
        <main> 
          <h1 style="margin-left: 30rem; position: fixed; background-color: #1c1a1a5e; padding: 0px 10px; border-radius: 5px;"> MANAGE USER INFORMATION HERE </h1>
            <table cellpadding="0" cellspacing="0" border="0"  width="70%"
            class="table table-striped table-hover" >
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Profile Picture</th>
                        <th> User Name</th>
                        <th>Email </th>
                        <th>Contact no</th>
                        <th>Reg. Date </th>
                        <th>Delete</th>
                        
                    </tr>
                </thead>
                <tbody>
    
    
                    <%! 
                    String DB_url="jdbc:mysql://localhost:3306/techtube?useSSL=false" ;
                     String DB_username="root" ; 
                     String  DB_password="1234" ; %>
    
    <% 
                      try{ 
                        Connection connection=DriverManager.getConnection(DB_url,DB_username,DB_password);
                        PreparedStatement statementQuery=connection.prepareStatement("SELECT * FROM users"); 
                     
                         ResultSet resultSet=statementQuery.executeQuery();
    
    int cnt=1;
    while(resultSet.next())
    {
    %>								
    <form action="RemoveUsers" method="get">	
                    <tr>
                        <td><% out.print(cnt) ;%></td>
                        <td><img  style="border-radius: 50px;" src="<% out.print(resultSet.getString("user_profile")) ;%>" alt="" width=100px height=100px ></td>
                        <td><% out.print(resultSet.getString("user_name")); %></td>
                        <td><% out.print(resultSet.getString("email_id")); %></td>
                        <td><% out.print(resultSet.getString("contact_no")); %></td>
                        <td><% out.print(resultSet.getString("registration_date_time")); %></td>
                        <td>
                          <!-- <input type="radio" name="selector" value=" <%out.print(resultSet.getInt("user_id")); %>"> -->
                          <!-- <button type="button" class="btn btn-danger" name="selector" value="<%out.print(resultSet.getInt("user_id")); %>"> -->
                            
                            <!-- remove</button> -->
                                    <!-- Button trigger modal -->
                         <a href="RemoveUsers?user_name=<%=resultSet.getString("user_name")%>" >       
                         <button   name="user-name" value=""  type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" vlaue="<%out.print(resultSet.getInt("user_id")); %>">
                        Remove 
                       </button>
                      </a>  
                        </td>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog  modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Delete User From Database </h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <h1> Are Your Sure ? </h1>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        
          
        <!-- <input  type="submit" class="btn btn-danger" value="Proceed"> -->

        </form>
      </div>
    </div>
  </div>
</div>
      



                    <%
                cnt+=1;
                }
                    
                      }catch(Exception e){
                        out.print(e);
                      }
                      
                      %>
                    
            </table>



     
        </main>


        <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> -->
      
      
      <!--  bootstrap js files  -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
      
      </body>


      <!--   *****************************************************************************-->



     


    