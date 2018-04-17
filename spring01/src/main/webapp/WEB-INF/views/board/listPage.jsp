<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../include/head.jsp" %>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <%@ include file="../include/header.jsp" %>
  <!-- Left side column. contains the logo and sidebar -->
  <%@ include file="../include/mainSideBar.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
                      게시판
        <small>List All</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
	  	<div class="row">
	  		<div class="col-md-12">
	  			<div class="box">
	  				<div class="box-header with-border">
	  					<h3 class="box-title">ListAll</h3>
	  				</div>
	  			</div>
	  			<table class="table table-bordered">
			  		<tr>
			  			<th style="with: 20px">BNO</th>
			  			<th>TITLE</th>
			  			<th>WRITER</th>
			  			<th>REGDATE</th>
			  			<th style="with: 40px">VIEWCNT</th>
			  		</tr>
			  		
				  	<c:forEach items="${list}" var="boardVO">
						<tr>
							<td>${boardVO.bno}</td>
							<td><a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a> </td>
							<td>${boardVO.writer}</td>
					   		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></td>
					   		<td><span class="badge br-red">${boardVO.viewcnt}</span></td>
					    <tr>
				  	</c:forEach>
				 </table>
	  		</div>
	  		
	  		<!-- paging -->
	  		<div style="text-align:center">
			<ul class="pagination">
				<c:if test="${pageMaker.prev }">
					<li><a href="listPage?page=${pageMaker.startPage-1 }">&laquo;</a></li>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
					<li
						<c:out value = "${pageMaker.cri.page == idx?'class =active':''}"/>>
						<a href="listPage?page=${idx}">${idx}</a>
					</li>
				</c:forEach>
				
				<c:if test="${pageMaker.next && pageMaker.endPage>0}">
					<li><a href="listPage?page=${pageMaker.endPage +1 }">&raquo;</a></li>
				</c:if>
			</ul>
		</div>
		
		</div>
		
    </section>
    <!-- /.content -->
  </div>
  
  <!-- /.content-wrapper -->
  <%@ include file="../include/sideMenu.jsp" %>
  <!-- Main Footer -->
  <%@ include file="../include/footer.jsp" %>

  <!-- Control Sidebar -->
  <%@ include file="../include/controlSidebar.jsp" %>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>