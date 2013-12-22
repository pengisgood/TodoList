<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="col-lg-12">
            <div class="navbar-header">
                <a class="navbar-brand" href="/">Home</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#saveAndRetrieve" data-toggle="modal" data-target="#saveAndRetrieve">Save & Retrieve</a>
                    </li>
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
                        <tag:qqZoneShareIcon/>
                    </li>
                    <li class="share-icon">
                        <tag:sinaWeiboShareIcon/>
                    </li>
                    <li class="share-icon">
                        <tag:facebookShareIcon/>
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