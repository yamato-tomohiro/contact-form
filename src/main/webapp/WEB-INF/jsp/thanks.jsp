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
<a href="${pageContext.request.contextPath}/contact/input">入力画面へ戻る</a>
</body>
</html>