<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html>
<html lang='es'>
<head>
<meta charset='utf-8'>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<meta name='description' content=''>
<meta name='author' content=''>
<link rel='icon' href='../../favicon.ico'>

<title>Susan</title>
<link href='../css/bootstrap.min.css' rel='stylesheet'>
<link href='../css/susan-base.css' rel='stylesheet'>
<!--[if lt IE 9]>
      <script src='https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js'></script>
      <script src='https://oss.maxcdn.com/respond/1.4.2/respond.min.js'></script>
    <![endif]-->
</head>

<body>

	<jsp:include page='WEB-INF/fragmentos/menu.jsp'></jsp:include>
	<div class='container'>
		<c:if test='${not empty message}'>
		    <div class='row'>
		    	<div class='col-sm-12'>
		            <div class='alert alert-success'>${message}</div>
		        </div>
		    </div>
		</c:if>
  
	  	<c:forEach var='i' items='${list}'>
	    <div class='row'>
		    <div class='col-sm-12' align='center'>
		    	<div class='container'>
				    <div class='row'>
					    <div class='col-sm-12'>
					    	<h3><strong>${i.nombre}</strong></h3>
					    </div>
				   	</div>
				    <div class='row'>
					    <div class='col-sm-12'>
					    	<span><strong>Direccion:</strong> ${i.direccion}</span>
					    </div>
				   	</div>
				    <div class='row'>
					    <div class='col-sm-12'>
					    	<span><strong>Calificacion:</strong> ${i.calificacion}</span>
					    </div>
				   	</div>
		    	</div>
			</div>
		</div>
		</c:forEach>
	
	    <jsp:include page='../WEB-INF/fragmentos/footer.jsp'></jsp:include>
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</div>
</body>