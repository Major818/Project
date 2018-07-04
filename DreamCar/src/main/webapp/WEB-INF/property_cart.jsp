<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>购物车</title>	

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


                //3.重新计算总金额(包括当前商品的总价和所有商品总价的和)
                totalMoney(this,newBuyNum);
            });

            /* 重新计算总金额 */
            function totalMoney(thisobj, newBuyNum){
                //1.获取当前商品的单价
                var price = $(thisobj).parents("ul").find(".li_price").text();

                //2.计算当前商品的总价
                var prod_sum = price * newBuyNum;
                $(thisobj).parents("ul").find(".sum_price")
                    .text(prod_sum);

                //4.计算购物车所有商品的总价
                var totalMoney = 0;
                $(".sum_price").each(function(){
                    totalMoney += parseFloat($(this).text());
                });

                //设置所有商品的总价
                $("#span_2").text(totalMoney);
            }


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


                //3.重新计算总金额(包括当前商品的总价和所有商品总价的和)
                totalMoney(this,newBuyNum);
            });


            /* 设置全选和全不选 */
            $(".allC").click(function(){
               $(".prodC").attr("checked",$(this).attr("checked"));
            });

            /* 删除当前商品
             * 给每一个商品后面的删除按钮添加点击事件,
             * 点击"删除"删除当前商品(通过也要删除购物车中的商品)
             */
            $(".delProd").click(function(){
                //1.获取商品的id
                var pid = $(this).attr("id");

                //2.利用ajax请求删除购物车中指定id的商品(-1后台会删除该商品)
                $.post("/toCartUpdate",{"pid":pid, "buyNum":-1});

                //3.删除当前页面中的商品
                $(this).parents("ul").remove();

                //4.重新计算购物车中商品的总价
                var totalMoney = 0;
                $(".sum_price").each(function(){
                    totalMoney += parseFloat($(this).text());
                });

                //设置所有商品的总价
                $("#span_2").text(totalMoney);

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
								<li><a href="#">欢迎来到, DREAM CAR汽车俱乐部！为您提供一站式汽车服务~</a></li>
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

<style>
#wrap ul, li{
	list-style-type:none;
}

#wrap ul li{
	float:left;
	width:200px;
	text-align:center;
}
#wrap ul#title{
	width: 1200px;
    margin: 20px auto 0px;
    background-color: #F3F3F3;
    border: 1px solid #CCCCCC;
    line-height: 45px;
    height: 45px;
}
#wrap ul.prods{
    margin: 10px auto 0;
    width: 1200px;
    height: 100px;
    line-height: 100px;
	background-color: #FEF4E8;
    border-top: 1px solid #ABAAA8;
}
#wrap ul li:first-child{
	text-align: left;
	width:120px;
	padding-left: 30px;
}
#wrap ul li:last-child{
	width:120px;
	padding-right: 30px;
}
#wrap ul li.li_prod{
	width:300px;
}
#wrap ul.prods li.li_prod{
	text-align: left;
}

#wrap ul li img.prodimg{
	vertical-align: middle;
}
#wrap ul li span.prodname{
	vertical-align: middle;
	margin-left: 20px;
}
#wrap ul li a{
	text-decoration: none;
}
a.delNum, a.addNum{
	border: 1px solid #CCCCCC;
    padding: 5px 10px;
    color:#000;
   	vertical-align: middle;
}
a.delNum{  padding: 5px 12px; }
input.buyNumInp{
	vertical-align: middle;
	border: 1px solid #CCCCCC;
	padding: 2px 8px;
	width: 40px;
	height: 25px;
	text-align: center;
	font-size:16px;
}
/*总计*/
#total{
	width:1200px;
	margin: 10px auto;
}
#total #total_1{
	float:left;
	width:1075px;
	height:45px;
	line-height:45px;
	border: 1px solid #CCC;
}
#total #total_1 *{
	vertical-align: middle;
}
#total #total_1 input[name='allC']{
	margin-left:30px;
}
#total #total_1 #del_a{
	margin-left: 15px;
	text-decoration: none;
}
#total #total_1 #div_sum{
	width:250px;
	text-align: center;
	float: right;	
}
#total #total_1 #span_1{
}
#total #total_1 #span_1+span{
	font-size: 25px;
	color:#FF0000;
}
#total #total_1 #span_2{
	font-size: 25px;
	color:#FF0000;
}
#total #total_2 a{
	float:right;
	width:123px;
	height:47px;
	line-height:47px;
	text-align: center;
	text-decoration:none;
	background-color: #fe931f;
	color: #FFF;
	font-weight:bold;
	font-size:24px;
}
#total #total_2 a:hover{
	background-color: #DD4343;
}
</style>
    <div>${result}</div>
    <table >
	<div class="container">

	<div id="wrap">
			<!-- 标题信息 -->
			<ul id="title">
				<li>
					<input class="allC" type="checkbox" value="" onclick=""/>
					<span id="title_checkall_text">全选</span>
				</li>
				<li class="li_prod">商品</li>
				<li>单价（元）</li>
				<li>数量</li>
				<li>小计（元）</li>
				<li>操作</li>
			</ul>

			<!-- 购物信息 -->
        <c:set var="totalMoney" value="0"></c:set>
        <c:forEach items="${cartmap}" var="cart">
			<ul class="prods">
				<li>
					<input type="checkbox" class="prodC"/>
				</li>
				<li class="li_prod">
					<img src="${cart.key.prodImgurl}" width="90" height="90" class="prodimg" />
					<span class="prodname">${cart.key.prodName}</span>
				</li>
				<li class="li_price">${cart.key.prodPrice}</li>
				<li>
					<a href="javascript:void(0)" class="delNum" >-</a>
					<input id="${cart.key.prodId}" class="buyNumInp" type="text" value="${cart.value}" />
					<a href="javascript:void(0)" class="addNum" >+</a>
				</li>
				<li class="sum_price">${cart.key.prodPrice * cart.value}</li>
				<li><a id="${cart.key.prodId}" class="delProd" href="javascript:void(0)">删除</a></li>
			</ul>
            <c:set var="totalMoney" value="${ totalMoney + cart.key.prodPrice * cart.value }"></c:set>
        </c:forEach>
			<!-- 总计条 -->

			<div id="total">
				<div id="total_1">
					<input type="checkbox" class="allC" name="allC"/> 
					<span>全选</span>
					<a id="del_a" href="javascript:void(0)">删除选中的商品</a>
					<div id="div_sum">
						<span id="span_1">总价：</span>
						<span>￥</span>
						<span id="span_2" class="total_sum_price">${totalMoney}</span>
					</div>
				</div>
				<div id="total_2">	
					<a id="goto_order" href="/order_add">去结算</a>
				</div>
			</div>
		</div>
	</div>
    </table>
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