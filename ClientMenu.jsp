
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="NavClient.jsp"></jsp:include>
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

#main {
    width: 40%;
    margin: 30px auto;
    text-align: center;
  	  padding: 30px;
    background: white;
    border-radius: 20px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.25);
    animation: popOut 1s ease-out forwards;
}
 @keyframes popOut {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
#main h2 {
    font-weight: bold;
    color: white;
    background: #0d6efd;
    border-radius: 12px;
    padding: 12px;
    margin-bottom: 25px;
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
		<h2>MENU</h2>
		
		<a href="SearchTrain.jsp" class="btn btn-outline-info fw-bold py-2">FIND TRAIN</a>
		<a href="ViewTrain.jsp" class="btn btn-outline-dark fw-bold py-2">VIEW TRAIN</a>
		<a href="BookTicket.jsp" class="btn btn-outline-warning fw-bold py-2">BOOK TICKET</a>
		<a href="CancelTicket.jsp" class="btn btn-outline-danger fw-bold py-2">CANCEL TICKET</a>
		<a href="ShowTicket.jsp" class="btn btn-outline-success fw-bold py-2">SHOW TICKET</a>
		<a href="TicketHistory.jsp" class="btn btn-outline-primary fw-bold py-2">TICKET HISTORY</a>

	</div> 
</body>
</html>
