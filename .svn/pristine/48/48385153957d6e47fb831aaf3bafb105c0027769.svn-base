<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>SIAN_회원가입</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="${pageContext.request.contextPath}/resources/css/mdb.min.css" rel="stylesheet">
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

.id_success{
	color : green;
	display : none;
}

.id_fail{
	color : red;
	display : none;
}

.pwCheck_fail {
	color: red;
	display : none;
}

.correct {
	color: green;
}
.incorrect {
	color: red;
}
</style>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<form class="validation-form" action="register_user.do" method="post" >
					<div class="row">
					
						<div class="col-md-6 mb-3">
							<label for="userName"> 이름 </label>
								<input type="text" class="form-control" id="userName" name="userName" placeholder="" value="" required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname"> 닉네임 </label>
								<input type="text" class="form-control" id="nickname" name="nickname" placeholder="" value="" required>
							<div class="invalid-feedback">닉네임을 입력해주세요.</div>
						</div>
					</div>
					<div class="mb-3">
						<label for="user_id"> 아이디 </label>
						<div class="input-group">
							<input type="text" class="form-control" id="userId" name="userId" placeholder="" required >
							<button  type="button" class="btn btn-primary btn-sm" data-mdb-ripple-color="dark" id="btnIdchk" value="N"><b>중복확인</b></button>
						</div>
						<div class="invalid-feedback">아이디를 입력해주세요.</div>
							<div class="id_success">사용 가능한 아이디입니다.</div>
							<div class="id_fail">아이디가 이미 존재합니다.</div>
						
					</div>
					
					<div class="mb-3">
						<label for="user_pw"> 패스워드</label>
							<input type="password" class="form-control" id="userPw" name="userPw" placeholder="" required>
						<div class="invalid-feedback">패스워드를 입력해주세요.</div>
					</div>
					<div class="mb-3">
						<label for="pwCheck">패스워드확인</label>
							<input type="password" class="form-control" id="pwCheck" placeholder="" required>
						<div class="pwCheck_fail">패스워드가 일치하지 않습니다.</div>
					</div>
					
					
					<div class="mb-3">
						<label for="email"> 이메일 </label>
							<input type="email" class="form-control" id="email" name="email" placeholder="@를 넣어주세요" required>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
					</div>
					
					<div class="mb-3">
						<label for="email_code">인증번호 </label>
						<div class="input-group">
							<input type="text" class="form-control" id="emailCode" name="emailCode" placeholder="인증번호를 입력하세요"  disabled="disabled" required>
							<button  id="btnMailCheck" type="button" class="btn btn-primary btn-sm">인증번호전송</button>
							<span id="email_codeCheck_warn"></span>
						</div>
					</div>
					<div class="mb-3">
						<label for="address1"> 주소 </label>

						<div class="input-group">
							<input type="text" class="form-control" id="address1" name="address1" placeholder="주소를 입력해주세요"  readonly required />
							<button  id="btnAddress1" type="button" class="btn btn-primary btn-sm">주소 찾기</button>
							<div class="invalid-feedback">주소를 입력해주세요.</div>
						</div>
					</div>
					<div class="mb-3">
						<label for="address2">
							상세주소 <span class="text-muted">&nbsp;(필수아님)</span>
						</label>
						<input type="text" class="form-control" id="address2" name="address2" placeholder="상세주소를 입력해주세요.">
					</div>
					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement" required>
						<label class="custom-control-label" for="aggrement">
							개인정보 수집 및 이용에 동의합니다.
						</label>
					</div>
					<div class="mb-4">
					</div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">
						회원가입
					</button>
				</form>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; 2021 SIA</p>
		</footer>
	</div>
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	var code = "";
	var addr1 = "";
	
	window.addEventListener('load', () => {
	const forms = document.getElementsByClassName('validation-form');
	Array.prototype.filter.call(forms, (form) => {
		form.addEventListener('submit', function (event) {
			if (form.checkValidity() === false) {
				event.preventDefault(); event.stopPropagation();
			} 
			form.classList.add('was-validated'); 
			}, false); 
		});
	}, false);
	
	$(function() {
		 $('#btnIdchk').on('click', idCheck)
		 $('#btnMailCheck').on('click', sendMail)
		 $('#btnAddress1').on('click', searchAddress)
	});
	
	function idCheck() {
		$.ajax({
			url:'idCheck.do',
			type:'post',
			dataType:'json',
			data:{'userId' : $('#userId').val()},
			success : mysuccess
		});
	}
		
	function mysuccess(data) {
		if(data==1) {
			$('.id_fail').css("display","inline-block");
			$('.id_success').css("display", "none");
		}
		else if(data==0) {
			$('#btnIdchk').attr("value", "Y");
			$('.id_success').css("display","inline-block");
			$('.id_fail').css("display", "none");	
		}
	}
	
	// 비밀번호 확인
	$(function() {
		$('#pwCheck').blur(function() {
			if($('#userPw').val() != $('#pwCheck').val()) {
				if($('#pwCheck').val()!='') {
					$('.pwCheck_fail').css("display", "inline-block");
					$('#pwCheck').val('');
					$('#pwCheck').focus();
				}
			}
			else {
				$('.pwCheck_fail').css("display", "none");
			}
		})
	})
	
	
	// 메일 전송
	function sendMail() {
		$.ajax({
			type:"GET",
			url:"mailCheck.do?email="+$('#email').val(),
			success:function(data) {
				// console.log(data);
				$('#emailCode').attr("disabled", false);
				code = data;
			}
		})
		
	}
	
	// 인증번호 비교
	$('#emailCode').blur(function() {
		console.log(code);
		
		var inputCode = $('#emailCode').val();
		var checkOutput = $('#email_codeCheck_warn');
		
		if(inputCode == code) {
			checkOutput.html("인증번호가 일치합니다.");
			checkOutput.attr("class", "correct");
		}
		else {
			checkOutput.html("인증번호를 다시 확인해주세요.");
			$('#emailCode').val('');
			checkOutput.attr("class", "incorrect");
			
		}
	});
	
	// 주소 연동
	function searchAddress() {
		 new daum.Postcode({
			 oncomplete: function(data) {
				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수
 
                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
 
                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    addr += extraAddr;
                
                } else {
                    addr += ' ';
                }
                
                addr += ', (우)' + data.zonecode;
 		
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                $('#address1').val(addr);
                $('#address1').val = addr;
               
                
                
                // 커서를 상세주소 필드로 이동한다.
                $("#address2").attr("readonly",false);
                $("#address2").focus();
		   	 }
			 
		 }).open(); 
	}
	

	
	</script>
	<!-- JQuery -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/mdb.min.js"></script>


</body>
</html>
