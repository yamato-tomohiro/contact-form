<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String[] cates = (String[]) request.getAttribute("cates"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>お名前：${onamae}</p>
<p>メールアドレス：${mail_address}</p>
<p>性別：${sex}</p>
<p>お問い合わせ種別：
	<% if (cates != null) { for (String cate : cates) { %>
    	<%= cate %>
	<% } } %>
</p>
<p>住まいエリア：${pref}</p>
<p>メッセージ</p>
<p style="white-space: pre-wrap;">${message}</p>
<form action="${pageContext.request.contextPath}/contact/thanks" method="post">
	<input type="hidden" name="onamae" value="${onamae}">
	<input type="hidden" name="mail_address" value="${mail_address}">
	<input type="hidden" name="sex" value="${sex}">
	<% if (cates != null) { for (String cate : cates) { %>
		<input type="hidden" name="cates" value="<%= cate %>">
	<% } } %>
<input type="hidden" name="pref" value="${pref}">
<input type="hidden" name="message" value="${message}">
<p><input type="submit" value="送信する"></p>
</form>
</body>
</html>