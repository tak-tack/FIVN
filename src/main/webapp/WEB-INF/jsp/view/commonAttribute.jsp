<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="_ContextPath" scope="page">
${pageContext.request.contextPath}
</c:set>

<c:set var="_BasePath" scope="page">
${pageContext.request.serverName}
</c:set>

<c:set var="_ReqrestURL" scope="page">
${pageContext.request.requestURL}
</c:set>

<c:set var="_ReqrestURI" scope="page">
${pageContext.request.requestURI}
</c:set>


