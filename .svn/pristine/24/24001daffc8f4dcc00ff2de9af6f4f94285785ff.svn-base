<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="page-content">
	<section class="row">

		<div class="col-12 col-lg-9">

			<div class="row">
				<div class="col-12">


					<!-- 한줄시작 -->
					<section class="content">
						<div class="container-fluid">

							<!-- Timelime example  -->
							<div class="row">
								<div class="col-md-12">
									<!-- The time line -->
									<div class="timeline">
										<!-- timeline time label -->
										<div class="time-label">
											<span class="bg-dark">한줄메모</span>
										</div>
										<!-- /.timeline-label -->
										<!-- timeline item -->

										<!-- 글 작성 -->
										<div>
											<i class="fas fa-user bg-blue"></i>
											<div class="timeline-item">
												<span class="time"><i class="fas fa-pen"></i> 글쓰기</span>
												<h3 class="timeline-header">
													<a href="#">${user.nickname}</a>
												</h3>
												<!-- textarea -->
												<div class="form-group">
													<form action="/community/short_board/register.do">
														<textarea id="textarea" class="form-control"
															inputmode="text" name="content" rows="3"
															placeholder="자유롭게 수다떨기" required="required"></textarea>
														<div class="row">
															<div class="col-6">
																<input type="text" inputmode="text" name="hashtag"
																	class="form-control" placeholder="#">
															</div>
															<button id="btnRegister" type="submit"
																class="btn btn-primary float-right">
																<i class="fas fa-check"></i> 등록
															</button>
														</div>
													</form>
												</div>
												<!-- textarea -->
											</div>
										</div>
										<!-- 글 작성 -->
									</div>
									<!-- 스크롤 되는 구간 -->
									<div class="overflow-auto" id="scrollLine">
									<div class="timeline">
										<!-- 반복되서 한 줄씩 추가되는 내용 -->
										<c:forEach items="${shortBoardlist}" var="vo" varStatus="status">
											<div>
												<!-- 형식 고정 -->
												<i class="fas fa-user bg-green"></i>
												<div class="timeline-item">
													<span class="time"><i class="fas fa-clock"></i>
														${vo.regDate}</span>
													<h3 class="timeline-header">
														<strong>익명${vo.boardId}</strong>
													</h3>
													<!-- 형식 고정 -->

										 			<!-- 작성된부분 -->
													<div class="ListMode" id="list${vo.boardId}">
														<div class="timeline-body px-2 py-1">${vo.content}</div>
														<div class="timeline-footer px-2">
															<form id="frmSubmit" name="frmsubmit" method="post">
																<span class="time"><a
																	href="/community/short_board/hashtag?hashtag=${vo.hashtag}">#${vo.hashtag}</a></span>
																<input type="hidden" id="boardId"
																	name="boardId" value="${vo.boardId}">
																<input type="hidden" id="boardUserId"
																	name="boardId" value="${vo.boardId}">
																<c:if test="${vo.userId==user.userId}">
																	<button class="btnDelete btn btn-outline-danger float-right btn-sm" formaction="${pageContext.request.contextPath}/short_board/delete.do">
																		<i class="fas fa-times"></i> 삭제
																	</button>
																	
																	<button type="button" class="btnEdit btn btn-outline-info float-right btn-sm" id="${vo.boardId}">
																		<i class="fas fa-redo"></i>수정
																	</button>
																</c:if>
															</form>
														</div>
													</div>
													<!-- 작성된부분 -->
													<!-- 위에서 수정 버튼 누르면 보여지게 되는 부분 -->
													<div class="EditMode" id="edit${vo.boardId}">
														<div class="form-group">
															<form>
																<textarea id="textarea" class="form-control"
																	inputmode="text" name="content" id="content${vo.boardId}" rows="3">${vo.content}</textarea>
																<div class="row">
																	<div class="col-6">
																	<input type="hidden" id="boardId" name="boardId" value="${vo.boardId}">
																		<input type="text" inputmode="text" name="hashtag"
																			id="content${vo.boardId}" class="form-control" value="${vo.hashtag}">
																	</div>
																	<button type="submit" formaction="/community/short_board/update.do"
																		class="btnEditSubmit btn btn-primary float-right">
																		<i class="fas fa-check"></i> 등록
																	</button>
																	<button
																		class="btnCancel btn btn-outline-primary float-right btn-sm"
																		type="submit">
																		<i class="fas fa-redo"></i> 취소
																	</button>
																</div>
															</form>
														</div>
													</div>
													<!-- 수정부분 -->
												</div>
											</div>
										</c:forEach>
										<!-- 반복되서 한 줄씩 추가되는 내용 -->
									</div>
									</div>
									<!-- 스크롤 되는 구간 -->
									<!-- /.col -->
								</div>
							</div>
							<!-- /.timeline -->
						</div>
					</section>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-xl-4"></div>
				<div class="col-12 col-xl-8"></div>
			</div>
		</div>

		<!-- 해시태그 카드 -->
		<div class="col-12 col-lg-3">
			<div>
				<br>
				<br>
			</div>
			<div class="card">
				<div class="card-body py-3 px-3">
					<div class="d-flex align-items-center">
						<!--#해시태그 들어가는 부분-->
						<div>
							<form action="/community/short_board/list" method="post" id="hashTagZone">
								<input type="submit"
									class="btn btn-outline-primary rounded-pill btn-sm"
									name="hashtagAll" value="All">
							</form>
							<c:forEach items="${hashtagList}" var="hashtagList">
								<form
									action="/community/short_board/hashtag?hashtag=${hashtagList}"
									id="hashTagZone">
									<input type="submit"
										class="btn btn-outline-primary rounded-pill btn-sm"
										name="hashtag" value="${hashtagList}">
								</form>
							</c:forEach>
						</div>
						<!--#해시태그 들어가는 부분-->
					</div>
				</div>
			</div>
		</div>
		<!-- 해시태그 카드 -->
	</section>
</div>
