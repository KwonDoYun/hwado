<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Topbar -->
<nav
	class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

	<!-- Sidebar Toggle (Topbar) -->
	<button id="sidebarToggleTop"
		class="btn btn-link d-md-none rounded-circle mr-3">
		<i class="fa fa-bars"></i>
	</button>

	<!-- 여기다가 게시판 이름 넣기
                    	 글자 정렬해서 이쁘게 하기 -->
	<h1 class="h3 mb-2 text-gray-800"><b id="title"></b></h1>
	<p class="mb-3" style="margin: 2em;" id="contents"></p>


	<!-- Topbar Navbar -->
	<ul class="navbar-nav ml-auto">

		<!-- Nav Item - Search Dropdown (Visible Only XS) -->
		<li class="nav-item dropstart no-arrow d-sm-none"><a
			class="nav-link dropstart-toggle" href="#" role="button"
			data-toggle="dropstart" aria-haspopup="true" aria-expanded="false">
				<i class="fas fa-search fa-fw"></i>
		</a> <!-- Dropdown - Messages -->
			<div
				class="dropdown-menu dropstart-menu-right p-3 shadow animated--grow-in"
				aria-labelledby="searchDropdown">
				<form class="form-inline mr-auto w-100 navbar-search">
					<div class="input-group">
						<input type="text" class="form-control bg-light border-0 small"
							placeholder="Search for..." aria-label="Search"
							aria-describedby="basic-addon2">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button">
								<i class="fas fa-search fa-sm"></i>
							</button>
						</div>
					</div>
				</form>
			</div></li>

		<!-- Nav Item - User Information -->
		<li class="nav-item dropstart no-arrow"><a
			class="nav-link dropstart-toggle" href="#" role="button"
			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="mr-2 d-none d-lg-inline text-gray-600">${user.nickname}</span>
				<img class="img-profile rounded-circle"
				src="${pageContext.request.contextPath}${user.userImg}">
		</a> <!-- Dropdown - User Information -->
			<div
				class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
				aria-labelledby="userDropdown">
				<a class="dropdown-item"
					href="${pageContext.request.contextPath}/profile"> <i
					class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> 프로필
				</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="logout.do" data-toggle="modal"
					data-target="#logoutModal"> <i
					class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
					로그아웃
				</a>
			</div></li>
	</ul>
</nav>
<!-- End of Topbar -->