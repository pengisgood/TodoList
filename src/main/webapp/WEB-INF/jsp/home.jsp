<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
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

    <tag:footer/>
</div>

<script type="text/javascript" src="js/jquery-2.0.3.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>
