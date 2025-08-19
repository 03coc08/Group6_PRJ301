<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thông tin tài khoản</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .user-info-box {
            border: 1px solid #ccc;
            padding: 20px;
            width: 500px;
            margin: auto;
        }
        .user-info-box h2 {
            text-align: center;
        }
        .info-row {
            margin-bottom: 10px;
        }
        .info-row span {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="user-info-box">
        <h2>Thông tin tài khoản</h2>
        <div class="info-row">
            <span>Username:</span> ${user.username}
        </div>
        <div class="info-row">
            <span>PasswordHash:</span> ${user.passwordHash}
        </div>
        <div class="info-row">
            <span>Họ và tên:</span> ${user.fullName}
        </div>
        <div class="info-row">
            <span>Vai trò (Role):</span> ${user.role}
        </div>
        <div class="info-row">
            <span>Trạng thái hoạt động:</span> ${user.active}
        </div>
        <div class="info-row">
            <span>Ngày tạo (CreatedAt):</span> ${user.createdAt}
        </div>
        <div class="info-row">
            <span>Ngày cập nhật (UpdatedAt):</span> ${user.updatedAt}
        </div>
        <div style="text-align: center; margin-top: 20px;">
            <a href="#" onclick="history.back(); return false;">Quay lại trang trước</a>
        </div>
    </div>
</body>
</html>