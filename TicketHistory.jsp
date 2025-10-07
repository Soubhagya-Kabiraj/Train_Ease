<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="master.dao.BookTicketDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket History</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5, #9face6);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .ticket-card {
        border-radius: 20px;
        overflow: hidden;
        transition: all 0.3s ease-in-out;
        width: 95%;         
    	max-width: 1600px;
        margin: auto;
        margin-top:20px;
    }
    .ticket-card:hover {
        transform: scale(1.01);
        box-shadow: 0 12px 28px rgba(0,0,0,0.25);
    }
    .ticket-header {
        background: linear-gradient(135deg, #2575fc, #6a11cb);
        color: white;
        padding: 20px;
        text-align: center;
    }
    .ticket-header h2 {
        margin: 0;
        font-weight: bold;
        font-size: 1.8rem;
        letter-spacing: 1px;
    }
    .ticket-table {
        margin-top: 20px;
        border-radius: 10px;
        overflow: hidden;
    }
    .ticket-table th {
        background: #f1f5f9;
        color: #333;
    }
    .ticket-table td {
        background: #ffffff;
        font-weight: 500;
    }
    .highlight {
        font-size: 1.1rem;
        font-weight: bold;
    }
    .badge-custom {
        font-size: 1rem;
        padding: 8px 14px;
        border-radius: 8px;
    }
    .footer-btn {
        font-size: 1.1rem;
        border-radius: 8px;
        padding: 10px 25px;
    }
    .btn{
        margin-top:20px;
        background: linear-gradient(135deg, #2575fc, #6a11cb);
    }
    .add-card {
        max-width: 500px;
        margin: 30px auto;
        background: #fff;
        padding: 25px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        text-align: center;
    }
    .card{
    width:90%;
    }
</style>
</head>
<body>

<div class="add-card">
    <form name="f1" action="TicketHistory.jsp" method="post">
        <h2 class="text-primary">YOUR TICKET HISTORY</h2>
        <input type="text" class="form-control my-3" name="passengerName" placeholder="ENTER YOUR NAME" required/>
        <input type="submit" class="btn btn-primary" value="SEE HISTORY"/>
    </form>
</div>

<div class="container">
    <div class="card ticket-card shadow-lg">
        <div class="ticket-header">
            <h2>🎟️ Ticket History</h2>
            <p class="mb-0">All your past bookings with <strong>Train Ease</strong></p>
        </div>
        <div class="card-body">
            <%
                String passengerName = request.getParameter("passengerName");
                BookTicketDao dao = new BookTicketDao();
                ResultSet rs = dao.getTicketsByPassenger(passengerName);
            %>
            <table class="table ticket-table table-bordered text-center">
                <thead>
                    <tr>
                        <th>Ticket ID</th>
                        <th>Train No</th>
                        <th>Train Name</th>
                        <th>From</th>
                        <th>To</th>
                        <th>Passenger</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Fare</th>
                        <th>Booking Date</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        boolean hasData = false;
                        while(rs != null && rs.next()) {
                            hasData = true;
                    %>
                    <tr>
                        <td class="highlight text-primary"><%= rs.getInt("TICKET_ID") %></td>
                        <td><%= rs.getString("TRAIN_NO") %></td>
                        <td><%= rs.getString("TRAIN_NAME") %></td>
                        <td><span class="badge bg-success badge-custom"><%= rs.getString("FROM_STATION") %></span></td>
                        <td><span class="badge bg-danger badge-custom"><%= rs.getString("TO_STATION") %></span></td>
                        <td><%= rs.getString("PASSENGER_NAME") %></td>
                        <td><%= rs.getInt("AGE") %></td>
                        <td><%= rs.getString("GENDER") %></td>
                        <td class="text-success fw-bold">₹ <%= rs.getDouble("FARE") %></td>
                        <td class="fw-bold"><%= rs.getTimestamp("BOOKING_DATE") %></td>
                    </tr>
                    <% } if(!hasData) { %>
                    <tr>
                        <td colspan="10" class="text-danger fw-bold">No tickets found for <%= passengerName %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
        
    </div>
    <div class="card-footer text-center">
            <a href="ClientMenu.jsp" class="btn btn-primary footer-btn">⬅ Back to Menu</a>
        </div>
</div>

</body>
</html>
