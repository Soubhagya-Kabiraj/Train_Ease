<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="NavClient.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Railway Ticket Booking App</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
	  font-family: 'Segoe UI', sans-serif;
	  background: linear-gradient(135deg, #74ebd5, #9face6 );
	  animation: popOut 1s ease-out forwards;
}
.hero {
  background: linear-gradient(135deg, #1a1a40, #3f2b96);
  color: white;
  padding: 100px ;
  text-align: center;
  border-radius: 40px;
}
 @keyframes popOut {
        from { opacity: 0; transform: translateY(-20px); }to { opacity: 1; transform: translateY(0); } }
.hero p {
  opacity: 0.9;
}
.feature-card,
.col-md-4 {
  text-align: center;
  padding: 20px;
  border-radius: 15px;
  background: #f9f9f9;
  
}
.feature-card:hover,
.col-md-4:hover {
  background: #eef7ff;
  transform: translateY(-8px);
  box-shadow: 0 10px 20px rgba(0,0,0,0.15);
}
.footer {
  background: #222;
  color: #bbb;
  padding: 20px;
  text-align: center;
}
.footer a {
  color: #bbb;
  text-decoration: none;
  margin: 0 10px;
  transition: color 0.3s;
}
.footer a:hover {
  color: #fff;
}
  </style>
</head>
<body>
  <section class="hero text-center text-white">
  <h1 class="fw-bold mb-3" style="font-size:3rem;">🚆 Welcome to our app <span style="color:#ffd700;">Train Ease</span></h1>
  
  <h2 class="fw-semibold mb-4" style="font-size:2.2rem;">Book Your Train Tickets Easily & Quickly</h2>
  
  <p class="lead mb-4" style="text-align:center;">
    Search, book & easily get train tickets in just a few clicks – fast, simple, and secure.
  </p>
</section>


  <section class="container text-center my-5">
    <h2 class="mb-4">Why Choose Us?</h2>
    <div class="row g-4">
      <div class="col-md-3">
        <div class="feature-card shadow-sm">
          <h3>🚄</h3>
          <h5>Fast Booking</h5>
          <p>Instant train availability</p>
        </div>
      </div>
      <div class="col-md-3">
        <div class="feature-card shadow-sm">
          <h3>🎟️</h3>
          <h5>Easy Tickets</h5>
          <p>Hassle-free reservation</p>
        </div>
      </div>
      <div class="col-md-3">
        <div class="feature-card shadow-sm">
          <h3>💳</h3>
          <h5>Secure Payment</h5>
          <p>Multiple payment options</p>
        </div>
      </div>
      <div class="col-md-3">
        <div class="feature-card shadow-sm">
          <h3>📱</h3>
          <h5>User Friendly</h5>
          <p>Smooth & simple UI</p>
        </div>
      </div>
    </div>
  </section>

  <section class="container text-center my-5">
    <h2 class="mb-4">How It Works?</h2>
    <div class="row">
      <div class="col-md-4">
        <h3>1️⃣</h3>
        <h5>Search Trains</h5>
        <p>Enter source & destination</p>
      </div>
      <div class="col-md-4">
        <h3>2️⃣</h3>
        <h5>Select & Book</h5>
        <p>Choose your preferred train</p>
      </div>
      <div class="col-md-4">
        <h3>3️⃣</h3>
        <h5>Get e-Ticket</h5>
        <p>Download or receive via email/SMS</p>
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