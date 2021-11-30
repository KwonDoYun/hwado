
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

<title>SIAN_프로필</title>

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

					<%@ include file="include/include_user_activity.jsp"%>

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
		src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.bundle.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/assets/vendors/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/vendors/summernote/summernote-lite.min.js"></script>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	
	<script>
		var title = '회원 정보 수정'
		var contents = '기본 정보를 수정하는 공간입니다.'
		document.getElementById("title").innerHTML=title;
		document.getElementById("contents").innerHTML=contents;
	</script>
	
	<script>

	var code = "";
	
	$(function() {
		$('#btnNickname').on('click', updateNickname)
	 	$('#btnDelete').on('click', userDelete)
	 	$('#btnMailCheck').on('click', sendMail)
	 	$('#btnCodeCheck').on('click', codeCheck)
	 	$('#btnUpdatePw').on('click', newpwCheck)
	 	$('#activity').on('change', selectView)
	 	
	 	// 이미지 업로드 
	 	$('#userImg').on('change', selectImg)
	 	
	 	// 내활동영역 
	 	$('.btnNhEdit').on('click', openEdtNh);
		$('.btnNhDelete').on('click', delNh);
		$('.btnAnEdit').on('click', openEdtAn);
		
		$('#frmSubmit').submit(checkform)
		
	});
	
	
	function updateNickname() {
		if(($('#nickname').val()).length!=0) {
			$.ajax({
				type:"GET",
				url:"userNicknameUpdate.do?nickname="+$('#nickname').val(),
				success:function(data) {
					console.log(data);
					alert('닉네임이 변경 되었습니다.');
					window.location.reload();
				}
			})
		}
		else {
			alert('닉네임을 입력해주세요.')
			$('#nickname').focus();
			return false;
		}
	}
	
  	function userDelete() {
  		if(confirm("회원 탈퇴하시면 탈퇴하신 아이디는 다시 이용하실 수 없으며, 삭제된 모든 정보는 다시 복원할 수 없습니다.")) {
  			location.href = "userDelete.do"
  		}
  		else return false;
  	}    
	
	// 메일 전송
	function sendMail() {
		console.log($('#email').val())
		if(!CheckEmail($('#email').val())) {
			alert("이메일 형식이 잘못되었습니다.");
			$('#email').focus();
			return;
		}
		else if(($('#email').val()).length==0) {
			alert("이메일을 입력하세요.");
			$('#email').focus();
			return;
		}
		else {
			$.ajax({
				type:"GET",
				url:"mailCheck.do?email="+$('#email').val(),
				success:function(data) {
					$('#emailCode').attr("disabled", false);
					code = data;
				}
			})
		}
		
	}
	
	// 이메일 형식 확인
	function CheckEmail(str) {             
	     var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	     if(!reg_email.test(str)) return false;
	     else return true;                          
	}
	
	// 인증번호 비교
	function codeCheck() {
		console.log(code);
		
		var inputCode = $('#emailCode').val()
		console.log(inputCode);
		var checkOutput = $('#email_codeCheck_warn');
		
		if(inputCode == code) {
			checkOutput.html("인증번호가 일치합니다.");
		}
		else {
			checkOutput.html("인증번호를 다시 확인해주세요.");
			$('#emailCode').val('');
			
		}
		
	}
	
	// 새로운 비밀변경 일치 확인
	function newpwCheck() {
		if($('#newpw').val() != $('#newpwcheck').val()) {
			alert('비밀번호가 일치하지 않습니다.')
			return false;
		}
		else {
			alert('패스워드가 변경되었습니다.')
			return true;
		}
	}
	
	// option 선택
	function selectView() {
		if(this.value==1) {
			$('#nohow').show();
			$('#anony').show();
		}
		else if(this.value==2) {
			$('#nohow').hide();
			$('#anony').hide();
		}
		else if(this.value==3) {
			$('#nohow').show();
			$('#anony').hide();
		}
		else if(this.value==4) {
			$('#nohow').hide();
			$('#anony').hide();
		}
		else if(this.value==5) {
			$('#nohow').hide();
			$('#anony').show();
		}
	}
	
	// 이미지 올리기
	function selectImg() {
		if(this.files && this.files[0]) {
			var reader = new FileReader;
			reader.onload = function(data) {
				$(".select_img img").attr("src", data.target.result).width(200);
			}
			reader.readAsDataURL(this.files[0])
		}
	}
	
	function checkForm() {
		if($('#nickname').val() == '') {
			$('#nickname').focus();
			return false;
		}
		else if($('#emailCode').val() == '') {
			$('#emailCode').focus();
			alert('인증번호를 입력해주세요.')
			return false;
		}
		else if($('#email').val() == '') {
			$('#email').focus();
			return false;
		}
		
		$('#frmSubmit').action = 'userInfoUpdate.do';
		return ;
	}
	
	// 내 활동내역 nohow 부분
	function openEdtNh() {
		var id_check = $(this).attr("id");
		//alert(id_check.substr(6));
		var num = id_check.substr(6);
		location.href = "${pageContext.request.contextPath}/general_board/updateForm?boardId="+num;
	}
	
	function delNh() {
		var id_check = $(this).attr("id");
		var num = id_check.substr(7);
		
		location.href = "${pageContext.request.contextPath}/general_board/delete?boardId="+num;
		alert('삭제완료')
	}
	
	// 내 활동내역 anony 부분
	function openEdtAn() {
		var id_check = $(this).attr("id");
		//alert(id_check.substr(6));
		var num = id_check.substr(6);
		location.href = "${pageContext.request.contextPath}/short_board/list?focus=list"+num;
	}
	
	
	</script>
</body>
</html>
