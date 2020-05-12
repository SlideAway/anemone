<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<meta charset="utf-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

<html>
<head>
    <%@ include file="/WEB-INF/views/common/commonHead.jsp" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div class="wrapper">
    <tiles:insertAttribute name="top"/>
    <div class="container-fluid">
        <section class="content-header" style="padding: 10px;">
            <h1><tiles:insertAttribute name="title"/></h1>
            <section class="content" style="padding: 10px;">
                <tiles:insertAttribute name="contents"/>
            </section>
        </section>
    </div>
</div>
</body>
</html>