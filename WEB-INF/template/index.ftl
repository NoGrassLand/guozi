<!DOCTYPE html>

<html lang="en">

	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<#include 'inc/head.ftl'>

		<title>欢迎使用鲁智深兰亭云ERP</title>
		
		<!-- Bootstrap Core CSS -->
		<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

		<!-- Custom Fonts -->
		<link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<!--<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>-->
		<!--<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>-->

		<!-- Plugin CSS -->
		<link href="/resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

		<!-- Theme CSS -->
		<link href="/resources/css/creative.css" rel="stylesheet">

	</head>

	<body id="page-top">
		<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid nav-back">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span><i class="fa fa-bars"></i>

                </button>
					<i class="text-primary sr-icons "><img src="/resources/img/logo.png" class="img-responsive logo-image" alt=""></i>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a class="page-scroll" href="#first">首页</a>
						</li>
						<li>
							<a class="page-scroll" href="#about">产品简介</a>
						</li>
						<li>
							<a class="page-scroll" href="#services">产品优势</a>
						</li>
						<li>
							<a class="page-scroll" href="#portfolio">使用培训</a>
						</li>
						<li>
							<a class="page-scroll" href="#contact">关于我们</a>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>

		<header id="first">
			<div class="container header-content">
				<div class="row ">
					<div class="col-lg-5 col-md-6 col-sm-6 text-center header-content-inner">
						<h1 id="homeHeading">立即使用asdfasdfas</br>鲁智深兰亭云ERP,</br>
                助您一臂之力！</br></h1>
						<hr class="bannner">
						<p>鲁智深兰亭云ERP是专为商家量身定做，</br>
							采用全新的系统架构，</br>
							是新一代的管理工具。</p>
						<!--  <a href="#about" class="btn btn-primary btn-xl page-scroll">Find Out More</a> -->
					</div>
					<!-- 注册 -->
					"${message!}"
					<div class="col-lg-offset-2 col-lg-4 col-md-5 col-sm-6 text-center header-content-inner-regCont" id="regCont" style="display:none">
						<div class="container-fluid">
							<div class="row">
								<h2 class="text-center">注册</h2>
								<form class="form-horizontal" role="form" id="regForm" action="/signup" method="post" enctype="application/x-www-form-urlencoded">
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
									<div class="form-group form-index">
										<label for="inputAccount" class="col-sm-4 col-md-4 col-xs-4  control-label indexpadding inputname" id="labelId">姓名</label>
										<div class="col-sm-8 col-md-8 col-xs-8 indexpadding inputcontent">
											<input type="text" class="form-control required" name="user.name"  id="inputAccount" required placeholder=''>
										</div>
									</div>
									<div class="form-group form-index">
										<label for="inputName" class="col-sm-4 col-md-4 col-xs-4  control-label inputname indexpadding" id="labelId">手机号</label>
										<div class="col-sm-8 col-md-8 col-xs-8 indexpadding inputcontent ">
											<input type="text" class="form-control" name="name"  id="inputNumber" required placeholder=''>
										</div>
									</div>

									<div class="form-group form-index">
										<label id="labelId" for="inputPassword3" class="col-sm-4 col-md-4 col-xs-4  control-label inputname indexpadding">密码*</label>
										<div class="col-sm-8 col-md-8 col-xs-8 indexpadding inputcontent">
											<input type="password" class="form-control" name="credentials" id="password" required placeholder='请输入密码'>
										</div>
									</div>
									<div class="form-group form-index">
										<label id="labelId" for="inputPassword3" class="col-sm-4 col-md-4 col-xs-4  control-label inputname indexpadding">确认密码*</label>
										<div class="col-sm-8 col-md-8 col-xs-8 indexpadding inputcontent">
											<input type="password" class="form-control" name="confirmCredentials" id="inputPassword3" required placeholder='请再输入一次密码'>
										</div>
									</div>

									<div class="form-group form-index">
									<#if tracking??>
										<input type="hidden" name="tracking" value="${tracking}" />
									</#if>
									</div>

									<div class="col-md-8 col-md-offset-4 col-sm-offset-4 col-sm-8  col-xs-offset-4  col-xs-8 indexpadding inputcontent " style="text-align:center;">
										<button type="submit" id="registerBtn" class="btn btn-group btn-default col-md-12 borderre">注册</button>
									</div>
								</form>

							</div>
						</div>
						<div class="bottom-line" style="text-align: left;">
							<a id="logId">已有账户？<em>立即登录</em></a>
						</div>

					</div>

					<!-- 注册结束 -->
					<!--登录 -->
					<div id="loginCont" class="col-lg-offset-2 col-lg-4 col-md-offset-1 col-md-5 col-sm-6 text-center header-content-inner-login  indexpadding">

						<div class="container-fluid">
							<div class="row">
								<h2 class="text-center">欢迎登录</h2>
								<!--form-->
								<form class="form-horizontal" role="form" id="loginForm" action="/login" method="post" enctype="application/x-www-form-urlencoded">
									<div class="form-index form-group">
										<label id="labelId" for="inputEmail3" class="col-sm-4 col-md-4 col-xs-4 control-label inputname indexpadding">商户选择</label>
										<div class="col-sm-8 col-md-8 col-xs-8 indexpadding inputcontent">
											<input type="text" class="form-control typeahead" id="inputEmail3" placeholder='' value="" autocomplete="off">
											<input type="hidden" name="target" id="target" value="/home">
										</div>
									</div>

									<div class="form-index form-group">
										<label id="labelId" for="mobilePhone" class="col-sm-4 col-md-4 col-xs-4 control-label inputname indexpadding">手机号：</label>
										<div class="col-sm-8 col-md-8 col-xs-8 indexpadding inputcontent">
											<input type="text" class="form-control" name="username" id="mobilePhone"  placeholder="手机号" value="" aria-required="true">
										</div>
									</div>

									<div class="form-group form-index">
										<label id="labelId" for="inputPassword3" class="col-sm-4 col-md-4 col-xs-4 control-label inputname indexpadding">密码*</label>
										<div class="col-sm-8 col-md-8 col-xs-8 indexpadding inputcontent">
											<input type="password" class="form-control" name="password" id="inputPassword3" required placeholder='请输入密码' value="">
										</div>
									</div>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
									<#if tracking??>
										<input type="hidden" name="tracking" value="${tracking}" />
									</#if>
									<!-- 错误信息 提示-->
									<!-- <div class="form-group form-index error" >
	                                            <label  id="labelId" for="inputPassword3" class="col-sm-4 col-md-4 col-xs-4 control-label inputname indexpadding">错误提示：<s:property value="error" /></label>
	                                        </div>
	 -->							
									
	 								<div class="col-md-8 col-md-offset-4 col-sm-offset-4 col-sm-8 col-xs-offset-4  col-xs-8 indexpadding inputcontent">
										<button id="loginBtn" type="submit" class="btn btn-group btn-default col-md-12 borderre">登录</button>
									</div>

									<!--<div class="checkbox pull-right ">
										<label>
											<input type="checkbox" name="" id="" value="" />
											记住用户
										</label>
									</div>-->

								</form>
								<!--/form-->
							</div>
						</div>
						<div class=" bottom-line">
							<a href="javascript void(0)" id="regIda">忘记密码？</a>
							</span>
							<a id="regId" class="regTab">新用户注册</a>
							<div class="clear"></div>
						</div>

					</div>
					<!--登录结束 -->
				</div>
			</div>
		</header>

		<!-- javaScript -->
		<script src="/resources/plugins/jQuery/jquery-1.12.0.min.js"></script>
		<!-- Bootstrap Core JavaScript -->
		<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

		<!-- Plugin JavaScript -->
		<script src="/resources/vendor/jquery/jquery.easing.min.js"></script>
		<script src="/resources/vendor/scrollreveal/scrollreveal.min.js"></script>
		<script src="/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
		<!-- validator -->
		<!-- Theme JavaScript -->
		<script src="/resources/js/creative.js"></script>
		<!-- jQuery -->
		<script src="/resources/plugins/jQuery/jquery.validate.js"></script>
		<!--bootstrap-typeahead-->
		<script src="/resources/vendor/bootstrap-typeahead/bootstrap3-typeahead.js"></script>
		<script src="/resources/js/index.js"></script>
	</body>

</html>