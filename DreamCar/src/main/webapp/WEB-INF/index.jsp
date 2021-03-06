﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="app" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>首页|汽车维修美容 | 维修服务、保养服务、钣金喷漆、AMG改装、加装服务、高档美容</title>	

<!-- Favicons -->
<link rel="shortcut icon" href="assets/images/favicon/dream-favicon.png" />
<link rel="apple-touch-icon" href="assets/images/favicon/dream-favicon.png" />

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700|Raleway:300,400,500,600,700,800,900|Roboto:300,400,500,700" rel="stylesheet">

<!-- =>> All Stylesheet <<= -->
<!-- Bootstrap v3.3.6 Core CSS-->
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />  
<!-- Owl Carousel 2 -->
<link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.css" />
<link rel="stylesheet" type="text/css" href="assets/css/owl.theme.default.css" />
<!-- jquery-ui-1.12.0 CSS -->
<link rel="stylesheet" type="text/css" href="assets/css/jquery-ui-css/jquery-ui-1.12.0.min.css" />
<!-- Noice Slider (Price Range) -->
<link rel="stylesheet" type="text/css" href="assets/css/jquery.nouislider.min.css" />
<!-- Animate 3.5.1 CSS -->
<link rel="stylesheet" type="text/css" href="assets/css/animate.min.css" />
<!--  Font Awesome 4.6.3 Icons -->
<link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css" />
<!-- Flat Icons -->
<link rel="stylesheet" type="text/css" href="assets/flaticons/font/flaticon.css" />

<!-- Custom/Main Stylesheets -->
<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
<link rel="stylesheet" type="text/css" href="assets/css/header-menu-responsive.css" />
<link rel="stylesheet" type="text/css" href="assets/css/responsive.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
	<script src="${app}/assets/echarts/echarts.js"></script>
	<script src="${app}/assets/echarts/bmap.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=RZTIbTkh0xcwrggMNGsLHRHD8gTICk5n"></script>

	<style type="text/css">
		#huan{text-align: center}
	</style>
</head>

<body>

