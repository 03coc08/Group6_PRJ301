<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Đăng nhập</h2>
    <form action="${pageContext.request.contextPath}/login" method="post">
        <div class="form-group">
            <label>Tên đăng nhập:</label>
            <input type="text" name="username" class="form-control" required>
        </div>
        <div class="form-group">
            <label>Mật khẩu:</label>
            <input type="password" name="password" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Đăng nhập</button>
        <a href="${pageContext.request.contextPath}/register" class="btn btn-link">Chưa có tài khoản?</a>
    </form>
</div>
</body>
</html>
