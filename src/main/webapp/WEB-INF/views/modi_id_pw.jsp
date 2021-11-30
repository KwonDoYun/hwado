<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SIAN_회원정보수정</title>

<!-- Custom fonts for this template -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<link rel="icon"
	href="${pageContext.request.contextPath}/resources/favicon-32x32.png"
	type="image/x-icon" sizes="16x16">


</head>
<body class="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<%@ include file="include/include_sidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<%@ include file="include/include_topbar.jsp"%>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- DataTales Example -->
					<div class="card shadow mb-12">
						<div class="card-body">
							<div>
								아이디<input type="text" value="${user.userId}" disabled class="form-control" style="width: 400px" />
							</div>
							<div>
								이름<input type="text" value="${user.userName}" disabled class="form-control" style="width: 400px" />
							</div>
							<div>
								별명<input type="text" value="${user.nickname}"class="form-control" style="width: 400px" />
							</div>
							<div>
								이메일(가입인증)<input type="text" value="${user.email}"class="form-control" style="width: 400px" />
								<div class="invalid-feedback">@를 넣어주세요</div>
							</div>
							<div>
								기존 비밀번호<input type="text" class="form-control"
									style="width: 400px" />
							</div>
							<div>
								비밀번호<input type="text" class="form-control" style="width: 400px" />
							</div>
							<div>
								비밀번호 확인<input type="text" class="form-control"
									style="width: 400px" />
							</div>
							<div>
								주소<input type="text" class="form-control" style="width: 400px" />
							</div>
							<div>
								세부 주소<input type="text" class="form-control"
									style="width: 400px" />
							</div>

							<a href="#" class="btn btn-success btn-icon-split btn-sm"> <span
								class="icon text-white-50"> <i class="fas fa-check"></i>
							</span> <span class="text"><b>수정하기</b></span>
							</a> <a href="userDelete.do" class="btn btn-danger btn-icon-split btn-sm"> <span
								class="icon text-white-50"> <i class="fas fa-trash"></i>
							</span> <span class="text"><b>회원탈퇴</b></span>
							</a>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<%@ include file="include/include_footer.jsp"%>

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<%@ include file="include/include_etc.jsp"%>


	<!-- Bottom 레이아웃 -->

	<!-- Bootstrap core JavaScript-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script
		src="${pageContext.request.contextPath}/resources/js/demo/datatables-demo.js"></script>


</body>
</html>