<!-- ALL SECTION INCLOSED TO THE WRAPPER -->
<div class="wrapper">
	<!-- BEGIN LOADING -->
	<div id="loader" class="loader">
		<div class="implode">
			<div class="implode-in">
				<div id="cover" class="acting"> 
					<span></span> 
					<span></span> 
					<span></span> 
					<span></span> 
					<span></span> 
					<span></span> 
					<span></span>
				</div>
			</div>
		</div> <!-- /.implode -->
	</div> <!-- /#loader -->
	<!-- END LOADING -->
		
	<!-- HEADER AREA START -->
	<header class="header fixed">
		<!-- Header Top Begin -->
		<div class="header-top hidden-xs hidden-sm">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-3 col-lg-5">
						<div class="social-to">
							<!--<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							</ul>-->
							<ul>
								<li><a href="#">欢迎来到, DREAM CAR汽车俱乐部！为您提供一站式汽车服务~</a></li>
							</ul>
							
						</div> <!-- /.social-to -->
					</div> <!-- /.col- -->
					<div class="col-xs-12 col-sm-12 col-md-9 col-lg-7">
						<div class="contact-to">
							<div class="contact-text">
								<ul>
									<!--<li><a href="#"><i class="fa fa-map-marker"></i>登录</a></li>
									<li><a href="#"><i class="fa fa-mobile-phone"></i>注册</a></li>
									<li><a href="#"><i class="fa fa-clock-o"></i>Mon - Sat  10.00 - 19.00</a></li>-->
									<c:if test="${ empty sessionScope.user }">
									<li><a href="/tologin"><i class="fa fa-map-marker"></i>登录</a></li>
									<li><a href="/toregist"><i class="fa fa-mobile-phone"></i>注册</a></li>
									</c:if>
									<c:if test="${ !(empty sessionScope.user) }">
										<a style="color:#fff">${ user.username } ：您好 &nbsp;&nbsp;&nbsp;</a>
										<a href="/logout">退出</a> &nbsp;&nbsp;&nbsp;
										<a href="/tobacklogin">后台</a>
									</c:if>


								</ul>
							</div>
						</div> <!-- /.contact-to -->
					</div> <!-- /.col- -->
				</div> <!-- /.row -->
			</div> <!-- /.container -->
		</div> <!-- /.header-top -->

		<!-- Main Menu Area Begin -->
		<div class="container">		
			<div class="main-menu-deputy">
				<!-- Navbar visibility controls (<800px) -->
				<div class="menu-when-collapse"></div>
				<div class="menu-collapse-after-effect"></div>
				<div class="logo">
					<a href="index.html">
						<img src="assets/images/logo/logo.png" alt="Logo">
					</a>
				</div><!-- /.logo -->
			</div><!-- /.main-menu-deputy -->
			<div class="main-menu">
				<div class="close-nav"></div> <!-- Close the menu for mobile -->				
				<ul class="main-nav">
					<li><a href="index">首页</a></li>
					<li><a href="overview">服务项目</a></li>
					<li><a href="property">产品中心</a></li>
                    <li><a href="toactive">社区活动</a></li>
                    <li><a href="single">关于我们</a></li>
					<li><a href="contact">在线预约</a></li>
				</ul><!-- /.main-nav -->



				<!--  Header Top visibility controls (=<991px) -->
				<div class="header-top visible-xs visible-sm">
					<div class="visible-xs visible-sm">
						<div class="social-to">
							<ul>
								<li><a href="#">欢迎来到, DREAM CAR汽车俱乐部！为您提供一站式汽车服务~</a></li>
							</ul>
						</div> <!-- /.social-to -->
					</div> <!-- /.col- -->
					<div class="visible-xs visible-sm">
						<div class="contact-to">
							<div class="contact-text">
								<ul>
                                    <c:if test="${ empty sessionScope.user }">
                                        <li><a href="/tologin"><i class="fa fa-map-marker"></i>登录</a></li>
                                        <li><a href="/toregist"><i class="fa fa-mobile-phone"></i>注册</a></li>
                                    </c:if>
                                    <c:if test="${ !(empty sessionScope.user) }">
                                        <a style="color:#fff;" href="/tobacklogin">  ${ user.username } ：您好,&nbsp; </a>
                                        <a href="/logout">退出</a>
                                    </c:if>
								</ul>
							</div>
						</div> <!-- /.contact-to -->
					</div> <!-- /.col- -->
				</div> <!-- /.header-top -->
			</div><!-- /.main-menu -->
		</div><!-- /.container -->
		<!-- Main Menu Area End -->
	</header><!-- /.header -->
	<!-- /HEADER AREA END -->


	<!-- MAIN SLIDER AND PROPERTY SEARCH AREA START-->
	<section id="main-slider" class="carousel main-slider">
		<div class="carousel slide">
			<div class="carousel-inner">

				<div class="item active item-bg-1">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="slider-items">
									<div class="animation animated-item-4">
										<!-- Only Slider Top Style -->
										<div class="slider-head-style">
										</div>
									</div>
									<div class="mian-heading">
										<h2>超越 <span class="typed-from-js"></span></h2>
										<div class="main-title">
											<h3>与您同行</h3>
											<strong></strong> <!-- Use for heading after effect -->
										</div>
									</div>
								</div> <!-- /.slider-items -->
							</div>
						</div>
					</div>
				</div> <!--/.item--> 
				<div class="item item-bg-2">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="slider-items">
									<div class="animation animated-item-4">
										<!-- Only Slider Top Style -->
										<div class="slider-head-style">
										</div>
									</div>
									<div class="mian-heading">
										<h2>超越 <span class="typed-from-js"></span></h2>
										<div class="main-title">
											<h3>与您同行</h3>
											<strong></strong> <!-- Use for heading after effect -->
										</div>
									</div>
								</div> <!-- /.slider-items -->
							</div>
						</div>
					</div>
				</div> <!--/.item--> 
				<div class="item item-bg-3">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="slider-items">
									<div class="animation animated-item-4">
										<!-- Only Slider Top Style -->
										<div class="slider-head-style">
										</div>
									</div>
									<div class="mian-heading">
										<h2>超越 <span class="typed-from-js"></span></h2>
										<div class="main-title">
											<h3>与您同行</h3>
											<strong></strong> <!-- Use for heading after effect -->
										</div>
									</div>
								</div> <!-- /.slider-items -->
							</div>
						</div>
					</div>
				</div> <!--/.item--> 

				<!-- Property Search Area Start -->
				<div class="property-search-area container">
					<div class="property-search-form ">
						<div class="advanced-search-sec row">
							<form method="get" action="/property">
								<div class="col-xs-12 col-sm-6 col-md-me-15 col-lg-me-17 search-field">
									<label for="property-location">销售区域</label>
									<select id="property-location" name="Cities">
										<option value="0">所有城市</option>
										<option value="1">北京</option>
										<option value="2">上海</option>
										<option value="3">广州</option>
										<option value="4">重庆</option>
										<option value="5">杭州</option>
									</select>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-me-15 col-lg-me-17 search-field">
									<label for="proeprty-type">品牌</label>
									<select id="proeprty-type" name="Property-type">
										<option value="0">所有品牌</option>
										<option value="1">上汽大众</option>
										<option value="2">别克</option>
										<option value="3">宝马</option>
										<option value="4">名爵</option>
										<option value="5">现代</option>
									</select>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-me-13 col-lg-me-13 search-field">
									<label for="property-room">排量</label>
									<select id="property-room" name="Total-room">
										<option value="0">全部</option>
										<option value="1">1.0L</option>
										<option value="2">1.4L</option>
										<option value="3">1.5L</option>
										<option value="4">1.6L</option>
										<option value="5">1.8L</option>
										<option value="6">2.0L</option>
										<option value="7">2.4L</option>
										<option value="8">2.5L</option>
									</select>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-me-13 col-lg-me-13 search-field">
									<label for="property-bathroom">内外饰品</label>
									<select id="property-bathroom" name="Bathrooms">
										<option value="0">所有饰品</option>
										<option value="1">方向盘套</option>
										<option value="2">坐垫</option>
										<option value="3">车载充气床</option>
										<option value="4">个性创意</option>
										<option value="5">儿童专用</option>
										<option value="6">其他</option>
									</select>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-me-29 col-lg-me-25 search-field">
									<div class="price-range">
										<div class="property-price">
											<label>价格区间</label>
											<div class="price-range">
												<div class="price-input-count">
													<input type="text" name="price min" id="price-min" />
												</div>
												<span class="price-money">-</span>
												<div class="price-input-count">
													<input type="text" name="price max" id="price-max" />
												</div>
											</div>
											<div class="price-range-select">
												<div class="priceSlider"></div>
											</div>
										</div> <!-- /.property-price -->
									</div> <!-- /.price-range -->
								</div>
								<div class="col-xs-12 col-sm-6 col-md-me-15 col-lg-me-15 search-field">
									<div class="submit">
										<button type="submit" value="Search" class="dream-btn">搜索</button>
									</div>
								</div>
							</form>
						</div> <!-- /.advanced-search-sec -->
						<!-- Show or Hide Property -->
						<a class="more-options close-element"></a>
					</div>
				</div> <!-- /.property-search-area -->
				<!-- Property Search Area End -->
			</div> <!-- /.carousel-inner -->
		</div> <!--/.carousel--> 
		<a class="prev hidden-xs" href="#main-slider" data-slide="prev"> 
			<i class="fa fa-long-arrow-left"></i>
		</a> 
		<a class="next hidden-xs" href="#main-slider" data-slide="next"> 
			<i class="fa fa-long-arrow-right"></i> 
		</a> 
	</section> <!-- /.main-slider -->
	<!-- /MAIN SLIDER AND PROPERTY SEARCH AREA START --> 

	<!-- RENEWAL AREA START -->
	<section class="renewal">
		<div class="container">	
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<div class="renewal-items">
						<div class="renewal-icon">
							<i class="flaticon-house"></i>
						</div>
						<div class="title">
							<h3><a href="#">安全智能 防撞系统</a></h3>
						</div>
						<div class="content">
							<p>欧美家汽车智能防撞控制系统安装在车辆上可供驾驶人员自由选择使用。</p>
						</div>
						<!--<div class="renewal-btn">
							<a href="#" class="fresh-btn">Read more</a>
						</div>-->
					</div> <!-- /.renewal-items -->
				</div> <!-- /.col- -->
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<div class="renewal-items">
						<div class="renewal-icon">
							<i class="flaticon-burj-al-arab-1"></i>
						</div>
						<div class="title">
							<h3><a href="#">原厂品质 正品配件</a></h3>
						</div>
						<div class="content">
							<p>产品均由专业的整车配件厂家生产，正厂配件。</p>
						</div>
						<!--<div class="renewal-btn">
							<a href="#" class="fresh-btn">Read more</a>
						</div>-->
					</div> <!-- /.renewal-items -->
				</div> <!-- /.col- -->
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<div class="renewal-items">
						<div class="renewal-icon">
							<i class="flaticon-mansion"></i>
						</div>
						<div class="title">
							<h3><a href="#">全里程保养保障</a></h3>
						</div>
						<div class="content">
							<p>国内领先的全新互动式体验型“检测+保养”汽车深化保养解决方案，让你享受全程无忧的汽车11大系统深化保养</p>
						</div>
						<!--<div class="renewal-btn">
							<a href="#" class="fresh-btn">Read more</a>
						</div>-->
					</div> <!-- /.renewal-items -->
				</div> <!-- /.col- -->
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<div class="renewal-items">
						<div class="renewal-icon">
							<i class="flaticon-cityscape"></i>
						</div>
						<div class="title">
							<h3><a href="#">高性价比</a></h3>
						</div>
						<div class="content">
							<p>汽车性价比就是：价格更低、空间最大(车长)、外形更华丽、内饰更豪华、电子设备多多益善!</p>
						</div>
						<!--<div class="renewal-btn">
							<a href="#" class="fresh-btn">Read more</a>
						</div>-->
					</div> <!-- /.renewal-items -->
				</div> <!-- /.col- -->
			</div> <!-- /.row -->  
		</div> <!-- /.container -->
	</section> <!-- /.renewal -->
	<!-- /RENEWAL AREA END -->

	<!-- ROOM FEATURE AREA START -->
	<section class="room-feature">
		<div class="bg-img-over-effect"></div>
		<div class="container">	
			<div class="section-heading if-bg-colorful">
				<h5></h5>
				<div class="main-title">
					<h2><span>引领时代</span>  驾驭未来 </h2>
					<strong></strong> <!-- Use for heading after effect -->
				</div>
			</div> <!-- /.section-heading -->
			<div class="room-feature-all">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div class="feature-content wow fadeInLeft">
							<h3>公司简介</h3>
							<p>
汽车有限公司成立于XXX年XX月XX日，是本地区唯一的授权销售服务中心和特约售后服务中心。主要从事多种品牌的整车销售、 售后服务、配件供应及信息反馈业务。
 
