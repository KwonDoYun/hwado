<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SIAN_공지사항</title>

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

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/adminlte.min.css">

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
							<div class="card shadow mb-4">
								<div class="post">
									<div class="card card-light card-outline">
										<div class="card-header">
											<div class="username">
												<a href="#">제목 : ${showNoticeContent.boardTitle}</a>
											</div>
											<c:if test="${user.userId=='admin'}">
												<a
												href="${pageContext.request.contextPath}/notice/updateForm?boardId=${showNoticeContent.boardId}"
												class="float-right btn-tool"><i class="fas fa-check"></i>수정하기</a>
											<span class="description"></span> <a
												onclick="if(!confirm('정말 삭제하시겠습니까?')){return false;}"
												href="${pageContext.request.contextPath}/notice/delete?boardId=${showNoticeContent.boardId}"
												class="float-right btn-tool"><i class="fas fa-check"></i>게시글
												삭제</a>
											</c:if>
												
											<span class="description"></span> 
											<div class="text-right">
												<span class="margin-left">|
													작성일 : <fmt:formatDate value="${showNoticeContent.regDate}"
														pattern="yyyy-MM-dd" />
												</span>
											</div>

											
										</div>
										<div class="card-body">
											<p>${showNoticeContent.content}</p>
										</div>
										<div class="vote clearfix">
											<form action="#">
												<div class="text-right align-bottom">
													<a href="${pageContext.request.contextPath}/notice/list"
														class="btn btn-secondary btn-icon-split btn-sm"> <i
														class="fas fa-arrow-right"></i> 목록으로
													</a>
												</div>
											</form>
										</div>
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
				
				<script>
					var title = '공지사항'
					var contents = '아카데미의 공지사항을 볼 수 있는 공간입니다.'
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
</body>
</html>