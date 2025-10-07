<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="master.dto.BookTicketDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SHOW TICKET</title>
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
        max-width: 750px;
        margin: auto;
        margin-top:2px;
    }
    .ticket-card:hover {
        transform: scale(1.02);
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
        width: 35%;
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
    .btn-container {
        display: flex;
        justify-content: center;
        margin-top: 20px;
        gap: 15px;
    }
    .btn-custom {
        padding: 10px 20px;
        border-radius: 30px;
        font-size: 16px;
        font-weight: bold;
        transition: 0.3s;
        background: linear-gradient(135deg, #2575fc, #6a11cb);
        color: #fff;
        border: none;
    }
    .btn-custom:hover {
        transform: scale(1.05);
    }
   @media print {
    body {
        -webkit-print-color-adjust: exact !important; /* For Chrome, Edge */
        print-color-adjust: exact !important;         /* For Firefox */
        color-adjust: exact !important;               /* Legacy */
    }

    /* Keep your gradients & colors */
    .ticket-header {
        background: linear-gradient(135deg, #2575fc, #6a11cb) !important;
        -webkit-print-color-adjust: exact !important;
        print-color-adjust: exact !important;
    }

    .btn-container {
        display: none !important; /* still hide buttons */
    }
}

</style>
</head>
<body>
<div class="container mt-5">
    <!-- Ticket Content Wrapper -->
    <div id="ticketContent" class="card ticket-card shadow-lg">
        <div class="ticket-header">
            <h2>🎟️ E-Ticket Confirmation</h2>
            <p class="mb-0">Thank you for booking with <strong>Train Ease</strong></p>
        </div>
        <div class="card-body">
        <%
            BookTicketDto ticket = (BookTicketDto) request.getAttribute("ticket");
            if(ticket != null){
        %>
        <table class="table ticket-table table-bordered text-center">
            <tr><th>Ticket ID</th><td class="highlight text-primary"><%=ticket.getTicketId() %></td></tr>
            <tr><th>🚆 Train No</th><td><%= ticket.getTrainNo() %></td></tr>
            <tr><th>🚉 Train Name</th><td><%= ticket.getTrainName() %></td></tr>
            <tr><th>📍 From</th>
                <td><span class="badge bg-success badge-custom"> <%= ticket.getFromStation() %></span></td>
            </tr>
            <tr><th>🏁 To</th>
                <td><span class="badge bg-danger badge-custom"> <%= ticket.getToStation() %></span></td>
            </tr>
            <tr><th>👤 Passenger</th><td><%= ticket.getPassengerName() %></td></tr>
            <tr><th>🎂 Age</th><td><%= ticket.getAge() %></td></tr>
            <tr><th>⚧ Gender</th><td><%= ticket.getGender() %></td></tr>
            <tr><th>💰 Fare</th><td class="highlight text-success">₹ <%= ticket.getFare() %></td></tr>
            <tr><th>🕒 Booking Date</th><td class="fw-bold"><%= new java.util.Date() %></td></tr>            
        </table>
        <% } else { %>
        <div class="alert alert-warning text-center mt-3">
            ⚠️ No ticket data available. Please book a ticket first.
        </div>
        <% } %>
        </div>
    </div>

    <!-- Buttons -->
    <div class="btn-container">
        <button class="btn btn-primary btn-custom" onclick="window.print()">🖨️ Print Ticket</button>
        <button class="btn btn-secondary btn-custom" onclick="window.location.href='ClientMenu.jsp'">⬅️ Back</button>
    </div>
</div>
</body>
</html>
