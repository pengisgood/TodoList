<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <title>Hello World</title>
</head>
<body style="background-color: #000">
<div class="container">
    <%--navigation bar--%>
    <div class="navbar navbar-default navbar-fixed-top" style="background-color: #000">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Todo</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">AAA</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            BBB
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">CCC</a>
                            </li>
                            <li>
                                <a href="#">DDD</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <form class="navbar-form navbar-left">
                            <input type="search" class="form-control col-lg-8" placeholder="Search"/>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <%--page content--%>
    <div class="container">
        <div class="page-header">
            <div class="row">
                <div class="col-lg-6">
                    <h1>Hey, how is going?</h1>
                    <p class="lead">What's this??</p>
                </div>
            </div>
        </div>


        <div class="span12">
            <h1>Hello,${userName}</h1>
        </div>
        <div class="row-fluid">
            <div class="span4 btn btn-primary">
                hehe
            </div>
            <div class="span8 btn btn-info">
                haha
            </div>
        </div>
        <div class="row-fluid">
            <div class="span6 btn btn-warning btn-large">Fluid 6</div>
            <div class="span6 btn btn-danger btn-large">Fluid 6</div>
        </div>
    </div>
</div>

<script type="text/javascript" src="js/jquery-2.0.3.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>
