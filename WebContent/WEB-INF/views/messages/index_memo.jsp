<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- url属性に指定したファイルの内容をその位置から読み込むことができる -->
<c:import url="../layout/app.jsp">

    <!-- app.jspで書いた「${param.content}」の部分 -->
    <c:param name="content">

        <h2>メッセージ一覧</h2>

            <!-- 順序なしリスト -->
            <ul>

                <!-- 繰り返し（拡張for文） -->
                <c:forEach var="message" items="${messages}">

                    <li>
                        <!-- 「${pageContext.request.contextPath}」はコンテキストパスを表す（固定文字列ではない方がいい） -->
                        <a href="${pageContext.request.contextPath}/show?id=${message.id}">
                            <c:out value="${message.id}" />
                        </a>

                        <!-- 「&gt;」は大なり -->
                        ：<c:out value="${message.title}"></c:out> &gt; <c:out value="${message.content}" />
                    </li>
                </c:forEach>
            </ul>

            <p><a href="${pageContext.request.contextPath}/new">新規メッセージの投稿</a></p>

    </c:param>
</c:import>