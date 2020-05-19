<%--
  Created by IntelliJ IDEA.
  User: SDH
  Date: 2020/5/12
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>个人收藏</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />

    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />


    <link href="./css/font-awesome.css" rel="stylesheet" />

    <link href="./css/adminia.css" rel="stylesheet" />
    <link href="./css/adminia-responsive.css" rel="stylesheet" />

    <link href="./css/pages/dashboard.css" rel="stylesheet" />
    <link href="./css/pages/plans.css" rel="stylesheet" />

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
                            Rod Howard <b class="caret"></b>
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

                    <li class="active">
                        <a href="./grid.html">
                            <i class="icon-th-large"></i>
                            收藏
                            <span class="label label-warning pull-right">5</span>
                        </a>
                    </li>

                    <li>
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



                </ul>



                <hr />

                <!--<div class="sidebar-extra">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                </div> &lt;!&ndash; .sidebar-extra &ndash;&gt;-->

                <br />

            </div> <!-- /span3 -->



            <div class="span9">

                <h1 class="page-title">
                    <i class="icon-th-large"></i>
                    收藏电影
                </h1>
                <div class="widget widget-table">

                    <div class="widget-header">
                        <i class="icon-th-list"></i>
                        <h3>收藏列表</h3>
                    </div> <!-- /widget-header -->

                    <div class="widget-content">

                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>电影名称</th>
                                <th>电影类型</th>
                                <th>年份</th>
                                <th>描述</th>
                                <!--<th>&nbsp;</th>-->
                            </tr>
                            </thead>

                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>Toy Story</td>
                                <td>Adventure|Animation|Children|Comedy|Fantasy</td>
                                <td>1995</td>
                                <td>
                                </td>
                                <td class="action-td">
                                    <a href="javascript:;" class="btn btn-small btn-warning">
                                        <i class="icon-ok"></i>
                                    </a>
                                    <a href="javascript:;" class="btn btn-small">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Lawnmower Man 2: Beyond Cyberspace</td>
                                <td>Action|Sci-Fi|Thriller</td>
                                <td>1996</td>
                                <td></td>
                                <td class="action-td">
                                    <a href="javascript:;" class="btn btn-small btn-warning">
                                        <i class="icon-ok"></i>
                                    </a>
                                    <a href="javascript:;" class="btn btn-small">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>smoke</td>
                                <td>Drama</td>
                                <td>1995</td>
                                <td></td>
                                <td class="action-td">
                                    <a href="javascript:;" class="btn btn-small btn-warning">
                                        <i class="icon-ok"></i>
                                    </a>
                                    <a href="javascript:;" class="btn btn-small">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Mad Love</td>
                                <td> Comedy|Drama</td>
                                <td>1995</td>
                                <td></td>
                                <td class="action-td">
                                    <a href="javascript:;" class="btn btn-small btn-warning">
                                        <i class="icon-ok"></i>
                                    </a>
                                    <a href="javascript:;" class="btn btn-small">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Johnny Mnemonic</td>
                                <td> Action|Sci-Fi|Thriller</td>
                                <td>1995</td>
                                <td></td>
                                <td class="action-td">
                                    <a href="javascript:;" class="btn btn-small btn-warning">
                                        <i class="icon-ok"></i>
                                    </a>
                                    <a href="javascript:;" class="btn btn-small">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>Mighty Morphin Power Rangers: The Movie</td>
                                <td>Action|Children</td>
                                <td>1995</td>
                                <td></td>
                                <td class="action-td">
                                    <a href="javascript:;" class="btn btn-small btn-warning">
                                        <i class="icon-ok"></i>
                                    </a>
                                    <a href="javascript:;" class="btn btn-small">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>Nine Months</td>
                                <td>Comedy|Romance</td>
                                <td>1995</td>
                                <td></td>
                                <td class="action-td">
                                    <a href="javascript:;" class="btn btn-small btn-warning">
                                        <i class="icon-ok"></i>
                                    </a>
                                    <a href="javascript:;" class="btn btn-small">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td> Reckless</td>
                                <td>Comedy|Fantasy</td>
                                <td>1995</td>
                                <td></td>
                                <td class="action-td">
                                    <a href="javascript:;" class="btn btn-small btn-warning">
                                        <i class="icon-ok"></i>
                                    </a>
                                    <a href="javascript:;" class="btn btn-small">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                        </table>

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


<script src="./js/bootstrap.js"></script>

</body>
</html>
