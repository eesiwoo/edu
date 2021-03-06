<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
<link href="resources/css/slick.css" rel="stylesheet" type="text/css" />
<link href="resources/css/slick-theme.css" rel="stylesheet" type="text/css" />
<link href="resources/css/index.css" rel="stylesheet" />
<link href="resources/css/slider.css" rel="stylesheet" />
<link href="resources/css/multipleImageSlider.css" rel="stylesheet" />
<link href="resources/css/earlyBirdContainer.css" rel="stylesheet" />
<link href="resources/css/dropdown.css" rel="stylesheet" />
<link rel="shortcut icon" href="resources/images/kurlyTop.png" />


</head>
<body>
	<div id="container">
		<jsp:include page="WEB-INF/views/top.jsp"></jsp:include>

		<div class="main">
			<div class="carousel-container">
				<div class="carousel-slide">
					<img src="resources/images/mainSlider3.PNG" id="lastClone" /> <img
						src="resources/images/mainSlider1.PNG" /> <img
						src="resources/images/mainSlider2.PNG" /> <img
						src="resources/images/mainSlider3.PNG" /> <img
						src="resources/images/mainSlider1.PNG" id="firstClone" />
				</div>
				<button id="prevBtn"></button>
				<button id="nextBtn"></button>
			</div>

			<div class="howAbout">
				<h2 class="how">이 상품 어때요?</h2>
				<section class="regular slider">
					<div>
						<a id="index_a1" href="#"><img id="index_image1"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name1">상품명</div>
						<del id="index_goods_Bprice1">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice1">가격</div>
					</div>
					<div>
						<a id="index_a2" href="#"><img id="index_image2"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name2">상품명</div>
						<del id="index_goods_Bprice2">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice2">가격</div>
					</div>
					<div>
						<a id="index_a3" href="#"><img id="index_image3"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name3">상품명</div>
						<del id="index_goods_Bprice3">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice3">가격</div>
					</div>
					<div>
						<a id="index_a4" href="#"><img id="index_image4"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name4">상품명</div>
						<del id="index_goods_Bprice4">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice4">가격</div>
					</div>
					<div>
						<a id="index_a5" href="#"><img id="index_image5"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name5">상품명</div>
						<del id="index_goods_Bprice5">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice5">가격</div>
					</div>
					<div>
						<a id="index_a6" href="#"><img id="index_image6"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name6">상품명</div>
						<del id="index_goods_Bprice6">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice6">가격</div>
					</div>
				</section>
				<br /> <br /> <br />
			</div>

			<div class="earlyBirdContainer">
				<div class="earlyBirdText">
					<br/><strong>설 얼리버드 특가</strong><br/><br/>ㅡ<br/><br/>
					<br/><span>설날까지 매일 진행되는 24시간 한정 특가</span><br/><br/><br />
					⏰ 망설이면 늦어요!<br/>
				</div>
				<div class="earlyBirdPic">
					<a id="index_a25" href="#"><img id="index_image25"
						src="http://placehold.it/600x400?text=1"/></a>
					<div id="index_goods_name25">상품명</div>
					<del id="index_goods_Bprice25">원래가격 : </del>
					<br/>
					<div id="index_goods_Pprice25">가격</div>
				</div>
				<br/><br/><br/><br />
			</div>

			<div class="eventNews" style="background-color: #f2f2f2">
				<br /> <br />
				<h2>이벤트 소식 ></h2>
				<section class="regular2 slider">
					<div>
						<a id="index_a7" href="#"><img id="index_image7"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name7">상품명</div>
						<del id="index_goods_Bprice7">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice7">가격</div>
					</div>
					<div>
						<a id="index_a8" href="#"><img id="index_image8"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name8">상품명</div>
						<del id="index_goods_Bprice8">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice8">가격</div>
					</div>
					<div>
						<a id="index_a9" href="#"><img id="index_image9"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name9">상품명</div>
						<del id="index_goods_Bprice9">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice9">가격</div>
					</div>
					<div>
						<a id="index_a10" href="#"><img id="index_image10"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name10">상품명</div>
						<del id="index_goods_Bprice10">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice10">가격</div>
					</div>
					<div>
						<a id="index_a11" href="#"><img id="index_image11"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name11">상품명</div>
						<del id="index_goods_Bprice11">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice11">가격</div>
					</div>
					<div>
						<a id="index_a12" href="#"><img id="index_image12"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name12">상품명</div>
						<del id="index_goods_Bprice12">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice12">가격</div>
					</div>
				</section>
				<br /> <br /> <br />
			</div>

			<div class="AlttlProducet">
				<br /> <br />
				<h2>알뜰 상품</h2>
				<section class="regular slider">
					<div>
						<a id="index_a13" href="#"><img id="index_image13"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name13">상품명</div>
						<del id="index_goods_Bprice13">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice13">가격</div>
					</div>
					<div>
						<a id="index_a14" href="#"><img id="index_image14"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name14">상품명</div>
						<del id="index_goods_Bprice14">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice14">가격</div>
					</div>
					<div>
						<a id="index_a15" href="#"><img id="index_image15"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name15">상품명</div>
						<del id="index_goods_Bprice15">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice15">가격</div>
					</div>
					<div>
						<a id="index_a16" href="#"><img id="index_image16"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name16">상품명</div>
						<del id="index_goods_Bprice16">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice16">가격</div>
					</div>
					<div>
						<a id="index_a17" href="#"><img id="index_image17"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name17">상품명</div>
						<del id="index_goods_Bprice17">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice17">가격</div>
					</div>
					<div>
						<a id="index_a18" href="#"><img id="index_image18"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name18">상품명</div>
						<del id="index_goods_Bprice18">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice18">가격</div>
					</div>
				</section>
				<br /> <br /> <br />
			</div>

			<div class="newProduct">
				<h2>오늘의 신상품 ></h2>
				<section class="regular slider">
					<div>
						<a id="index_a19" href="#"><img id="index_image19"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name19">상품명</div>
						<del id="index_goods_Bprice19">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice19">가격</div>
					</div>
					<div>
						<a id="index_a20" href="#"><img id="index_image20"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name20">상품명</div>
						<del id="index_goods_Bprice20">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice20">가격</div>
					</div>
					<div>
						<a id="index_a21" href="#"><img id="index_image21"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name21">상품명</div>
						<del id="index_goods_Bprice21">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice21">가격</div>
					</div>
					<div>
						<a id="index_a22" href="#"><img id="index_image22"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name22">상품명</div>
						<del id="index_goods_Bprice22">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice22">가격</div>
					</div>
					<div>
						<a id="index_a23" href="#"><img id="index_image23"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name23">상품명</div>
						<del id="index_goods_Bprice23">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice23">가격</div>
					</div>
					<div>
						<a id="index_24" href="#"><img id="index_image24"
							src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name24">상품명</div>
						<del id="index_goods_Bprice24">원래가격 : </del>
						<br />
						<div id="index_goods_Pprice24">가격</div>
					</div>
				</section>
				<br /> <br /> <br />
			</div>
		</div>


		<jsp:include page="WEB-INF/views/bottom.jsp"></jsp:include>

		<script type="text/javascript"
			src="//code.jquery.com/jquery-1.11.0.min.js"></script>
		<script type="text/javascript"
			src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
		<script type="text/javascript" src="resources/js/slick.min.js"></script>
		<script type="text/javascript" id="multiSlider">
			$(document).on('ready',function() {
				// 상품 : 6개 * 4 24개를 가져와서 
				// 상품 넣고 ajax 처리. 
				$.ajax({
					type : "get",
					url : "goodsRandom",
					dataType : "json",
					data : {"num" : 25},
					success : function(goodsList) {
					//alert(goodsList.datas);
					let list = goodsList.datas;
					$(list).each(function(idx, dto) {
										// alert(idx); 0 ~ 17
					idx++;
					let img = "resources/images/goods/"+ dto["goods_img"];					
					let resultPrice = Number(dto["goods_price"])* (100 - Number(dto["goods_discountRate"]))/ 100;					
					let link = "goods?goods_id="+ dto["goods_id"];resultPrice += "원";					

					$("#index_a"+ idx).attr("href",link);					
					$("#index_image"+ idx).attr("src",img);					
					$("#index_goods_name"+ idx).text(dto["goods_name"]);					
					$("#index_goods_Bprice" + idx).text(dto["goods_price"]+ "원");					
					$("#index_goods_Pprice" + idx).text(resultPrice);});	
					},
					error : function() {}
					});

			$(".regular").slick({
				dots : false,
				infinite : true,
				slidesToShow : 4,
				slidesToScroll : 1
			});

			$(".regular2").slick({
				dots : true,
				infinite : true,
				slidesToShow : 3,
				slidesToScroll : 1
			});

		});
		</script>
		<script src="resources/js/slider.js"></script>

	</div>

</body>
</html>