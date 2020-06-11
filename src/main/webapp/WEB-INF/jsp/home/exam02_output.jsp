<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>
		<script>
			function fun1()
			{
				console.log("fun1() 실행");
				div1 = document.getElementById("div1");
				div1.innerHTML += ("<img src='${pageContext.request.contextPath}/resource/img/bg01.png'/>");
			}
			
			function fun2()
			{
				console.log("fun2() 실행");
				document.write("<img src='${pageContext.request.contextPath}/resource/img/bg01.png'/>");
			}
			
			function fun3()
			{
				console.log("fun3() 실행");
				window.alert("이미지 클릭함?");
			}
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam02_output.jsp</h5>
		
		<div>
			<a href="javascript:fun1()" class = "btn btn-danger btn-sm">동적 내용 넣기 </a>
			<button onclick = "fun2()" class = "btn btn-info btn-sm">동적 내용 넣기2</button>
			<a href="javascript:fun3()"><img src = "${pageContext.request.contextPath}/resource/img/button1.PNG">동적 내용 넣기 </a>
		</div>
		<hr/>
		<div id="div1">
		</div>
	</body>
</html>