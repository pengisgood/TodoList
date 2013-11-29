<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <title>Cool Todo List</title>

</head>
<body ng-app="myApp">
<div class="container">

    <tag:navigation/>

    <div class="col-lg-12">
        <div class="page-header">
            <div class="row">
                <div class="col-lg-6">
                    <h1>Organize any thing, together</h1>

                    <p class="lead">It's totally free!</p>
                </div>
            </div>
        </div>
    </div>

    <%@include file="todoList.jsp" %>

    <tag:footer/>
</div>

<script type="text/javascript" src="js/libs/jquery-2.0.3.js"></script>
<script type="text/javascript" src="js/libs/bootstrap.js"></script>
<script type="text/javascript" src="js/libs/angular.js"></script>
</body>
</html>
