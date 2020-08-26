<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/weblb/js/common/commonMenu.js"></script>
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion toggled" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/CM001.do">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-fighter-jet"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Anemone</div>
    </a>
    <c:forEach var="horizen" items="${horizen}" varStatus="horiStatus">
        <c:if test="${horizen ne null}">
            <hr class="sidebar-divider">
            <div class="sidebar-heading">
                ${horizen.menuNm}
            </div>
        </c:if>
        <c:forEach var="topMenu" items="${topMenu}" varStatus="topStatus">
            <c:if test="${topMenu.parentCode eq horizen.menuCode}">
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse"
                       data-target="#collapse${topMenu.menuNm}"
                       aria-expanded="true" aria-controls="collapseBoard">
                        <i class="${topMenu.menuIcon}"></i>
                        <span>${topMenu.menuNm}</span>
                    </a>

                    <div id="collapse${topMenu.menuNm}" class="collapse" aria-labelledby="headingTwo"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <c:forEach var="leafMenu" items="${leafMenu}">
                                <c:if test="${leafMenu.parentCode eq topMenu.menuCode}">
                                    <a class="collapse-item" href="#" onclick="goTo('${leafMenu.menuUrl}')">
                                        <i class="${leafMenu.menuIcon}"></i>
                                            ${leafMenu.menuNm}
                                    </a>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                </li>
            </c:if>
        </c:forEach>
    </c:forEach>
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>
<!-- End of Sidebar -->

