<%@page import="lx.sia.community.vo.CommentVO"%>
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

<title>SIAN_노하우 전달 게시판</title>

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
												<a href="#">제목 : ${showBoardContent.boardTitle}</a>
											</div>
											<c:if test="${showBoardContent.userId==user.userId}">
												<a
													href="/community/general_board/updateForm?boardId=${showBoardContent.boardId}"
													class="float-right btn-tool"><i class="fas fa-check"></i>수정하기</a>
												<span class="description"></span>
												<a onclick="if(!confirm('정말 삭제하시겠습니까?')){return false;}"
													href="/community/general_board/delete?boardId=${showBoardContent.boardId}"
													class="float-right btn-tool"><i class="fas fa-check"></i>게시글
													삭제</a>

											</c:if>
											<span class="description"></span> <span>닉네임 :</span>
											
												<c:if test="${showBoardAcMent != null}">
													${showBoardWriteUserNickname}<div class="badges"><span class="badge bg-warning">${showBoardAcMent}</span></div>
												</c:if>
												<c:if test="${showBoardAcMent == null}">
													${showBoardWriteUserNickname}
												</c:if>
									
											<div class="text-right">
												<i class="far fa-thumbs-up mr-1"></i> <span
													class="margin-left">추천수</span> <span class="margin-left">|</span>
												<span class="margin-left">조회수 :
													${showBoardContent.clicks}</span> <span class="margin-left">|</span>
												<span class="margin-left">| 작성일 : <fmt:formatDate
														value="${showBoardContent.regDate}" pattern="yyyy-MM-dd" />
											</div>

											</span>
										</div>
										<div class="card-body">
											<p>${showBoardContent.content}</p>
											<p>
												<br>
											</p>
										</div>
										<div class="vote clearfix">
											<form action="#">
												<div class="text-right align-bottom">
													<a href="/community/general_board/list"
														class="btn btn-secondary btn-icon-split btn-sm"> <i
														class="fas fa-arrow-right"></i> 목록으로
													</a> <a class="btn btn-success btn-icon-split btn-sm"> <i
														class="far fa-thumbs-up mr-1"></i> 추천
													</a> <a class="btn btn-warning btn-icon-split btn-sm "> <i
														class="fas fa-exclamation-triangle"></i> 신고
													</a>
												</div>
											</form>
										</div>
									</div>


									<div class="card-body">

										<i class="far fa-comments mr-1"></i> <span>댓글</span>

									</div>
									
									<c:if test="${comment_list!=null}">
										<div class="card-body">
											
											<tbody>
												<c:forEach items="${comment_list}" var="vo">
													
													<c:if test="${vo.boardId == showBoardContent.boardId}">
														<tr>
															<div>
																<td>${vo.commentId}.</td>
																<td>${vo.userId}</td>
															</div>
															<div>
																<td>${vo.commentContent}</td>
															</div>
															<div class="text-right">
																<td>작성일 :<fmt:formatDate
																		value="${vo.commentRegDate}"
																		pattern="yyyy-MM-dd HH:mm" /></td>
																<c:if test="${user.userId == vo.userId}">
																	<td>
																		<button class="btnDelete badge bg-danger"
																			id="Delte${vo.commentId}">삭제</button>
																	</td>
																</c:if>
															</div>
														</tr>
													</c:if>

												</c:forEach>
											</tbody>

										</div>
									</c:if>


								</div>

								<div class="form-comment row col-3" style="margin-left: 1em">
									<form action="/community/comment/CommentRegister.do"
										method="post">
										<div class="header">
											<b>내용</b>
										</div>
										<input type="hidden" id="boardId" name="boardId"
											value="${showBoardContent.boardId}">
										<div class="form-inline">
											<textarea id="commentContent" name="commentContent"
												cols="130" rows="2" class="form-control" placeholder="댓글"
												inputmode="text"></textarea>
										</div>
										<button class="btn btn-primary btn-icon-split btn-sm"
											style="margin-top: 1em">댓글등록</button>
									</form>
								</div>
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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<script>
					var commente_content = '';
					var title = '노하우 전달'
					var contents = '선후배 혹은 동기간 정보 교류를 하는 공간입니다.'
					document.getElementById("title").innerHTML=title;
					document.getElementById("contents").innerHTML=contents;
					
					$('.btnDelete').on('click', del);
					
					function del() {
						var id_check = $(this).attr("id");
						var num = id_check.substr(5);
						location.href = "${pageContext.request.contextPath}/comment/delete?commentId="+num;
						alert('삭제완료')
					}
					
				</script>
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