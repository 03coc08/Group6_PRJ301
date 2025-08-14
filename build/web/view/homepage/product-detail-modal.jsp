<%-- 
    Document   : product-detail-modal
    Created on : Jul 13, 2025, 12:44:11 AM
    Author     : Nguyen Van Manh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="model.BouquetTemplate, dao.BouquetDAO" %>
<%
    int bouquetID = Integer.parseInt(request.getParameter("bouquetID"));
    BouquetDAO dao = new BouquetDAO();
    BouquetTemplate p = dao.getBouquetByID(bouquetID);
%>

<div class="modal-header">
    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-md-5">
            <img src="<%= p.getThumbnail() %>" alt="Ảnh sản phẩm" class="img-fluid" />
        </div>
        <div class="col-md-7">
            <h3><%= p.getName() %></h3>
            <div class="product-price-wrapper">
                <span class="product-price-old"><del>₫<%= p.getOriginalPrice() %></del></span>
                <span class="text-danger">₫<%= p.getPrice() %></span>
            </div>
            <p><%= p.getDescription() %></p>
            <form action="AddToCartServlet" method="post">
                <input type="hidden" name="bouquetID" value="<%= p.getBouquetID() %>"/>
                <label>Số lượng:</label>
                <input type="number" name="quantity" value="1" min="1" class="form-control mb-2" />
                <button type="submit" class="btn btn-primary">Thêm vào giỏ hàng</button>
            </form>
            <span><i class="fa fa-check"></i> Còn hàng</span>
        </div>
    </div>
</div>

    </body>
</html>
