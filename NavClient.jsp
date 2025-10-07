
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAV CLIENT</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
 body {
    background: linear-gradient(135deg, #74ebd5, #9face6 );
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

#main1 {
    margin: 10px auto;
    border-radius: 20px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.25);
} 

#main1 h2 {
    font-weight: bold;
    color: white;
    border-radius: 12px;
    margin: 15px auto;
    margin-left:25px;
    letter-spacing: 1px;
    text-transform: uppercase;
}

#main1 a {
    width: 110px;
    margin: 8px auto;   
    font-size:18px;
}

#main1 a:hover {
    transform: scale(1.05);
    box-shadow: 0 6px 15px rgba(0,0,0,0.2);
} 


</style>
</head>
<body>
<div id="main1">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div id="left">
		<h2>DASHBOARD</h2>
	</div>
	<div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link active" href="ClientHome.jsp">🏠 Home</a></li>
        <li class="nav-item"><a class="nav-link active" href="ClientMenu.jsp">📝 Menu</a></li>
        <li class="nav-item"><a class="nav-link active" href="AboutUs.jsp">ℹ About us</a></li>
        <li class="nav-item"><a class="nav-link active" href="ContactUs.jsp">📞 Contact</a></li>
        <li class="nav-item"><a class="nav-link active" href="Home.jsp">⏻ Logout</a></li>
      </ul>
    </div>
</nav>
</div>
</body>
</html>
