<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/weblb/js/manage/MGR004.js"></script>


<div class="row">
    <div class="card shadow mb-4 col-lg-12">
        <div class="card-body">
            <a href="#" class="btn btn-primary btn-icon-split" onclick="doAdd();">
                    <span class="icon text-white-50">
                      <i class="fas fa-plusm"></i>
                    </span>
                <span class="text">추가</span>
            </a>
            <a href="#" class="btn btn-primary btn-icon-split" onclick="doSave();">
                    <span class="icon text-white-50">
                      <i class="fas fa-check"></i>
                    </span>
                <span class="text">저장</span>
            </a>
            <a href="#" class="btn btn-primary btn-icon-split" onclick="doEdit();">
                    <span class="icon text-white-50">
                      <i class="fas fa-pen"></i>
                    </span>
                <span class="text">수정</span>
            </a>
            <table class="table table-striped table-hover">
                <colgroup>
                    <col width="10%">
                    <col width="10%">
                    <col width="10%">
                    <col width="10%">
                    <col width="10%">
                    <col width="10%">
                    <col width="20%">
                    <col width="10%">
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">
                        <input type="checkbox" onchange="allCheck($(this));">
                    </th>
                    <th scope="col">메뉴코드</th>
                    <th scope="col">부모코드</th>
                    <th scope="col">정렬순번</th>
                    <th scope="col">메뉴타입</th>
                    <th scope="col">메뉴이름</th>
                    <th scope="col">메뉴아이콘</th>
                    <th scope="col">메뉴URL</th>
                </tr>
                </thead>
                    <c:forEach var="menu" items="${menuInfo}">
                        <tr>
                            <td scope="row">
                                <input type="checkbox">
                            </td>
                            <td>${menu.menuCode}</td>
                            <td>${menu.parentCode}</td>
                            <td>${menu.sortSeq}</td>
                            <td>${menu.menuType}</td>
                            <td>${menu.menuNm}</td>
                            <td>${menu.menuIcon}</td>
                            <td>${menu.menuURL}</td>
                        </tr>
                    </c:forEach>
            </table>
        </div>
    </div>
</div>