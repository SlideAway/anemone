<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/common/commonMenu.js"></script>
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/CM001.do">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Karma</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="index.html">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Interface
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBoard" aria-expanded="true" aria-controls="collapseBoard">
            <i class="fas fa-fw fa-blog"></i>
            <span>Boards</span>
        </a>
        <div id="collapseBoard" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Custom Boards:</h6>
                <a class="collapse-item" href="/CT001.do">Notice</a>
                <a class="collapse-item" href="/CT002.do">FreeBoard</a>
            </div>
        </div>
    </li>
<%--    <li class="nav-item">--%>
<%--        <a href="#" data-toggle="collapse" data-target="#collapseAuth" class="nav-link collapsed">--%>
<%--            <i class="fas fa-fw fa-lock"></i>--%>
<%--            <span>Authentication</span>--%>
<%--        </a>--%>
<%--        <div id="collapseAuth" class="collapse" aria-labelledby="headingAuth" data-parent="#accordionSidebar">--%>
<%--            <div class="bg-white py-2 collapse-inner rounded">--%>
<%--                <h6 class="collapse-header">Authentication Features:</h6>--%>
<%--                <sec:authorize access="isAnonymous()">--%>
<%--                    <a href="/CM002.do" class="collapse-item">Sign In</a>--%>
<%--                    <a href="/CM003.do" class="collapse-item">Sign Up</a>--%>
<%--                </sec:authorize>--%>
<%--                <sec:authorize access="isAuthenticated()">--%>
<%--                    <a href="/US001.do" class="collapse-item">My Page</a>--%>
<%--                </sec:authorize>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </li>--%>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Services</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Custom Services:</h6>
                <a class="collapse-item" href="utilities-color.html">BoxOffice</a>
                <a class="collapse-item" href="utilities-border.html">Borders</a>
                <a class="collapse-item" href="utilities-animation.html">Animations</a>
                <a class="collapse-item" href="utilities-other.html">Other</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Addons
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages1" aria-expanded="true" aria-controls="collapsePages1">
            <i class="fas fa-fw fa-table"></i>
            <span>Blog</span>
        </a>
        <div id="collapsePages1" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Blog:</h6>
                <a class="collapse-item" href="">Tystory</a>
                <a class="collapse-item" href="">Register</a>
                <a class="collapse-item" href="">Forgot Password</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages2" aria-expanded="true" aria-controls="collapsePages2">
            <i class="fas fa-fw fa-folder"></i>
            <span>NAS</span>

    </a>
    <div id="collapsePages2" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">NAS Service:</h6>
            <a class="collapse-item" href="">DiskStation</a>
            <a class="collapse-item" href="">AudioStation</a>
            <a class="collapse-item" href="">VideoStation</a>
            <a class="collapse-item" href="">Plex</a>
        </div>
    </div>
    </li>
    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="">
            <i class="fas fa-fw fa-file"></i>
            <span>Tables</span></a>
    </li>
    <sec:authorize access="isAnonymous()">
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages3" aria-expanded="true" aria-controls="collapsePages3">
                <i class="fas fa-fw fa-folder"></i>
                <span>VIP Class</span>

            </a>
            <div id="collapsePages3" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">VIP Service:</h6>
                    <a class="collapse-item" href="/VIP001.do">JAV</a>
                </div>
            </div>

        </li>
    </sec:authorize>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->

