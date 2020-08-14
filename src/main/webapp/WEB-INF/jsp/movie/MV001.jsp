<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/movie/MV001.js"></script>

<div class="container-fluid">
    <table class="table table-striped table-hover">
        <colgroup>
            <col width="10%">
            <col width="30%">
            <col width="20%">
            <col width="20%">
        </colgroup>
        <thead>
        <tr>
            <th scope="col">순위</th>
            <th scope="col">제목</th>
            <th scope="col">개봉일</th>
            <th scope="col">점유율</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="i" begin="0" end="9">
            <tr>
                <td scope="row">${boxOffice.boxOfficeResult.dailyBoxOfficeList[i].rank}위</td>
                <td>${boxOffice.boxOfficeResult.dailyBoxOfficeList[i].movieNm}</td>
                <td>${boxOffice.boxOfficeResult.dailyBoxOfficeList[i].openDt}</td>
                <td>${boxOffice.boxOfficeResult.dailyBoxOfficeList[i].salesShare}%</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>