<%-- 
    Document   : Left
    Created on : Dec 11, 2023, 10:32:08 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-sm-3">
    <div class="card bg-light mb-3">
        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
        <ul class="list-group category_block">
            <c:forEach items="${listC}" var="o">
                <li class="list-group-item text-white ${cateID == o.cid ? "active" : ""}"><a href="category?cid=${o.cid}" >${o.cname}</a></li>
            </c:forEach>

        </ul>
    </div>
    <div class="card bg-light mb-3">
        <div class="card-header bg-success text-white text-uppercase">Last product</div>
        <div class="card-body">

            <img class="img-fluid" src="${newP.image}" />
            <h5 class="card-title">${newP.name}</h5>
            <p class="card-text">${newP.title}</p>
            <p class="bloc_left_price">${newP.price} $</p>
        </div>
    </div>
</div>
