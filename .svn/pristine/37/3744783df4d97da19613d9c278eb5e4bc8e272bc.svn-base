<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<table class="table">
	<thead>
		<tr>
			<th class="col-1">✔</th>
			<th class="col-1.5">아이디</th>
			<th class="col-1.5">이름</th>
			<th class="col-3">속성 추가</th>
			<th class="col-3">칭호 추가</th>
			<th class="col-2">회원정보삭제</th>
		</tr>
	</thead>
	<tbody>
		
		<c:forEach items="${userInfo}" var="vo1" varStatus="status">
				<div style="display:none"></div>
				<tr>
					<td class="col-1"><input type="checkbox"></td>
					<td class="col-1.5" name="userId" id="userId">${vo1.userId}</td>
					<td class="col-1.5" name="userName" id="userName">${vo1.userName}</td>
					<td class="col-3">
						<input type="text" style="width:150px">
						<a href="#" class="btn btn-success btn-icon-split btn-sm"> <span
							class="icon text-white-50"> <i class="fas fa-check"></i>
						</span> <span class="text"><b>추가</b></span>
						</a>
					</td>
					<td class="col-3" id="user_ach">
						<select id="selectAchMent" name="selectAchMent">
							<option value="x">골라주세요
							<option value="타자왕">타자왕
							<option value="1차 프로젝트 1등">1차 프로젝트 1등
							<option value="2차 프로젝트 1등">2차 프로젝트 1등
							<option value="3차 프로젝트 1등">3차 프로젝트 1등
						</select>
						<a href="#">
							<button class="btnNhEdit btn-success" id="nhEdit${vo1.userId}">
								<span class="text">
									<b>추가</b>
								</span>
							</button>
						</a>
					</td>
					<td class="col-1">
						<a href="#" class="btn btn-danger btn-icon-split btn-sm"> <span
							class="icon text-white-50"> <i class="fas fa-check"></i>
						</span> <span class="text"><b>삭제</b></span>
						</a>
					</td>
				</tr>

		</c:forEach>
	
	</tbody>
</table>

<link rel="stylesheet" href="assets/vendors/simple-datatables/style.css">

<script src="assets/vendors/simple-datatables/simple-datatables.js"></script>