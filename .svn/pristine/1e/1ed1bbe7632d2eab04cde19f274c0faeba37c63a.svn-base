<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="page-content">
	<section class="row">
		<div class="col-12 col-lg-9">
			<div class="row">
				<div class="col-6 col-lg-3 col-md-6">
					<div class="card">
						<div class="card-body px-3 py-4-5">
							<div class="row">
								<div class="col-md-4">
									<div class="stats-icon purple">
										<i class="iconly-boldShow"></i>
									</div>
								</div>
								<div class="col-md-8">
									<h6 class="text-muted font-semibold">Help Q & A</h6>
									<h6 class="font-extrabold mb-0">3</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-3 col-md-6">
					<div class="card">
						<div class="card-body px-3 py-4-5">
							<div class="row">
								<div class="col-md-4">
									<div class="stats-icon blue">
										<i class="iconly-boldProfile"></i>
									</div>
								</div>
								<div class="col-md-8">
									<h6 class="text-muted font-semibold">회원수</h6>
									<h6 class="font-extrabold mb-0">${userCnt}명</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-3 col-md-6">
					<div class="card">
						<div class="card-body px-3 py-4-5">
							<div class="row">
								<div class="col-md-4">
									<div class="stats-icon green">
										<i class="iconly-boldAdd-User"></i>
									</div>
								</div>
								<div class="col-md-8">
									<h6 class="text-muted font-semibold">새 가입자</h6>
									<h6 class="font-extrabold mb-0">${userNewCnt}명</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-3 col-md-6">
					<div class="card">
						<div class="card-body px-3 py-4-5">
							<div class="row">
								<div class="col-md-4">
									<div class="stats-icon red">
										<i class="iconly-boldBookmark"></i>
									</div>
								</div>
								<div class="col-md-8">
									<h6 class="text-muted font-semibold">새로운 과제</h6>
									<h6 class="font-extrabold mb-0">3</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<h4>
								<b>공지사항</b>
							</h4>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-hover table-lg">
									<thead>
										<tr>
											<td class="col-3">
												<p class="font-bold ms-2 mb-0">글 번호</p>
											</td>
											<td class="col-6">
												<p class=" mb-0">제목</p>
											</td>
											<td class="col-3">
												<p class=" mb-0">작성일</p>
											</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${latestNotice}" var="vo" varStatus="status" begin="0" end="2">
											<tr>
												<td class="col-3">
													<div class="d-flex align-items-center">
														<p class="font-bold ms-2 mb-0">${vo.boardId }</p>
													</div>
												</td>
												<td class="col-6">
													<p class=" mb-0"><a href="${pageContext.request.contextPath}/notice/showForm?boardId=${vo.boardId}">${vo.boardTitle}</a></p>
												</td>
												<td class="col-3">
													<p class=" mb-0"><fmt:formatDate value="${vo.regDate}" pattern="yyyy-MM-dd"/></p>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-xl-4">
					<div class="card">
						<div class="card-header">
							<h4>
								<b>이번주 뉴스</b>
							</h4>
						</div>
						<div class="card-body">
							<c:forEach var="href" items="${href}" varStatus="status">
	
								<div class="">
									<a href="https://news.naver.com${href}">
									${print[status.index]}</a><br><hr>
								</div>
							</c:forEach>
						</div>
						
					</div>
				</div>
				<div class="col-12 col-xl-8">
					<div class="card">
						<div class="card-header">
							<h4>최근 게시물</h4>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-hover table-lg">
									<thead>
										<tr>
											<td class="col-3">
												<p class="font-bold ms-2 mb-0">글번호</p>
											</td>
											<td class="col-6">
												<p class=" mb-0">글제목</p>
											</td>
											<td class="col-3">
												<p class=" mb-0">작성일</p>
											</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${latestGeralBoard}" var="vo"  varStatus="status" begin="0" end="2">
											<tr>
												<td class="col-3">
													<div class="d-flex align-items-center">
														<p class="font-bold ms-2 mb-0">${vo.boardId }</p>
													</div>
												</td>
												<td class="col-6">
													<p class=" mb-0"><a href="/community/general_board/showForm?boardId=${vo.boardId}">${vo.boardTitle}</a></p>
												</td>
												<td class="col-3">
													<p class=" mb-0"><fmt:formatDate value="${vo.regDate}" pattern="yyyy-MM-dd"/></p>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-12 col-lg-3">
			<div class="card">
				<div class="card-body py-4 px-5">
					<div class="d-flex align-items-center">
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/QRcapture.png"
								width="200">
						</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<h4>이번주 일정</h4>
				</div>
				<div class="card-content pb-4">
					<div class="recent-message d-flex px-4 py-3">
						<div class="avatar avatar-lg">
							<img
								src="https://blog.kakaocdn.net/dn/cz3Gp2/btqDljU9BEy/LKkWZO4mVdeJ08Lyf2uhqK/img.png">
						</div>
						<div class="name ms-4">
							<h5 class="mb-1">김길동</h5>
							<h6 class="text-muted mb-0">9-17 | @생일</h6>
						</div>
					</div>
					<div class="recent-message d-flex px-4 py-3">
						<div class="avatar avatar-lg">
							<img
								src="https://newsimg.hankookilbo.com/cms/articlerelease/2019/04/29/201904291390027161_3.jpg">
						</div>
						<div class="name ms-4">
							<h5 class="mb-1">이길동</h5>
							<h6 class="text-muted mb-0">9-24 | @발표</h6>
						</div>
					</div>
					<div class="recent-message d-flex px-4 py-3">
						<div class="avatar avatar-lg">
							<img
								src="http://file3.instiz.net/data/file3/2019/10/28/3/9/8/39826ed10940273709ecdef32ac144a3.jpg">
						</div>
						<div class="name ms-4">
							<h5 class="mb-1">최길동</h5>
							<h6 class="text-muted mb-0">9-23 | @TMI</h6>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>