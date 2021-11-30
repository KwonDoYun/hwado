<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[name='writeForm']");
		$(".write_btn").on("click", function() {
			if (fn_valiChk()) {
				return false;
			}
			formObj.attr("action", "/board/write");
			formObj.attr("method", "post");
			formObj.submit();
		});
	})
	function fn_valiChk() {
		var regForm = $("form[name='writeForm'] .chk").length;
		for (var i = 0; i < regForm; i++) {
			if ($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null) {
				alert($(".chk").eq(i).attr("title"));
				return true;
			}
		}
	}
</script>

<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">

						<!-- 						<form name="form" action="/board" method="post" enctype="multipart/form-data">
							<label>파일 업로드</label>
							<input type="file" name="files" multiple="multiple">
							<input type="submit" id="submit" value="전송">
						</form> -->

						<div class="inputArea">
							<label for="gdsImg">이미지</label> <input type="file" id="gdsImg"
								name="file" />
							<div class="select_img">
								<img src="" />
							</div>

						</div>

						<div>
							<button type="submit" id="register_Btn" class="btn btn-success">등록</button>
						</div>

					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="card card-primary"></div>
						</div>
						<div class="col-12">
							<div class="card card-primary">
								<div class="card-body">
									<div class="row">
										<div class="col-sm-3">
											<a href="https://via.placeholder.com/1200/FFFFFF.png?text=1"
												data-toggle="lightbox" data-title="sample 1 - white"
												data-gallery="gallery"> <img
												src="https://images.chosun.com/resizer/u9nJRxs0BbtjygJ4HzKukecXnOk=/464x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/UVBJZL3RXAB36BDSHVM3MW2WNY.jpg"
												class="img-fluid mb-3" alt="white sample" />
											</a>
										</div>
										<div class="col-sm-3">
											<a href="https://via.placeholder.com/1200/000000.png?text=2"
												data-toggle="lightbox" data-title="sample 2 - black"
												data-gallery="gallery"> <img
												src="https://w.namu.la/s/70bd13fedee29f099490d9af76635d1d2b34bd654e86bd289380d93e317c74a31aaa1cc2672bf2ec87bbbdae4f5a8ae280d093090131889521f37a0b6397ca2176c50bd36e3cbd14b400c83d303f0b69f39b58704d7a4522c17e3f761137a530"
												class="img-fluid mb-3" alt="black sample" />
											</a>
										</div>
										<div class="col-sm-3">
											<a
												href="https://via.placeholder.com/1200/FF0000/FFFFFF.png?text=3"
												data-toggle="lightbox" data-title="sample 3 - red"
												data-gallery="gallery"> <img
												src="https://w.namu.la/s/5a0dfbc22d0e432def0ab164c2f53441794f55e17f00ce84ab021bea2dae11d2c0d93adbfd509f1f4fc1476d32fa854b7b3d0d58ba9d0fbad8b57f2280d6d330be14f2ad7663a4e7dbd3e9b5958b9401"
												class="img-fluid mb-3" alt="red sample" />
											</a>
										</div>
										<div class="col-sm-3">
											<a
												href="https://via.placeholder.com/1200/FF0000/FFFFFF.png?text=4"
												data-toggle="lightbox" data-title="sample 4 - red"
												data-gallery="gallery"> <img
												src="https://mblogthumb-phinf.pstatic.net/MjAxOTA0MTFfMyAg/MDAxNTU0OTY0NDExODM3.yq8kEVXlmOBw6q-5jyZceq2rxtUAfmCn00KjOfjf6CEg.K3qeB83x7EnikNTcr7XyDiB9Li9VOHcXV6t_6JUo7iog.PNG.goproblem/2gsjgna1uruvUuS7ndh9YqVwYGPLVszbFLwwpAYXZ1rkyz7vKAbhJvHdPRzCvhGfPWQdhkcqKLhnajnHFpGdgkDq3R1XmTFaFxUfKbVyyA3iDi1Fzv.png?type=w2"
												class="img-fluid mb-3" alt="red sample" />
											</a>
										</div>
										<div class="col-sm-3">
											<a href="https://via.placeholder.com/1200/000000.png?text=5"
												data-toggle="lightbox" data-title="sample 5 - black"
												data-gallery="gallery"> <img
												src="https://img1.daumcdn.net/thumb/R1280x0.fjpg/?fname=http://t1.daumcdn.net/brunch/service/user/a2To/image/-4ZDMcKlWuZ11l5yCt_V-lzbDxM.jpeg"
												class="img-fluid mb-3" alt="black sample" />
											</a>
										</div>
										<div class="col-sm-3">
											<a href="https://via.placeholder.com/1200/FFFFFF.png?text=6"
												data-toggle="lightbox" data-title="sample 6 - white"
												data-gallery="gallery"> <img
												src="https://cdn.gametoc.co.kr/news/photo/201612/43070_80052_226.jpg"
												class="img-fluid mb-3" alt="white sample" />
											</a>
										</div>
										<div class="col-sm-3">
											<a href="https://via.placeholder.com/1200/FFFFFF.png?text=7"
												data-toggle="lightbox" data-title="sample 7 - white"
												data-gallery="gallery"> <img
												src="https://w7.pngwing.com/pngs/933/595/png-transparent-pepe-the-frog-glowing-halo-miscellaneous-vertebrate-grass.png"
												class="img-fluid mb-3" alt="white sample" />
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
	</div>
	<!-- ./wrapper -->


	<script>
		$(function() {
			$(document).on('click', '[data-toggle="lightbox"]',
					function(event) {
						event.preventDefault();
						$(this).ekkoLightbox({
							alwaysShowClose : true
						});
					});

			$('.filter-container').filterizr({
				gutterPixels : 3
			});
			$('.btn[data-filter]').on('click', function() {
				$('.btn[data-filter]').removeClass('active');
				$(this).addClass('active');
			});
		})
	</script>
</body>
