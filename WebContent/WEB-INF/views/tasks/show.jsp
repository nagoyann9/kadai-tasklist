<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">

    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">
                <h2>detail of id: ${task.id} </h2>

                <p>Title：<c:out value="${task.title}" /></p>
                <p>Message：<c:out value="${task.content}" /></p>
                <p>Created：<fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
                <p>Updated：<fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>

                <p><a href="${pageContext.request.contextPath}/index">Back</a></p>
                <p><a href="${pageContext.request.contextPath}/edit?id=${message.id}">Edit this task</a></p>
            </c:when>
            <c:otherwise>
                <h2>There is no data.</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>

