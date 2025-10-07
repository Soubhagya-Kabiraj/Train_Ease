<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Train</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5, #9face6);
    }
    .form-container {
        max-width: 700px;
        margin: 50px auto;
        background: #fff;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    }
</style>
</head>
<body>
<div class="container">
    <div class="form-container">
        <h2 class="text-center text-primary">🚆 Update Train Details</h2>
        <form action="UpdateTrainServlet" method="post">
            
            <div class="mb-3">
                <label class="form-label">Train Number</label>
                <input type="text" name="tnum" class="form-control" placeholder="Enter Train Number" required/>
            </div>

            <div class="mb-3">
                <label class="form-label">Train Name</label>
                <input type="text" name="tname" class="form-control" placeholder="Enter Train Name" required/>
            </div>

            <div class="mb-3">
                <label class="form-label">From Station</label>
                <input type="text" name="fromStation" class="form-control" required/>
            </div>

            <div class="mb-3">
                <label class="form-label">To Station</label>
                <input type="text" name="toStation" class="form-control" required/>
            </div>

            <div class="mb-3">
                <label class="form-label">Arrival Time</label>
                <input type="time" name="atime" class="form-control" required/>
            </div>

            <div class="mb-3">
                <label class="form-label">Departure Time</label>
                <input type="time" name="dtime" class="form-control" required/>
            </div>

            <button type="submit" class="btn btn-success w-100">Update Train</button>
        </form>
    </div>
</div>
</body>
</html>
