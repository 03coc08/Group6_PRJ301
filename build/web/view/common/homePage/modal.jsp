<%-- 
    Document   : modal
    Created on : May 24, 2025, 12:38:55 AM
    Author     : khanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-5 col-sm-5 col-xs-12">
                                <!-- Thumbnail Large Image start -->
                                <div class="tab-content">
                                    <div id="pro-1" class="tab-pane fade show active">
                                        <img src="${pageContext.request.contextPath}/img/product-details/product-detalis-l1.jpg" alt="">
                                    </div>
                                    <div id="pro-2" class="tab-pane fade">
                                        <img src="${pageContext.request.contextPath}/img/product-details/product-detalis-l2.jpg" alt="">
                                    </div>
                                    <div id="pro-3" class="tab-pane fade">
                                        <img src="${pageContext.request.contextPath}/img/product-details/product-detalis-l3.jpg" alt="">
                                    </div>
                                    <div id="pro-4" class="tab-pane fade">
                                        <img src="${pageContext.request.contextPath}/img/product-details/product-detalis-l4.jpg" alt="">
                                    </div>
                                </div>
                                <!-- Thumbnail Large Image End -->
                                <!-- Thumbnail Image End -->
                                <div class="product-thumbnail">
                                    <div class="thumb-menu owl-carousel nav nav-style" role="tablist">
                                        <button class="active" data-bs-toggle="tab" data-bs-target="#pro-1"><img src="${pageContext.request.contextPath}/img/product-details/product-detalis-s1.jpg" alt=""></button>
                                        <button data-bs-toggle="tab" data-bs-target="#pro-2"><img src="${pageContext.request.contextPath}/img/product-details/product-detalis-s2.jpg" alt=""></button>
                                        <button data-bs-toggle="tab" data-bs-target="#pro-3"><img src="${pageContext.request.contextPath}/img/product-details/product-detalis-s3.jpg" alt=""></button>
                                        <button data-bs-toggle="tab" data-bs-target="#pro-4"><img src="${pageContext.request.contextPath}/img/product-details/product-detalis-s4.jpg" alt=""></button>
                                    </div>
                                </div>
                                <!-- Thumbnail image end -->
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <div class="modal-pro-content">
                                    <h3>Dutchman's Breeches </h3>
                                    <div class="product-price-wrapper">
                                        <span class="product-price-old">£162.00 </span>
                                        <span>£120.00</span>
                                    </div>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet.</p>	
                                    <div class="quick-view-select">
                                        <div class="select-option-part">
                                            <label>Size*</label>
                                            <select class="select">
                                                <option value="">S</option>
                                                <option value="">M</option>
                                                <option value="">L</option>
                                            </select>
                                        </div>
                                        <div class="quickview-color-wrap">
                                            <label>Color*</label>
                                            <div class="quickview-color">
                                                <ul>
                                                    <li class="blue">b</li>
                                                    <li class="red">r</li>
                                                    <li class="pink">p</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-quantity">
                                        <div class="cart-plus-minus">
                                            <input class="cart-plus-minus-box" type="text" name="qtybutton" value="02">
                                        </div>
                                        <button>Add to cart</button>
                                    </div>
                                    <span><i class="fa fa-check"></i> In stock</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>