<%@ page language="java"  contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="tiles"  uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="URI">${pageContext.request.requestURI}</c:set>
<c:set var="CR">${pageContext.request.contextPath}</c:set>