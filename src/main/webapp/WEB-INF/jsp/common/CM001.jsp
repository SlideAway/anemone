<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/weblb/js/common/CM001.js"></script>

<!-- Content Row -->
<div class="row">
    <!-- Content Column -->
    <div class="col-lg-6">
        <div class="card-header py-3">
            <div class="row">
                <div class="col-lg-6 mb-4">
                    <h6 class="m-0 font-weight-bold text-primary">BoxOffice</h6>
                </div>
                <div class="col-lg-6 mb-4">
                    <h6 class="m-0 font-weight-bold text-primary" style="text-align: right;"><a
                            href="/MV001.do">더보기</a></h6>
                </div>
            </div>
        </div>
        <table class="table table-striped table-hover">
            <colgroup>
                <col width="10%">
                <col width="35%">
                <col width="20%">
                <col width="15%">
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
    <div class="col-lg-6">

        <div class="card-header py-3">
            <div class="row">
                <div class="col-lg-6 mb-4">
                    <h6 class="m-0 font-weight-bold text-primary"></h6>
                </div>
                <div class="col-lg-6 mb-4">
                    <h6 class="m-0 font-weight-bold text-primary" style="text-align: right;"><a
                            href="#">더보기</a></h6>
                </div>
            </div>
        </div>
        <!-- Contents -->
    </div>
</div>