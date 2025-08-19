<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng ký tài khoản</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Đăng ký</h2>
    <form action="${pageContext.request.contextPath}/register" method="post">
        <div class="form-group">
            <label>Tên đăng nhập:</label>
            <input type="text" name="username" class="form-control" required>
        </div>
        <div class="form-group">
            <label>Mật khẩu:</label>
            <input type="password" name="password" class="form-control" required>
        </div>
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-success">Đăng ký</button>
        <a href="${pageContext.request.contextPath}/login" class="btn btn-link">Đã có tài khoản?</a>
    </form>
</div>
</body>
</html>
