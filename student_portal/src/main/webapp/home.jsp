<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .login-form{
            max-width: 400px;
        }
        .container{
            box-shadow: 0px 0px 10px 0px rgba(113, 112, 112, 0.5);
            width: 100%;
            height: 60vh;
        }
    </style>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  
    <nav class="navbar navbar-expand-lg navbar-light bg-primary">
        <div class="container-fluid">
          <a class="navbar-brand text-warning" href="#">
            <img src="https://png.pngtree.com/png-clipart/20221110/original/pngtree-s-letter-volume-icon-design-template-element-picture-image_3626166.png" width="32" height="34" img-fluid" alt="image not found">
            STUDENT PORTAL</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link text-white active" aria-current="page" href="#">Home</a>
              <a class="nav-link text-white" href="#">About Us</a>
              <a class="nav-link text-white" href="#">Contact Us</a>
              
            </div>
          </div>
        </div>
      </nav>
      <%
       String message = (String)request.getAttribute("msg") == null ? "" : (String)request.getAttribute("msg");
      %>

      <!--header section-->
      <div class="container mt-5 p-5">
      <!-- validation msg  -->
      <%if(!message.equals("")){ %>
      <div class="alert alert-warning alert-dismissible fade show" role="alert">
         <strong><%=message %></strong> 
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      <%} %>
      
      
      
        <div class="row mt-5">
            <div class="col-6">
                <h1>Welcome to student portal</h1>
                <p class="lead">Here we are trace all individual student details like leaves, attendence track, documnents 
                 along with that you will get rewards and rewards excellence points.</p>
                <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#registration">Register Now</button>
            </div>
            <div class="col-6">
               <div class="login-form ms-5 p-4">
                 <form >
                    <div class="form-group mb-2">
                        <label for="username">Enter User Name</label>
                        <input class="form-control" type="text" id="username" name="username" placeholder="Username"/>
                    </div>
                    <div class="form-group mb-2">
                        <label for="password">Enter Password</label>
                        <input class="form-control" type="password" id="password" name="password" placeholder="Password"/>
                    </div>
                    <input class="btn btn-primary w-100" type="submit" value="Login">
                 </form>
               </div> 
                       
            </div>
        </div>
      </div>
      
  <!-- Modal -->
  <div class="modal fade" id="registration" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Student Registration</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <form action="./UserController" method="post">
                <div class="form-group mb-2">
                    <label for="rollNumber">Enter Roll Number</label>
                    <input class="form-control" type="text" id="rollNumber" name="rollNumber" placeholder="Roll Number"/>
                </div>
                <div class="form-group mb-2">
                    <label for="username">Enter User Name</label>
                    <input class="form-control" type="text" id="userName" name="userName" placeholder="Username"/>
                </div>
                <div class="form-group mb-2">
                    <label for="password">Enter Password</label>
                    <input class="form-control" type="password" id="password" name="password" placeholder="Password"/>
                </div>
                <div class="form-group mb-2">
                    <label for="password">Confirm Password</label>
                    <input class="form-control" type="password" id="password" name="password" placeholder="Confirm Password"/>
                </div>
                <div class="form-group mb-2">
                    <label for="sq1">Choose security question 1</label>
                   <select class="form-select" id="sql" name="sq1" aria-label="Default select example">
                         <option selected>Open this select menu</option>
                         <option value="Your Birth place">Your Birth place</option>
                         <option value="Your Childhood School name">Your Childhood School name</option>
                         <option value="Your Favourite pet">Your Favourite pet</option>
                   </select>
                </div>
                <div class="form-group mb-2">
                    <label for="Answer">Type your answer</label>
                    <input class="form-control" type="text" id="ans1" name="ans1" placeholder="Answer"/>
                </div>
                <div class="form-group mb-2">
                    <label for="sq2">Choose security question 2</label>
                   <select class="form-select" id="sq2" name="sq2" aria-label="Default select example">
                         <option selected>Open this select menu</option>
                         <option value="Your Favourite color">Your Favourite color</option>
                         <option value="Your nick name">Your nick name</option>
                         <option value="Your Favourite person">Your Favourite person</option>
                   </select>
                </div>
                <div class="form-group mb-2">
                    <label for="ans2">Type your answer</label>
                    <input class="form-control" type="text" id="ans2" name="ans2" placeholder="Answer"/>
                </div>
                <input class="btn btn-primary w-100" type="submit" value="Register">
             </form>
        </div>
       
      </div>
    </div>
  </div>

</body>
</html>