公司秉承 “尊荣无限 至上体验”的服务理念，培养更主动贴心的服务意识,追求更周到便捷的服务水准，让每一位车主，都体验到管家般的细致专业，享受到待为贵宾般的尊崇体验公司秉承 “尊荣无限 至上体验”的服务理念，培养更主动贴心的服务意识,追求更周到便捷的服务水准，让每一位车主，都体验到管家般的细致专业，享受到待为贵宾般的尊崇体验……</p>
							<div class="room-feature-btn">
								<a href="#" class="dream-btn">查看详情</a>
							</div>
						</div> <!-- /.feature-content -->
					</div> <!-- /.col- -->
					<!-- Room Slider Begin -->
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div id="room-slider" class="carousel slide room-slider wow fadeInRight" data-ride="carousel" data-interval="3000">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#room-slider" data-slide-to="0" class="active"></li>
								<li data-target="#room-slider" data-slide-to="1"></li>
								<li data-target="#room-slider" data-slide-to="2"></li>
							</ol>
							<!-- Wrapper for slides (Vertical) -->
							<div class="carousel-inner vertical" role="listbox">
								<div class="item active item-bg-1">
									<div class="bg-img-over-effect"></div>
									<div class="slider-in-room">
										<div class="content">
											<h3>品牌诞生</h3>
											<p>XXXX年，XXXX在美国密西根州的弗林特市创立了XX汽车公司，并建立了XX的第一座汽车工厂。</p>
										</div>
										<!--<div class="slider-meta">
											<div class="info">
												<span class="building">
													<img src="assets/images/icons/building.png" alt="icon">
													<a href="#">60m</a>
												</span>
												<span class="technology">                                            
													<img src="assets/images/icons/technology.png" alt="icon">
													<a href="#">4</a>
												</span>
												<span class="bath"> 
													<img src="assets/images/icons/bath.png" alt="icon">
													<a href="#">2</a>
												</span>
											</div>
											<div class="price">
												<a href="#" class="price-btn">$2000</a>
											</div>
										</div> --><!-- /.slider-meta -->
									</div> <!-- /.slider-in-room -->
								</div> <!-- /.item -->
								<div class="item item-bg-2">
									<div class="bg-img-over-effect"></div>
									<div class="slider-in-room">
										<div class="content">
											<h3>首台概念车</h3>
											<p>好莱坞的传奇设计师，打造出了汽车史上的首台概念车，从此将汽车造型从单纯的工业设计带入了艺术殿堂。</p>
										</div>
										<!--<div class="slider-meta">
											<div class="info">
												<span class="building">
													<img src="assets/images/icons/building.png" alt="Iocn">
													<a href="#">60m</a>
												</span>
												<span class="technology">                                            
													<img src="assets/images/icons/technology.png" alt="Iocn">
													<a href="#">4</a>
												</span>
												<span class="bath"> 
													<img src="assets/images/icons/bath.png" alt="Iocn">
													<a href="#">2</a>
												</span>
											</div>
											<div class="price">
												<a href="#" class="price-btn">$2000</a>
											</div>
										</div>--> <!-- /.slider-meta -->
									</div> <!-- /.slider-in-room -->
								</div> <!-- /.item -->
								<div class="item item-bg-3">
									<div class="slider-in-room">
									<div class="bg-img-over-effect"></div>
										<div class="content">
											<h3>出口北美世界</h3>
											<p>出口包括美国、加拿大、墨西哥的三大市场，这也是上汽通用汽车首次实现对美国本土的整车出口。</p>
										</div>
										<!--<div class="slider-meta">
											<div class="info">
												<span class="building">
													<img src="assets/images/icons/building.png" alt="Iocn">
													<a href="#">60m</a>
												</span>
												<span class="technology">                                            
													<img src="assets/images/icons/technology.png" alt="Iocn">
													<a href="#">4</a>
												</span>
												<span class="bath"> 
													<img src="assets/images/icons/bath.png" alt="Iocn">
													<a href="#">2</a>
												</span>
											</div>
											<div class="price">
												<a href="#" class="price-btn">$2000</a>
											</div>
										</div> --><!-- /.slider-meta -->
									</div> <!-- /.slider-in-room -->
								</div> <!-- /.item -->
							</div> <!-- /.carousel-inner -->
						</div> <!-- /#room-slider -->
					</div> <!-- /.col- -->
				</div> <!-- /.row -->  
			</div> <!-- /.room-feature-all -->
		</div> <!-- /.container -->
	</section> <!-- /.room-feature -->
	<!-- /ROOM FEATURE AREA END -->

	<!-- OUR TEAM AREA START -->
	<section class="our-team">
		<div class="container">
			<div class="section-heading">
				<h5></h5>
				<div class="main-title">
					<h2><span>我们</span> 团队</h2>
					<strong></strong> <!-- Use for heading after effect -->
				</div>
			</div> <!-- /.section-heading -->
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<div class="team-members">
						<img src="assets/images/team/1.jpg" alt="Team Member">
						<div class="member-name">
							<h3>销售经理</h3>
						</div><!-- /.member-name -->
						<div class="member-hover">
							<div class="member-info">
								<h3>销售经理</h3>
								<a href="#"></a>
								<div class="member-social">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-instagram"></i></a></li>
									</ul>
								</div>
							</div>
						</div><!-- /.member-hover -->
					</div> <!-- /.team-members -->
				</div> <!-- /.col -->
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<div class="team-members">
						<img src="assets/images/team/2.jpg" alt="Team Member">
						<div class="member-name">
							<h3>销售顾问</h3>
						</div><!-- /.member-name -->
						<div class="member-hover">
							<div class="member-info">
								<h3>销售顾问</h3>
								<a href="#"></a>
								<div class="member-social">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-instagram"></i></a></li>
									</ul>
								</div>
							</div>
						</div><!-- /.member-hover -->
					</div> <!-- /.team-members -->
				</div> <!-- /.col -->
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<div class="team-members">
						<img src="assets/images/team/3.jpg" alt="Team Member">
						<div class="member-name">
							<h3>维修师傅</h3>
						</div><!-- /.member-name -->
						<div class="member-hover">
							<div class="member-info">
								<h3>维修师傅</h3>
								<a href="#"></a>
								<div class="member-social">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-instagram"></i></a></li>
									</ul>
								</div>
							</div>
						</div><!-- /.member-hover -->
					</div> <!-- /.team-members -->
				</div> <!-- /.col -->
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<div class="team-members">
						<img src="assets/images/team/4.jpg" alt="Team Member">
						<div class="member-name">
							<h3>售后客服</h3>
						</div><!-- /.member-name -->
						<div class="member-hover">
							<div class="member-info">
								<h3>售后客服</h3>
								<a href="#"></a>
								<div class="member-social">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-instagram"></i></a></li>
									</ul>
								</div>
							</div>
						</div><!-- /.member-hover -->
					</div> <!-- /.team-members -->
				</div> <!-- /.col -->
			</div><!-- row -->
		</div><!-- container -->
	</section> <!-- /.our-team -->
	<!-- /OUR TEAM AREA END -->

	<!-- TESTIMONIAL AREA START -->
	<section class="testimonial">
		<div class="bg-img-over-effect"></div>
		<div class="container">
			<div class="section-heading if-bg-colorful">
				<h5></h5>
				<div class="main-title">
					<h2><span>客户</span> 见证</h2>
					<strong></strong> <!-- Use for heading after effect -->
				</div>
			</div> <!-- /.section-heading -->
			<div class="row">
				<div id="testimonial-carousel" class="carousel slide" data-interval="3000" data-ride="carousel">
					<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 col-xs-offset-0 col-sm-offset-0 col-md-offset-2 col-lg-offset-2">
						<div class="carousel-inner">
							<!-- Carousel items -->
							<div class="item active">
								<div class="client-opition">
									<div class="row">
										<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
											<div class="client-thumb">
												<img src="assets/images/client/1.jpg" alt="Client">
											</div>
										</div>
										<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
											<div class="client-focus">
												<div class="client-mind">
													<h4>一嗨租车</h4>
												</div>
												<div class="designation">
													<h5>采购部</h5>
												</div>
												<div class="feedback">
													<img src="assets/images/icons/5star.png" alt="feedback">
												</div>
											</div> <!-- /.client-focus -->
										</div>
									</div> <!-- /.row -->
								</div> <!-- /.client-opition -->
								<div class="client-said">
									<p>DREAM CAR 的专业服务，良好的驾车体验，高性价比，是我们必选的理由！</p>
									<div class="signature">
										<img src="assets/images/client/signature.png" alt="Signature">
									</div>
								</div> <!-- /.client-said -->
							</div> <!-- /.item -->
							<div class="item">
								<div class="client-opition">
									<div class="row">
										<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
											<div class="client-thumb">
												<img src="assets/images/client/2.jpg" alt="Client">
											</div>
										</div>
										<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
											<div class="client-focus">
												<div class="client-mind">
													<h4>滴滴出行</h4>
												</div>
												<div class="designation">
													<h5>运维部</h5>
												</div>
												<div class="feedback">
													<img src="assets/images/icons/5star.png" alt="feedback">
												</div>
											</div> <!-- /.client-focus -->
										</div>
									</div> <!-- /.row -->
								</div> <!-- /.client-opition -->
								<div class="client-said">
									<p>DREAM CAR 定期专业的保养维修服务，放心、省心，大大降低了保修事故率！</p>
									<div class="signature">
										<img src="assets/images/client/signature.png" alt="Signature">
									</div>
								</div> <!-- /.client-said -->
							</div> <!-- /.item -->
							<div class="item">
								<div class="client-opition">
									<div class="row">
										<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
											<div class="client-thumb">
												<img src="assets/images/client/3.jpg" alt="Client">
											</div>
										</div>
										<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
											<div class="client-focus">
												<div class="client-mind">
													<h4>首汽约车</h4>
												</div>
												<div class="designation">
													<h5>客户服务部</h5>
												</div>
												<div class="feedback">
													<img src="assets/images/icons/5star.png" alt="feedback">
												</div>
											</div> <!-- /.client-focus -->
										</div>
									</div> <!-- /.row -->
								</div> <!-- /.client-opition -->
								<div class="client-said">
									<p>DREAM CAR 为客户提供了舒适豪华的体验，得到了良好的反馈。</p>
									<div class="signature">
										<img src="assets/images/client/signature.png" alt="Signature">
									</div>
								</div> <!-- /.client-said -->
							</div> <!-- /.item -->
						</div> <!-- /.carousel-inner -->
					</div> <!-- /.col- -->
					<!-- Carousel nav -->
					<a class="carousel-control left" href="#testimonial-carousel" data-slide="prev">
						<i class="fa fa-long-arrow-left"></i>
					</a>
					<a class="carousel-control right" href="#testimonial-carousel" data-slide="next">
						<i class="fa fa-long-arrow-right"></i>
					</a>
				</div> <!-- /#testimonial-carousel -->
			</div> <!-- /.row -->
			<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
			<div id="huan" style="width: 100%;height:500px;"></div>
			<div class="section-heading if-bg-colorful">
				<h5></h5>
				<div class="main-title">
					<h2><span>会员</span> 分布</h2>
					<strong></strong> <!-- Use for heading after effect -->
				</div>
			</div> <!-- /.section-heading -->
		</div> <!-- /.container -->
	</section> <!-- /.testimonial-->
	<!-- /TESTIMONIAL AREA END -->
	<div id="map" style="width: 100%;height: 500px; align-content: center"></div>


	<%--环形图--%>
	<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('huan'));

        // 指定图表的配置项和数据
        var option = {

            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient : 'vertical',
                x : 'left',
                data:['劳斯莱斯','迈巴赫','宾利','玛莎拉蒂','兰博基尼','阿斯顿马丁','保时捷','法拉利','布加迪','其他']
            },
            toolbox: {
                show : true,
                feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    magicType : {
                        show: true,
                        type: ['pie', 'funnel']
                    },
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            calculable : false,
            series : [
                {
                    name:'访问来源',
                    type:'pie',
                    selectedMode: 'single',
                    radius : [0, 70],

                    // for funnel
                    x: '20%',
                    width: '40%',
                    funnelAlign: 'right',
                    max: 1548,

                    itemStyle : {
                        normal : {
                            label : {
                                position : 'inner'
                            },
                            labelLine : {
                                show : false
                            }
                        }
                    },
                    data:[
                        {value:335, name:'劳斯莱斯'},
                        {value:679, name:'迈巴赫'},
                        {value:1548, name:'宾利', selected:true}
                    ]
                },
                {
                    name:'访问来源',
                    type:'pie',
                    radius : [100, 140],

                    // for funnel
                    x: '60%',
                    width: '35%',
                    funnelAlign: 'left',
                    max: 1048,

                    data:<%--${cList}--%>


                    [

                    {value:335, name:'劳斯莱斯'},
                    {value:310, name:'玛莎拉蒂'},
                    {value:234, name:'兰博基尼'},
                    {value:135, name:'阿斯顿马丁'},
                    {value:1048, name:'保时捷'},
                    {value:251, name:'法拉利'},
                    {value:147, name:'布加迪'},
                    {value:102, name:'其他'}
               ]
                }
            ]


        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);


        var ecConfig = require('echarts/config');
        myChart.on(ecConfig.EVENT.PIE_SELECTED, function (param){
            var selected = param.selected;
            var serie;
            var str = '当前选择： ';
            for (var idx in selected) {
                serie = option.series[idx];
                for (var i = 0, l = serie.data.length; i < l; i++) {
                    if (selected[idx][i]) {
                        str += '【系列' + idx + '】' + serie.name + ' : ' +
                            '【数据' + i + '】' + serie.data[i].name + ' ';
                    }
                }
            }
            document.getElementById('wrong-message').innerHTML = str;
        })

	</script>
	<%--地图--%>
	<script>
        var myChart = echarts.init(document.getElementById('map'));

        var data = [
            {name: '海门', value: 9},
            {name: '鄂尔多斯', value: 12},
            {name: '招远', value: 12},
            {name: '舟山', value: 12},
            {name: '齐齐哈尔', value: 14},
            {name: '盐城', value: 15},
            {name: '赤峰', value: 16},
            {name: '青岛', value: 18},
            {name: '乳山', value: 18},
            {name: '金昌', value: 19},
            {name: '泉州', value: 21},
            {name: '莱西', value: 21},
            {name: '日照', value: 21},
            {name: '胶南', value: 22},
            {name: '南通', value: 23},
            {name: '拉萨', value: 24},
            {name: '云浮', value: 24},
            {name: '梅州', value: 25},
            {name: '文登', value: 25},
            {name: '上海', value: 25},
            {name: '攀枝花', value: 25},
            {name: '威海', value: 25},
            {name: '承德', value: 25},
            {name: '厦门', value: 26},
            {name: '汕尾', value: 26},
            {name: '潮州', value: 26},
            {name: '丹东', value: 27},
            {name: '太仓', value: 27},
            {name: '曲靖', value: 27},
            {name: '烟台', value: 28},
            {name: '福州', value: 29},
            {name: '瓦房店', value: 30},
            {name: '即墨', value: 30},
            {name: '抚顺', value: 31},
            {name: '玉溪', value: 31},
            {name: '张家口', value: 31},
            {name: '阳泉', value: 31},
            {name: '莱州', value: 32},
            {name: '湖州', value: 32},
            {name: '汕头', value: 32},
            {name: '昆山', value: 33},
            {name: '宁波', value: 33},
            {name: '湛江', value: 33},
            {name: '揭阳', value: 34},
            {name: '荣成', value: 34},
            {name: '连云港', value: 35},
            {name: '葫芦岛', value: 35},
            {name: '常熟', value: 36},
            {name: '东莞', value: 36},
            {name: '河源', value: 36},
            {name: '淮安', value: 36},
            {name: '泰州', value: 36},
            {name: '南宁', value: 37},
            {name: '营口', value: 37},
            {name: '惠州', value: 37},
            {name: '江阴', value: 37},
            {name: '蓬莱', value: 37},
            {name: '韶关', value: 38},
            {name: '嘉峪关', value: 38},
            {name: '广州', value: 38},
            {name: '延安', value: 38},
            {name: '太原', value: 39},
            {name: '清远', value: 39},
            {name: '中山', value: 39},
            {name: '昆明', value: 39},
            {name: '寿光', value: 40},
            {name: '盘锦', value: 40},
            {name: '长治', value: 41},
            {name: '深圳', value: 41},
            {name: '珠海', value: 42},
            {name: '宿迁', value: 43},
            {name: '咸阳', value: 43},
            {name: '铜川', value: 44},
            {name: '平度', value: 44},
            {name: '佛山', value: 44},
            {name: '海口', value: 44},
            {name: '江门', value: 45},
            {name: '章丘', value: 45},
            {name: '肇庆', value: 46},
            {name: '大连', value: 47},
            {name: '临汾', value: 47},
            {name: '吴江', value: 47},
            {name: '石嘴山', value: 49},
            {name: '沈阳', value: 50},
            {name: '苏州', value: 50},
            {name: '茂名', value: 50},
            {name: '嘉兴', value: 51},
            {name: '长春', value: 51},
            {name: '胶州', value: 52},
            {name: '银川', value: 52},
            {name: '张家港', value: 52},
            {name: '三门峡', value: 53},
            {name: '锦州', value: 54},
            {name: '南昌', value: 54},
            {name: '柳州', value: 54},
            {name: '三亚', value: 54},
            {name: '自贡', value: 56},
            {name: '吉林', value: 56},
            {name: '阳江', value: 57},
            {name: '泸州', value: 57},
            {name: '西宁', value: 57},
            {name: '宜宾', value: 58},
            {name: '呼和浩特', value: 58},
            {name: '成都', value: 58},
            {name: '大同', value: 58},
            {name: '镇江', value: 59},
            {name: '桂林', value: 59},
            {name: '张家界', value: 59},
            {name: '宜兴', value: 59},
            {name: '北海', value: 60},
            {name: '西安', value: 61},
            {name: '金坛', value: 62},
            {name: '东营', value: 62},
            {name: '牡丹江', value: 63},
            {name: '遵义', value: 63},
            {name: '绍兴', value: 63},
            {name: '扬州', value: 64},
            {name: '常州', value: 64},
            {name: '潍坊', value: 65},
            {name: '重庆', value: 66},
            {name: '台州', value: 67},
            {name: '南京', value: 67},
            {name: '滨州', value: 70},
            {name: '贵阳', value: 71},
            {name: '无锡', value: 71},
            {name: '本溪', value: 71},
            {name: '克拉玛依', value: 72},
            {name: '渭南', value: 72},
            {name: '马鞍山', value: 72},
            {name: '宝鸡', value: 72},
            {name: '焦作', value: 75},
            {name: '句容', value: 75},
            {name: '北京', value: 79},
            {name: '徐州', value: 79},
            {name: '衡水', value: 80},
            {name: '包头', value: 80},
            {name: '绵阳', value: 80},
            {name: '乌鲁木齐', value: 84},
            {name: '枣庄', value: 84},
            {name: '杭州', value: 84},
            {name: '淄博', value: 85},
            {name: '鞍山', value: 86},
            {name: '溧阳', value: 86},
            {name: '库尔勒', value: 86},
            {name: '安阳', value: 90},
            {name: '开封', value: 90},
            {name: '济南', value: 92},
            {name: '德阳', value: 93},
            {name: '温州', value: 95},
            {name: '九江', value: 96},
            {name: '邯郸', value: 98},
            {name: '临安', value: 99},
            {name: '兰州', value: 99},
            {name: '沧州', value: 100},
            {name: '临沂', value: 103},
            {name: '南充', value: 104},
            {name: '天津', value: 105},
            {name: '富阳', value: 106},
            {name: '泰安', value: 112},
            {name: '诸暨', value: 112},
            {name: '郑州', value: 113},
            {name: '哈尔滨', value: 114},
            {name: '聊城', value: 116},
            {name: '芜湖', value: 117},
            {name: '唐山', value: 119},
            {name: '平顶山', value: 119},
            {name: '邢台', value: 119},
            {name: '德州', value: 120},
            {name: '济宁', value: 120},
            {name: '荆州', value: 127},
            {name: '宜昌', value: 130},
            {name: '义乌', value: 132},
            {name: '丽水', value: 133},
            {name: '洛阳', value: 134},
            {name: '秦皇岛', value: 136},
            {name: '株洲', value: 143},
            {name: '石家庄', value: 147},
            {name: '莱芜', value: 148},
            {name: '常德', value: 152},
            {name: '保定', value: 153},
            {name: '湘潭', value: 154},
            {name: '金华', value: 157},
            {name: '岳阳', value: 169},
            {name: '长沙', value: 175},
            {name: '衢州', value: 177},
            {name: '廊坊', value: 193},
            {name: '菏泽', value: 194},
            {name: '合肥', value: 229},
            {name: '武汉', value: 273},
            {name: '大庆', value: 279}
        ];

        var geoCoordMap = {
            '海门':[121.15,31.89],
            '鄂尔多斯':[109.781327,39.608266],
            '招远':[120.38,37.35],
            '舟山':[122.207216,29.985295],
            '齐齐哈尔':[123.97,47.33],
            '盐城':[120.13,33.38],
            '赤峰':[118.87,42.28],
            '青岛':[120.33,36.07],
            '乳山':[121.52,36.89],
            '金昌':[102.188043,38.520089],
            '泉州':[118.58,24.93],
            '莱西':[120.53,36.86],
            '日照':[119.46,35.42],
            '胶南':[119.97,35.88],
            '南通':[121.05,32.08],
            '拉萨':[91.11,29.97],
            '云浮':[112.02,22.93],
            '梅州':[116.1,24.55],
            '文登':[122.05,37.2],
            '上海':[121.48,31.22],
            '攀枝花':[101.718637,26.582347],
            '威海':[122.1,37.5],
            '承德':[117.93,40.97],
            '厦门':[118.1,24.46],
            '汕尾':[115.375279,22.786211],
            '潮州':[116.63,23.68],
            '丹东':[124.37,40.13],
            '太仓':[121.1,31.45],
            '曲靖':[103.79,25.51],
            '烟台':[121.39,37.52],
            '福州':[119.3,26.08],
            '瓦房店':[121.979603,39.627114],
            '即墨':[120.45,36.38],
            '抚顺':[123.97,41.97],
            '玉溪':[102.52,24.35],
            '张家口':[114.87,40.82],
            '阳泉':[113.57,37.85],
            '莱州':[119.942327,37.177017],
            '湖州':[120.1,30.86],
            '汕头':[116.69,23.39],
            '昆山':[120.95,31.39],
            '宁波':[121.56,29.86],
            '湛江':[110.359377,21.270708],
            '揭阳':[116.35,23.55],
            '荣成':[122.41,37.16],
            '连云港':[119.16,34.59],
            '葫芦岛':[120.836932,40.711052],
            '常熟':[120.74,31.64],
            '东莞':[113.75,23.04],
            '河源':[114.68,23.73],
            '淮安':[119.15,33.5],
            '泰州':[119.9,32.49],
            '南宁':[108.33,22.84],
            '营口':[122.18,40.65],
            '惠州':[114.4,23.09],
            '江阴':[120.26,31.91],
            '蓬莱':[120.75,37.8],
            '韶关':[113.62,24.84],
            '嘉峪关':[98.289152,39.77313],
            '广州':[113.23,23.16],
            '延安':[109.47,36.6],
            '太原':[112.53,37.87],
            '清远':[113.01,23.7],
            '中山':[113.38,22.52],
            '昆明':[102.73,25.04],
            '寿光':[118.73,36.86],
            '盘锦':[122.070714,41.119997],
            '长治':[113.08,36.18],
            '深圳':[114.07,22.62],
            '珠海':[113.52,22.3],
            '宿迁':[118.3,33.96],
            '咸阳':[108.72,34.36],
            '铜川':[109.11,35.09],
            '平度':[119.97,36.77],
            '佛山':[113.11,23.05],
            '海口':[110.35,20.02],
            '江门':[113.06,22.61],
            '章丘':[117.53,36.72],
            '肇庆':[112.44,23.05],
            '大连':[121.62,38.92],
            '临汾':[111.5,36.08],
            '吴江':[120.63,31.16],
            '石嘴山':[106.39,39.04],
            '沈阳':[123.38,41.8],
            '苏州':[120.62,31.32],
            '茂名':[110.88,21.68],
            '嘉兴':[120.76,30.77],
            '长春':[125.35,43.88],
            '胶州':[120.03336,36.264622],
            '银川':[106.27,38.47],
            '张家港':[120.555821,31.875428],
            '三门峡':[111.19,34.76],
            '锦州':[121.15,41.13],
            '南昌':[115.89,28.68],
            '柳州':[109.4,24.33],
            '三亚':[109.511909,18.252847],
            '自贡':[104.778442,29.33903],
            '吉林':[126.57,43.87],
            '阳江':[111.95,21.85],
            '泸州':[105.39,28.91],
            '西宁':[101.74,36.56],
            '宜宾':[104.56,29.77],
            '呼和浩特':[111.65,40.82],
            '成都':[104.06,30.67],
            '大同':[113.3,40.12],
            '镇江':[119.44,32.2],
            '桂林':[110.28,25.29],
            '张家界':[110.479191,29.117096],
            '宜兴':[119.82,31.36],
            '北海':[109.12,21.49],
            '西安':[108.95,34.27],
            '金坛':[119.56,31.74],
            '东营':[118.49,37.46],
            '牡丹江':[129.58,44.6],
            '遵义':[106.9,27.7],
            '绍兴':[120.58,30.01],
            '扬州':[119.42,32.39],
            '常州':[119.95,31.79],
            '潍坊':[119.1,36.62],
            '重庆':[106.54,29.59],
            '台州':[121.420757,28.656386],
            '南京':[118.78,32.04],
            '滨州':[118.03,37.36],
            '贵阳':[106.71,26.57],
            '无锡':[120.29,31.59],
            '本溪':[123.73,41.3],
            '克拉玛依':[84.77,45.59],
            '渭南':[109.5,34.52],
            '马鞍山':[118.48,31.56],
            '宝鸡':[107.15,34.38],
            '焦作':[113.21,35.24],
            '句容':[119.16,31.95],
            '北京':[116.46,39.92],
            '徐州':[117.2,34.26],
            '衡水':[115.72,37.72],
            '包头':[110,40.58],
            '绵阳':[104.73,31.48],
            '乌鲁木齐':[87.68,43.77],
            '枣庄':[117.57,34.86],
            '杭州':[120.19,30.26],
            '淄博':[118.05,36.78],
            '鞍山':[122.85,41.12],
            '溧阳':[119.48,31.43],
            '库尔勒':[86.06,41.68],
            '安阳':[114.35,36.1],
            '开封':[114.35,34.79],
            '济南':[117,36.65],
            '德阳':[104.37,31.13],
            '温州':[120.65,28.01],
            '九江':[115.97,29.71],
            '邯郸':[114.47,36.6],
            '临安':[119.72,30.23],
            '兰州':[103.73,36.03],
            '沧州':[116.83,38.33],
            '临沂':[118.35,35.05],
            '南充':[106.110698,30.837793],
            '天津':[117.2,39.13],
            '富阳':[119.95,30.07],
            '泰安':[117.13,36.18],
            '诸暨':[120.23,29.71],
            '郑州':[113.65,34.76],
            '哈尔滨':[126.63,45.75],
            '聊城':[115.97,36.45],
            '芜湖':[118.38,31.33],
            '唐山':[118.02,39.63],
            '平顶山':[113.29,33.75],
            '邢台':[114.48,37.05],
            '德州':[116.29,37.45],
            '济宁':[116.59,35.38],
            '荆州':[112.239741,30.335165],
            '宜昌':[111.3,30.7],
            '义乌':[120.06,29.32],
            '丽水':[119.92,28.45],
            '洛阳':[112.44,34.7],
            '秦皇岛':[119.57,39.95],
            '株洲':[113.16,27.83],
            '石家庄':[114.48,38.03],
            '莱芜':[117.67,36.19],
            '常德':[111.69,29.05],
            '保定':[115.48,38.85],
            '湘潭':[112.91,27.87],
            '金华':[119.64,29.12],
            '岳阳':[113.09,29.37],
            '长沙':[113,28.21],
            '衢州':[118.88,28.97],
            '廊坊':[116.7,39.53],
            '菏泽':[115.480656,35.23375],
            '合肥':[117.27,31.86],
            '武汉':[114.31,30.52],
            '大庆':[125.03,46.58]
        };

        var convertData = function (data) {
            var res = [];
            for (var i = 0; i < data.length; i++) {
                var geoCoord = geoCoordMap[data[i].name];
                if (geoCoord) {
                    res.push({
                        name: data[i].name,
                        value: geoCoord.concat(data[i].value)
                    });
                }
            }
            return res;
        };


        option = {


            bmap: {
                center: [104.114129, 37.550339],
                zoom: 5,
                roam: true
            },

            visualMap: {	// 视觉映射组件
                type: 'continuous',
                min: 0,
                max: 200,
                calculable: true,
                inRange: {
                    color: ['#50a3ba','#eac736','#d94e5d']
                },
                textStyle: {
                    color: '#fff'
                }
            },

            series : [
                {
                    name: '会员数量',
                    type: 'scatter',
                    coordinateSystem: 'bmap',
                    data: convertData(data.sort(function (a, b) {
                        return b.value - a.value;
                    }).slice(0, 190)),



                    itemStyle: {
                        normal: {
                            color: '#ff0000',
                            shadowBlur: 10,
                            shadowColor: '#333'
                        }
                    }


                }
            ],
            mapStyle: {  // 百度地图自定义样式
                styleJson: [
                    // 陆地
                    {
                        "featureType": "land",
                        "elementType": "all",
                        "stylers": {
                            "color": "#073763"
                        }
                    },
                    // 水系
                    {
                        "featureType": "water",
                        "elementType": "all",
                        "stylers": {
                            "color": "#073763",
                            "lightness": -54
                        }
                    },
                    // 国道与高速
                    {
                        "featureType": "highway",
                        "elementType": "all",
                        "stylers": {
                            "color": "#45818e"
                        }
                    },
                    // 边界线
                    {
                        "featureType": "boundary",
                        "elementType": "all",
                        "stylers": {
                            "color": "#ffffff",
                            "lightness": -62,
                            "visibility": "on"
                        }
                    },
                    // 行政标注
                    {
                        "featureType": "label",
                        "elementType": "labels.text.fill",
                        "stylers": {
                            "color": "#ffffff",
                            "visibility": "on"
                        }
                    },
                    {
                        "featureType": "label",
                        "elementType": "labels.text.stroke",
                        "stylers": {
                            "color": "#444444",
                            "visibility": "on"
                        }
                    }
                ]
            }

        };

        myChart.setOption(option);
        // 获取百度地图实例，使用百度地图自带的控件
        var bmap = myChart.getModel().getComponent('bmap').getBMap();
        bmap.addControl(new BMap.MapTypeControl());
        bmap.addControl(new BMap.NavigationControl()); // 缩放控件
        bmap.addControl(new BMap.ScaleControl()); // 比例尺
        bmap.setMapStyle({style:'midnight'});

        //调用百度的方法，使用bmap对象
        var point = new BMap.Point(116.404, 39.915);
        bmap.centerAndZoom(point, 4);


	</script>


	<!-- SHOWCASE FEATURE AREA START -->
	<section class="showcase-feature">
		<div class="container">	
			<div class="section-heading">
				<h5></h5>
				<div class="main-title">
					<h2><span>产品</span> 展示</h2>
					<strong></strong> <!-- Use for heading after effect -->
				</div>
			</div> <!-- /.section-heading -->
			<div id="showcase-main-thumb-slider-section">
				<!-- Showcase Slider Main -->
				<div id="showcase-main-area-slider">
					<div class="items">
						<div class="img-pot" data-bg-img="assets/images/slider/showcase/1.jpg"></div>
					</div>
					<div class="items">
						<div class="img-pot" data-bg-img="assets/images/slider/showcase/2.jpg"></div>
					</div>
					<div class="items">
						<div class="img-pot" data-bg-img="assets/images/slider/showcase/3.jpg"></div>
					</div>
					<div class="items">
						<div class="img-pot" data-bg-img="assets/images/slider/showcase/4.jpg"></div>
					</div>
					<div class="items">
						<div class="img-pot" data-bg-img="assets/images/slider/showcase/5.jpg"></div>
					</div>
					<div class="items">
						<div class="img-pot" data-bg-img="assets/images/slider/showcase/6.jpg"></div>
					</div>
				</div> <!-- /#showcase-main-area-slider -->
				<!-- Showcase Slider Thumbnail -->
				<div id="showcase-thumb-slider">
					<div class="items">
						<div class="img-pot" data-bg-img="assets/images/slider/showcase/1.jpg"></div>
					</div>
					<div class="items">
						<div class="img-pot" data-bg-img="assets/images/slider/showcase/2.jpg"></div>
					</div>
					<div class="items">
						<div class="img-pot" data-bg-img="assets/images/slider/showcase/3.jpg"></div>
					</div>
					<div class="items">
						<div class="img-pot" data-bg-img="assets/images/slider/showcase/4.jpg"></div>
					</div>
					<div class="items">
						<div class="img-pot" data-bg-img="assets/images/slider/showcase/5.jpg"></div>
					</div>
					<div class="items">
						<div class="img-pot" data-bg-img="assets/images/slider/showcase/6.jpg"></div>
					</div>
				</div> <!-- /#showcase-thumb-slider -->
			</div> <!-- /#showcase-main-thumb-slider-section --> 
			<div class="showcase-btn">
				<a href="/property" class="dream-btn">查看</a>
			</div>
		</div> <!-- /.container -->
	</section> <!-- /.showcase-feature -->
	<!-- /SHOWCASE FEATURE AREA END -->

	<!-- FEATURES AREA START -->
	<section class="features">
		<div class="bg-img-over-effect"></div>
		<div class="container">	
			<div class="features-items">
				<ul>
					<li class="wow fadeInLeft">
						<a href="#"><i class="flaticon-armchair"></i></a>
						<h5>豪华配饰</h5>
					</li>
					<li class="wow zoomIn">
						<a href="#"><i class="flaticon-shield"></i></a>
						<h5>安全驾驶系统</h5>
					</li>
					<li class="wow zoomIn">
						<a href="#"><i class="flaticon-support"></i></a>
						<h5>24小时维修</h5>
					</li>
					<li class="wow fadeInRight">
						<a href="#"><i class="flaticon-command"></i></a>
						<h5>24小时客服</h5>
					</li>
				</ul>
			</div> <!-- /.features-items -->
		</div> <!-- /.container -->
	</section> <!-- /.features -->
	<!-- /FEATURES AREA END -->

	<!-- BLOG AREA START -->
	<section class="blog">
		<div class="container">	
			<div class="section-heading">
				<h5></h5>
				<div class="main-title">
					<h2><span>关于</span>我们</h2>
					<strong></strong> <!-- Use for heading after effect -->
				</div>
			</div> <!-- /.section-heading -->
			<div class="row">
				<div class="blog-list">
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
						<!-- post begin -->
						<article class="post-item border-right shadow-bottom-items">
							<div class="post-media">
								<img src="assets/images/featured/our-blog/1.jpg" alt="Featured">
							</div>
							<div class="post-inner border-around">
								<div class="post-metadata">
									<span class="user">
										<i class="flaticon-people-1"></i>
										<a href="#">作者</a>
									</span>
									<span class="date">
										<i class="flaticon-calendar-weekly"></i>
										<a href="#">Feb 19, 2016</a>
									</span>
									<span class="tag"> 
										<i class="flaticon-shop"></i>
										<a href="#">汽车新闻</a>
									</span>    
								</div> <!-- /.post-metadata -->
								<div class="post-content border-top">
									<div class="post-title">
										<h5><a href="blog-single.html">行业新闻</a></h5>
									</div>
									<div class="post-entry">
										<p>最新新闻最新新闻最新新闻最新新闻最新新闻最新新闻最新新闻最新新闻……</p>
									</div>
									<div class="post-about border-top">
										<a href="/single" class="read-more">查看更多</a>
									</div>
								</div> <!-- /.post-content -->
							</div> <!-- /.post-inner -->
						</article> <!-- /.post-item -->
					</div> <!-- /.col- -->
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
						<!-- post begin -->
						<article class="post-item border-right shadow-bottom-items">
							<div class="post-media">
								<img src="assets/images/featured/our-blog/2.jpg" alt="Featured">
							</div>
							<div class="post-inner border-around">
								<div class="post-metadata">
									<span class="user">
										<i class="flaticon-people-1"></i>
										<a href="#">作者</a>
									</span>
									<span class="date">
										<i class="flaticon-calendar-weekly"></i>
										<a href="#">Feb 19, 2016</a>
									</span>
									<span class="tag"> 
										<i class="flaticon-shop"></i>
										<a href="#">品牌活动</a>
									</span>    
								</div> <!-- /.post-metadata -->
								<div class="post-content border-top">
									<div class="post-title">
										<h5><a href="blog-single.html">品牌活动</a></h5>
									</div>
									<div class="post-entry">
										<p>品牌活动品牌活动品牌活动品牌活动品牌活动品牌活动品牌活动品牌活动……</p>
									</div>
									<div class="post-about border-top">
										<a href="/single" class="read-more">查看更多</a>
									</div>
								</div> <!-- /.post-content -->
							</div> <!-- /.post-inner -->
						</article> <!-- /.post-item -->
					</div> <!-- /.col- -->
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
						<!-- post begin -->
						<article class="post-item border-right shadow-bottom-items">
							<div class="post-media">
								<img src="assets/images/featured/our-blog/3.jpg" alt="Featured">
							</div>
							<div class="post-inner border-around">
								<div class="post-metadata">
									<span class="user">
										<i class="flaticon-people-1"></i>
										<a href="#">作者</a>
									</span>
									<span class="date">
										<i class="flaticon-calendar-weekly"></i>
										<a href="#">Feb 19, 2016</a>
									</span>
									<span class="tag"> 
										<i class="flaticon-shop"></i>
										<a href="#">经销商招募</a>
									</span>    
								</div> <!-- /.post-metadata -->
								<div class="post-content border-top">
									<div class="post-title">
										<h5><a href="blog-single.html">经销商招募</a></h5>
									</div>
									<div class="post-entry">
										<p>经销商经销商经销商经销商经销商经销商经销商经销商经销商经销商招募..</p>
									</div>
									<div class="post-about border-top">
										<a href="/single" class="read-more">查看更多</a>
									</div>
								</div> <!-- /.post-content -->
							</div> <!-- /.post-inner -->
						</article> <!-- /.post-item -->
					</div> <!-- /.col- -->
				</div> <!-- /.blog-list -->
			</div> <!-- /.row -->  
		</div> <!-- /.container -->
	</section> <!-- /.blog -->
	<!-- /BLOG AREA END -->

																																																													 
	<!-- FOOTER AREA START -->
	<footer class="footer" id="footer">
		<div class="footer-widget-area">
			<div class="container">	
				<div class="footer-widgets">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<div class="single-widget">
								<div class="widget-heading info-heading">
									<a href="index.html" class="logo-footer">
										<img src="assets/images/logo/logo-footer.png" alt="LogoFooter">
									</a>
								</div>
								<div class="widget-info">
									<p>我们为您提供集汽车内外装饰、汽车影音改装、汽车精品销售、汽车美容养护于一体的大型“一站式汽车服务”</p>
								</div> <!-- /.widget-info -->
							</div> <!-- /.single-widget -->
						</div> <!-- /.col- -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<div class="single-widget">
								<div class="widget-heading">
									<h3>热门搜索</h3>
								</div>
								<div class="widget-link">
									<ul>
										<li><a href="#">一汽大众</a></li>
										<li><a href="#">宝马</a></li>
										<li><a href="#">路虎</a></li>
										<li><a href="#">汽车配饰</a></li>
										<li><a href="#">预约体验</a></li>
									</ul>
								</div> <!-- /.widget-link -->
							</div> <!-- /.single-widget -->
						</div> <!-- /.col- -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<div class="single-widget">
								<div class="widget-heading">
									<h3>常见问题</h3>
								</div>
								<div class="widget-link">
									<ul>
										<li><a href="#">问题解答</a></li>
										<li><a href="#">服务支持</a></li>
										<li><a href="#">网站地图</a></li>
										<li><a href="#">关于我们</a></li>
										<li><a href="#">价格咨询</a></li>
									</ul>
								</div> <!-- /.widget-link -->
							</div> <!-- /.single-widget -->
						</div> <!-- /.col- -->
						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							<div class="single-widget">
								<div class="widget-heading">
									<h3>联系我们</h3>
								</div>
								<div class="widget-address">
									<address>
										<ul>
											<li>
												<div class="address-left">
													<p>办公地址:</p>
												</div>
												<div class="address-right">
													<p>21/D, Redwood City, CA 94872, USA</p>
												</div>
											</li>
											<li>
												<div class="address-left">
													<p>电话:</p>
												</div>
												<div class="address-right">
													<p>
														+88-000-1111-2225 <br />
														+88-000-1111-2226
													</p>
												</div>
											</li>
											<li>
												<div class="address-social">
													<ul>
														<li><a href="#"><i class="fa fa-facebook"></i></a></li>
														<li><a href="#"><i class="fa fa-twitter"></i></a></li>
														<li><a href="#"><i class="fa fa-instagram"></i></a></li>
														<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
													</ul>
												</div>
											</li>
										</ul>
									</address>
								</div> <!-- /.widget-address -->
							</div> <!-- /.single-widget -->
						</div> <!-- /.col- -->

					</div> <!-- /.row -->  
				</div> <!-- /.footer-widgets -->
			</div> <!-- /.container -->
		</div> <!-- /.footer-widget-area -->
		<div class="copyright-designer">
			<div class="container">	
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div class="copyright">
							<p>版权所有   &copy;2019-2020  汽车美容工作室.</p>
						</div> <!-- /.copyright -->
					</div> <!-- /.col- -->
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div class="designer">
							<p>
							</p>
						</div> <!-- /.designer -->
					</div> <!-- /.col- -->
				</div> <!-- /.row -->
			</div> <!-- /.container -->
		</div> <!-- /.copyright-designer -->

		<!-- Go to the page top  -->
		<div class="go-top">
			<a href="#" class="back-to-top dream-btn">
				<i class="fa fa-angle-up"></i>
			</a>
		</div> <!-- /.go-top -->
	</footer> <!-- /.footer -->
	<!-- /FOOTER AREA END -->
