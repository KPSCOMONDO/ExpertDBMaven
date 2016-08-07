<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/resources/static/img/profile/channy.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </form>      
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active treeview">
                <a href="${pageContext.request.contextPath}/admin">
                    <i class="fa fa-dashboard"></i>
                    <span>Dashboard</span>
                </a>                
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-files-o"></i>
                    <span>Expert</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">144</span>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="${pageContext.request.contextPath}/admin/expert/list"><i class="fa fa-circle-o"></i> Expert list</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/expert/list"><i class="fa fa-circle-o"></i> Add new expert</a></li>                    
                </ul>
            </li>            
            <li class="treeview">
                <a href="${pageContext.request.contextPath}/admin/position">
                    <i class="fa fa-files-o"></i>
                    <span>Job position</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">34</span>
                    </span>
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-files-o"></i>
                    <span>Subject</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">144</span>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> Subject list</a></li>
                    <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> Add new subject</a></li>                    
                </ul>
            </li>
            <li class="treeview">
                <a href="${pageContext.request.contextPath}/admin/skill/category">
                    <i class="fa fa-files-o"></i>
                    <span>Skill Category</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">14</span>
                    </span>
                </a>                
            </li>
            <li class="treeview">
                <a href="${pageContext.request.contextPath}/admin/skill">
                    <i class="fa fa-files-o"></i>
                    <span>Skill</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">14</span>
                    </span>
                </a>                
            </li>
            <li class="treeview">
                <a href="${pageContext.request.contextPath}/admin/language">
                    <i class="fa fa-files-o"></i>
                    <span>Language</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">14</span>
                    </span>
                </a>                
            </li>
            <li class="treeview">
                <a href="${pageContext.request.contextPath}/admin/province">
                    <i class="fa fa-files-o"></i>
                    <span>Province</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">14</span>
                    </span>
                </a>                
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-files-o"></i>
                    <span>User</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">144</span>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> Admin list</a></li>
                    <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> Users list</a></li>
                    <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> User privilege</a></li>                    
                </ul>
            </li>
            <li>
                <a href="pages/widgets.html">
                    <i class="fa fa-th"></i> <span>Report</span>
                    <span class="pull-right-container">
                        <small class="label pull-right bg-green">new</small>
                    </span>
                </a>
            </li>
        </ul>
    </section>
</aside>