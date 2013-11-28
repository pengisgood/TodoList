<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en"  >
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <title>Cool Todo List</title>

</head>
<body>
<div class="container">
    <%--navigation bar--%>
    <div class="navbar navbar-default navbar-fixed-top" >
        <div class="container">
            <div class="col-lg-12">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/">Home</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                About Me
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="http://penghongwei.qzone.qq.com/">QQ Zone</a>
                                </li>
                                <li>
                                    <a href="http://weibo.com/u/2574703222">Sina Weibo</a>
                                </li>
                                <li>
                                    <a href="https://www.facebook.com/pengisgood">Facebook</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="share-icon">
                            <%@include file="qqZoneShare.jsp" %>
                        </li>
                        <li class="share-icon">
                            <%@include file="sinaWeiboShare.jsp" %>
                        </li>
                        <li class="share-icon">
                            <%@include file="facebookShare.jsp"%>
                        </li>
                        <li>
                            <form class="navbar-form navbar-left">
                                <input type="text" class="form-control col-lg-8" placeholder="Search"/>
                                <span class=""></span>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <%--page content--%>
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

    <div class="col-lg-12">
        <h1>Here is the content: ${userName}</h1>

        <div class="col-lg-12">
            <div class="btn btn-primary">
                hehe
            </div>
            <div class="btn btn-info">
                haha
            </div>
        </div>
        <div class="col-lg-12">
            <div class="span6 btn btn-warning btn-large">
                Fluid 6
            </div>
            <div class="span6 btn btn-danger btn-large">
                Fluid 6
            </div>
        </div>
    </div>

    <%--footer section--%>
    <div class="col-lg-12">
        <footer>
            <div class="row">
                <ul class="list-unstyled">
                    <li class="pull-right">
                        <a href="#top">Back to top</a>
                    </li>
                    <li>
                        <a href="http://www.cnblogs.com/penghongwei">Blog</a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/pengisgood">Facebook</a>
                    </li>
                    <li>
                        <a href="https://github.com/pengisgood">Github</a>
                    </li>
                    <li>
                        <a href="http://weibo.com/u/2574703222">Sina</a>
                    </li>
                </ul>
                <p>
                    Made by <a href="http://www.cnblogs.com/penghongwei">Max Peng</a>.<br/>
                    Contact him at <a href="mailto:pengisgood@gmail.com">pengisgood@gmail.com</a>.<br/>
                    Base on <a href="#">Bootstrap</a>. Icons from <a href="#">Font Awesome</a>.<br/>
                </p>

                <p>
                </p>
            </div>
        </footer>
    </div>
</div>

<script type="text/javascript" src="js/jquery-2.0.3.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>
