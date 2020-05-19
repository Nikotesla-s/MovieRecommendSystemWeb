<%--
  Created by IntelliJ IDEA.
  User: SDH
  Date: 2020/5/12
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>图标展示</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />

    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />


    <link href="./css/font-awesome.css" rel="stylesheet" />

    <link href="./css/adminia.css" rel="stylesheet" />
    <link href="./css/adminia-responsive.css" rel="stylesheet" />


    <link href="./css/jquery.visualize.css" rel="stylesheet" />

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<body>

<div class="navbar navbar-fixed-top">

    <div class="navbar-inner">

        <div class="container">

            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>

            <a class="brand" href="./">基于用户的协同过滤推荐系统</a>

            <div class="nav-collapse">

                <ul class="nav pull-right">
                    <li>
                        <a href="#"><span class="badge badge-warning">7</span></a>
                    </li>

                    <li class="divider-vertical"></li>

                    <li class="dropdown">

                        <a data-toggle="dropdown" class="dropdown-toggle " href="#">
                            sdh <b class="caret"></b>
                        </a>

                        <ul class="dropdown-menu">
                            <li>
                                <a href="./account.html"><i class="icon-user"></i> Account Setting  </a>
                            </li>

                            <li>
                                <a href="./change_password.html"><i class="icon-lock"></i> Change Password</a>
                            </li>

                            <li class="divider"></li>

                            <li>
                                <a href="./"><i class="icon-off"></i> Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div> <!-- /nav-collapse -->

        </div> <!-- /container -->

    </div> <!-- /navbar-inner -->

</div> <!-- /navbar -->




<div id="content">

    <div class="container">

        <div class="row">

            <div class="span3">

                <div class="account-container">

                    <div class="account-avatar">
                        <img src="./images/headshot.png" alt="" class="thumbnail" />
                    </div> <!-- /account-avatar -->

                    <div class="account-details">

                        <span class="account-name">时德虎</span>

                        <span class="account-role">Administrator</span>

                        <span class="account-actions">
							<a href="javascript:;">Profile</a> |

							<a href="javascript:;">Edit Settings</a>
						</span>

                    </div> <!-- /account-details -->

                </div> <!-- /account-container -->

                <hr />

                <ul id="main-nav" class="nav nav-tabs nav-stacked">

                    <li>
                        <a href="./">
                            <i class="icon-home"></i>
                            主页
                        </a>
                    </li>

                    <li>
                        <a href="./faq.html">
                            <i class="icon-pushpin"></i>
                            问答
                        </a>
                    </li>

                    <li>
                        <a href="./plans.html">
                            <i class="icon-th-list"></i>
                            分类
                        </a>
                    </li>

                    <li>
                        <a href="./grid.html">
                            <i class="icon-th-large"></i>
                            收藏
                            <span class="label label-warning pull-right">5</span>
                        </a>
                    </li>

                    <li class="active">
                        <a href="./charts.html">
                            <i class="icon-signal"></i>
                            表格
                        </a>
                    </li>

                    <li>
                        <a href="./account.html">
                            <i class="icon-user"></i>
                            账户
                        </a>
                    </li>

                    <!--<li>
                        <a href="./login.html">
                            <i class="icon-lock"></i>
                            Login
                        </a>
                    </li>-->

                </ul>



                <hr />

                <!--<div class="sidebar-extra">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                </div> &lt;!&ndash; .sidebar-extra &ndash;&gt;-->

                <br />

            </div> <!-- /span3 -->



            <div class="span9">

                <h1 class="page-title">
                    <i class="icon-signal"></i>
                    表格
                </h1>




                <div class="widget">

                    <div class="widget-header">
                        <h3>Area Chart</h3>
                    </div> <!-- /widget-header -->

                    <div class="widget-content">

                        <div id="area-chart" class="chart-holder"></div> <!-- /area-chart -->



                    </div> <!-- /widget-content -->

                </div> <!-- /widget -->




                <!--<div class="widget">

                    <div class="widget-header">
                        <h3>Line Chart</h3>
                    </div> &lt;!&ndash; /widget-header &ndash;&gt;

                    <div class="widget-content">

                        <div id="line-chart" class="chart-holder"></div> &lt;!&ndash; /donut-chart &ndash;&gt;



                    </div> &lt;!&ndash; /widget-content &ndash;&gt;

                </div> &lt;!&ndash; /widget &ndash;&gt;-->



                <div class="widget">

                    <div class="widget-header">
                        <h3>Bar Chart</h3>
                    </div> <!-- /widget-header -->

                    <div class="widget-content">

                        <div id="bar-chart" class="chart-holder"></div> <!-- /donut-chart -->



                    </div> <!-- /widget-content -->

                </div> <!-- /widget -->




                <div class="widget">

                    <div class="widget-header">
                        <h3>Pie Chart</h3>
                    </div> <!-- /widget-header -->

                    <div class="widget-content">

                        <div id="pie-chart" class="chart-holder"></div> <!-- /donut-chart -->



                    </div> <!-- /widget-content -->

                </div> <!-- /widget -->



            </div> <!-- /span9 -->


        </div> <!-- /row -->

    </div> <!-- /container -->

</div> <!-- /content -->


<div id="footer">

    <!--<div class="container">
        <hr />
        <p>&copy; 2012 Go Ideate.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
    </div> &lt;!&ndash; /container &ndash;&gt;-->

</div> <!-- /footer -->




<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="./js/jquery-1.7.2.min.js"></script>
<script src="./js/excanvas.min.js"></script>
<script src="./js/jquery.flot.js"></script>
<script src="./js/jquery.flot.pie.js"></script>
<script src="./js/jquery.flot.orderBars.js"></script>
<script src="./js/jquery.flot.resize.js"></script>


<script src="./js/bootstrap.js"></script>
<script src="./js/charts/bar.js"></script>
<script src="./js/charts/area.js"></script>
<!--<script src="./js/charts/line.js"></script>-->
<script src="./js/charts/pie.js"></script>



</body>
</html>
