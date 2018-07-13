INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('service','Service Page','<frames>
	<frame pos="0">
		<descr>Sample Frame</descr>
	</frame>
</frames>',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title><@wp.currentPage param="title" /></title>
</head>
<body>
<h1><@wp.currentPage param="title" /></h1>
<a href="<@wp.url page="homepage" />" >Home</a><br>
<div><@wp.show frame=0 /></div>
</body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('home','Home Page',NULL,NULL,NULL);
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('entando-page-light','Light - BPM layout','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Top bar 1</descr>
		<sketch x1="0" y1="0" x2="2" y2="0" />
	</frame>
	<frame pos="1">
		<descr>Top Bar 2</descr>
		<sketch x1="3" y1="0" x2="5" y2="0" />
	</frame>
	<frame pos="2">
		<descr>Top Bar 3</descr>
		<sketch x1="6" y1="0" x2="8" y2="0" />
	</frame>
	<frame pos="3">
		<descr>Top Bar 4</descr>
		<sketch x1="9" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="4">
		<descr>Central Bar 1</descr>
		<sketch x1="0" y1="1" x2="11" y2="1" />
	</frame>
	<frame pos="5">
		<descr>Central Bar mortgage 2</descr>
		<sketch x1="2" y1="2" x2="9" y2="2" />
	</frame>
	<frame pos="6">
		<descr>Central Bar left</descr>
		<sketch x1="2" y1="3" x2="5" y2="3" />
	</frame>
	<frame pos="7">
		<descr>Central Bar right</descr>
		<sketch x1="6" y1="3" x2="9" y2="3" />
	</frame>
	<frame pos="8">
		<descr>Banner Advisor</descr>
		<sketch x1="2" y1="4" x2="9" y2="4" />
	</frame>
	<frame pos="9">
		<descr>Full</descr>
		<sketch x1="2" y1="5" x2="9" y2="5" />
	</frame>
	<frame pos="10">
		<descr>Footer 2 Left</descr>
		<sketch x1="0" y1="6" x2="11" y2="6" />
	</frame>
	<frame pos="11">
		<descr>Footer Left</descr>
		<sketch x1="0" y1="7" x2="5" y2="7" />
	</frame>
	<frame pos="12">
		<descr>Footer right</descr>
		<sketch x1="6" y1="7" x2="11" y2="7" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="PORTAL_TITLE" />
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />
              favicon.png" type="image/png" />
              <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
              <!--[if lt IE 9]>
              <script src="<@wp.resourceURL />static/js/entando-misc-html5-essentials/html5shiv.js"></script>
              <![endif]-->
              <@c.import url="/WEB-INF/aps/jsp/models/inc/content_inline_editing.jsp" />
              <@c.import url="/WEB-INF/aps/jsp/models/inc/header-inclusions_light.jsp" />
    </head>
    <body data-spy="scroll" data-target="#navbar-menu">

        <!-- Navbar -->
        <div class="navbar navbar-custom light navbar-fixed-top sticky" role="navigation" id="sticky-nav">
            <div class="container">

                <!-- Navbar-header -->
                <div class="navbar-header">

                    <!-- Responsive menu button -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- LOGO -->
                    <a class="navbar-brand logo" href="#">
                        <img alt="acme-logo"  class="logo-img" src="<@wp.imgURL />Logo_Acme_Bank.png">
                    </a>

                </div>
                <!-- end navbar-header -->

                <!-- menu -->
                <div class="navbar-collapse collapse" id="navbar-menu">

                    <!--Navbar left-->
                    <ul class="nav navbar-nav nav-custom-left">
                        <!--frame 0 1-->
                        <@wp.show frame=0 />
                        <@wp.show frame=1 />
                    </ul>

                    <!-- Navbar right -->
                    <ul class="nav navbar-nav navbar-right">
                        <!--frame 2 3-->
                        <@wp.show frame=2 />
                        <@wp.show frame=3 />
                    </ul>
                </div>
                <!--/Menu -->
            </div>
            <!-- end container -->
        </div>
        <!-- End navbar-custom -->

        <!-- HOME -->
        <section class="bg-custom home" id="home">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <!--frame 4-->
                        <@wp.show frame=4 />
                        <!--frame 4-->
                    </div>
                </div>
            </div>
        </section>
        <!-- END HOME -->

        <!-- Features Alt -->
        <section class="section" id="mortgage">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <!--frame 5-->
                        <@wp.show frame=5 />
                        <!--frame 5-->
                    </div>
                </div>
            </div>
        </section>

        <section class="section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <!--frame 6-->
                        <@wp.show frame=6 />
                        <!--frame 5-->
                    </div>
                    <div class="col-sm-6">
                        <!--frame 7 frame bpm -->
                        <@wp.show frame=7 />
                        <!--frame 7-->
                    </div>
                </div>
            </div>
        </section>

        <section class="section">
            <!--frame 8-->
            <@wp.show frame=8/>
            <!--frame 8-->
        </section>
        <section class="section">
            <!--frame 9-->
            <@wp.show frame=9 />
            <!--frame 9-->
        </section>
        <section class="section">
            <!--frame 10-->
            <@wp.show frame=10 />
            <!--frame 10-->
        </section>

        <!-- FOOTER -->
        <footer class="section ">
            <div class="row">
                <div class="col-md-6">
                    <!--frame 11-->
                    <@wp.show frame=11 />
                    <!--frame 11-->
                </div>
                <div class="col-md-6">
                    <!--frame 12-->
                    <@wp.show frame=12 />
                    <!--frame 12-->
                </div>
            </div>
        </footer>
        <!-- END FOOTER -->

        <script src="<@wp.resourceURL />static/js/jquery.ajaxchimp.js"></script>
        <script src="<@wp.resourceURL />static/js/jquery.sticky.js"></script>
        <script src="<@wp.resourceURL />static/js/jquery.app.js"></script>
    </body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('entando-page-inspinia','Inspinia - BPM layout','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Sidebar 1</descr>
		<sketch x1="0" y1="0" x2="1" y2="0" />
	</frame>
	<frame pos="1">
		<descr>Top Bar 1</descr>
		<sketch x1="2" y1="0" x2="3" y2="0" />
	</frame>
	<frame pos="2">
		<descr>Top Bar 2</descr>
		<sketch x1="6" y1="0" x2="7" y2="0" />
	</frame>
	<frame pos="3">
		<descr>Top Bar 3</descr>
		<sketch x1="8" y1="0" x2="9" y2="0" />
	</frame>
	<frame pos="4">
		<descr>Top Bar 4</descr>
		<sketch x1="10" y1="0" x2="10" y2="0" />
	</frame>
	<frame pos="5">
		<descr>Left</descr>
		<sketch x1="2" y1="1" x2="4" y2="1" />
	</frame>
	<frame pos="6">
		<descr>Center</descr>
		<sketch x1="5" y1="1" x2="7" y2="1" />
	</frame>
	<frame pos="7">
		<descr>Right</descr>
		<sketch x1="8" y1="1" x2="11" y2="1" />
	</frame>
	<frame pos="8">
		<descr>Sidebar 2</descr>
		<sketch x1="0" y1="1" x2="1" y2="1" />
	</frame>
	<frame pos="9">
		<descr>Full 1</descr>
		<sketch x1="2" y1="2" x2="11" y2="2" />
	</frame>
	<frame pos="10">
		<descr>Sidebar 3</descr>
		<sketch x1="0" y1="2" x2="1" y2="2" />
	</frame>
	<frame pos="11" main="true">
		<descr>full 2</descr>
		<sketch x1="2" y1="3" x2="11" y2="3" />
	</frame>
	<frame pos="12">
		<descr>Sidebar 4</descr>
		<sketch x1="0" y1="3" x2="1" y2="3" />
	</frame>
	<frame pos="13">
		<descr>Content left</descr>
		<sketch x1="2" y1="4" x2="6" y2="4" />
	</frame>
	<frame pos="14">
		<descr>Content right</descr>
		<sketch x1="7" y1="4" x2="11" y2="4" />
	</frame>
	<frame pos="15">
		<descr>Sidebar 5</descr>
		<sketch x1="0" y1="4" x2="1" y2="4" />
	</frame>
	<frame pos="16">
		<descr>Full 3</descr>
		<sketch x1="2" y1="5" x2="11" y2="5" />
	</frame>
	<frame pos="17">
		<descr>Sidebar 5</descr>
		<sketch x1="0" y1="5" x2="1" y2="5" />
	</frame>
	<frame pos="18">
		<descr>Left</descr>
		<sketch x1="0" y1="6" x2="3" y2="6" />
	</frame>
	<frame pos="19">
		<descr>Center</descr>
		<sketch x1="4" y1="6" x2="7" y2="6" />
	</frame>
	<frame pos="20">
		<descr>Right</descr>
		<sketch x1="8" y1="6" x2="11" y2="6" />
	</frame>
	<frame pos="21">
		<descr>Left</descr>
		<sketch x1="0" y1="7" x2="3" y2="7" />
	</frame>
	<frame pos="22">
		<descr>Center</descr>
		<sketch x1="4" y1="7" x2="7" y2="7" />
	</frame>
	<frame pos="23">
		<descr>Right</descr>
		<sketch x1="8" y1="7" x2="11" y2="7" />
	</frame>
	<frame pos="24">
		<descr>Footer</descr>
		<sketch x1="0" y1="8" x2="11" y2="8" />
	</frame>
	<frame pos="25">
		<descr>Top Bar 1-1</descr>
		<sketch x1="4" y1="0" x2="5" y2="0" />
	</frame>
	<frame pos="26">
		<descr>Top Bar 4-2</descr>
		<sketch x1="11" y1="0" x2="11" y2="0" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="PORTAL_TITLE" />
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />
              favicon.png" type="image/png" />
              <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
              <!--[if lt IE 9]>
              <script src="<@wp.resourceURL />static/js/entando-misc-html5-essentials/html5shiv.js"></script>
              <![endif]-->
              <@c.import url="/WEB-INF/aps/jsp/models/inc/content_inline_editing.jsp" />
              <@c.import url="/WEB-INF/aps/jsp/models/inc/header-inclusions.jsp" />
    </head>
    <body class="pace-done">
        <div class="pace  pace-inactive">
            <div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
                <div class="pace-progress-inner"></div>
            </div>
            <div class="pace-activity"></div>
        </div>
        <div id="wrapper">
            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav metismenu" id="side-menu">
                        <li class="nav-header">
                            <div class="dropdown profile-element">
                                <#if (accountExpired?? && accountExpired == true) || (wrongAccountCredential?? && wrongAccountCredential == true)>open</#if>
                                <#if (Session.currentUser != "guest")>
                                <span>
                                    <img alt="image" class="" src="<@wp.imgURL />everis.png" style="width:180px;height:140px;">
                                </span>
                                <#else>
                                <span>
                                    <img alt="image" class="" src="<@wp.imgURL />everis.png" style="width:180px;height:140px;">
                                </span>
                                </#if>
                                <br>
                                <@wp.show frame=0 />
                            </div>
                            <div class="logo-element">
                                E
                            </div>
                        </li>
                        <@wp.show frame=8 />
                        <@wp.show frame=10 />
                        <@wp.show frame=12 />
                        <@wp.show frame=15 />
                        <@wp.show frame=17 />
                    </ul>
                </div>
            </nav>
            <div id="page-wrapper" class="gray-bg dashbard-1">
                <div class="row border-bottom">
                    <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                        <div class="navbar-header">
                            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#">
                                <i class="fa fa-bars"></i>
                            </a>
                        </div>
                        <ul class="nav navbar-top-links navbar-right">
                            <li style="float:left;">
                                <@wp.show frame=1 />
                                
                                <@wp.show frame=25 />
                                <@wp.show frame=2 />
                                <@wp.show frame=3 />
                                <@wp.show frame=4 />
                                
                                <@wp.show frame=26 />
                        </ul>
                    </nav>
                </div>
                <div class="row white-bg" style="padding-top:20px; padding-bottom:10px; border-bottom:2px solid #e7eaec;">
                    <div class="col-md-4">
                        <div class="white-bg">
                            <@wp.show frame=5 />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="white-bg">
                            <@wp.show frame=6 />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="white-bg">
                            <@wp.show frame=7 />
                        </div>
                    </div>
                </div>
                <div class="row white-bg" style="padding-top:20px; padding-bottom:10px; border-bottom:2px solid #e7eaec;">
                    <div class="col-md-12">
                        <div class="white-bg">
                            <@wp.show frame=9 />
                        </div>
                    </div>
                </div>
                <div class="row white-bg" style="padding-top:20px; padding-bottom:10px; border-bottom:2px solid #e7eaec;">
                    <div class="col-md-12">
                        <div class="white-bg">
                            <@wp.show frame=11 />
                        </div>
                    </div>

                </div>
                <div class="row white-bg" style="padding-top:20px; padding-bottom:10px; border-bottom:2px solid #e7eaec;">
                    <div class="col-md-6">
                        <div class="white-bg">
                            <@wp.show frame=13 />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="white-bg">
                            <@wp.show frame=14 />
                        </div>
                    </div>
                </div>
                <div class="row white-bg" style="padding-top:20px; padding-bottom:10px; border-bottom:2px solid #e7eaec;">
                    <@wp.show frame=16 />
                </div>
                <div class="row">
                    <div class="wrapper wrapper-content">
                        <div class="row">
                            <div class="col-lg-4">
                                <@wp.show frame=18 />
                            </div>
                            <div class="col-lg-4">
                                <@wp.show  frame=19/>
                            </div>
                            <div class="col-lg-4">
                                <@wp.show  frame=20 />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <@wp.show frame=21 />
                            </div>
                            <div class="col-lg-4">
                                <@wp.show  frame=22/>
                            </div>
                            <div class="col-lg-4">
                                <@wp.show  frame=23 />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="footer">
                        <@wp.show frame=24 />
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('header-footer-nav','header-footer-nav','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Top Bar 1</descr>
		<sketch x1="0" y1="0" x2="1" y2="1" />
	</frame>
	<frame pos="1">
		<descr>Top Bar 2</descr>
		<sketch x1="2" y1="0" x2="3" y2="1" />
	</frame>
	<frame pos="2">
		<descr>Top Bar 3</descr>
		<sketch x1="4" y1="0" x2="5" y2="1" />
	</frame>
	<frame pos="3">
		<descr>Top Bar 4</descr>
		<sketch x1="6" y1="0" x2="7" y2="1" />
	</frame>
	<frame pos="4">
		<descr>Top Bar 5</descr>
		<sketch x1="8" y1="0" x2="9" y2="1" />
	</frame>
	<frame pos="5">
		<descr>Top Bar 6</descr>
		<sketch x1="10" y1="0" x2="11" y2="1" />
	</frame>
	<frame pos="6">
		<descr>Main Bar 1</descr>
		<sketch x1="0" y1="2" x2="2" y2="5" />
	</frame>
	<frame pos="7">
		<descr>Main Bar 2</descr>
		<sketch x1="3" y1="2" x2="6" y2="5" />
	</frame>
	<frame pos="8">
		<descr>Main Bar 3</descr>
		<sketch x1="7" y1="2" x2="8" y2="5" />
	</frame>
	<frame pos="9">
		<descr>Main Bar 4</descr>
		<sketch x1="9" y1="2" x2="11" y2="5" />
	</frame>
	<frame pos="10">
		<descr>Main Bar 1</descr>
		<sketch x1="0" y1="6" x2="2" y2="9" />
	</frame>
	<frame pos="11">
		<descr>Main Bar 2</descr>
		<sketch x1="3" y1="6" x2="8" y2="9" />
	</frame>
	<frame pos="12">
		<descr>Main Bar 3</descr>
		<sketch x1="9" y1="6" x2="11" y2="9" />
	</frame>
	<frame pos="13">
		<descr>Footer</descr>
		<sketch x1="0" y1="10" x2="11" y2="11" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="PORTAL_TITLE" />
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />
              favicon.png" type="image/png" />
        <style>
            @media (max-width: 1050px) {
                .fsi-header .navbar-header {
                    width: 100%;
                    min-height: initial;
                    position: static!important;
                }
                .fsi-header .collapse {
                    display: none !important;
                }
                .fsi-header .collapse.in {
                    display: block !important;
                }
                .fsi-header .navbar-toggle  {
                    display: block !important;
                }
                .fsi-header .navbar-nav>li {
                    float: none;
                }
                .fsi-header .navbar-right {
                    float: left !important;
                    margin-bottom: 20px !important;
                }
                .fsi-header .navbar-collapse {
                    border-top: 1px solid #e7e7e7;
                }
            }

            .fsi-header .navbar-header {
                min-height: 120px;
                position: absolute;
            }

            .fsi-header .navbar-right {
                margin-right: 20px !important;
            }
            .fsi-header .navbar-nav>li>a {
                padding: 0;
                color: #fff;
            }

            .fsi-header .navbar-toggle,
            .fsi-header .navbar-toggle:hover,
            .fsi-header .navbar-toggle:focus {
                background: transparent;
                height: 50px;
                margin: 20px;
            }
            .fsi-header .navbar-toggle .icon-bar{
                background-color: #fff;
            }

            .fsi-header {
                font-family: "Open Sans", sans-serif;
                font-size: 24px;
                background: #002235;
                color: #ffffff;
                min-height: 120px;
                margin-bottom: 0;
            }

            .fsi-header .logo-names {
                margin-top: 26px;
                width: 330px;
                margin-left: 30px;
                display: flex;
                align-items: center;
            }

            .fsi-header .fa.fa-shield {
                font-size: 40px;
            }

            .fsi-header.logo-names b {
                font-weight: 600;
            }
            .fsi-header.logo-names span {
                font-weight: 300;
            }
            .logo-menu-pages {
                height: 22px;
                margin: 37px 5px 0 40px;
                font-size: 16px;
                font-weight: 300;
                font-family: "Open Sans", sans-serif;
                line-height: 22px;
                text-transform: uppercase;
            }
        </style>
    </head>
    <body>
        <div id="wrapper">
            <nav class="navbar navbar-default fsi-header">
                <div class="">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div class="logo-names">
                            <wp:show frame="0" />
                            <img alt="image" class="" src="/fsi-credit-card-dispute-customer/resources/static/img/shield-logo.png">&nbsp;
                            <b>FORTRESS - Bank Loan</b>
                        </div>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="logo-menu-pages">
                                <@wp.show  frame=0 />
                            </li>
                            <li class="logo-menu-pages">
                                <@wp.show  frame=1 />
                            </li>
                            <li class="logo-menu-pages">
                                <@wp.show  frame=2 />
                            </li>
                            <li class="logo-menu-pages">
                                <@wp.show  frame=3 />
                            </li>
                            <li class="logo-menu-pages">
                                <@wp.show  frame=4 />
                            </li>
                            <li class="logo-menu-pages">
                                <@wp.show  frame=5 />
                            </li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
            
            <div class="row header-custom">
            <div class="row banner-main">
                <div class="col-md-12">
                    <div class=" left-banner middle-box-internal text-center">
                        <p>Improving businesses&apos; life through meaningful services.
                        </p>
                        <input type="submit" value="CONTACT US" class="btn btn-primary login-button">
                    </div>
                </div>
            </div>
            <div class="gray-bg">
                <div class="wrapper wrapper-content">
                <div class="row">
                    <div class="col-md-2">
                    <@wp.show  frame=6 />
                    </div>
                    <div class="col-md-6">
                    <@wp.show  frame=7 />
                    </div>
                    <div class="col-md-2">
                    <@wp.show  frame=8 />
                    </div>
                    <div class="col-md-2">
                    <@wp.show  frame=9 />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                    <@wp.show  frame=10 />
                    </div>
                    <div class="col-md-8">
                    <@wp.show  frame=11 />
                    </div>
                    <div class="col-md-2">
                    <@wp.show  frame=12 />
                    </div>
                </div>
                </div>
             </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <@wp.show  frame=13 />
                </div>
            </div>
        </div>
    </body>
</html>

');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('entando-page-bootstrap-hero','Bootstrap - Hero Unit','<frames>
	<frame pos="0">
		<descr>Navbar 1</descr>
		<defaultWidget code="entando-widget-language_choose" />
	</frame>
	<frame pos="1">
		<descr>Navbar 2</descr>
		<defaultWidget code="entando-widget-navigation_bar">
			<properties>
				<property key="navSpec">code(homepage)</property>
			</properties>
		</defaultWidget>
	</frame>
	<frame pos="2">
		<descr>Navbar 3</descr>
		<defaultWidget code="entando-widget-search_form" />
	</frame>
	<frame pos="3">
		<descr>Navbar 4</descr>
		<defaultWidget code="entando-widget-login_form" />
	</frame>
	<frame pos="4">
		<descr>Toolbar 1</descr>
	</frame>
	<frame pos="5">
		<descr>Hero Unit</descr>
	</frame>
	<frame pos="6">
		<descr>Toolbar 2</descr>
	</frame>
	<frame pos="7" main="true">
		<descr>Top Story</descr>
	</frame>
	<frame pos="8">
		<descr>Box 1</descr>
	</frame>
	<frame pos="9">
		<descr>Box 2</descr>
	</frame>
	<frame pos="10">
		<descr>Box 3</descr>
	</frame>
	<frame pos="11">
		<descr>Side 1</descr>
	</frame>
	<frame pos="12">
		<descr>Side 2</descr>
	</frame>
	<frame pos="13">
		<descr>Side 3</descr>
	</frame>
	<frame pos="14">
		<descr>Side 4</descr>
	</frame>
	<frame pos="15">
		<descr>Content 1</descr>
	</frame>
	<frame pos="16">
		<descr>Content 2</descr>
	</frame>
	<frame pos="17">
		<descr>Content 3</descr>
	</frame>
	<frame pos="18">
		<descr>Content 4</descr>
	</frame>
	<frame pos="19">
		<descr>Content 5</descr>
	</frame>
	<frame pos="20">
		<descr>Side 5</descr>
	</frame>
	<frame pos="21">
		<descr>Side 6</descr>
	</frame>
	<frame pos="22">
		<descr>Side 7</descr>
	</frame>
	<frame pos="23">
		<descr>Side 8</descr>
	</frame>
	<frame pos="24">
		<descr>Footer 1</descr>
	</frame>
	<frame pos="25">
		<descr>Footer 2</descr>
	</frame>
	<frame pos="26">
		<descr>Footer 3</descr>
	</frame>
	<frame pos="27">
		<descr>Footer 4</descr>
	</frame>
	<frame pos="28">
		<descr>Footer 5</descr>
	</frame>
</frames>',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="PORTAL_TITLE" />
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
              <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
              <!--[if lt IE 9]>
                      <script src="<@wp.resourceURL />static/js/entando-misc-html5-essentials/html5shiv.js"></script>
              <![endif]-->
              <@c.import url="/WEB-INF/aps/jsp/models/inc/lesscss-active/lesscss.jsp" />
              <@c.import url="/WEB-INF/aps/jsp/models/inc/models-common-utils.jsp" />
	      <@c.import url="/WEB-INF/aps/jsp/models/inc/content_inline_editing.jsp" />
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#"><img src="<@wp.imgURL />entando-logo.png" alt="Entando - Access. Build. Connect." /></a>
                    <div class="nav-collapse collapse">
                        <@wp.show frame=0 />
                        <@wp.show frame=1 />
                        <@wp.show frame=2 />
                        <@wp.show frame=3 />
                    </div><!-- /.nav-collapse -->
                </div>
            </div><!-- /navbar-inner -->
        </div>
        <div class="container">
            <div class="row">
                <div class="span12">
                    <@wp.show frame=4 />
                </div>
            </div>
            <div class="row">
                <@wp.show frame=5 />
            </div>
            <div class="row">
                <div class="span12">
                    <@wp.show frame=6 />
                </div>
            </div>
            <div class="row">
                <div class="span12">
                    <@wp.show frame=7 />
                </div>
            </div>
            <div class="row">
                <div class="span4">
                    <@wp.show frame=8 />
                </div>
                <div class="span4">
                    <@wp.show frame=9 />
                </div>
                <div class="span4">
                    <@wp.show frame=10 />
                </div>
            </div>
            <div class="row">
                <div class="span6">
                    <@wp.show frame=11 />
                </div>
                <div class="span6">
                    <@wp.show frame=12 />
                </div>
            </div>
            <div class="row">
                <div class="span6">
                    <@wp.show frame=13 />
                </div>
                <div class="span6">
                    <@wp.show frame=14 />
                </div>
            </div>
            <div class="row">
                <div class="span12">
                    <@wp.show frame=15 />
                </div>
            </div>
            <div class="row">
                <div class="span12">
                    <@wp.show frame=16 />
                </div>
            </div>
            <div class="row">
                <div class="span12">
                    <@wp.show frame=17 />
                </div>
            </div>
            <div class="row">
                <div class="span12">
                    <@wp.show frame=18 />
                </div>
            </div>
            <div class="row">
                <div class="span12">
                    <@wp.show frame=19 />
                </div>
            </div>
            <div class="row">
                <div class="span6">
                    <@wp.show frame=20 />
                </div>
                <div class="span6">
                    <@wp.show frame=21 />
                </div>
            </div>
            <div class="row">
                <div class="span6">
                    <@wp.show frame=22 />
                </div>
                <div class="span6">
                    <@wp.show frame=23 />
                </div>
            </div>
        </div>
        <footer class="padding-medium-top">
            <div class="container">
                <div class="row margin-medium-bottom">
                    <div class="span12">
                        <@wp.show frame=24 />
                        <@wp.show frame=25 />
                    </div>
                </div>
                <div class="row margin-medium-bottom">
                    <div class="span4">
                        <@wp.show frame=26 />
                    </div>
                    <div class="span4">
                        <@wp.show frame=27 />
                    </div>
                    <div class="span4">
                        <@wp.show frame=28 />
                    </div>
                </div>
                <div class="row">
                    <p class="span12 text-center margin-medium-top"><@wp.i18n key="COPYRIGHT" escapeXml=false /> - Powered by <a href="http://www.entando.com/">Entando - Access. Build. Connect.</a></p>
                </div>
            </div>
        </footer>
    </body>
</html>');
