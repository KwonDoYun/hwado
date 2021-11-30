<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>DB 잘 되는지 확인용</h3>

<div>
	<form action="/community/lineboard_registertest.do">
		제목<input type="text" name="boardTitle"><br>
		내용<input type="text" name="content"><br>
		해시태그<input type="text" name="hashtag"><br>
		<input type="submit" value="작성하기">
	</form>
</div>

<hr>

<div>
여기에 작성한 댓글 보여주기 <br>
<c:forEach items="list" var="vo">
${list.boardTitle} <br>
${list.content} <br>
${list.hashtag} <br>
</c:forEach>

</div>

</body>
</html>