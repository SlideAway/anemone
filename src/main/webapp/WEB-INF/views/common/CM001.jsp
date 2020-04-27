<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/common/CM001.js"></script>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">공지사항</h5>
                    <p class="card-text">
                        <c:forEach var="notice" items="${notice}" varStatus="status">
                        <div class="list-group">
                            <a href="#" class="list-group-item list-group-item-action">
                                <div class="d-flex w-100 justify-content-between">
                                    <h5 class="mb-1">${notice.title}</h5>
                                    <small>${notice.regDate}</small>
                                </div>
                    <p class="mb-1">${notice.content}</p>
                    <small>${notice.nickname}</small>
                    </a>
                    </div>
                    </c:forEach>
                </div>
                </p>
            <a href="/CT002.do" style="margin: 10px; " class="card-link text-right">더보기</a>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card" >
                <div class="card-body">
                        <h5 class="card-title">자유게시판</h5>
                        <p class="card-text">
                            <c:forEach var="free" items="${free}" varStatus="status">
                            <div class="list-group">
                                <a href="" class="list-group-item list-group-item-action">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h5 class="mb-1">${free.title}</h5>
                                        <small>${free.regDate}</small>
                                    </div>
                                    <p class="mb-1">${free.content}</p>
                                    <small>${free.nickname}</small>
                                </a>
                    </div>
                    </c:forEach>
                            </div>
                        </p>
                <a href="/CT002.do" style="margin: 10px; " class="card-link text-right">더보기</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">

        </div>
    </div>
</div>
</div>
