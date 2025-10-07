
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAV ADMIN</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
body {
   background: linear-gradient(135deg, #74ebd5, #9face6 );
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

#main {
    width: 40%;
    margin: 30px auto;
    text-align: center;
    padding: 30px;
    background: white;
    border-radius: 20px;
    animation: fadeIn 1s ease-out forwards;
}
  @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
#main h2 {
    font-weight: bold;
    color: white;
    background: #0d6efd;
    border-radius: 12px;
    padding: 12px;
    font-weight bold;
    letter-spacing: 1px;
    text-transform: uppercase;
}

#main a {
    width: 80%;
    margin: 8px auto;
}

#main a:hover {
    transform: scale(1.05);
    box-shadow: 0 6px 15px rgba(0,0,0,0.2);
}

</style>
</head>
<body>
	<div id="main">
		<h2>MY TICKET BOOK APP</h2>
		
		<a href="AddTrain.jsp" class="btn btn-outline-success fw-bold py-2">ADD TRAIN</a>
		<a href="DeleteTrain.jsp" class="btn btn-outline-danger fw-bold py-2">DELETE TRAIN</a>
		<a href="UpdateTrain.jsp" class="btn btn-outline-warning fw-bold py-2">UPDATE TRAIN</a>
		<a href="SearchTrainAdmin.jsp" class="btn btn-outline-secondary fw-bold py-2">SEARCH TRAIN</a>
		<a href="TrainDetails.jsp" class="btn btn-outline-info fw-bold py-2">TRAIN DETAILS</a>
		<a href="BookingDetails.jsp" class="btn btn-outline-dark fw-bold py-2">BOOKING DETAILS</a>
		
		<hr>
		<a href="Home.jsp" style="background:red;color:#fff"class="btn btn-danger fw-bold py-2 w-50">LOG OUT</a>
	</div>
</body>
</html>
