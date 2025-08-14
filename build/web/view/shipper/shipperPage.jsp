<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <title>Trang Shipper - MystBloom</title>

    <!-- Font Google -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet" />

    <style>
        /* Reset cơ bản */
        * {
            box-sizing: border-box;
            margin: 0; padding: 0;
        }
        body {
            font-family: 'Open Sans', sans-serif;
            background: #f0f4f8;
            color: #333;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Header */
        .header {
            background: linear-gradient(135deg, #ff758c, #ff7eb3);
            color: #fff;
            padding: 25px 20px;
            text-align: center;
            font-family: 'Roboto', sans-serif;
            font-weight: 700;
            font-size: 2.4rem;
            box-shadow: 0 5px 15px rgba(255, 126, 179, 0.4);
            letter-spacing: 1.5px;
            user-select: none;
        }
        .header p {
            margin-top: 8px;
            font-size: 1.1rem;
            font-weight: 400;
            color: #ffe6f1cc;
        }

        /* Menu */
        .menu {
            display: flex;
            background: #fff;
            box-shadow: 0 4px 12px rgb(0 0 0 / 0.1);
            border-radius: 12px;
            margin: 15px auto;
            max-width: 960px;
            overflow: hidden;
        }
        .menu a {
            flex: 1;
            text-align: center;
            padding: 14px 0;
            color: #555;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.3s ease;
            position: relative;
            perspective: 600px;
            cursor: pointer;
            user-select: none;
        }
        .menu a:hover,
        .menu a:focus {
            color: #ff5a82;
            background: #ffe6f1;
            box-shadow: 0 8px 16px rgb(255 90 130 / 0.3);
            transform-style: preserve-3d;
            transform: rotateX(8deg) scale(1.05);
            z-index: 10;
            outline: none;
        }
        .menu a[style*="float:right"] {
            flex: 0 0 120px;
            background: #ff5a82;
            color: white;
            font-weight: 700;
            border-radius: 0 12px 12px 0;
            box-shadow: 0 5px 15px rgb(255 90 130 / 0.6);
            transition: background 0.3s ease;
        }
        .menu a[style*="float:right"]:hover {
            background: #ff2a55;
            box-shadow: 0 10px 25px rgb(255 42 85 / 0.7);
        }

        /* Welcome message */
        .welcomeMessages {
            max-width: 960px;
            margin: 0 auto 20px auto;
            padding: 12px 25px;
            background: #ffebf1;
            border-radius: 10px;
            color: #d6336c;
            font-size: 1.1rem;
            font-weight: 600;
            box-shadow: 0 3px 8px rgb(255 54 105 / 0.2);
            user-select: none;
        }

        /* Content container */
        .content {
            max-width: 960px;
            margin: 0 auto 50px auto;
            padding: 0 15px;
        }

        /* Section titles */
        h2 {
            color: #ff3f7a;
            font-weight: 700;
            margin-bottom: 20px;
            text-shadow: 0 0 4px #ff8aac88;
            user-select: none;
        }

        /* Order Card */
        .order-card {
            background: #fff;
            border-radius: 15px;
            padding: 18px 25px;
            margin-bottom: 18px;
            box-shadow:
                0 4px 8px rgb(255 90 130 / 0.12),
                0 8px 24px rgb(255 90 130 / 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: default;
            user-select: none;
        }
        .order-card:hover {
            box-shadow:
                0 10px 20px rgb(255 90 130 / 0.25),
                0 15px 35px rgb(255 90 130 / 0.2);
            transform: translateY(-6px) scale(1.02);
        }
        .order-card p {
            font-size: 1rem;
            line-height: 1.4;
            margin-bottom: 6px;
        }
        .order-card strong {
            color: #e91e63;
        }

        /* Buttons */
        .btn {
            border-radius: 8px;
            border: none;
            cursor: pointer;
            font-weight: 600;
            padding: 9px 18px;
            box-shadow: 0 5px 15px rgb(255 90 130 / 0.2);
            transition: background 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease;
            user-select: none;
        }
        .btn-accept {
            background-color: #ff5a82;
            color: #fff;
            box-shadow: 0 6px 20px rgb(255 90 130 / 0.4);
        }
        .btn-accept:hover {
            background-color: #ff2a55;
            box-shadow: 0 8px 25px rgb(255 42 85 / 0.7);
            transform: translateY(-2px);
        }
        .btn-update {
            background-color: #2196f3;
            color: #fff;
            box-shadow: 0 6px 18px rgb(33 150 243 / 0.4);
        }
        .btn-update:hover {
            background-color: #0b7dda;
            box-shadow: 0 8px 25px rgb(11 125 218 / 0.6);
            transform: translateY(-2px);
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0 10px;
            user-select: none;
        }
        th, td {
            padding: 12px 15px;
            background: #fff;
            box-shadow:
                inset 0 -1px 0 #ddd,
                0 2px 6px rgb(0 0 0 / 0.05);
            text-align: left;
            vertical-align: middle;
        }
        th {
            background: #ffecf1;
            color: #ff5a82;
            font-weight: 700;
            font-size: 1rem;
            user-select: none;
        }
        tr {
            border-radius: 12px;
            transition: transform 0.3s ease;
        }
        tr:hover td {
            background: #ffe1eb;
            transform: translateX(10px);
            box-shadow: 4px 4px 15px rgb(255 90 130 / 0.25);
        }

        /* Form update */
        #update form {
            background: #fff;
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 5px 20px rgb(255 90 130 / 0.15);
            max-width: 480px;
            margin-bottom: 30px;
            user-select: none;
        }
        #update label {
            font-weight: 600;
            margin-bottom: 6px;
            display: block;
            color: #ff417d;
        }
        #update input[type="radio"] {
            margin-right: 8px;
            cursor: pointer;
        }
        #reasonDiv textarea {
            width: 100%;
            border-radius: 8px;
            border: 1.5px solid #ff8aac;
            padding: 8px;
            font-family: 'Open Sans', sans-serif;
            font-size: 1rem;
            resize: vertical;
            transition: border-color 0.3s ease;
        }
        #reasonDiv textarea:focus {
            outline: none;
            border-color: #ff417d;
            box-shadow: 0 0 8px #ff417d88;
        }

        /* Popup background */
        #confirmModal, #successPopup {
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0,0,0,0.5);
            z-index: 9999;
            display: none;
            align-items: center;
            justify-content: center;
            user-select: none;
        }
        /* Popup container */
        #confirmModal > div, #successPopup > div {
            background: white;
            border-radius: 15px;
            padding: 25px 30px;
            max-width: 320px;
            width: 90%;
            box-shadow:
                0 8px 20px rgb(255 90 130 / 0.3),
                0 10px 30px rgb(255 90 130 / 0.25);
            text-align: center;
            font-family: 'Roboto', sans-serif;
        }
        #confirmModal p, #successPopup p {
            font-weight: 700;
            font-size: 1.2rem;
            color: #ff417d;
            margin-bottom: 20px;
        }
        #confirmModal button, #successPopup button {
            margin: 0 12px;
            font-weight: 600;
            border-radius: 10px;
            padding: 10px 22px;
            border: none;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }
        #confirmModal button.btn-accept, #successPopup button.btn-accept {
            background-color: #ff5a82;
            color: #fff;
            box-shadow: 0 6px 20px rgb(255 90 130 / 0.5);
        }
        #confirmModal button.btn-accept:hover, #successPopup button.btn-accept:hover {
            background-color: #ff2a55;
            box-shadow: 0 8px 25px rgb(255 42 85 / 0.8);
            transform: translateY(-2px);
        }
        #confirmModal button.btn {
            background-color: #ccc;
            color: #333;
            box-shadow: none;
        }
        #confirmModal button.btn:hover {
            background-color: #bbb;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes popupFadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px) scale(0.95);
            }
            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }

        .welcome-container {
            width: 100%;
            display: flex;
            justify-content: center;
            padding: 20px 0;
            background: linear-gradient(to right, rgba(255,255,255,0), rgba(255,90,130,0.1), rgba(255,255,255,0));
        }
        
        .welcome-message {
            background: linear-gradient(135deg, #fff5f7 0%, #ffe6f1 100%);
            padding: 20px 40px;
            border-radius: 15px;
            box-shadow: 
                0 4px 15px rgba(255,90,130,0.2),
                0 8px 25px rgba(255,90,130,0.15);
            text-align: center;
            color: #ff417d;
            font-size: 18px;
            font-weight: 600;
            line-height: 1.6;
            max-width: 800px;
            width: 90%;
            margin: 0 auto;
            position: relative;
            overflow: hidden;
            animation: messageAppear 0.8s ease-out;
        }

        .welcome-message::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(45deg, transparent, rgba(255,255,255,0.8), transparent);
            transform: translateX(-100%);
            animation: shine 2s infinite;
        }

        @keyframes messageAppear {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes shine {
            0% {
                transform: translateX(-100%);
            }
            20%, 100% {
                transform: translateX(100%);
            }
        }
    </style>
</head>
<body>
    <!-- Kiểm tra đăng nhập -->
    <c:if test="${empty sessionScope.userID || sessionScope.role ne 'Shipper'}">
        <c:redirect url="login.jsp"/>
    </c:if>

    <div class="header">
        <h1>MystBloom Shipper</h1>
        <p>Xin chào, ${sessionScope.userID}</p>
    </div>

    <div class="menu">
        <a href="shipper?action=pending">Đơn hàng cần giao</a>
        <a href="#delivering">Đơn đang giao</a>
        <a href="#update">Cập nhật trạng thái</a>
        <a href="#history">Lịch sử giao hàng</a>
        <a href="shipper?action=profile" onclick="showProfile(event)">Thông tin cá nhân</a>
        <a href="logout" style="float:right">Đăng xuất</a>
    </div>

    <!-- Welcome Message -->
    <div class="welcome-container">
        <div class="welcome-message">
            ${welcomeMessage}
        </div>
    </div>

    <main class="content">
        <!-- Đơn hàng cần giao -->
        <section id="pending">
            <h2>Đơn hàng cần giao</h2>
            <c:forEach items="${orders}" var="order">
                <article class="order-card">
                    <p><strong>Mã đơn:</strong> ${order.orderID}</p>
                    <p><strong>Mã khách hàng:</strong> ${order.customerID}</p>
                    <p><strong>Ngày đặt:</strong> ${order.orderDate}</p>
                    <p><strong>Địa chỉ:</strong> ${order.deliveryAddress}</p>
                    <p><strong>Trạng thái:</strong> ${order.status}</p>
                    <p><strong>Tổng tiền:</strong> ${order.totalAmount}</p>
                    <button class="btn btn-accept" onclick="acceptOrder(${order.orderID})">Nhận đơn</button>
                </article>
            </c:forEach>
        </section>

        <!-- Đơn hàng đang giao -->
        <section id="delivering" style="display:none">
            <h2>Đơn hàng đang giao</h2>
            <table>
                <thead>
                    <tr>
                        <th>Mã đơn</th>
                        <th>Khách hàng</th>
                        <th>Địa chỉ</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${inProgressOrders}" var="order">
                        <tr>
                            <td>${order.orderID}</td>
                            <td>${order.customerID}</td>
                            <td>${order.deliveryAddress}</td>
                            <td>
                                <button class="btn btn-update" onclick="showUpdateForm(${order.orderID})">Cập nhật</button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>

        <!-- Cập nhật trạng thái -->
        <section id="update" style="display:none">
            <h2>Cập nhật trạng thái đơn hàng</h2>
            <form id="updateForm">
                <input type="hidden" id="orderId" name="orderId" />
                <label>Trạng thái:</label><br />
                <input type="radio" name="status" value="DELIVERING" checked /> Đang giao<br />
                <input type="radio" name="status" value="DELIVERED" /> Đã giao thành công<br />
                <input type="radio" name="status" value="FAILED" /> Giao thất bại<br />

                <div id="reasonDiv" style="display:none">
                    <label>Lý do:</label>
                    <textarea name="reason" rows="3" cols="50"></textarea>
                </div>

                <button type="button" class="btn btn-update" onclick="updateOrder()">Cập nhật</button>
            </form>
        </section>

        <!-- Lịch sử giao hàng -->
        <section id="history" style="display:none">
            <h2>Lịch sử giao hàng</h2>
            <table>
                <thead>
                    <tr>
                        <th>Mã đơn</th>
                        <th>Khách hàng</th>
                        <th>Ngày giao</th>
                        <th>Trạng thái</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${deliveryHistory}" var="history">
                        <tr>
                            <td>${history.orderId}</td>
                            <td>${history.customerName}</td>
                            <td>${history.deliveryDate}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${history.status == 'DELIVERED'}">Thành công</c:when>
                                    <c:otherwise>Thất bại</c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>

        <!-- Thông tin cá nhân -->
        <section id="profile" style="display:none">
            <h2>Thông tin cá nhân</h2>
            <p><strong>Tên:</strong> ${shipperInfo.fullName}</p>
            <p><strong>SĐT:</strong> ${shipperInfo.phone}</p>
            <p><strong>Email:</strong> ${shipperInfo.email}</p>
            

            
        </section>
    </main>

    <!-- Popup Xác Nhận Nhận Đơn -->
    <div id="confirmModal">
        <div>
            <p>Bạn có chắc chắn muốn nhận đơn này?</p>
            <button onclick="confirmAccept()" class="btn btn-accept">Xác nhận</button>
            <button onclick="closeModal()" class="btn">Huỷ</button>
        </div>
    </div>

    <!-- Popup Thông báo thành công -->
    <div id="successPopup">
        <div>
            <p>✅ Đã nhận đơn hàng thành công!</p>
            <button onclick="closeSuccess()" class="btn btn-accept">OK</button>
        </div>
    </div>

    <!-- Popup Chào Mừng -->
    <div id="welcomePopup" style="
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0,0,0,0.5);
        z-index: 9999;
        justify-content: center;
        align-items: center;
    ">
        <div style="
            background: linear-gradient(135deg, #fff5f7, #fff0f7);
            padding: 30px 40px;
            border-radius: 20px;
            text-align: center;
            max-width: 500px;
            width: 90%;
            box-shadow: 
                0 10px 25px rgba(255,90,130,0.3),
                0 15px 45px rgba(255,90,130,0.2);
            animation: popupFadeIn 0.6s ease-out;
            position: relative;
        ">
            <h2 style="
                color: #ff417d;
                font-size: 28px;
                margin-bottom: 20px;
                text-shadow: 0 2px 4px rgba(255,90,130,0.2);
            ">Chào mừng đến với MystBloom! 🌸</h2>
            
            <p style="
                color: #ff5a82;
                font-size: 18px;
                line-height: 1.6;
                margin-bottom: 25px;
            ">${sessionScope.welcomePopup}</p>
            
            <button onclick="closeWelcomePopup()" style="
                background: #ff5a82;
                color: white;
                border: none;
                padding: 12px 30px;
                border-radius: 25px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                transition: all 0.3s ease;
                box-shadow: 0 5px 15px rgba(255,90,130,0.4);
            ">Bắt đầu làm việc</button>
        </div>
    </div>

    <script>
        // Điều hướng menu tab
        document.querySelectorAll('.menu a').forEach(link => {
            link.addEventListener('click', function (e) {
                const href = this.getAttribute('href');
                if (href.startsWith('#')) {
                    e.preventDefault();
                    const tabId = href.substring(1);
                    showTab(tabId);
                }
            });
        });

        function showTab(tabId) {
            document.querySelectorAll('.content > section').forEach(div => {
                div.style.display = 'none';
            });
            document.getElementById(tabId).style.display = 'block';
        }

        // Xác nhận nhận đơn
        let selectedOrderId = null;

        function acceptOrder(orderId) {
            selectedOrderId = orderId;
            document.getElementById("confirmModal").style.display = "flex";
        }

        function closeModal() {
            document.getElementById("confirmModal").style.display = "none";
            selectedOrderId = null;
        }

        function confirmAccept() {
            if (selectedOrderId != null) {
                fetch('shipper?action=accept&orderId=' + selectedOrderId)
                    .then(response => response.text())
                    .then(data => {
                        if (data === 'success') {
                            // Xóa đơn hàng khỏi danh sách đơn cần giao
                            const orderCard = document.querySelector(`.order-card[data-order-id="${selectedOrderId}"]`);
                            if (orderCard) {
                                orderCard.remove();
                            }
                            
                            // Hiển thị thông báo thành công
                            showSuccess();
                            
                            // Tự động chuyển sang tab đơn đang giao
                            setTimeout(() => {
                                showTab('delivering');
                                // Reload trang để cập nhật danh sách đơn đang giao
                                window.location.href = 'shipper?action=pending';
                            }, 1500);
                        }
                    });
            }
            closeModal();
        }

        function showSuccess() {
            document.getElementById("successPopup").style.display = "flex";
        }

        function closeSuccess() {
            document.getElementById("successPopup").style.display = "none";
            showTab('delivering');
        }

        // Hiển thị popup chào mừng ngay khi trang load xong
        window.onload = function() {
            if ('${sessionScope.welcomePopup}' !== '') {
                document.getElementById('welcomePopup').style.display = 'flex';
                // Xóa message khỏi session sau khi đã hiển thị
                <% session.removeAttribute("welcomePopup"); %>
            }
        }

        function closeWelcomePopup() {
            document.getElementById('welcomePopup').style.display = 'none';
        }

        // Hàm ẩn tất cả các section
        function hideAllSections() {
            document.querySelectorAll('section').forEach(section => {
                section.style.display = 'none';
            });
        }

        // Hàm hiển thị section profile
        function showProfile(event) {
            event.preventDefault();
            hideAllSections();
            document.getElementById('profile').style.display = 'block';
            
            // Kiểm tra URL hiện tại
            const urlParams = new URLSearchParams(window.location.search);
            const currentAction = urlParams.get('action');
            
            // Nếu chưa ở trang profile, load thông tin mới
            if (currentAction !== 'profile') {
                fetch(event.target.href)
                    .then(response => response.text())
                    .then(html => {
                        // Tìm section profile trong response HTML
                        const parser = new DOMParser();
                        const doc = parser.parseFromString(html, 'text/html');
                        const newProfileSection = doc.getElementById('profile');
                        
                        if (newProfileSection) {
                            // Cập nhật nội dung section profile
                            document.getElementById('profile').innerHTML = newProfileSection.innerHTML;
                        }
                        
                        // Cập nhật URL nhưng không reload trang
                        window.history.pushState({}, '', event.target.href);
                    })
                    .catch(error => {
                        console.error('Error:', error);
                        alert('Có lỗi xảy ra khi tải thông tin. Vui lòng thử lại sau.');
                    });
            }
        }

        // Xử lý khi người dùng sử dụng nút back/forward của browser
        window.onpopstate = function(event) {
            const urlParams = new URLSearchParams(window.location.search);
            const action = urlParams.get('action');
            
            if (action === 'profile') {
                hideAllSections();
                document.getElementById('profile').style.display = 'block';
            } else if (!action) {
                hideAllSections();
                document.getElementById('pending').style.display = 'block';
            }
        };

        // Hiển thị section mặc định hoặc profile khi load trang
        window.onload = function() {
            const urlParams = new URLSearchParams(window.location.search);
            const action = urlParams.get('action');
            
            if (action === 'profile') {
                hideAllSections();
                document.getElementById('profile').style.display = 'block';
            } else {
                const defaultSection = document.getElementById('pending');
                if (defaultSection) {
                    hideAllSections();
                    defaultSection.style.display = 'block';
                }
            }
        };
    </script>
</body>
</html>
