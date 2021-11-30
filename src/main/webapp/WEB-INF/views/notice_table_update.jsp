
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

<title>SIAN_공지 글 수정</title>

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
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable">
									<thead>

										<div class="panel" style="margin-left: 1px;">
											<div id="contAreaBox">
												<div class="panel">
													<div class="panel-body">
														<form role="form" action="${pageContext.request.contextPath}/notice/update.do" method="post">
															<div class="table-responsive" style="text-align: center;">
																<table id="datatable-scroller"
																	class="table table-bordered tbl_Form">
																	<caption></caption>
																	<colgroup>
																		<col width="250px" />
																		<col />
																	</colgroup>
																	<tbody>
																		<tr>
																			<th class="active">작성자</th>
																			<td class="form-inline"><span
																				style="width: 200px">관리자</span></td>
																		</tr>
																		<tr>
																			<th class="active">제목</th>
																			<td class="form-inline"><input type="text"
																				id="boardTitle" name="boardTitle"
																				class="form-control" style="width: 840px" value="${showNoticeContent.boardTitle} "/></td>
																		</tr>
																		<tr>
																			<th class="active">내용</th>
																			<td class="form-inline"><textarea type="text" id="content"
																					name="content" cols="100" rows="10"
																					class="form-control">${showNoticeContent.content}</textarea></td>
																		</tr>
																		<tr>
																			<th class="active"></th>
																			<td class="form-inline">
																				<input class="form-control" type="file" multiple>
																			</td>
																		</tr>
																	</tbody>
																</table>
															<input type="hidden" id="boardId" name="boardId" value="${showNoticeContent.boardId}">
															</div>
															<div style="margin-left: 0em;">
															<input class="btn btn-warning btn-icon-split" type="submit" value="수정완료">
																<span class="icon text-white-50">
																	<i class="fas fa-check"></i>
															</span>
															
															<a onclick="history.back(-2)"
																class="btn btn-danger btn-icon-split">
								                                <span class="icon text-white-50">
								                                    <i class="fas fa-trash"></i>
								                                </span>
								                                <span class="text"><b>취소</b></span>
								                            </a>
														</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</thead>
								</table>

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
