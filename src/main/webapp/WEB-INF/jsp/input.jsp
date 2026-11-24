<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/contact/confirm" method="post">
<p>お名前：<input type="text" name="onamae" required></p>
<p>メールアドレス：<input type="email" name="mail_address" required></p>
<p>性別：
	<label><input type=radio name="sex" value="男性">男性</label>
	<label><input type=radio name="sex" value="女性">女性</label>
</p>
<p>お問い合わせ種別：
	<label><input type="checkbox" name="cates" value="製品について">製品について</label>
	<label><input type="checkbox" name="cates" value="サービスについて">サービスについて</label>
	<label><input type="checkbox" name="cates" value="採用について">採用について</label>
	<label><input type="checkbox" name="cates" value="その他">その他</label>
</p>
<p>住まいエリア：
	<select name="pref">
		<option value="">選択してください</option>
		<option value="北海道">北海道</option>
		<option value="東北">東北</option>
		<option value="関東">関東</option>
		<option value="中部">中部</option>
		<option value="近畿">近畿</option>
		<option value="中国">中国</option>
		<option value="四国">四国</option>
		<option value="九州・沖縄">九州・沖縄</option>
	</select>
</p>
<p>メッセージ：<textarea name="message" required></textarea></p>
<p><input type="submit" value="確認"></p>
</form>
</body>
</html>