<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-teal sidebar sidebar-dark accordion"
	id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a
		class="sidebar-brand d-flex align-items-center justify-content-center"
		href="${pageContext.request.contextPath}/main">
		<div>SIAN:공간정보네트워크</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider">	<!-- Heading -->
	<div class="sidebar-heading">공지사항</div>



	<li class="nav-item"><a class="nav-link"
		href="${pageContext.request.contextPath}/notice/list"> <i
			class="fas fa-clipboard-list fa-2x text-gray-300"></i> <span>공지</span></a>
	</li>

	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">긴글 게시판</div>

	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item"><a class="nav-link"
		href="/community/general_board/list"> <i
			class="fas fa-clipboard-list fa-2x text-gray-300"></i> <span>노하우
				전달</span></a></li>

	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item"><a class="nav-link" href="/community/404"> <i
			class="fas fa-clipboard-list fa-2x text-gray-300"></i> <span>과제</span></a>
	</li>
	
	<li class="nav-item"><a class="nav-link" href="/community/404"> <i
			class="fas fa-clipboard-list fa-2x text-gray-300"></i> <span>summary</span></a>
	</li>
	
	<li class="nav-item"><a class="nav-link" href="/community/404"> <i
			class="fas fa-clipboard-list fa-2x text-gray-300"></i> <span>Help Q & A</span></a>
	</li>

	<!-- Divider -->
	<hr class="sidebar-divider">

	<div class="sidebar-heading">한줄 게시판</div>

	<li class="nav-item"><a class="nav-link"
		href="/community/short_board/list"> <i
			class="fas fa-comments fa-2x text-gray-300"></i> <span>한줄 수다방</span></a>
	</li>
	
	<hr class="sidebar-divider">
	
	<div class="sidebar-heading">기타 게시판</div>

	<li class="nav-item"><a class="nav-link"
		href="/community/404"> <i
			class="fas fa-comments fa-2x text-gray-300"></i> <span>팀원 확인</span></a>
	</li>
	
	<li class="nav-item"><a class="nav-link"
		href="/community/404"> <i
			class="fas fa-fw fa-table fa-2x text-gray-300"></i> <span>갤러리</span></a>
	</li>
	
	<li class="nav-item"><a class="nav-link"
		href="/community/404"> <i
			class="fas fa-fw fa-table fa-2x text-gray-300"></i> <span>캘린더</span></a>
	</li>

	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>

</ul>
<!-- End of Sidebar -->