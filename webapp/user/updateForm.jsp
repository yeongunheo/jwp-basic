<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="kr">
<head>
	<jsp:include page="/include/header.jsp"/>
</head>
<body>
<jsp:include page="/include/navigation.jsp"/>

<div class="container" id="main">
    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default content-main">
            <form name="question" method="post" action="/users/update">
                <input type="hidden" name="userId" value="${user.userId}" />
                <div class="form-group">
                    <label>사용자 아이디</label>
                    ${user.userId}
                </div>
                <div class="form-group">
                    <label for="password">비밀번호</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="name">이름</label>
                    <input class="form-control" id="name" name="name" placeholder="Name" value="${user.name}">
                </div>
                <div class="form-group">
                    <label for="email">이메일</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="${user.email}">
                </div>
                <button type="submit" class="btn btn-success clearfix pull-right">개인정보수정</button>
                <div class="clearfix" />
            </form>
        </div>
    </div>
</div>

<jsp:include page="/include/footer.jsp"/>
</body>
</html>