</div> <!-- /.wrapper -->
<!-- ALL SECTION INCLOSED TO THE WRAPPER -->

<!-- jQuery (necessary for Bootstrap's JavaScript plugin and others plugins) -->
<script type="text/javascript" src="assets/js/jquery-2.2.3.min.js"></script>
<!-- jquery-ui-1.12.0 -->
<script type="text/javascript" src="assets/js/jquery-ui/jquery-ui-1.12.0.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<!-- Bootstrap v3.3.6 -->
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<!-- Owl Carousel 2 -->
<script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
<!-- Owl Carousel v1.3.2 -->
<script type="text/javascript" src="assets/js/owl-1.3.2/owl.carousel.min.js"></script>
<!-- WOW - v1.1.3 -->
<script type="text/javascript" src="assets/js/wow.min.js"></script>
<!-- Typer Js -->
<script type="text/javascript" src="assets/js/typed.min.js"></script>
<!-- Noice Slider (Price Range) -->
<script src="assets/js/jquery.nouislider.min.js"></script> 
<!-- jQuery Mobile Library -->
<script type="text/javascript" src="assets/js/jquery.mobile.custom.min.js"></script>  
<!-- Conatact Map -->
<!--<script type="text/javascript" src="assets/js/map-script.js"></script>-->

<!-- Custom/Main Script here -->
<script type="text/javascript" src="assets/js/menu.js"></script>
<script type="text/javascript" src="assets/js/custom.js"></script>

</body>
</html>