<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>코드 등록</title>
	<!-- ax5ui-select -->
	<link href="${pageContext.request.contextPath}/Bootstrap_Admin2/ax5ui_grid/css/ax5ui-select.css" rel="stylesheet" type="text/css">
	<!-- Custom fonts for this template-->
	<link href="${pageContext.request.contextPath}/Bootstrap_Admin2/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<!-- <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"> -->
	<link href="${pageContext.request.contextPath}/Bootstrap_Admin2/font/family.css" rel="stylesheet">
	<!-- Custom styles for this template-->
	<link href="${pageContext.request.contextPath}/Bootstrap_Admin2/css/sb-admin-2.min.css" rel="stylesheet">
	<!-- AX5UI-GRID -->
	<!-- <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.css"> -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Bootstrap_Admin2/ax5ui_grid/css/ax5grid.css">
	<!-- <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-select/master/dist/ax5select.css" /> -->
	<!-- 위에 select랑 중복이여서 따로 저장안함;; --> 
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-select/master/dist/ax5select.css" /> 
	 
	  
	<!-- Bootstrap core JavaScript-->
	<script src="${pageContext.request.contextPath}/Bootstrap_Admin2/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/Bootstrap_Admin2/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="${pageContext.request.contextPath}/Bootstrap_Admin2/vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="${pageContext.request.contextPath}/Bootstrap_Admin2/js/sb-admin-2.min.js"></script>
	<!-- Page level plugins -->
	<script src="${pageContext.request.contextPath}/Bootstrap_Admin2/vendor/chart.js/Chart.min.js"></script>
	<!-- Page level custom scripts -->
	<script src="${pageContext.request.contextPath}/Bootstrap_Admin2/js/demo/chart-area-demo.js"></script>
	<script src="${pageContext.request.contextPath}/Bootstrap_Admin2/js/demo/chart-pie-demo.js"></script> 
	<!-- AX5UI-GRID -->
	<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script> -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/Bootstrap_Admin2/ax5ui_grid/js/jquery-1.12.3.min.js"></script>
	<!-- <script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5core/master/dist/ax5core.min.js"></script> -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/Bootstrap_Admin2/ax5ui_grid/js/ax5core.min.js"></script>
	<!-- <script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.min.js"></script> -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/Bootstrap_Admin2/ax5ui_grid/js/ax5grid.min.js"></script>
	<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-select/master/dist/ax5select.min.js"></script> 
	<!-- ax5ui-select -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/Bootstrap_Admin2/ax5ui_grid/js/ax5ui_grid/js/ax5ui-select.min.js"></script> 
</head>
	<body>
<div class="col-lg-6">
	<div class="card position-relative">
	  	<div class="card-header py-3">
	    	<h6 class="m-0 font-weight-bold text-primary">코드 등록</h6>
	  	</div>
	  <div class="card-body">
	  	<form name="forms" class="form-inline">
	  		<div class="form-group" style="display:inline-block; vartical-align:top;">
		  		<div style="display:inline-block;">분류코드</div>
				    <div data-ax5select="select1" 
				    	 data-ax5select-config="{
							                     name: 'select1',
							                     minWidth: 120,
							                     options: [
							                        {value:'1', text:'B12345-401-0'},
							                        {value:'2', text:'B12345-401-1'}
							                        ]
							                     }" style="margin-left:10px; display:inline-block;">
	                 </div>
	                 <div style="display:inline-block; margin-left:70px;">코드</div>
	                 <input type="text" style="margin-left:10px;" class="form-control" aria-label="Text input with dropdown button" placeholder="코드값을 입력하세요..">
	                 
	                 <br>
	                 
	            <div style="vartical-aglin:top; margin-top:20px; display:inline-block;">분류명</div>
				    <div data-ax5select="select2" 
				    	 data-ax5select-config="{
								                   name: 'select2',
								                   minWidth: 120,
								                   multiple: false,
								                   options: [
								                       {value:'3', text:'구매'},
								                       {value:'4', text:'판매'}
								                       ]
								                   }" style="margin-left:25px; display:inline-block;">
	                </div>
	                <div style="vartical-aglin:top; margin-top:20px; margin-left:98px; display:inline-block;">코드값</div>
				    <div data-ax5select="select2" 
				    	 data-ax5select-config="{
								                   name: 'select2',
								                   minWidth: 120,
								                   multiple: false,
								                   options: [
								                       {value:'3', text:'한국'},
								                       {value:'4', text:'중국'},
								                       {value:'4', text:'미국'}
								                       ]
								                   }" style="margin-left:10px; display:inline-block;">
	                </div>
	                
	                <br>
	                
	                <div style="vartical-aglin:top; margin-top:20px; display:inline-block;">비고</div>
	                <input type="text" style="width:480px; margin-left:10px;" class="form-control" aria-label="Text input with dropdown button" placeholder="비고를 입력하세요..">
				</div>
			</div>
	  	</form>
	  </div>
	</div>
	<div style="margin:10px;">
	<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="self.close()">취소</button>
	<button type="button" class="btn btn-primary">저장</button>
	</div>
</div>

<script type="text/javascript">
$(document.body).ready(function(){
    $('[data-ax5select]').ax5select({
        theme:'primary',
        onStateChanged: function(){
            console.log(this);
        }
    });
});
</script>
	</body>
</html>