<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERROR PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(135deg, #6a11cb, #2575fc);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .error-card {
        background: #fff;
        border-radius: 15px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        width: 420px;
        text-align: center;
        padding: 30px;
        animation: fadeIn 1s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .error-icon {
        font-size: 60px;
        color: #dc3545;
        margin-bottom: 15px;
        animation: pulse 1.2s infinite;
    }
    .error-card h3 {
        color: #dc3545;
        font-weight: bold;
        margin-bottom: 15px;
    }

    .btn-home {
        margin-top: 15px;
        background: #17a2b8;
        color: #fff;
        border: none;
        border-radius: 25px;
        font-weight: 500;
        padding: 10px 25px;
        transition: 0.3s;
        text-decoration: none;
        display: inline-block;
    }

    .btn-home:hover {
        background: #138496;
        box-shadow: 0px 6px 15px rgba(0,0,0,0.2);
        transform: translateY(-2px);
        color: #fff;
    }
</style>
</head>
<body>
    <div class="error-card">
        <div class="error-icon">❌</div>
        <h3>PASSWORD INCORRECT</h3>
        <p class="text-muted">Please check your credentials and try again.</p>
        <a href="Home.jsp" class="btn-home">GO TO HOME</a>
    </div>
</body>
</html>