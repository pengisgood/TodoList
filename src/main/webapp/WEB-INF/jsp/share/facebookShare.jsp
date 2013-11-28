<%--
  User: hwpeng
  Date: 11/28/13
  Time: 9:05 PM
  Project: helloWorld
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:fb="http://ogp.me/ns/fb#">
<head>
    <title></title>
</head>
<body>

<div id="fb-root"></div>
<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<fb:share-button href="http://penghongwei.herokuapp.com" width="64px" height="40px"
                 type="button_count"></fb:share-button>
</body>
</html>