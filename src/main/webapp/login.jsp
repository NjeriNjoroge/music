<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Log in with your account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
<div class="background">
    <div class="container-fluid">
        <div class="row justify-content-md-center">
            <div class="col-sm-5 push-left">
                <form method="POST" action="${contextPath}/login" class="form-signin">
                    <span>${message}</span>
                    <div class="card border-primary mb-3" style="max-width: 30rem;">
                        <div class="card-header">
                            <h2 class="form-heading">Log in</h2>
                        </div>
                        <div class="card-body">

                        <div class="form-group row ${error != null ? 'has-error' : ''}">
                            <label for="username"></label>
                            <input name="username" type="text" class="form-control" placeholder="Username"
                                   autofocus="true" id="username"/>
                        </div>
                        <div class="form-group row ${error != null ? 'has-error' : ''}">
                            <label for="password"></label>
                            <input name="password" type="password" class="form-control" placeholder="Password" id="password"/>
                            <span>${error}</span>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </div>
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
                            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
