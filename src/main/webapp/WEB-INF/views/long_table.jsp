
<%@page import="java.util.List"%>
<%@page import="lx.sia.community.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SIAN_노하우 전달 게시판</title>

<!-- Custom fonts for this template -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/adminlte.min.css">

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

<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/vendors/summernote/summernote-lite.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/vendors/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/app.css">

<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/assets/images/favicon.svg"
	type="image/x-icon">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/vendors/iconly/bold.css">

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
					<div class="card shadow mb-4">
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable">
									<thead>
										<tr>
											<th class="col-1">글번호</th>
											<th class="col-6">제목</th>
											<th class="col-2">닉네임</th>
											<th class="col-2">작성일</th>
											<th class="col-1">조회수</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<!-- 아래 부분 들어가는곳 -->
										</tr>
									</tfoot>
                            
								
									<tbody>
										<c:forEach items="${generalBoard_list}" var="list" varStatus="status">
											<tr>
												<td>${list.boardId}</td>
												<td><a class="id" href="/community/general_board/showForm?boardId=${list.boardId}">${list.boardTitle}</a></td>
												<td>${generalBoard_userNickname[status.index]}</td>
												<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd HH:mm"/></td>
												<td>${list.clicks}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
							<a href="/community/general_board/writeForm"
								class="btn btn-success btn-icon-split btn-sm"> <span
								class="icon text-white-50"> <i class="fas fa-check"></i>
							</span> <span class="text"><b>글 쓰기</b></span>
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
	
	<script>
		var title = '노하우 전달'
		var contents = '선후배 혹은 동기간 정보 교류를 하는 공간입니다.'
		document.getElementById("title").innerHTML=title;
		document.getElementById("contents").innerHTML=contents;
	</script>

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

	<script
		src="${pageContext.request.contextPath}/resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/assets/vendors/summernote/summernote-lite.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/assets/vendors/apexcharts/apexcharts.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/pages/dashboard.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>


</body>
</html>
