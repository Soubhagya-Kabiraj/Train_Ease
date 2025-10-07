<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOK TICKET</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"/>
<style>
body {
    background: linear-gradient(135deg, #74ebd5, #9face6 );
    font-family: 'Segoe UI', sans-serif;
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}
.card {
    width: 100%;
    max-width: 650px;
    border-radius: 20px;
    box-shadow: 0 8px 24px rgba(0,0,0,0.25);
    overflow: hidden;
    background: #fff;
}
.card-header {
    background: linear-gradient(135deg, #007bff, #00c6ff);
    color: #fff;
    text-align: center;
    padding: 20px;
    font-size: 1.5rem;
    font-weight: bold;
}
.card-body {
    padding: 30px;
}
.form-control {
    border-radius: 12px;
    padding-left: 40px;
}
.input-group-text {
    border-radius: 12px 0 0 12px;
    background-color: #f0f0f0;
}
.btn-custom {
    background: linear-gradient(135deg, #007bff, #00c6ff);
    border: none;
    border-radius: 12px;
    font-size: 1.1rem;
    font-weight: 600;
    transition: all 0.3s ease-in-out;
}
.btn-custom:hover {
    background: linear-gradient(135deg, #0056b3, #0096c7);
    transform: scale(1.02);
}
</style>
</head>
<body>

<div class="card">
    <div class="card-header">
        🎟️ Book Your Train Ticket
    </div>
    <div class="card-body">
        <form action="BookTicketServe" method="post">

            <!-- Train Number -->
            <div class="input-group mb-3">
                <span class="input-group-text"><i class="bi bi-train-front"></i></span>
                <input type="text" class="form-control" name="trainNo" placeholder="Train Number" required>
            </div>

            <!-- Train Name -->
            <div class="input-group mb-3">
                <span class="input-group-text"><i class="bi bi-card-text"></i></span>
                <input type="text" class="form-control" name="trainName" placeholder="Train Name" required>
            </div>

            <!-- From Station -->
            <div class="input-group mb-3">
                <span class="input-group-text"><i class="bi bi-geo-alt"></i></span>
                <input type="text" class="form-control" name="fromStation" placeholder="From Station" required>
            </div>

            <!-- To Station -->
            <div class="input-group mb-3">
                <span class="input-group-text"><i class="bi bi-geo"></i></span>
                <input type="text" class="form-control" name="toStation" placeholder="To Station" required>
            </div>

            <!-- Passenger Name -->
            <div class="input-group mb-3">
                <span class="input-group-text"><i class="bi bi-person"></i></span>
                <input type="text" class="form-control" name="pname" placeholder="Passenger Name" required>
            </div>

            <!-- Age -->
            <div class="input-group mb-3">
                <span class="input-group-text"><i class="bi bi-calendar"></i></span>
                <input type="number" class="form-control" name="age" placeholder="Age" required>
            </div>

            <!-- Gender -->
            <div class="input-group mb-4">
                <span class="input-group-text"><i class="bi bi-gender-ambiguous"></i></span>
                <select class="form-control" name="gender" required>
                    <option value="">Select Gender</option>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
            </div>

            <!-- Submit -->
            <button type="submit" class="btn btn-custom w-100">Book Ticket ✅</button>
        </form>
    </div>
</div>

</body>
</html>
