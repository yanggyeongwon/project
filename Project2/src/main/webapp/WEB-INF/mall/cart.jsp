<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="../common.jsp" %>  
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://use.fontawesome.com/c560c025cf.js"></script>
<style>
.card{
	    width: 1000px;
	margin: 0 auto;
	padding: 30px 0;
	
}
</style>
<div class="container"></div>
<form action="list.mall" method="post">
    <div class="card">
            <div class="card-header bg-dark text-light">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                	장바구니
					<a href="list.prd" class="btn btn-outline-secondary pull-right">쇼핑 계속하기 </a>
                <div class="clearfix"></div>
            </div>
            <div class="card-body">
<c:forEach items="${sessionScope.shoplists }" var="shopInfo">
                <div class="row">
                    <div class="col-xs-2 col-md-2">
                        <img class="img-responsive" src="http://placehold.it/120x80" alt="prewiew">
                    </div>
                    <div class="col-xs-4 col-md-6">
                        <h4 class="product-name"><strong>상품명</strong></h4><h4><small>description</small></h4>
                    </div>
                    <div class="col-xs-6 col-md-4 row"> 
                        <div class="col-xs-6 col-md-6 text-right" style="padding-top: 5px">
                            <h6><strong>${product.pprice }<span class="text-muted">x</span></strong></h6>
                        </div>
                        <div class="col-xs-4 col-md-4">
                            <input type="text" class="form-control input-sm" value="1">
                        </div>
                        <div class="col-xs-2 col-md-2">
                            <button type="button" class="btn btn-outline-danger btn-xs">
                                <i class="fa fa-trash" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>
                </div>
</c:forEach>
                <hr>
            </div>
            <div class="card-footer">
                <a href="calculate.mall" class="btn btn-dark pull-right">주문하기</a>
                <div class="pull-right" style="margin: 5px">
                 	   합계 : <b>  00 원 </b>
                </div>
            </div>
        </div>
        </form>
</div>