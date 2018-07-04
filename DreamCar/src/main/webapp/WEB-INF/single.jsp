<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>关于我们</title>	

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
					<h2>关于<span>我们</span></h2>
				</div>
				<h5>专业 | 专注 | 高效</h5>
			</div> <!-- /.page-heading -->
		</div> <!-- /.container -->
	</section> <!-- /.properties -->
	<!-- /PROPERTIES AREA END -->

	<!-- SINGLE AREA START -->
	<div class="single">
		<div class="container">	
			<div class="row">
				<!-- SINGLE POST START -->
				<div class="single">
					<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
						<!-- post begin -->
						<article class="post-item single-item">
							<div class="shadow-bottom-items">
								<div class="post-media">
									<img src="assets/images/featured/single.jpg" alt="Featured">
								</div>
							</div>
							<div class="post-inner">
								<div class="post-metadata">
								</div> <!-- /.post-metadata -->
								<div class="post-content">
									<div class="post-title">
										<h5><a href="#">关于我们</a></h5>
									</div>
									<div class="post-entry">
										<p>汽车有限公司成立于XXX年XX月XX日，是本地区唯一的授权销售服务中心和特约售后服务中心。主要从事多种品牌的整车销售、 售后服务、配件供应及信息反馈业务。公司秉承 “尊荣无限 至上体验”的											服务理念，培养更主动贴心的服务意识,追求更周到便捷的服务水准，让每一位车主，都体验到管家般的细致专业，享受到真正待为贵宾般的尊崇体验。</p>
 
										<p>除了为车主提供贴心专业的购车及售后服务，公司还经常组织车主活动，为车主朋友提供一个轻松、愉快的交流平台，让每一位车主都能大家庭里感受到“车生活”更多的乐趣。经过两年的时间，公司已经											发展，拥有一流的硬件设施、科学的管理、精湛的技术、诚心的服务品质和积极进取的优秀团队。</p>
 
										<p>真诚期望XXX能成为您的爱车之家！</p>
									</div>
								</div> <!-- /.post-content -->
								
								<div class="post-metadata">
								</div>
								<div class="post-content">
									<div class="post-title">
										<h5><a href="#">实体店地址</a></h5>
									</div>
									<div class="post-entry">
										<p>一店地址：上海市松江区佘山林荫大道18号	预约电话：400-562-6654 </p>
									</div>
									<div class="post-entry">
										<p>一店地址：上海市松江区佘山林荫大道18号	预约电话：400-562-6654 </p>
									</div>
									<div class="post-entry">
										<p>一店地址：上海市松江区佘山林荫大道18号	预约电话：400-562-6654 </p>
									</div>
								</div> <!-- /.post-content -->

								<div class="post-content">
									<div id="allmap"></div>
									<div id="result">
										<input type="button" value="搜周边" onclick="searchInfoWindow.open(marker);"/>
									</div>
								</div> <!-- /.post-content -->

							</div> <!-- /.post-inner -->
						</article> <!-- /.post-item -->
						<!-- Comment Area -->
						
						
					</div> <!-- /.col- -->
				</div> <!-- /.single -->
				<!-- /SINGLE POST END -->

				<!-- RIGHT SIDEBAR START -->
				<aside>
					<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
						<!--<div class="widget widget_search">
							<form class="search-form" method="get" role="search">
								<input type="search" name="s" placeholder="Enter Your Keyword" class="search-field">   
								<button class="search-submit" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>--> <!-- /.widget_search -->
						<div class="widget widget-place">
							<div class="title">
								<span>Loking for a good place</span>
								<h3>Similar Causes</h3>
							</div>
							<div class="place-view">
								<img src="assets/images/featured/10.jpg" alt="Place">
								<div class="place-overlay">
									<div class="place-info">
										<p>新款SUV，超奢华体验，马上预约</p>
										<a href="/contact">预约</a>
									</div>
								</div><!-- /.member-hover -->
							</div> <!-- /.team-members -->
						</div> 	<!-- /.widget-place -->
						<div class="widget widget-video">
							<div class="title">
								<span>Loking for a good place</span>
								<h3>Video Widget</h3>
							</div>
							<div class="video">
								<iframe src="" allowfullscreen></iframe>
							</div>
						</div> <!-- /.widget-video -->
						
					</div> <!-- /.col- -->
				</aside>
				<!-- /RIGHT SIDEBAR END -->
			</div> <!-- /.row -->
		</div> <!-- /.container -->
	</div> <!-- /.single -->
	<!-- /SINGLE AREA END -->

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



<!--百度地图-->
	<style type="text/css">

	#allmap {height: 500px;width:100%;overflow: hidden;}
	#result {width:100%;font-size:12px;}
	dl,dt,dd,ul,li{
		margin:0;
		padding:0;
		list-style:none;
	}
	dt{
		font-size:14px;
		font-family:"微软雅黑";
		font-weight:bold;
		border-bottom:1px dotted #000;
		padding:5px 0 5px 5px;
		margin:5px 0;
	}
	dd{
		padding:5px 0 0 5px;
	}
	li{
		line-height:28px;
	}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=RZTIbTkh0xcwrggMNGsLHRHD8gTICk5n"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.js"></script>
<link rel="stylesheet" href="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.css" />
<script type="text/javascript">
	// 百度地图API功能
    var map = new BMap.Map('allmap');
    var poi = new BMap.Point(116.56141,39.783371);
    map.centerAndZoom(poi, 16);
    map.enableScrollWheelZoom();

    var content = '<div style="margin:0;line-height:20px;padding:2px;">' +
                    '<img src="assets/images/featured/danei.jpg" alt="" style="float:right;zoom:1;overflow:hidden;width:100px;height:100px;margin-left:3px;"/>' +
                    '地址：北京市大兴区汇龙森科技园33号楼达内大厦<br/>电话：(010)59928888<br/>简介：达内时代科技集团有限公司' +
                  '</div>';

    //创建检索信息窗口对象
    var searchInfoWindow = null;
	searchInfoWindow = new BMapLib.SearchInfoWindow(map, content, {
			title  : "达内教育大厦",      //标题
			width  : 290,             //宽度
			height : 105,              //高度
			panel  : "panel",         //检索结果面板
			enableAutoPan : true,     //自动平移
			searchTypes   :[
				BMAPLIB_TAB_SEARCH,   //周边检索
				BMAPLIB_TAB_TO_HERE,  //到这里去
				BMAPLIB_TAB_FROM_HERE //从这里出发
			]
		});
    var marker = new BMap.Marker(poi); //创建marker对象
    marker.enableDragging(); //marker可拖拽
    marker.addEventListener("click", function(e){
	    searchInfoWindow.open(marker);
    })
    map.addOverlay(marker); //在地图中添加marker
	
	
</script>
</body>
</html>