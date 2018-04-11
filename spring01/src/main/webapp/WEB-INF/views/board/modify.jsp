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
        <small>Modify</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
    	<form role="form" method="post">
		<div class="box-body">
			<div class="form-group">
				<label for="exampleInputEmail1">BNO</label> <input type="text"
				name='bno' class="form-control" value="${boardVO.bno}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Title</label> <input type="text"
				name='title' class="form-control" value="${boardVO.title}">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Content</label> 
				<textarea class="form-control" name="content" rows="3" >
					${boardVO.content}
				</textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Writer</label> <input type="text"
				name='writer' class="form-control" value="${boardVO.writer}" readonly="readonly" >
			</div>
		</div>
		
		<div class="panel-footer">
			<button type="submit" class="btn btn-primary">SAVE</button>
			<button type="submit" class="btn btn-warning">CANCEL</button>
		</div>
		
		</form>
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
<script>
$(document).ready(function(){
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	$(".btn-warning").on("click", function(){
		self.location="/board/listAll";
	});
	
	$(".btn-primary").on("click", function(){
		formObj.submit();
	});

});
</script>
</html>

