<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">

<link rel="stylesheet" href="resources/css/cartList.css">
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div class="main">
		<div class="title">
			<h1>장바구니</h1>
		</div>

		<form action="preOrders" name="myform" method="post">
			<div class="inner_check">
				<label class="check"><input type="checkbox"
					name="goods_checkAll" id="checkAll"><span class="ico"></span>전체선택</label>
				<!-- <a href="#none" class="btn_delete">선택삭제</a> -->
			</div>

			<div class="box_wrapper">
				<div class="boxList">
					<c:forEach var="c_dto" items="${cartList}">
						<c:set var="goods" value="${c_dto.goods_id}" />
						<div class="box">
							<label class="check"><input type="checkbox"
								class="goods_check" id="${goods}" name="goods_check"
								value="${goods}" /><span class="ico"></span> </label><img width="100"
								width="100" src="resources/images/goods/${c_dto.goods_img}">
							<span class="goods_name">${c_dto.goods_name}</span> <span
								class="count"><button type="button" id="${goods}_down" class="btn_down">-</button><input type="number" name="goods_cont" id="${goods}_cont"
								readonly="readonly" onfocus="this.blur()" class="inp"
								value="${c_dto.cart_goods_cont}" size="4" style="text-align:center; width:30px;"><button type="button" id="${goods}_up" class="btn_up">+</button></span>

							<!-- span으로 묶음 -->
							<span class="price_sum"> <span class="goods_price_calc" id="${goods}_price"> ${c_dto.goods_price * c_dto.cart_goods_cont * (100 - c_dto.goods_discountRate)/100}</span><span>원</span></span> 
							<input type="hidden" name="goods_price" class="goods_price" value="${c_dto.goods_price}"> 
							<input type="hidden" name="goods_discountRate" class="goods_discountRate" value="${c_dto.goods_discountRate}">
							<button type="button" id="${goods}_clear" class="btn_clear" value="${c_dto.goods_id}"></button>
						</div>
					</c:forEach>
				</div>

				<div class="bill">
					<div class="amount_view">
						<div class="amount">
							<span class="tit">상품금액</span> <span class="goodsPrice"></span><span>원</span>
							<input type="hidden" name="goodsPrice" id="goodsPrice">
						</div>
						<div class="amount">
							<span class="tit">상품할인금액</span> <span class="discountprice"></span><span>원</span>
							<input type="hidden" name="discountprice" id="discountprice">
						</div>
						<div class="amount lst">
							<span class="tit">결제 예정 금액</span> <br> <span
								class="orders_price"></span><span id="won">원</span> <input
								type="hidden" name="orders_price" id="orders_price">
						</div>
					</div>
					<div class="btn_wrapper">
						<input type="submit" id="btn_order" value="구매하기">
					</div>
				</div>

			</div>

		</form>
	</div>

	<script type="text/javascript">
function del(){
	if (confirm("정말 삭제하시겠습니까?") == true){
	let a = $(this).parent()
	let user_id = "<%=session.getAttribute("user_id")%>"
	
		let goods_id = $(this).attr('value');

		$.ajax({
			type : "get",
			url : "deleteCartGoods",
			dataType : "json",
			data : {
				"goods_id" : goods_id,
				"user_id" : user_id
			},
			success : function(item) {
				if (item.isSuccess) {
					a.remove();
				} else {
					alert("해당 상품을 삭제할 수 없습니다")
				}
			}
		})
		} else {
			return false;
		}
	}
	
	function calc() {
		let mychklist = $("input[name=goods_check]:checkbox")
		let countArr = $(".inp")
		let priceArr = $(".goods_price")

		let totalPrice = 0; 
		let discountprice = 0
		let totalDisPrice = 0
		let price = 0;
		//화면에 출력된 전체 상품목록에서 체크된 상품의 가격과 수량을 곱해서 금액 구하고 totalPrice에 누적
		$("input[name=goods_check]:checkbox").each(function(idx, mychklist) {
			let num = $(".inp")[idx].value;
			let rate = $(".goods_discountRate")[idx].value;
			let goods_price = $(".goods_price")[idx].value;

			if (mychklist.checked) {
				discountprice -= goods_price * num * (rate) / 100
				totalPrice += goods_price * num;
				totalDisPrice += goods_price * num * (100 - rate) / 100;
			}
		});

		$(".goodsPrice").text(totalPrice);
		$("#goodsPrice").val(totalPrice);
		$(".discountprice").text(discountprice);
		$("#discountprice").val(discountprice);
		$(".orders_price").text(totalDisPrice);
		$("#orders_price").val(totalDisPrice);
	}
	
	function updateCart(user_id, goods_id, num){
		$.ajax({
			type : "get",
			url : "updateCartGoods",
			dataType :"json",
			data : {"goods_id":goods_id, "user_id":user_id, "cart_goods_cont":num},
			success:function(item){
				if (!item.isSuccess) {
					alert("해당 상품의 구매갯수를 변경할 수 없습니다.")
				} 
			}
		}) 
	}
	
	$(document).on("click", "#checkAll", function() {
		if ($("input[name=goods_checkAll]:checkbox").prop("checked")) {
			$("input[name=goods_check]:checkbox").prop("checked", true);
		} else {
			$("input[name=goods_check]:checkbox").prop("checked", false);
		}
		calc();
	});

	// 체크시 금액 변동 
	$(document).on("click", ".goods_check", calc);

	$(document).on('click', '.btn_clear', del);

	$(document).on('click', '.btn_down', function() {
		let num = $(this).next().val();
		let goods_id = $(this).attr("id").split("_down")[0];
		if (num > 1) {
			$(this).next().val(--num);
			
			let afterPrice = $("#"+goods_id+"_price").text();
			afterPrice *= num / (num + 1);
			
			// 변경된 숫자 및 금액 반영
			$("#"+goods_id+"_price").text(afterPrice);
			
			calc();
			
			// 변경된 수량 ajax를 통해 db로 전달
			let user_id = "<%=session.getAttribute("user_id")%>";
			updateCart(user_id, goods_id, num)
			
		}

	});
	
	$(document).on('click', '#btn_order', function(){
		if(confirm("정말 주문하시겠습니까?")){		
		myform.submit(); 
		} else {
			return false;
		}
	})

	$(document).on('click', '.btn_up', function() {
		let num = $(this).prev().val();
		let goods_id = $(this).attr("id").split("_up")[0];
		/* alert(num) */
		if (num < 1000) {
			$(this).prev().val(++num);

			let afterPrice = $("#"+goods_id+"_price").text();

			afterPrice *= num / (num - 1)
			
			// 변경된 숫자 및 금액 반영
			$("#"+goods_id+"_price").text(afterPrice);
			calc();
			
			// 변경된 수량 ajax를 통해 db로 전달
			let user_id = "<%=session.getAttribute("user_id")%>";
			updateCart(user_id, goods_id, num)

			}
		});
	</script>
	<!--   
	cartList에서 구현해야할 기본 내용  
	- 장바구니에 담은 객체 보여주기.(db 에서 가져와야함)  
	- 전체체크 및 체크를 할때마다 결제예정금액 보여주기
	- 장바구니에서 객체 뺴기(db delete)   
	
	추가내용 
	- 주소 검색 api연동 

 -->

</body>
</html>