<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <jsp:include page="NavClient.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meet Our Team</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
 body {
    background: linear-gradient(135deg, #74ebd5, #9face6 );
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
@keyframes popOut {
        from { opacity: 0; transform: translateY(-20px); } to { opacity: 1; transform: translateY(0); } }
.container{
animation: popOut 1s ease-out forwards;
}
.team-card {
  border: none;
  border-radius: 12px;
  padding: 20px;
  background: #fff;
  max-width: 280px;   /* ✅ prevents cards from being too wide */
  width: 100%;
  transition: transform 0.3s ease;
}
    .team-card:hover {
      transform: scale(1.1);
      box-shadow: 0 12px 25px rgba(0, 0, 0, 0.25);
    }
    
    .team-card img.rounded-circle {
      border: 4px solid #2193b0;
      width: 150px;
      height: 150px;
      object-fit: cover;
    }
    .team-card h5 {
	  margin: 15px auto;
	  font-weight: bold;
	  font-size: 18px;     
	  white-space: nowrap; /* all names stay on one line */
	}
    h2{
    	text-align:center;
    	margin-top:25px;
    	font-weight:bold;
    }
    
    .social-icons {
      margin-top: 8px;
      display: flex;
      justify-content: center;
      gap: 20px;
      
    }
    /* Social logos - no border */
    .social-icons a img {
      width: 35px;
      height: 35px;
      border: none;
      border-radius: 0;
      transition: transform 0.3s ease;
    }
    .social-icons a img:hover {
      transform: scale(1.2);
    }
</style>
<body>
<div class="container">
  <h2>✨ Meet Our Team</h2>
  <div class="row justify-content-center">

    <!-- Card 1 -->
    <div class="col-md-4 col-sm-6 mb-4 d-flex justify-content-center">
      <div class="team-card text-center">
        <img src="Images/Soubhagya.jpg" class="rounded-circle mb-3" alt="Soubhagya Kabiraj">
        <h5>Soubhagya Kabiraj</h5>
        <p class="text-muted">Full Stack Developer</p>
        <div class="social-icons">
          <a href="https://www.linkedin.com/in/soubhagya-kabiraj-a0069228b/" target="_blank">
            <img src="https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png" alt="LinkedIn">
          </a>
          <a href="https://github.com/Soubhagya-Kabiraj" target="_blank">
            <img src="https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/github.svg" alt="GitHub">
          </a>
        </div>
      </div>
    </div>

    <!-- Card 2 -->
    <div class="col-md-4 col-sm-6 mb-4 d-flex justify-content-center">
      <div class="team-card text-center">
        <img src="Images/Sourav.jpg" class="rounded-circle mb-3" alt="Sourav Gorain">
        <h5>Sourav Gorain</h5>
        <p class="text-muted">Frontend UI Designer</p>
        <div class="social-icons">
          <a href="https://www.linkedin.com/in/souravgorain/" target="_blank">
            <img src="https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png" alt="LinkedIn">
          </a>
          <a href="https://github.com/SouravGorain73" target="_blank">
            <img src="https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/github.svg" alt="GitHub">
          </a>
        </div>
      </div>
    </div>

    <!-- Card 3 -->
    <div class="col-md-4 col-sm-6 mb-4 d-flex justify-content-center">
      <div class="team-card text-center">
        <img src="Images/Khushbu.jpg" class="rounded-circle mb-3" alt="Khushbu Singh">
        <h5>Khushbu Singh</h5>
        <p class="text-muted">Database Designer</p>
        <div class="social-icons">
          <a href="https://www.linkedin.com/in/khushbu-singh-a366a32a0/" target="_blank">
            <img src="https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png" alt="LinkedIn">
          </a>
          <a href="https://github.com/khushu2608" target="_blank">
            <img src="https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/github.svg" alt="GitHub">
          </a>
        </div>
      </div>
    </div>

  </div>
</div>

</body>
</html>