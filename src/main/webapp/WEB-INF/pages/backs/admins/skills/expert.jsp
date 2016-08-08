<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AdminLTE 2 | Data Tables</title>
        <link rel="stylesheet" href="../../../../../../resources/static/admin/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="../../../../../../resources/static/admin/plugins/datatables/dataTables.bootstrap.css">
        <link rel="stylesheet" href="../../../../../../resources/static/admin/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="../../../../../../resources/static/admin/dist/css/skins/_all-skins.min.css">
    </head>
    <body  class="hold-transition skin-blue sidebar-mini">   
        <div class="wrapper"> 
            <jsp:include page="../../includes/menubar.jsp"/>
            <jsp:include page="../../includes/sidbar-left.jsp"/> 
            <jsp:include page="includes/expert-list.jsp" /> 
        </div>        
        <script src="../../../../../../resources/static/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
        <script src="../../../../../../resources/static/admin/bootstrap/js/bootstrap.min.js"></script>
        <script src="../../../../../../resources/static/admin/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="../../../../../../resources/static/admin/plugins/datatables/dataTables.bootstrap.min.js"></script>
        <script src="../../../../../../resources/static/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <script src="../../../../../../resources/static/admin/plugins/fastclick/fastclick.js"></script>
        <script src="../../../../../../resources/static/admin/dist/js/app.min.js"></script>
        <script src="../../../../../../resources/static/admin/dist/js/demo.js"></script>
        <script>
            $(function () {
                $("#example1").DataTable();
                $('#example2').DataTable({
                    "paging": true,
                    "lengthChange": false,
                    "searching": false,
                    "ordering": true,
                    "info": true,
                    "autoWidth": false
                });
            });
        </script>
    </body>
</html>