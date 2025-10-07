<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: url('https://th.bing.com/th/id/R.23749078a5e09832cca2a7cd006e30c2?rik=z0OvNE0KxhgxaA&riu=http%3a%2f%2fimages.fineartamerica.com%2fimages%2fartworkimages%2fmediumlarge%2f1%2ftrains-irm-collage-blue-background-horizontal-thomas-woolworth.jpg&ehk=%2bkEROeQ70dUmXP2QF8VzzobINS%2f92vMssKuS7DhBt6c%3d&risl=&pid=ImgRaw&r=0') no-repeat center center fixed;
        background-size: cover;        
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    }
    body::before {
        content: "";
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(10, 10, 10, 0.8); 
        z-index: -1;
    }
    #title {
        text-align: center;
        font-size: 42px;
        font-weight: bold;
        color: white;
        background: linear-gradient(90deg, #0d6efd, #20c997);
        border-radius: 12px;
        width: 80%;
        margin: 20px auto;
        padding: 12px;
        box-shadow: 0 5px 20px rgba(0,0,0,0.4);
    }
    #main {
        width: 35%;
        margin: 20px auto;        
        text-align: center;               
        background: rgba(255, 255, 255, 0.08);
        backdrop-filter: blur(18px);
        border: 1px solid rgba(255, 255, 255, 0.3);
        padding: 30px;
        border-radius: 18px;  
        box-shadow: 0 8px 25px rgba(0,0,0,0.4);
        animation: fadeIn 1s ease-out;
    }
    #main h2 {
        font-weight: bold;
        color: #0d6efd;
        margin-bottom: 25px;
    }
    input.form-control {
        margin: 12px auto;
        border: none;
        border-radius: 8px;
        width: 85%;
        padding: 12px;
        font-size: 15px;
        box-shadow: 0 3px 10px rgba(0,0,0,0.1);
    }
    .btn {
        width: 70%;
        margin-top: 12px;
        font-weight: bold;
        border-radius: 10px;
        padding: 10px;
        transition: all 0.2s ease;
    }
    .btn:hover {
        transform: scale(1.05);
        box-shadow: 0 6px 15px rgba(0,0,0,0.25);
    }
    #reg-btn {
        margin-top: 20px;
    }
    @keyframes fadeIn {
        from {opacity: 0; transform: translateY(-30px);}
        to {opacity: 1; transform: translateY(0);}
    }
</style> 
</head>
<body>
    <div id="title">RAILWAY TICKET BOOKING APP</div>

    <div id="main">
      <form action="LoginServe" method="post">
        <h2>LOGIN TO TRAIN EASE</h2>
        <input type="text" class="form-control" name="uname" placeholder="Enter Username">
        <input type="password" class="form-control" name="pass" placeholder="Enter Password">
        
        <button class="btn btn-outline-info" type="submit">LOGIN</button>
        <hr>
        <div id="reg-btn">
          <a href="Register.jsp" class="btn btn-success fw-bold">CREATE NEW ACCOUNT</a>
        </div>
      </form>
    </div>
</body>
</html>