<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Success</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
         background: linear-gradient(135deg, #6a11cb, #2575fc);
        font-family: 'Segoe UI', sans-serif;
    }


    @keyframes popIn {
  0%{
    opacity: 0;
    transform: scale(0.7);
  }
  100% {
    opacity: 1;
    transform: scale(1);
  }
}

    #img {
      animation: popIn 1s ease-out forwards;
    }

    .success-card {
        background: #fff;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        padding: 30px;
        text-align: center;
        width: 450px;
        margin: 80px auto;
    }

    h2 {
        margin-top: 20px;
        font-weight: bold;
        color: #28a745;
        text-transform: uppercase;
        letter-spacing: 1px;
        animation: fadeIn 1.2s ease-in-out;
    }

    .btn-custom {
        background: #17a2b8;
        color: #fff !important;
        font-weight: 500;
        padding: 10px 20px;
        border-radius: 30px;
        transition: 0.3s ease;
        text-decoration: none;
    }

    .btn-custom:hover {
        background: #138496;
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    }
</style>
</head>
<body>
    <div class="success-card">
        <div id="img">
            <img src="https://tse2.mm.bing.net/th/id/OIP.b75uQVXbRQNekqW3cYNIGgHaHa?cb=thfc1&rs=1&pid=ImgDetMain&o=7&rm=3"
            alt="no image"
            height="140px"
            width="140px">
        </div>
        <h2>Registration Successful</h2>
        <a href="Home.jsp" class="btn btn-custom mt-3">Tap to Login</a>
    </div>
</body>
</html>