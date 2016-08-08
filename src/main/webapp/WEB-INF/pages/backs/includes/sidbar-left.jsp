<%@page contentType="text/html" pageEncoding="UTF-8"%>
<aside class="main-sidebar">
    <section class="sidebar">
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/resources/static/img/profile/channy.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Sok Channy</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>           
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
                    <li><a href="${pageContext.request.contextPath}/admin/expert/detail"><i class="fa fa-circle-o"></i> Add new expert</a></li>                    
                </ul>
            </li>  
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-pie-chart"></i>
                    <span>Skill</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">14</span>
                    </span>
                    <ul class="treeview-menu">
                        <li><a href="${pageContext.request.contextPath}/admin/skill"><i class="fa fa-circle-o"></i> Skill</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/skill/category"><i class="fa fa-circle-o"></i> Skill category</a></li>                    
                    </ul>
                </a>                
            </li>  
            <li class="treeview">
                <a href="${pageContext.request.contextPath}/admin/position">
                    <i class="fa fa-bars"></i>
                    <span>Job position</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">34</span>
                    </span>
                </a>
            </li>                                            
            <li class="treeview">
                <a href="${pageContext.request.contextPath}/admin/province">
                    <i class="fa fa-map-marker"></i>
                    <span>Province</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">14</span>
                    </span>
                </a>                
            </li>
            <li class="treeview">
                <a href="${pageContext.request.contextPath}/admin/language">
                    <i class="fa fa-language"></i>
                    <span>Language</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">14</span>
                    </span>
                </a>                
            </li>
            <li class="treeview">
                <a href="${pageContext.request.contextPath}/admin/level">
                    <i class="fa fa-level-up"></i>
                    <span>Level</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">144</span>
                    </span>
                </a>                
            </li>
            <li class="treeview">
                <a href="${pageContext.request.contextPath}/admin/user">
                    <i class="fa fa-users"></i>
                    <span>User</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">144</span>
                    </span>
                </a>                
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