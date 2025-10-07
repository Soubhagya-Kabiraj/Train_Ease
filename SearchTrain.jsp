<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.TrainDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEARCH TARIN</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
   .search-box {
       width:70%;
       margin: auto;
       animation: fadeIn 1s ease-in-out;
    }
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
   body {
    background: linear-gradient(135deg, #74ebd5, #9face6 );
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
	h2{
		text-align:center;
		margin:15px auto;
		width:70%;
	}
	.btn1:hover {
  transform: translateY(-3px) scale(1.05);
  box-shadow: 0 6px 18px rgba(0,0,0,0.3);
  background: linear-gradient(135deg, #2575fc, #6a11cb);
}
    .btn1{
    margin-left:46%;
    	font-size:20px;
    	border-radius: 12px;
    	text-align:center;
    	background: linear-gradient(135deg, #6a11cb, #2575fc);
    	width:8%;
    }
    a{
    	color:white;
    	text-decoration:none;
    }
</style>
</head>
<body>
<div class="search-box text-center mt-4" style="max-width: 500px;">
    
    <form action="SearchTrain.jsp" method="post" class="p-3 shadow rounded bg-white">
		<h2 class="text-primary">FIND TRAIN</h2>
        <div class="d-flex gap-2 mb-3">
            <input type="text" class="form-control" name="sstn1" placeholder="🚉 From Station : " required/>
            <input type="text" class="form-control" name="estn1" placeholder="🏁 To Station :" required/>
        </div>

        <button type="submit" class="btn btn-primary w-50">
            🔍 Search
        </button>
    </form>
</div>


<div class="card-header bg-gradient text-white text-center" 
             style=" border-top-left-radius: 15px; border-top-right-radius: 15px;">
            <h2 class="text-primary">🚆 LIST OF TRAINS AVAILABLE</h2>
        </div>
        <div style="width:60%; text-align:center;margin:50px auto;">   
        <table class="table table-striped table-hover align-middle mb-0">
                    <thead class="table-dark sticky-top">
                        <tr>
                        	<th>SERIAL_NO</th>
                            <th>TRAIN NUMBER</th>
                            <th>TRAIN NAME</th>
                            <th>START STATION</th>
                            <th>END STATION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            String sstn1 = request.getParameter("sstn1");
                        	String estn1 = request.getParameter("estn1");
                            TrainDao fdao = new TrainDao();
                            ResultSet rs = null;
                            rs = fdao.findTname(sstn1, estn1);                          
                            boolean found = false;
                            if (rs != null) {
                                while (rs.next()) {
                                    found = true;
                        %>
                        <tr>
                        	<td><%=rs.getInt(1) %></td>
                            <td class="fw-bold text-primary"><%=rs.getString(2) %></td>
                            <td><%=rs.getString(3) %></td>
                            <td><span class="badge bg-success px-3 py-2"><%=rs.getString(4) %></span></td>
                            <td><span class="badge bg-danger px-3 py-2"><%=rs.getString(5) %></span></td>
                        </tr>
                        <%
                                }
                            }
                            if (!found) {
                        %>
                        <tr>
                            <td colspan="6" class="text-center fw-bold text-danger">
                                ❌ No train found! or enter train number.
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
            <div class="btn1">
    <a href="ClientMenu.jsp">⬅️ BACK</a>
    </div>
</body>
</html>
