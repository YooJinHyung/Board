<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <form role="form" method="POST">
    	<div class="box-body">
    		<label for="exampleInputEmail1">Tiltle</label>
    		<input type="text"
    			name='title' class="form-control" placeholder="Enter Title">
    	</div>
    	<div class="form-group">
    		<label for="exampleInputPassword1">Content</label>
    		<textarea class="form-control" name="content" rows="3" placeholder="Enter...."></textarea>
    	</div>
    	<div class="form-group">
    		<label for="exampleInputEmail1">Writer</label>
    		<input type="text"
    			name="writer" class="form-control" placeholder="Enter Writer">
    	</div>
    	<div class="box-footer">
    		<button type="submit" class="btn btn-primary">Submit</button>
    	</div>
    </form>
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