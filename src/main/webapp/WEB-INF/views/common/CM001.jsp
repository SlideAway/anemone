<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>

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
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card" >
                <div class="card-body">
                    <div class="card-title">
                        <h5 class="card-title">자유게시판</h5>
                        <p class="card-text">
                            <div class="list-group">
                                <a href="" class="list-group-item list-group-item-action">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h5 class="mb1">게시글 제목1</h5>
                                        <small>작성일</small>
                                    </div>
                                    <p class="mb-1">게시글 내용1</p>
                                    <small>작성자</small>
                                </a>
                            </div>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">

        </div>
    </div>
</div>
</div>
