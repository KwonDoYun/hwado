<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SIAN_한줄게시판</title>
<!-- Google Font: Source Sans Pro -->

<!-- AdminLTE css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/adminlte.min.css">

<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<link rel="icon"
	href="${pageContext.request.contextPath}/resources/favicon-32x32.png"
	type="image/x-icon" sizes="16x16">

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

<style>

#textarea {
	height: 40px;
}

#hashTagZone {
	display: inline;
}

#hashtagAll {
	display: inline;
}

#scrollLine {
	height:45ex;
}

.EditMode {
	display: none;
}

.timeline-footer {
	height:30px;
}


</style>

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

					<%@ include file="include/include_line_board.jsp"%>

				</div>
				<!-- ./wrapper -->


			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- End of Main Content -->

	</div>
	<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<%@ include file="include/include_etc.jsp"%>


	<!-- Bottom 레이아웃 -->



	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script
		src="${pageContext.request.contextPath}/resources/js/demo/datatables-demo.js"></script>

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="${pageContext.request.contextPath}/resources/js/demo.js"></script>

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

	<script>
		var title = '한줄 수다방'
		var contents = '회원 간 익명으로 편하게 대화할 수 있는 공간입니다.'
		document.getElementById("title").innerHTML=title;
		document.getElementById("contents").innerHTML=contents;
	</script>

	<script>

	$(function() {
		//아이디에 해당하는 버튼이 클릭되면 함수가 실행된다
		$('.btnDelete').on('click', delCheck);
		$('.btnRegister').on('click', registerCheck);
		$('.btnEdit').on('click', editView);
		$('.btnCancel').on('click', closeView);
		// console.log($('#currentUserId').val())
		var currentUserId = $('#currentUserId').val();
	});
	
	function editView() {
		var id_check = $(this).attr("id");
	    var divList = 'list'+id_check;
	    var divEdit = 'edit'+id_check;
	   	
	   	$('#'+divList).hide();
	   	$('#'+divEdit).show();	
	}
	
	function closeView() {
		var id_check = $(this).attr("id");
	    var divList = 'list'+id_check;
	    var divEdit = 'edit'+id_check;
	   	
	   	$('#'+divList).show();
	   	$('#'+divEdit).hide();	
	}

	function delCheck() {

		result = confirm("정말 삭제하시겠습니까?");

		if(result == true){
			console.log('삭제버튼 클릭 트루 ')
			console.log($('#boardId').val())

		} else {
			return false;
		}
	}

	function registerCheck() {
		result = confirm("등록하시겠습니까?");

		if(result == true){
			$('#btnRegister').submit();
		} else {
			return false;
		}
	}
	
	</script>


</body>


</html>
