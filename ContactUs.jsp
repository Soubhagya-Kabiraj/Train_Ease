<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="NavClient.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  
  <title>Contact Us - Train Ease</title>

  <style>
  @keyframes popOut {
        from { opacity: 0; transform: translateY(-20px); } to { opacity: 1; transform: translateY(0); } }
    body {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(135deg, #74ebd5, #9face6 );
  	  animation: popOut 1s ease-out forwards;
    }
    .hero {
      background: linear-gradient(135deg, #1a1a40, #3f2b96, #6a5acd);
      color: white;
      padding: 80px;
      text-align: center;
      border-radius: 40px;
    }
    .col-md-4 {
	  text-align: center;
	  padding: 20px;
	  border-radius: 15px;
	  background: #f9f9f9;
	  margin: 15px;
	}
	.col-md-4:hover {
	  background:white;
	  transform: translateY(-8px);
	  box-shadow: 0 10px 20px rgba(0,0,0,0.15);
	}
    .footer {
      background: #222;
      color: #bbb;
      padding: 20px 0;
      text-align: center;
    }
    .footer a {
	  color: #bbb;
	  text-decoration: none;
	  margin: 10px;
	}
.footer a:hover {
  color: #fff;
}
  </style>
</head>
<body>

  <section class="hero">
    <h1 class="fw-bold">📩 Contact Us - <span style=" color:yellow">Train Ease</span></h1>
    <p class="lead">We’d love to hear from you. Send us a message anytime!</p>
  </section>

<section class="container my-5">
  <div class="row justify-content-center text-center">
    <div class="col-md-4 mb-4">
      <h5>📧 Email Us</h5>
      <p><a href="">support@trainease.com</a></p>
    </div>
    <div class="col-md-4 mb-4">
	  <h5>🔗 Connect-with</h5>
	  <p>
	    <a href="" target="_blank">
	      <i class="fab fa-linkedin"></i> LinkedIn
	    </a> | 
	    <a href="" target="_blank">
	      <i class="fab fa-twitter"></i> Twitter
	    </a> | 
	    <a href="" target="_blank">
	      <i class="fab fa-instagram"></i> Instagram
	    </a>
	  </p>
	</div>
  </div>
</section>

  <footer class="footer">
    <p>© 2025 My Train Ease App. All Rights Reserved.</p>
    <div>
      <a href="#">About</a>|
      <a href="#">Terms & Conditions</a>|
      <a href="#">Help</a>|
      <a href="#">Privacy</a>
    </div>
  </footer>

</body>
</html>
