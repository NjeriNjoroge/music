<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
</head>

<body>

<div class="container-fluid">
    <div class="row justify-content-md-center">
        <div class="col-sm-5 push-left">

            <form:form method="POST" modelAttribute="userForm" class="form-signin">
                <div class="card border-primary mb-3" style="max-width: 30rem;">
                    <div class="card-header">
                        <h2 class="form-signin-heading">Create your account</h2>
                    </div>
                    <div class="card-body">
                        <spring:bind path="username">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <form:input type="text" path="username" class="form-control" placeholder="Username"
                                            autofocus="true"></form:input>
                                <form:errors path="username"></form:errors>
                            </div>
                        </spring:bind>

                        <spring:bind path="password">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                                <form:errors path="password"></form:errors>
                            </div>
                        </spring:bind>

                        <spring:bind path="passwordConfirm">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <form:input type="password" path="passwordConfirm" class="form-control"
                                            placeholder="Confirm your password"></form:input>
                                <form:errors path="passwordConfirm"></form:errors>
                            </div>
                        </spring:bind>

                        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
