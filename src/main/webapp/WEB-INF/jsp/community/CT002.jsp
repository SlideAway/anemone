<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/community/CT002.js"></script>



<div class="container-fluid">
    <table class="table table-striped table-hover">
        <colgroup>
            <col width="10%">
            <col width="50%">
            <col width="20%">
            <col width="20%">
        </colgroup>
        <thead>
        <tr>
            <th scope="col">No.</th>
            <th scope="col">제목</th>
            <th scope="col">작성자</th>
            <th scope="col">작성 날짜</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="i" begin="0" end="9" varStatus="status">
            <%--            <input type="hidden" value="#{notice.freeSeq}">--%>
            <tr onclick="doView(${freeList[i].contentSeq})">
                <td scope="row">${status.count}</td>
                <td>${freeList[i].title}</td>
                <td>${freeList[i].nickname}</td>
                <td>${freeList[i].regDate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <input class="btn btn-primary" style="float:right;" type="button" value="글 쓰기" onclick="goInsert();">
    <br/><br/>
    <nav aria-label="Page navigation">
        <ul class="pagination justify-content-end">
            <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
            </li>
            <li class="page-item disabled"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#">Next</a>
            </li>
        </ul>
    </nav>
</div>