<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cancel Ticket</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5, #9face6);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .cancel-card {
        border-radius: 20px;
        overflow: hidden;
        transition: all 0.3s ease-in-out;
        max-width: 600px;
        margin: auto;
        margin-top: 50px;
        box-shadow: 0 12px 28px rgba(0,0,0,0.25);
    }
    .cancel-header {
        background: linear-gradient(135deg, #e52d27, #b31217);
        color: white;
        padding: 20px;
        text-align: center;
    }
    .cancel-header h2 {
        margin: 0;
        font-weight: bold;
        font-size: 1.8rem;
    }
    .form-control {
        border-radius: 10px;
        padding: 12px;
    }
    .btn-cancel {
        background: linear-gradient(135deg, #e52d27, #b31217);
        border: none;
        color: white;
        font-weight: bold;
        border-radius: 10px;
        padding: 10px 20px;
        font-size: 1.1rem;
        transition: 0.3s;
    }
    .btn-cancel:hover {
        opacity: 0.85;
        transform: scale(1.02);
    }
    .btn-back {
        background: linear-gradient(135deg, #2575fc, #6a11cb);
        border: none;
        color: white;
        font-weight: bold;
        border-radius: 10px;
        padding: 10px 20px;
        font-size: 1.1rem;
        transition: 0.3s;
    }
    .btn-back:hover {
        opacity: 0.85;
        transform: scale(1.02);
    }
</style>
</head>
<body>
<div class="container">
    <div class="card cancel-card">
        <div class="cancel-header">
            <h2>❌ Cancel Ticket</h2>
            <p class="mb-0">Enter your ticket details below</p>
        </div>
        <div class="card-body p-4">
            <form action="CancelTicketServe" method="post">              
                <div class="mb-3">
                    <label class="form-label">Passenger Name</label>
                    <input type="text" class="form-control" name="passengerName" placeholder="Enter your Name:" required>
                </div>
                 <div class="mb-3">
                    <label class="form-label">Booking Date</label>
                    <input type="text" class="form-control" name="id" placeholder="Enter your ticket id:" required>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn-cancel">🚮 Cancel Ticket</button>
                   
                    <a href="ClientMenu.jsp" class="btn-back ms-3">⬅ Back to Menu</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
