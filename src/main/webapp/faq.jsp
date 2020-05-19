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
    <title>问答</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />

    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />


    <link href="./css/font-awesome.css" rel="stylesheet" />

    <link href="./css/adminia.css" rel="stylesheet" />
    <link href="./css/adminia-responsive.css" rel="stylesheet" />


    <link href="./css/pages/faq.css" rel="stylesheet" />

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

                    <li class="active">
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
                </div> &lt;!&ndash;>-- .sidebar-extra -->

                <br />

            </div> <!-- /span3 -->



            <div class="span9">

                <h1 class="page-title">
                    <i class="icon-pushpin"></i>
                    常见问题
                </h1>

                <div class="widget">

                    <div class="widget-content">

                        <h3>Search...</h3>


                        <ol class="faq-list">

                            <li>
                                <h4>什么是偕同过滤？</h4>
                                <p>协同过滤简单来说是利用某兴趣相投、拥有共同经验之群体的喜好来推荐用户感兴趣的信息，个人通过合作的机制给予信息相当程度的回应（如评分）并记录下来以达到过滤的目的进而帮助别人筛选信息，回应不一定局限于特别感兴趣的，特别不感兴趣信息的纪录也相当重要。</p>

                            </li>

                            <li>
                                <h4>什么是推荐系统？</h4>
                                <p>推荐系统是利用电子商务网站向客户提供商品信息和建议，帮助用户决定应该购买什么产品，模拟销售人员帮助客户完成购买过程。个性化推荐是根据用户的兴趣特点和购买行为，向用户推荐用户感兴趣的信息和商品。</p>

                            </li>

                            <li>

                                <h4>基于用户的协同过滤有什么特点?</h4>
                                <p>ItemCF适用于购物网站，其中用户的数量远多于物品的数量，物品数据相对稳定，相似度计算量较小，且不必频繁更新；UserCF更适用于新闻、博客等社交网络，其内容更新非常频繁，即UserCF更注重社会化，而ItemCF更注重个性化</p>
                                <p>它是以用户为中心，观察与该用户兴趣相似的一个用户的群体，将这个兴趣相似的用户群体所感兴趣的其他物品，推荐给该用户</p>
                            </li>

                            <!--<li>
                                    <h4>How do I password protect my web site?</h4>
                                    <p>Password protection is done through HTTP authentication. The configuration details vary from server to server, so you should read the authentication section of your server documentation. Contact your server administrator if you need help with this.</p>
                                    <p>JavaScript password scripts provide only a facade of security. At a fundamental level, they work in one of two ways. Some scripts convert the password into a URL, which keeps the document secret by limiting the number of people who know its URL. Some scripts check the password and then go to a specific URL, which protects the document only from those who don't view the JavaScript source to get the URL of the document. Neither mechanism is really secure.</p>

                            </li>-->

                            <!--<li>

                                    <h4>How do I stop my page from being cached?</h4>
                                    <p>Browsers cache web documents; they store local copies of documents to speed up repeated references to documents that haven't changed. Also, many browsers are configured to use public proxy caches, which serve many users (e.g., all customers of an ISP, or all employees behind a corporate firewall). To effectively control how your documents are cached you must configure your server to send appropriate HTTP headers.</p>
                                    <p>The Expires header is understood by virtually all caches. The cached document will be retrieved again automatically once it has expired. The Expires header must contain an HTTP date, which must be Greenwich Mean Time (GMT), not local time.</p>

                            </li>

                            <li>
                                    <h4>How can I disable the browser's right-click options?</h4>
                                    <p>These scripts annoy visitors who lose ready access to their browsers' normal context-menu functions (e.g., "Open in new window" or "Bookmark link"). These scripts can also interfere with features like mouse gestures.
    Nothing (including these scripts) can prevent anyone from copying your source or images. The browser cannot display your document without the source and images, so your web server must send them to the browser. Even without the various "save" functions in today's browsers, someone can retrieve your source or images from the browser's cache, request them from the server with some other tool, or use a screen-capture tool to copy the images.
    These scripts do nothing when JavaScript is disabled or unavailable, when JavaScript access to right-click events is disabled, on systems without mice, or on systems with single-button mice.</p>

                            </li>

                            <li>

                                    <h4>How do I hide my URL?</h4>
                                    <p>You can't. URLs are fundamental to navigation on the WWW. The URL is necessary for the browser to be able to retrieve your document. It is impossible to hide the URL of a resource from the browser.</p>

                            </li>

                            <li>

                                    <h4>How do I detect what browser is being used?</h4>
                                    <p>Many browsers identify themselves when they request a document. A CGI script will have this information available in the HTTP_USER_AGENT environment variable, and it can use that to send out a version of the document which is optimized for that browser.</p>
                                    <p>Keep in mind not all browsers identify themselves correctly. For example, Microsoft Internet Explorer identifies itself as Netscape Navigator, and many other browsers identify themselves as Microsoft Internet Explorer.</p>
                                    <p>And of course, if a cache proxy keeps a version intended for one brower, someone with another browser may get that version, rather than the version intended for the other browser.</p>

                            </li>

                            <li>

                                    <h4>How do I get my visitors' email addresses?</h4>
                                    <p>You can't. Although each request for a document is usually logged with the name or address of the remote host, the actual username is almost never logged as well. This is mostly because of performance reasons, as it would require that the server uses the ident protocol to see who is on the other end. This takes time. And if a cache proxy is doing the request, you don't get anything sensible.</p>
                                    <p>But just stop to think for a minute... would you really want every single site you visit to know your email address? Imagine the loads of automated thank you's you would be receiving. If you visited 20 sites, you would get at least 20 emails that day, plus no doubt they would send you invitations to return later. It would be a nightmare as well as an invasion of privacy!</p>

                            </li>

                            <li>
                                    <h4>Why is my custom 404 Not Found message not displayed?</h4>
                                    <p>If only Internet Explorer ignores your custom 404 Not Found messages, then you've been caught by its "friendly" HTTP error messages. When a special HTTP response (e.g., a 404 Not Found response) is shorter than 512 bytes, Internet Explorer substitutes its own message for the one delivered by the server. As a user of Internet Explorer, you can disable this feature in the "Advanced" options panel. As a web author, your only recourse is to make your 404 Not Found message longer.</p>

                            </li>-->

                        </ol>

                    </div> <!-- /widget-content -->

                </div> <!-- /widget -->



            </div> <!-- /span9 -->


        </div> <!-- /row -->

    </div> <!-- /container -->

</div> <!-- /content -->


<div id="footer">

    <div class="container">
        <hr />
        <!--
                <p>&copy; 2012 Go Ideate.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        -->
    </div> <!-- /container -->

</div> <!-- /footer -->




<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="./js/jquery-1.7.2.min.js"></script>


<script src="./js/bootstrap.js"></script>
<script src="./js/faq.js"></script>

<script>

    $(function () {

        $('.faq-list').goFaq ();

    });

</script>

</body>
</html>
