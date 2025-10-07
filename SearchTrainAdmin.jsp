<%@page import="master.dao.TrainDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.StationDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD TRAIN PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5, #9face6 );
        font-family: 'Segoe UI', sans-serif;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .add-card {
        background: #fff;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        padding: 30px 25px;
        width: 400px;
        margin: 70px auto;
        text-align: center;
        animation: fadeIn 1s ease-in-out;
    }

    .add-card h2 {
        font-weight: bold;
        margin-bottom: 20px;
        color: #007bff;
    }

    .form-control {
        margin: 12px auto;
        border-radius: 8px;
        padding: 10px;
        font-size: 14px;
        border: 1px solid #007bff;
    }
    .btn {
        width: 50%;
        margin-top: 15px;
        background: gray;
        color: #fff;
        border-radius: 25px;
        font-weight: 500;
        transition: 0.3s;
    }

    .btn:hover {
        box-shadow: 0 4px 12px rgba(0,0,0,0.2);
        transform: translateY(-2px);
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
    <div class="add-card">
        <form name="f1" action="SearchTrainAdmin.jsp" method="post">
            <h2>SEARCH TRAIN FORM</h2>

            <input type="text" class="form-control" name="tnum" placeholder="ENTER TRAIN NUMBER" required/>

            <input type="submit" class="btn btn-secondary" value="SEARCH TRAIN"/>
        </form>
    </div>
    
        <div class="card-header bg-gradient text-white text-center" 
             style=" border-top-left-radius: 15px; border-top-right-radius: 15px;">
            <h2 class="text-primary">🚆 DETAILS ABOUT THIS TRAIN</h2>
        </div>
        <div style="width:95%; text-align:center;margin:50px auto;">   
        <table class="table table-striped table-hover align-middle mb-0">
                    <thead class="table-dark sticky-top">
                        <tr>
                            <th>SERAIL_NO</th>
                            <th>TRAIN NUMBER</th>
                            <th>TRAIN NAME</th>
                            <th>START STATION</th>
                            <th>END STATION</th>
                            <th>STATION ID</th>
							<th>STATION NAME</th>
							<th>ARRIVE TIME</th>
							<th>DEPARTURE TIME</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            String tnum = request.getParameter("tnum");
                            StationDao fdao = new StationDao();
                            ResultSet rs = null;

                            if (tnum != null) {
                                rs = fdao.searchTnum(tnum);
                            }

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
                            <td><%=rs.getInt(6) %></td>
							<td><span class="badge bg-primary px-3 py-2"><%=rs.getString(7) %></span></td>
							<td><%=rs.getString(8) %></td>
							<td><%=rs.getString(9) %></td>
				        </tr>
                        <%
                                }
                            }
                            if (!found) {
                        %>
                        <tr>
                            <td colspan="10" class="text-center fw-bold text-danger">
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
    <a href="NavAdmin.jsp">⬅️ BACK</a>
    </div>
</body>
</html>