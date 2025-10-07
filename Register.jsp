<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTER PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5, #9face6 );
        font-family: 'Segoe UI', sans-serif;
    }

    .register-card {
        background: #fff;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        padding: 30px;
        width: 480px;
        margin: 20px auto;
        text-align: center;
        animation: fadeIn 1s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .register-card h2 {
        font-weight: bold;
        margin-bottom: 20px;
        color: #007bff;
        
    }

    input.form-control {
        margin: 12px auto;
        border-radius: 8px;
        width: 90%;
        padding: 10px;
        font-size: 14px;
    }

    .btn{
        width: 50%;
        margin-top: 15px;
        background: #17a2b8;
        color: #fff;
        border-radius: 25px;
        font-weight: 500;
        transition: 0.3s;
    }

    .btn:hover {
        background: #138496;
        box-shadow: 0 4px 12px rgba(0,0,0,0.2);
        transform: translateY(-2px);
    }
    .lottie-container {
        width: 100px;
        height: 100px;
        margin:10px auto;
    }
</style>
</head>
<body>
	<div class="register-card">
       
        <div class="lottie-container">
            <lottie-player src="https://assets1.lottiefiles.com/packages/lf20_jcikwtux.json"  
                background="transparent"  >
            </lottie-player>
        </div>

		<form action="RegisterAddServe" method="post">
			<h2>CREATE ACCOUNT</h2>
			
			<input type="text" class="form-control" name="nm" placeholder="Enter Your Name" required/>
            <input type="text" class="form-control" name="phno" placeholder="Enter Your Mobile No." required/>
            <input type="email" class="form-control" name="email" placeholder="Enter Your Email" required/>
            <input type="text" class="form-control" name="address" placeholder="Enter Your Address"/>
            <input type="number" class="form-control" name="age" placeholder="Enter Your Age"/>
            <input type="text" class="form-control" name="uname" placeholder="Choose a Username" required/>
            <input type="password" class="form-control" name="pass" placeholder="Enter Password" required/>

			<input type="submit" class="btn btn-outline-primary" value="Register"/>
		</form>
	</div>

    <!-- Lottie Script -->
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
</body>
</html>
