<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Custom fonts for this template-->
	<link href="${pageContext.request.contextPath}/Bootstrap_Admin2/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<!-- Custom styles for this template-->
	<link href="${pageContext.request.contextPath}/Bootstrap_Admin2/css/sb-admin-2.min.css" rel="stylesheet">
	<!-- AX5UI-GRID -->
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.css">
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
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
	<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5core/master/dist/ax5core.min.js"></script>
	<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.min.js"></script>
	<script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-select/master/dist/ax5select.min.js"></script> 
</head>
<decorator:head /> 
<body id="page-top">
  <div id="wrapper">
    <jsp:include page="left.jsp" />
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <jsp:include page="top.jsp" />       
        <div class="container-fluid">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
          </div>
		    <decorator:body />
        </div>        
      </div>
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <jsp:include page="footer.jsp" />
          </div>
        </div>
     </footer>    
    </div>
  </div>

  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">현재 세션을 종료 할 준비가되면 아래 "로그 아웃"을 선택하십시오..</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
          <a class="btn btn-primary" href="login.html">로그아웃</a>
        </div>
      </div>
    </div>
  </div>

</body>
</html>