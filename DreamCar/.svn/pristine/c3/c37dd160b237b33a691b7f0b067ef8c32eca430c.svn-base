<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>产品详情</title>	

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
    <script src="../js/jquery-1.4.2.js"></script>
    <script type="text/javascript">
        $(function(){
            /* 为"减号"绑定点击事件, 点击"减号"将购买数量输入框中的值减1
             * 同时利用ajax将session中cartmap中的对应商品的数量减1
             * 重新计算总金额(包括当前商品的总价和所有商品总价的和)
             */
            $(".delNum").click(function(){
                //1.点击"减号"将购买数量输入框中的值减1
                //>>获取输入框
                var $buyNumInp = $(this).siblings("input")//input输入框
                var buyNum = $buyNumInp.val();
                var newBuyNum = buyNum;
                if(buyNum >1){//购买数量必须要大于等于1
                    newBuyNum = buyNum - 1;
                    $buyNumInp.val(newBuyNum);
                }

                //2.利用ajax将session中cartmap中的对应商品的购买数量减1
                //>>获取商品的id和购买数量(newBuyNum)
                var pid = $buyNumInp.attr("id");
                //>>发送ajax请求
                $.post("/toCartUpdate",
                    {"pid": pid,
                        "buyNum" : newBuyNum}
                        );
            });
            /* 为"加号"绑定点击事件, 点击"加号"将购买数量输入框中的值加1
             * 同时利用ajax将session中cartmap中的对应商品的数量加1
             * 重新计算总金额(包括当前商品的总价和所有商品总价的和)
             */
            $(".addNum").click(function(){
                //1.点击"加号"将购买数量输入框中的值加1
                //>>获取输入框
                var $buyNumInp = $(this).siblings("input")//input输入框
                var buyNum = $buyNumInp.val();
                var newBuyNum = parseInt(buyNum)+1;
                $buyNumInp.val(newBuyNum);

                //2.利用ajax将session中cartmap中的对应商品的购买数量减1
                //>>获取商品的id和购买数量(newBuyNum)
                var pid = $buyNumInp.attr("id");
                //>>发送ajax请求
                $.post("/toCartUpdate",
                    {"pid": pid,
                        "buyNum" : newBuyNum});
            });

        });



    </script>




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
							
							<ul>
								<li><a href="#"/>欢迎来到, DREAM CAR汽车俱乐部！为您提供一站式汽车服务~</li>
							</ul>
							
						</div> <!-- /.social-to -->
					</div> <!-- /.col- -->
					<div class="col-xs-12 col-sm-12 col-md-9 col-lg-7">
						<div class="contact-to">
							<div class="contact-text">
								<ul>
									<li><a href="#"><i class="fa fa-map-marker"></i>登录</a></li>
									<li><a href="#"><i class="fa fa-mobile-phone"></i>注册</a></li>
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


	<!-- AWESOME PROPERTIES AREA START -->

	<div class="properties-things">
        <form action="/property_cart">
		<div class="container">	
			<div class="awesome-items stylist-bottom-left">
				<div class="row" style="padding-bottom: 20px;">
					<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3" style="margin: 30px;"> 
						<div class="total-package shadow-bottom-items">

							<div class="price-list">
								<img src="${info.prodImgurl}" class="img-responsive" alt="Cinque Terre" width="304" height="236">
							</div>
						</div> <!-- /.total-package -->
					</div> <!-- /.col -->
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6"  style="margin: 30px;">
						<article class="awesome-content">
							<div class="awesome-header stylist-bottom-right">
								<h3>${info.prodName}</h3>
								<p>库存：${info.prodNum}件</p>
							</div>
							<div class="">
								<div id="">
									
											优惠价：<span class="" style="color: red;font-weight:600;">￥${info.prodPrice}</span><br/>
								            服&nbsp;&nbsp;务：由DREAM CAR负责发货，并提供售后服务<br />
								            购买数量：
						            <a href="#" class="delNum" onclick="" style="border: 1px solid #999;padding: 3px 10px;">-</a>
						            	<input id="${info.prodId}" oldNum="1" type="text" value="1" onblur="" style="text-align: center;">
							        <a href="#" class="addNum" onclick=""  style="border: 1px solid #999;padding: 3px 10px;">+</a>
								</div><br />
								<div class="" style="width:170px;float: left;">
                                    <%--写到这里明天需要继续添加相应的的功能，必须在一天内写完这些东西--%>
									<button href="/property_cart?proid=${info.prodId}&buyNum=1" class="dream-btn" style="
											font-family: 'Raleway', sans-serif;
										    font-size: 18px;

										    font-weight: 600;
										    text-transform: capitalize;
										    border: 1px solid #DDD;
										    display: block;
										    position: relative;
										    padding: 12px 30px;
										    transform: scale(1);
										    text-decoration: none;">
                                        加入购物车
									</button>
								</div>
								<div class="awesome-btn" style="float:left;margin-left: 20px;">
									<button href="/order_Limt_add?proid=${info.prodId}&buyNum=1" class="dream-btn">立即购买</button>
								</div>

							</div>
							<br>
						</article> <!-- /.awesome-content -->
					</div> <!-- /.col- -->


					
					<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
						<!-- post begin -->
						<article class="post-item single-item">
							<div class="cooment-area">
								<div class="title">
									<h3>商品描述</h3>
								</div>
							</div>
							<div class="shadow-bottom-items">
								<div class="post-media">
									<img src="${info.prodImgurl}" alt="Featured">
								</div>
							</div>
							<div class="post-inner">
								
								<div class="post-content">
									<div class="post-title">
										<h5><a href="#">这是一款牛逼的车</a></h5>
									</div>
									<div class="post-entry">
										<p>这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车.</p>
										<p>这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车</p>
										<blockquote>
											<p>DREAM CAR汽车俱乐部，为您提供一站式的汽车服务~</p>
										</blockquote>
										<p>这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车这是一款牛逼的车</p>
									</div>
								</div> <!-- /.post-content -->
							</div> <!-- /.post-inner -->
						</article> <!-- /.post-item -->
						<!-- Comment Area -->
						
						<div class="cooment-area">
							<div class="title">
								<h3>用户评价</h3>
							</div>
							<div class="media-box">
								<div class="media">
									<div class="media-left">
										<a href="#">
											<img class="media-object" src="assets/images/visitor1.png" alt="Commenter">
										</a>
									</div>
									<div class="media-body">
										<h4 class="media-heading">Jay T. Harrison</h4>
										<h6 class="comment-date">14st Feb, 2016</h6>
										非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好。
										<!--<div class="replay-comment">
											<a href="#" class="replay gen-btn">Replay</a>
										</div>-->
									</div> <!-- /.media-body -->
								</div> <!-- /.media -->
								<div class="media">
									<div class="media-left">
										<a href="#">
											<img class="media-object" src="assets/images/visitor2.png" alt="Commenter">
										</a>
									</div>
									<div class="media-body">
										<h4 class="media-heading">Donna J. Roe</h4>
										<h6 class="comment-date">14st Feb, 2016</h6>
										非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好。
										<!--<div class="replay-comment">
											<a href="#" class="replay gen-btn">Replay</a>
										</div>-->
									</div> <!-- /.media-body -->
								</div> <!-- /.media -->
								<div class="media">
									<div class="media-left">
										<a href="#">
											<img class="media-object" src="assets/images/visitor1.png" alt="Commenter">
										</a>
									</div>
									<div class="media-body">
										<h4 class="media-heading">Jay T. Harrison</h4>
										<h6 class="comment-date">14st Feb, 2016</h6>
										非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好非常好。
										<!--<div class="replay-comment">
											<a href="#" class="replay gen-btn">Replay</a>
										</div>-->
									</div> <!-- /.media-body -->
								</div> <!-- /.media -->
							</div> <!-- /.media-box -->
							<!-- Comment Form -->
						</div> <!-- /.cooment-area -->
					</div> <!-- /.col- -->
		
					
				</div> <!-- /.row -->  
			</div> <!-- /.awesome-items -->
		</div> <!-- /.container -->

        </form>
    </div> <!-- /.properties-things -->
	<!-- /AWESOME PROPERTIES AREA END -->



	

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