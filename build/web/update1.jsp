<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Hostel Management </title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Moderna - v2.0.0
  * Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style>
      .container{
height: 100%;
align-content: center;
}

.card{
height: 450px;
margin-top: 120px;
margin-bottom: auto;
width: 300px;
background-color: rgba(0,0,0,0.5) !important;
border-radius: 10px;
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color: #FFC312;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
width: 50px;
background-color: #FFC312;
color: black;
border:0 !important;
border-radius: 10px;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.login_btn{
color: black;
background-color: #FFC312;
width: 100px;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
margin-left: 4px;
}
  </style>
</head>

<body >

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-transparent">
    <div class="container">

      <div class="logo float-left">
          <h1 class="text-light" style="color:tomato;"><a href="index.html"><span>Hostel Management </span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu float-right d-none d-lg-block">
         <ul>
          <li><a href="hosthome.jsp">Home</a></li>
           <li><a href="addhostel.jsp">Add Hostel</a></li>
           <li class="active"><a href="uphostel.jsp">Update Hostel</a></li>
            <li><a href="vr.jsp">View Request</a></li>
          <li><a href="index.html">Logout</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
 <%
      String username=request.getParameter("username");
            String hname=request.getParameter("hname");
            String type=request.getParameter("type");
          //  String rollnumber=request.getParameter("rollnumber");
            String food=request.getParameter("food");
            String price=request.getParameter("price");
            String location=request.getParameter("location");
  %>
    <div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
                            <h3 style="font-size:20px;">Add Hostel</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
                            <form action="update2.jsp" method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
						</div>
                                            <input type="text" class="form-control" placeholder="username" name="username" value="<%=username%>" readonly="" required="">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
						</div>
                                            <input type="text" class="form-control" placeholder="Hostel Name" name="hname" value="<%=hname%>" readonly="" required="">
					</div>
                                    <div class="input-group form-group">
						<div class="input-group-prepend">
						</div>
                                        <select name="type" style="width:100%">
                                            <option value="Girls">Girls</option>
                                             <option value="Boys">Boys</option>
                                            
                                        </select>
					</div>
                                    
                                    <div class="input-group form-group">
						<div class="input-group-prepend">
						</div>
                                        <select name="food" style="width:100%">
                                            <option value="Nonveg">Nonveg</option>
                                             <option value="Veg">Veg</option>
                                            
                                        </select>
					</div>
                                    <div class="input-group form-group">
						<div class="input-group-prepend">
						</div>
                                        <input type="number" class="form-control" placeholder="Price" name="price"  value="<%=price%>" required="">
					</div>
                                             <div class="input-group form-group">
						<div class="input-group-prepend">
						</div>
                                        <input type="text" class="form-control" placeholder="location" name="location" value="<%=location%>" required="">
					</div>
					<div class="form-group">
						<input type="submit" value="Update" class="btn float-right login_btn">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>


  <!-- ======= Footer ======= -->
  

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>