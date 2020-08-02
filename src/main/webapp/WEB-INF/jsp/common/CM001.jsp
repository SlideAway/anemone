<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/common/CM001.js"></script>

<!-- Content Row -->
<div class="row">
    <!-- Content Column -->
    <div class="col-lg-6 mb-4">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <div class="row">
                    <div class="col-lg-6 mb-4">
                        <h6 class="m-0 font-weight-bold text-primary">Notice</h6>
                    </div>
                    <div class="col-lg-6 mb-4">
                        <h6 class="m-0 font-weight-bold text-primary" style="text-align: right;"><a
                                href="/CT001.do">더보기</a></h6>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <!--
                <c:forEach var="notice" items="${notice}" varStatus="status">
                    <div class="card shadow mb-4" onclick="doViewNotice(${notice.boardSeq});">
                        <div class="card-header py-3">
                            <div class="row">
                                <div class="col-lg-6 mb-4">
                                    <h6 class="m-0 font-weight-bold text-primary">${notice.title}</h6>
                                </div>
                                <div class="col-lg-6 mb-4">
                                    <h6 class="m-0 font-weight-bold text-primary"
                                        style="text-align: right;">${notice.regDate}</h6>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <p>${notice.content}</p>
                            <p>작성자 : ${notice.nickname}</p>
                        </div>
                    </div>
                </c:forEach>
                -->
            </div>
        </div>
    </div>
    <div class="col-lg-6 mb-4">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <div class="row">
                    <div class="col-lg-6 mb-4">
                        <h6 class="m-0 font-weight-bold text-primary">Free Board</h6>
                    </div>
                    <div class="col-lg-6 mb-4">
                        <h6 class="m-0 font-weight-bold text-primary" style="text-align: right;"><a
                                href="/CT001.do">더보기</a></h6>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <!--
                <c:forEach var="free" items="${free}" varStatus="status">
                    <div class="card shadow mb-4" onclick="doViewNotice(${free.boardSeq});">
                        <div class="card-header py-3">
                            <div class="row">
                                <div class="col-lg-6 mb-4">
                                    <h6 class="m-0 font-weight-bold text-primary">${free.title}</h6>
                                </div>
                                <div class="col-lg-6 mb-4">
                                    <h6 class="m-0 font-weight-bold text-primary"
                                        style="text-align: right;">${free.regDate}</h6>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <p>${free.content}</p>
                            <p>작성자 : ${free.nickname}</p>
                        </div>
                    </div>
                </c:forEach>
                -->
            </div>
        </div>
    </div>
</div>