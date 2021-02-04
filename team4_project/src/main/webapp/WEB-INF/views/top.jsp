<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/top.css">
</head>
<body>
	<header>
			<div class="list_menu">
				<div class="menu menu_join">
					<a href="signup" class="link_menu" aria-label="Go to registeration page">회원가입</a>
				</div>
				<%
				if(session.getAttribute("user_id") != null){
					out.print("<div class='menu'><a href='logout' class='link_menu center' aria-label='Go to login page'> 로그아웃 </a></div>");
					out.print("<div class='menu'><a href='mypage' class='link_menu center' aria-label='Go to login page'> 마이페이지 </a></div>");
					if(((String)session.getAttribute("user_code")).equals("admin")){
						out.print("<div class='menu'><a href='admin' class='link_menu' aria-label='Go to service center'> 관리자 </a></div></div>");	
					} 
				} else {
					out.print("<div class='menu'><a href='login' class='link_menu center' aria-label='Go to login page'> 로그인 </a></div>");
				}
				%>
				<div class="menu">
					<a class="link_menu" aria-label="Go to service center ">고객센터</a>
				</div>
			<div class="bottom">
				<a href="index.jsp"><img src="resources/images/kurly.jpg" alt="logo" /></a>
			</div>
			</div>
		</header>
		<nav>
			<div class="dropdown">
				<button class="dropbtn">전체 카테고리</button>
				<div class="dropdown-content">
					<a href="goodsListSpec?num=1">채소</a> <a href="goodsListSpec?num=2">과일*견과*쌀</a> <a href="goodsListSpec?num=3">수산*해산*건어물</a>
					<a href="goodsListSpec?num=4">정육*계란</a><a href="goodsListSpec?num=5">샐러드*간편식</a><a href="goodsListSpec?num=6">면*양념*오일</a><a href="goodsListSpec?num=7">간식*과자*떡</a>
					<a href="goodsListSpec?num=8">베이커리*치즈*델리</a><a href="goodsListSpec?num=9">건강식품</a><a href="goodsListSpec?num=10">주방용품</a>
				</div>
			</div>
			<ul class="list">
				<li><a href="goodsList" aria-label="New products">신상품</a></li>
				<li><a href="goodsList" aria-label="Best products">베스트</a></li>
				<li><a href="goodsList" aria-label="Wise Consumption">알뜰쇼핑</a></li>
				<!-- <li id="last"><a href="#" aria-label="Benefits of the week">금주의 혜택</a></li> -->
			</ul>
			<div class="tools">
				<div id="search" class="search">
					<form>
						<input type="text"/>
					</form>
				</div>
				<div>
					<img src="resources/images/gps.png" alt="package GPS" />
				</div>
				<div class="cart">
					<a href="cartGoods" class="cart" aria-label="Go to cart"> <img
						src="resources/images/cart.png" alt="장바구니" /></a>
				</div>
			</div>
		</nav>

</body>
</html>