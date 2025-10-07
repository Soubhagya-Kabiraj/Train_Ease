<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.TrainDao"%>
<%@page import="master.dao.StationDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRAIN DETAILS</title>
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
div { animation: fadeIn 1s ease-in-out; }
.btn1:hover {
    transform: translateY(-3px) scale(1.05);
    box-shadow: 0 6px 18px rgba(0,0,0,0.3);
    background: linear-gradient(135deg, #2575fc, #6a11cb);
}
.btn1 {
    margin-left:46%;
    font-size:20px;
    border-radius: 12px;
    text-align:center;
    background: linear-gradient(135deg, #6a11cb, #2575fc);
    width:8%;
}
a { color:white; text-decoration:none; }
</style>
</head>
<body>
<div class="btn1">
    <a href="NavAdmin.jsp">⬅️ BACK</a>
</div>

<%
StationDao sdao = new StationDao();
ResultSet rs = sdao.getData();

String currentTrainNo = "";
boolean firstTableOpen = false;

while(rs.next()) {
    String trainNo = rs.getString(2);
    String trainName = rs.getString(3);

    // When train changes → close old table and start new one
    if(!trainNo.equals(currentTrainNo)) {
        if(firstTableOpen) {
%>
        </tbody>
    </table>
</div>
<%
        }
        firstTableOpen = true;
        currentTrainNo = trainNo;
%>
<div style="text-align:center; border:3px solid black; width:95%; margin:50px auto; border-radius: 15px;">
    <h2 class="text-white bg-primary p-2">
        Train: <%=trainName%> (<%=trainNo%>)
    </h2>
    <table class="table table-striped table-hover table-bordered">
        <thead class="table-dark">
            <tr>
                <th>SERIAL NO</th>
                <th>TRAIN NUMBER</th>
                <th>TRAIN NAME</th>
                <th>START STATION</th>
                <th>END STATION</th>
                <th>STATION ID</th>
                <th>STATION NAME</th>
                <th>DIST FROM START</th>
                <th>ARRIVE TIME</th>
                <th>DEPARTURE TIME</th>
            </tr>
        </thead>
        <tbody>
<%
    }
%>
<tr>
    <td><%=rs.getInt(1) %></td>
    <td class="fw-bold text-primary"><%=rs.getString(2) %></td>
    <td><%=rs.getString(3)%></td>
    <td><span class="badge bg-success px-3 py-2"><%=rs.getString(4) %></span></td>
    <td><span class="badge bg-danger px-3 py-2"><%=rs.getString(5) %></span></td>
    <td><%=rs.getInt(6) %></td>
    <td><span class="badge bg-primary px-3 py-2"><%=rs.getString(7) %></span></td>
    <td><%=rs.getInt(8) %> km</td>
    <td><%=rs.getString(9) %></td>
    <td><%=rs.getString(10) %></td>
</tr>
<%
} // end while

// Close last table if open
if(firstTableOpen) {
%>
        </tbody>
    </table>
</div>
<%
}
%>
</body>
</html>
