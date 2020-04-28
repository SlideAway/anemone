<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/common/commonTop.js"></script>

<header class="main-header">
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <h1><a class="navbar-brand" href="/CM001.do">Karma</a></h1>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/CM002.do">SignUp <span class="sr-only"></span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="/CM003.do">SignIn <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="/US001.do">MyPage <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="boardsDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Boards
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="/CT001.do">Notice</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="/CT002.do">Free Board</a>
                    </div>
                </li>
                <li class="nav-item active dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="serviceDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Service
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="/MV001.do">BoxOffice</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/TS001.do" tabindex="-1" aria-disabled="true">TestRoom</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" id="keyword" type="search" placeholder="영화검색" aria-label="Search">
                <button class="btn btn-success my-2 my-sm-0" type="submit" onclick="doSearch($('#keyword'));">
                    Search
                </button>
            </form>
        </div>
    </nav>
</header>