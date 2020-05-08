<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/community/CT001.js"></script>


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
            <tr onclick="doView(${noticeList[i].contentSeq})">
                <td scope="row">${status.count}</td>
                <td>${noticeList[i].title}</td>
                <td>${noticeList[i].nickname}</td>
                <td>${noticeList[i].regDate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <%--    버튼--%>
    <input class="btn btn-primary" type="button" value="글 쓰기" onclick="goInsert();">
    <div class="input-group mb-2" style="float: right; width: 22%;">
        <select class="custom-select" id="inputGroupSelect02">
            <option selected value="1">제목</option>
            <option value="2">제목+내용</option>
            <option value="3">작성자</option>
        </select>
        <div class="input-group-append">
            <input type="text" class="form-control" name="keyword" placeholder="검색어를 입력하세요. ">
        </div>
        <button class="btn btn-primary" type="button" id="searchBtn">검색</button>
    </div>
    <br/><br/>

    <%--    페이징--%>
    <nav aria-label="Page navigation">
        <ul class="pagination justify-content-end" style="text-align: center;">
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