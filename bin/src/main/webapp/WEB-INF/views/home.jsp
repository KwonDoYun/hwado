<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Project_SIAN</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="${pageContext.request.contextPath}/resources/css/mdb.min.css"
	rel="stylesheet">
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/favicon-32x32.png"
	type="image/x-icon" sizes="16x16">


<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}

#intro-box {
	margin: auto;
}
</style>
</head>
<body>
	<div class="container">

		<div class="col-md-6 col-md-offset-3" id="intro-box">
			<div class="input-form-backgroud row">
				<div class="input-form col-md-12 mx-auto">

					<form action="login_action.do" novalidate="navalidate"
						accept-charset="UTF-8" method="post">
						<input name="utf8" type="hidden" value="✓"> <input
							type="hidden" name="authenticity_token" value="">
						<div class="padding-10">
							<h2 class="brand">
								<b>Project SIAN</b>
							</h2>
							<hr>
							<p>SIAN = Spatial Information Academy Network</p>
							<p>공간정보 아카데미 교육생들을 위한 커뮤니티 입니다.</p>
						</div>
						<div class="tiles p-t-10 p-b-10 text-black">
							<div class="row form-row m-l-5 m-r-5 xs-m-l-5 xs-m-r-5">

								<div class="col-md-6 col-sm-6 m-b-10">
									<input class="form-control" id="reg_username" name="userId"
										placeholder="아이디" type="text">
								</div>
								<div class="col-md-6 col-sm-6">
									<input class="form-control" id="reg_email" name="userPw"
										placeholder="패스워드" type="password">
								</div>

							</div>
							<div class="row p-t-10 m-l-5 m-r-5 xs-m-l-10 xs-m-r-10">

								<div class="con	trol-group col-md-12">
									<div class="checkbox checkbox-success">
										<input id="remember_me" name="user[remember_me]"
											type="checkbox" value="1">
									</div>
									<br>
									<div>
										<input type="submit" id="btnLogin" value="로그인"
											class="btn btn-primary btn-lg"> &nbsp; 또는 &nbsp; <a
											href="/community/registerUser" class="btn btn-info btn-lg">소속인증
											(회원가입)</a>
									</div>

								</div>

							</div>
						</div>
					</form>

				</div>
			</div>
		</div>

	</div>

	<div id="background-container">
		<div id="background"></div>
	</div>

	<!-- JQuery -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/mdb.min.js"></script>

</body>
</html>
