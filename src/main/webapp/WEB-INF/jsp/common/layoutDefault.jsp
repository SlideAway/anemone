<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>
<meta charset="utf-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

<html>
<head>
    <%@ include file="/WEB-INF/jsp/common/commonHead.jsp" %>
    <script src="${CR}/resources/jquery3.4.1/jquery-3.4.1.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body id="page-top" class="sidebar-toggled">
<div id="wrapper">
    <tiles:insertAttribute name="sidebar"></tiles:insertAttribute>
    <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">
            <tiles:insertAttribute name="top"/>
            <section class="content-header" style="padding: 10px;">
                <div class="col-xl-12">
                    <div class="card shadow mb4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary"><tiles:insertAttribute name="title"/></h6>
                            <div class="card-body">
                                <section class="content" style="padding: 10px;">
                                    <tiles:insertAttribute name="contents"/>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<!--<script src="${CR}/resources/startbootstrap/vendor/jquery/jquery.min.js"></script>-->

<script src="${CR}/resources/startbootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="${CR}/resources/startbootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${CR}/resources/startbootstrap/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="${CR}/resources/startbootstrap/vendor/chart.js/Chart.min.js"></script>


</body>
</html>