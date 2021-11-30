<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<div class="page-heading">
	<section class="section">
		<div class="row">
			<div class="col-9">
				<div class="card">
					<div class="card-header">
						<h4 class="card-title">글 작성</h4>
						<td class="form-inline"><input type="text" id="boardTitle"
							name="boardTitle" class="form-control" style="width: 910px"
							placeholder="제목" /></td>
					</div>
					<div class="card-body">
						<div id="summernote"></div>
					</div>

				</div>
				<a href="#" class="btn btn-success btn-icon-split btn-sm"> <span
					class="icon text-white-50"> <i class="fas fa-check"></i>
				</span> <span class="text"><b>확인</b></span>
				</a> <a href="#" class="btn btn-danger btn-icon-split btn-sm"> <span
					class="icon text-white-50"> <i class="fas fa-check"></i>
				</span> <span class="text"><b>취소</b></span>
				</a>
			</div>
		</div>
	</section>
</div>