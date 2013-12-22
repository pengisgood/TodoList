<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<script type="text/javascript" src="js/libs/jquery-2.0.3.js"></script>
<script type="text/javascript" src="js/libs/bootstrap.min.js"></script>
<script type="text/javascript" src="js/libs/angular.js"></script>
<script type="text/javascript" src="js/controller/styleTemplateCtrl.js"></script>

<html ng-app="myApp" ng-controller="StyleTemplateCtrl" lang="en">
<head >
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" ng-cloak ng-href="css/bootstrap-{{styleTemplate}}.css"/>
    <title>Cool Todo List</title>
</head>
<body>
<div class="container">

    <tag:navigation/>

    <div class="col-lg-12">
        <div class="page-header">
            <div class="row">
                <div class="col-lg-6">
                    <h1>Organize any thing, together</h1>
                    <p class="lead">It's totally free!</p>
                </div>
                <div class="col-lg-6">
                    <div ng-cloak class="alert alert-dismissable alert-info">
                        <button type="button" class="close" data-dismiss="alert">X</button>
                        <h4>You can choose different style from here!</h4>
                        <ul class="nav nav-tabs">
                            <li >
                                <a href="#amelia" data-toggle="tab" ng-click="changeStyle('amelia')">Amelia</a>
                            </li>
                            <li>
                                <a href="#cyborg" data-toggle="tab" ng-click="changeStyle('cyborg')">Cyborg</a>
                            </li>
                            <li>
                                <a href="#simplex" data-toggle="tab" ng-click="changeStyle('simplex')">Simplex</a>
                            </li>
                            <li class="active">
                                <a href="#slate" data-toggle="tab" ng-click="changeStyle('slate')">Slate</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade" id="amelia">
                                <p style="font-family:Lobster; text-transform: capitalize">{{styleTemplate}}</p>
                            </div>
                            <div class="tab-pane fade" id="cyborg">
                                <p style="font-family:'Droid Sans'; text-transform: capitalize">{{styleTemplate}}</p>
                            </div>
                            <div class="tab-pane fade" id="simplex">
                                <p style="font-family:'Josefin Sans'; text-transform: capitalize">{{styleTemplate}}</p>
                            </div>
                            <div class="tab-pane in active" id="slate">
                                <p style="font-family:''; text-transform: capitalize">{{styleTemplate}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="todoList.jsp" %>

    <tag:footer/>
</div>

</body>
</html>
