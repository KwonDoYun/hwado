<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<div class="page-heading">
    <section class="section">
        <div class="card">
            <div class="card-body">

				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item col-3" role="presentation"><a
						class="nav-link active" id="home-tab" data-bs-toggle="tab"
						href="#table1" role="tab" aria-controls="home" aria-selected="true"
						style="text-align:center">
						<b>선택정보 변경</b></a>
					</li>
					<li class="nav-item col-3" role="presentation"><a class="nav-link"
						id="profile-tab" data-bs-toggle="tab" href="#table2" role="tab"
						aria-controls="profile" aria-selected="true" style="text-align:center">
						<b>내가 쓴 글 보기</b></a></li>
					<li class="nav-item col-3" role="presentation"><a class="nav-link"
						id="contact-tab" data-bs-toggle="tab" href="#table3" role="tab"
						aria-controls="contact" aria-selected="true" style="text-align:center">
						<b>비밀번호 변경</b></a></li>
					<li class="nav-item col-3" role="presentation"><a class="nav-link"
						id="contact-tab" data-bs-toggle="tab" href="#table4" role="tab"
						aria-controls="contact" aria-selected="true" style="text-align:center">
						<b>회원탈퇴</b></a></li>
				</ul>
				<br>
				<div  class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="table1" role="tabpanel" aria-labelledby="table1-tab">
						<form id="frmSubmit" name="frmSubmit" class="validation-form" action="" method="post" enctype="multipart/form-data">
							<div class="form-group row align-items-center" style="margin-left: 2em">
								<div class="select_img">
									<img class="img-profile rounded-circle col-3" style="width: 200"
								src="${pageContext.request.contextPath}${user.userImg}">
								
								</div>
								<%=request.getRealPath("/") %>
								<span class="col-3" style="margin-left: 2em">
									<input class="form-control" type="file" value="사진 올리기" id="userImg" name="file">
									<button id="btnImg" class="btn btn-outline-primary" style="width: 90" formaction="${pageContext.request.contextPath}/upload.do" >확인</button>
									<!-- 서버에서 확인해서 나중에 바꿔줘야함 그래야 이미지 등록됨 -->
									
								</span>
							</div>
							<hr>
							<div class="form-group row align-items-center">
								<div class="col-2" style="margin:1em">
									<label class="col-form-label">아이디</label>
								</div>
									<input type="text" class="form-control" style="width:400" value="${user.userId}"disabled >
							</div>
							<hr>
							<div class="form-group row align-items-center">
								<div class="col-2" style="margin:1em">
									<label class="col-form-label">닉네임</label>
								</div>
									<input id="nickname" name="nickname" type="text" class="form-control" style="width:400" value="${user.nickname}" required>
								<div class="col-2" style="margin-left: ">
									<button type="button" id="btnNickname" class="btn btn-outline-primary">변경</button>
								</div>
								<div class="invalid-feedback">닉네임을 입력해주세요.</div>
									
							</div>
							<hr>
							<div class="form-group row align-items-center">
								<div class="col-2" style="margin:1em">
									<label class="col-form-label">이메일</label>
								</div>
									<input id="email" name="email" type="text" class="form-control" style="width:400" value="${user.email}" required>
								<div class="col-2" style="margin-left: ">
									<button type="button" id="btnMailCheck" class="btn btn-outline-primary" >인증</button>
								</div>
							</div>
							<div class="form-group row align-items-center">
								<div class="col-2" style="margin:1em">
									<label class="col-form-label">인증번호</label>
								</div>
									<input id="emailCode" name="emailCode" type="text" class="form-control" style="width:400" placeholder="인증번호(6자리)" disabled required>
								<div class="col-2" style="margin-left: ">
									<button type="button" id="btnCodeCheck" name="btnCodeCheck" class="btn btn-outline-primary" >확인</button>
								</div>
								<span id="email_codeCheck_warn"></span>
							</div>
							<hr>
							<div  style="margin:2em">
							<a href="${pageContext.request.contextPath}/main"><input type="button" class="btn btn-danger  "  value="취소" style="float: right;"  style="margin:2em"></a>
							<input type="submit" id="btnUpdate" class="btn btn-success  " value="확인"  style="float: right;"  style="margin:2em">
							</div>
						</form>
					</div>
					<div class="tab-pane fade" id="table2" role="tabpanel" aria-labelledby="table2-tab">
						<table class="table table-striped" id="table2">
							<thead>
								<select id="activity" name="activty">
									<option value="1" selected>전체보기</option>
									<option value="2">공지</option>
									<option value="3">노하우 전달</option>
									<option value="4">과제</option>
									<option value="5">한줄 수다방</option>
								</select>
								<tr>
									<th class="col-2">게시판</th>
									<th class="col-4">제목 또는 글</th>
									<th class="col-2">등록날짜</th>
									<th class="col-2">조회수</th>
									<th class="col-2">수정 / 삭제</th>
								</tr>
							</thead>
							<tbody id="nohow">
								<c:forEach items="${actvityGeneral}" var="vo1">
									<c:if test="${vo1.userId==user.userId}">
										<tr>
											<td>노하우 전달</td>
											<td>${vo1.boardTitle}</td>
											<td><fmt:formatDate value="${vo1.regDate}" pattern="yyyy-MM-dd"/></td>
											<td>${vo1.clicks}</td>
											<td><button class="btnNhEdit badge bg-warning" id="nhEdit${vo1.boardId}">수정</button> <button
											class="btnNhDelete badge bg-danger" id="nhDelte${vo1.boardId}">삭제</button></td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
							<tbody id="anony">
								<c:forEach items="${actvityShort}" var="vo2">
									<c:if test="${vo2.userId==user.userId}">
										
										<tr>
											<td>익명게시판</td>
											<td>${vo2.content}</td>
											<td><fmt:formatDate value="${vo2.regDate}" pattern="yyyy-MM-dd"/></td>
											<td>x</td>
											<td><button class="btnAnEdit badge bg-warning" id="ahEdit${vo2.boardId}">보기</button>
										</tr>
										
									</c:if>
								</c:forEach>
							</tbody>
						</table>
					</div>
					
					<div class="tab-pane fade" id="table3" role="tabpanel" aria-labelledby="table3-tab">
						<div style="margin:4em">
							<b>비밀번호는 아이디나 주민등록번호 및 전화번호와 같이 개인정보와 관련된 숫자나 문자를 사용하시면 안됩니다.<br>
							</b>
						</div>
						<form action="updateUserPw.do" method="post">
							
							<div style="margin:4em">
								<input id="newpw" name="newpw" type="password" class="form-control" placeholder="새로운 비밀번호" style="width:500">
								<input id="newpwcheck" name="newpwcheck" type="password" class="form-control" placeholder="비밀번호 확인" style="width:500">
							</div>
							
							<div  style="margin:2em">
								<a href="${pageContext.request.contextPath}/main"><input type="button" class="btn btn-danger  "  value="취소" style="float: right;"  style="margin:2em"></a>
								<input type="submit" id="btnUpdatePw" class="btn btn-success  " value="확인"  style="float: right;"  style="margin:2em">
							</div>
						</form>
					</div>
				
					<div class="tab-pane fade" id="table4" role="tabpanel" aria-labelledby="table4-tab">
						<div style="margin:2em">
							<b><code>정말 사이트를 탈퇴하시겠습니까?</code></b>
						</div>
						<div style="margin:2em">
							<button id="btnDelete" class="btn btn-danger">SIA 회원 탈퇴</button>
						</div>
					</div>
				</div>
				
                
            </div>
        </div>

    </section>
</div>

<link rel="stylesheet" href="assets/vendors/simple-datatables/style.css">

<script src="assets/vendors/simple-datatables/simple-datatables.js"></script>
