﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>服务项目</title>	

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
								<li><a href="#"/>欢迎来到, DREAM CAR汽车俱乐部！为您提供一站式汽车服务~</li>
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
										<a style="color:#fff;" href="/tobacklogin">  ${ user.username } ：您好,&nbsp; </a>
										<a href="/logout">退出</a>
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
									<li><a href="#">登录</a></li>
									<li><a href="#">注册</a></li>
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

	<!-- PROPERTIES AREA START -->
	<section class="properties page-prime-bg">
		<div class="page-prime-bg-overlay-effect"></div>
		<div class="container">	
			<div class="page-heading">	
				<div class="page-main-title">
					<strong></strong> <!-- Use for heading after effect -->
					<h2>服务<span>项目</span></h2>
				</div>
				<h5>维修|改装|保养|美容</h5>
			</div> <!-- /.page-heading -->

			<div class="page-prime-metadata">
				<span class="only">
					预定上门服务，只需
				</span>
				<span class="price">                                            
					￥50
				</span>
				<span class="booking"> 
					
				</span>    
			</div>
			<div class="page-prime-btn">
				<a href="/contact" class="dream-btn">马上预约</a>
			</div>
		</div> <!-- /.container -->
	</section> <!-- /.properties -->
	<!-- /PROPERTIES AREA END -->

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
							<h3><a href="#">汽车维修</a></h3>
						</div>
						<div class="content">
							<p>Claritas etiam processus dynamicus, qui sequitur mutationem.</p>
						</div>
						<div class="renewal-btn">
							<a href="/contact" class="fresh-btn">马上预约</a>
						</div>
					</div> <!-- /.renewal-items -->
				</div> <!-- /.col- -->
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<div class="renewal-items">
						<div class="renewal-icon">
							<i class="flaticon-burj-al-arab-1"></i>
						</div>
						<div class="title">
							<h3><a href="#">汽车改装</a></h3>
						</div>
						<div class="content">
							<p>Claritas etiam processus dynamicus, qui sequitur mutationem.</p>
						</div>
						<div class="renewal-btn">
							<a href="/contact" class="fresh-btn">马上预约</a>
						</div>
					</div> <!-- /.renewal-items -->
				</div> <!-- /.col- -->
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<div class="renewal-items">
						<div class="renewal-icon">
							<i class="flaticon-mansion"></i>
						</div>
						<div class="title">
							<h3><a href="#">汽车保养</a></h3>
						</div>
						<div class="content">
							<p>Claritas etiam processus dynamicus, qui sequitur mutationem.</p>
						</div>
						<div class="renewal-btn">
							<a href="/contact" class="fresh-btn">马上预约</a>
						</div>
					</div> <!-- /.renewal-items -->
				</div> <!-- /.col- -->
				<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<div class="renewal-items">
						<div class="renewal-icon">
							<i class="flaticon-cityscape"></i>
						</div>
						<div class="title">
							<h3><a href="#">汽车美容</a></h3>
						</div>
						<div class="content">
							<p>Claritas etiam processus dynamicus, qui sequitur mutationem.</p>
						</div>
						<div class="renewal-btn">
							<a href="/contact" class="fresh-btn">马上预约</a>
						</div>
					</div> <!-- /.renewal-items -->
				</div> <!-- /.col- -->
			</div> <!-- /.row -->  
		</div> <!-- /.container -->
	</section> <!-- /.renewal -->
	<!-- /RENEWAL AREA END -->

	<!-- BUY APARTMENT AREA START -->
	<section class="apartment">
		<div class="container">	
			<h2>10月特惠活动，预约上上门服务，仅需50元！</h2> 
	
			<div class="apartment-btn">
				<a href="/contact" class="dream-btn">马上预约</a>
			</div>
		</div> <!-- /.container -->
	</section> <!-- /.apartment -->
	<!-- /BUY APARTMENT AREA END -->

	<!-- FEATURE CIRCLE AREA START -->
	<section class="feature-circle">
		<div class="container">	
			<div class="section-heading wow zoomIn">
				<h5></h5>
				<div class="main-title">
					<h2><span>服务</span> 特色</h2>
					<strong></strong> <!-- Use for heading after effect -->
				</div>
			</div> <!-- /.section-heading -->
			<div class="circle-items wow fadeInUp">
				<div class="wheel">
					<div class="feature-things">
						<span><strong>安全</strong>驾驶系统</span>
						<span><a href="#"><i class="flaticon-shield"></i></a></span>
					</div>
					<div class="feature-things">
						<span>豪华<strong>配饰</strong></span>
						<span><a href="#"><i class="flaticon-armchair"></i></a></span>
					</div>
					<div class="feature-things">
						<span><a href="#"><i class="flaticon-support"></i></a></span>
						<span>24 小时<strong>维修</strong></span>
					</div>
					<div class="feature-things">
						<span><a href="#"><i class="flaticon-command"></i></a></span>
						<span>24小时 <strong>客服在线</strong></span>
					</div>
					<!-- <div class="border-circle"></div> -->
					<div class="feature-main-img">
						<img src="assets/images/bg/feature-bg.png" alt="Feature">
					</div>
				</div> <!-- /.wheel -->
			</div> <!-- /.circle-items -->
		</div> <!-- /.container -->
	</section> <!-- /.feature-circle -->
	<!-- /FEATURE CIRCLE AREA END -->




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