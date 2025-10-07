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
        background: red;
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
        <form name="f1" action="DeleteTrainServe" method="post">
            <h2>DELETE TRAIN FORM</h2>

            <input type="text" class="form-control" name="tnum" placeholder="ENTER TRAIN NUMBER" required/>

            <input type="submit" class="btn btn-danger" value="DELETE TRAIN"/>
        </form>
    </div>
    <div class="btn1">
    <a href="NavAdmin.jsp">⬅️ BACK</a>
    </div>
</body>
</html>