<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD STATION PAGE</title>
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
    .btn-primary {
        width: 70%;
        margin-top: 15px;
        background: blue;
        color: #fff;
        border-radius: 25px;
        font-weight: 500;
        transition: 0.3s;
    }
	.btn-success{
		background:green;
	}
    .btn:hover {
        box-shadow: 0 4px 12px rgba(0,0,0,0.2);
        transform: translateY(-2px);
    }
</style>
</head>
<body>
    <div class="add-card">
        <form name="f1" action="AddStationServe" method="post">
            <h2>ADD STATION FORM</h2>
            <input type="text" class="form-control" name="tnum" placeholder="ENTER TRAIN NUMBER" required/>
            <input type="text" class="form-control" name="sid" placeholder="ENTER STATION ID" required/>
            <input type="text" class="form-control" name="sname" placeholder="ENTER STATION NAME" required/>
            <input type="text" class="form-control" name="dfs" placeholder="ENTER DISTANCE FROM START" required/>
            <input type="text" class="form-control" name="atime" placeholder="ENTER ARRIVE TIME" required/>
            <input type="text" class="form-control" name="dtime" placeholder="ENTER DEPARTURE TIME" required/>

            <input type="submit" class="btn btn-primary" name="action" value="ADD ONE MORE STATION"/>
             <br>
             OR
            <hr>
            <input type="submit" class="btn btn-success fw-bold py-2" name="action"value="CLICK TO DONE"/>
            
        </form>
    </div>
</body>
</html>