<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>body</title>

<link href="${path}/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${path}/js/jquery.min.js"></script>
<script type="text/javascript" src="${path}/js/bootstrap.js"></script>
<style type="text/css">
#welcomeImage {
	margin: 0 auto;
	margin-left: 200px;
}
</style>
</head>

<body>
	<div id="divMain">
		<div id="welcomeImage">
			<img alt="Welcome to 老吾老幼吾幼招聘求职网" src="${path}/images/bg.png" />
		</div>
	</div>

</body>
</html>
