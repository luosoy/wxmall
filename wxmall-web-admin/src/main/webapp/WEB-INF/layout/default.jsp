<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="stc" value="${pageContext.request.contextPath}/assets" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=no" />
        <meta http-equiv="Cache-Control" content="no-store" />
        <meta http-equiv="Pragma" content="no-cache" />
        <meta http-equiv="Expires" content="0" />
        <title><sitemesh:write property='title' /></title>
        <link rel="stylesheet" href="${stc}/lib/bootstrap/dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="${stc}/lib/font-awesome/css/font-awesome.min.css"/>
        <link rel="stylesheet" href="${stc}/lib/Ionicons/css/ionicons.min.css"/>
        <link rel="stylesheet" href="${stc}/lib/adminlte/dist/css/AdminLTE.min.css"/>
        <link rel="stylesheet" href="${stc}/lib/adminlte/dist/css/skins/_all-skins.min.css"/>
        <!-- Google Font -->
        <link rel="stylesheet" href="${stc}/lib/googlefont/googlefont.css"/>

        <!--[if lt IE 9]>
        <script src="${stc}/lib/html5shiv/html5shiv.min.js"></script>
        <script src="${stc}/lib/respond/respond.min.js"></script>
        <![endif]-->
        <script src="${stc}/lib/jquery/dist/jquery.min.js"></script>
        <script src="${stc}/lib/jquery-ui/jquery-ui.min.js"></script>
        <script src="${stc}/lib/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="${stc}/lib/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${stc}/lib/fastclick/lib/fastclick.js"></script>
        <script src="${stc}/lib/adminlte/dist/js/adminlte.min.js"></script>
        <script src="${stc}/common/js/setings.js"></script>
        <script type="text/javascript">
            var SYS = {
                ctx: '${ctx}',
                path: '${ctx}/web/',
                stc: '${stc}'
            };
        </script>
        <sitemesh:write property='head'></sitemesh:write>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <!-- Site wrapper -->
        <div class="wrapper">
            <header class="main-header">
                <!-- Logo -->
                <a href="${ctx}/web/admin/index" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>管理</b></span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>管理系统</b></span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="${stc}/lib/adminlte/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                                    <span class="hidden-xs">Alexander Pierce</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="${stc}/lib/adminlte/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                        <p>
                                            Alexander Pierce - Web Developer
                                            <small>Member since Nov. 2012</small>
                                        </p>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            <li>
                                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>

            <!-- =============================================== -->

            <!-- Left side column. contains the sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <li class="header">菜单</li>
                        <li class="treeview active">
                            <a href="${ctx}/web/admin/index">
                                <i class="fa fa-dashboard"></i> <span>控制台</span>
<!--                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>-->
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-files-o"></i>
                                <span>Layout Options</span>
                                <span class="pull-right-container">
                                    <span class="label label-primary pull-right">4</span>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="../layout/top-nav.html"><i class="fa fa-circle-o"></i> Top Navigation</a></li>
                                <li><a href="../layout/boxed.html"><i class="fa fa-circle-o"></i> Boxed</a></li>
                                <li><a href="../layout/fixed.html"><i class="fa fa-circle-o"></i> Fixed</a></li>
                                <li><a href="../layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="../widgets.html">
                                <i class="fa fa-th"></i> <span>Widgets</span>
                                <span class="pull-right-container">
                                    <small class="label pull-right bg-green">Hot</small>
                                </span>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-pie-chart"></i>
                                <span>Charts</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="../charts/chartjs.html"><i class="fa fa-circle-o"></i> ChartJS</a></li>
                                <li><a href="../charts/morris.html"><i class="fa fa-circle-o"></i> Morris</a></li>
                                <li><a href="../charts/flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>
                                <li><a href="../charts/inline.html"><i class="fa fa-circle-o"></i> Inline charts</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-laptop"></i>
                                <span>UI Elements</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="../UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
                                <li><a href="../UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>
                                <li><a href="../UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
                                <li><a href="../UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
                                <li><a href="../UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
                                <li><a href="../UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-edit"></i> <span>Forms</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="../forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
                                <li><a href="../forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
                                <li><a href="../forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-table"></i> <span>Tables</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="../tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>
                                <li><a href="../tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="../calendar.html">
                                <i class="fa fa-calendar"></i> <span>Calendar</span>
                                <span class="pull-right-container">
                                    <small class="label pull-right bg-red">3</small>
                                    <small class="label pull-right bg-blue">17</small>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="../mailbox/mailbox.html">
                                <i class="fa fa-envelope"></i> <span>Mailbox</span>
                                <span class="pull-right-container">
                                    <small class="label pull-right bg-yellow">12</small>
                                    <small class="label pull-right bg-green">16</small>
                                    <small class="label pull-right bg-red">5</small>
                                </span>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-folder"></i> <span>Examples</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="invoice.html"><i class="fa fa-circle-o"></i> Invoice</a></li>
                                <li><a href="profile.html"><i class="fa fa-circle-o"></i> Profile</a></li>
                                <li><a href="login.html"><i class="fa fa-circle-o"></i> Login</a></li>
                                <li><a href="register.html"><i class="fa fa-circle-o"></i> Register</a></li>
                                <li><a href="lockscreen.html"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
                                <li><a href="404.html"><i class="fa fa-circle-o"></i> 404 Error</a></li>
                                <li><a href="500.html"><i class="fa fa-circle-o"></i> 500 Error</a></li>
                                <li class="active"><a href="blank.html"><i class="fa fa-circle-o"></i> Blank Page</a></li>
                                <li><a href="pace.html"><i class="fa fa-circle-o"></i> Pace Page</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-share"></i> <span>Multilevel</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                                <li class="treeview">
                                    <a href="#"><i class="fa fa-circle-o"></i> Level One
                                        <span class="pull-right-container">
                                            <i class="fa fa-angle-left pull-right"></i>
                                        </span>
                                    </a>
                                    <ul class="treeview-menu">
                                        <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                                        <li class="treeview">
                                            <a href="#"><i class="fa fa-circle-o"></i> Level Two
                                                <span class="pull-right-container">
                                                    <i class="fa fa-angle-left pull-right"></i>
                                                </span>
                                            </a>
                                            <ul class="treeview-menu">
                                                <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                                <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                            </ul>
                        </li>
                        <li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
                        <li class="header">LABELS</li>
                        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
                        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
                        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- =============================================== -->

            <!-- Content Wrapper. Contains page content -->
            <sitemesh:write property='body'></sitemesh:write>
            <!-- /.content-wrapper -->

            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.4.0
                </div>
                <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
                reserved.
            </footer>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                 <!-- Create the tabs -->
                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                    <li class="active"><a href="#control-sidebar-theme-options-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
                </ul>
                 <!-- Tab panes -->
                 <div class="tab-content">
                     <div id="control-sidebar-theme-options-tab" class="tab-pane active">
                            <h4 class="control-sidebar-heading">皮肤设置</h4>
                            <ul class="list-unstyled clearfix">
                                <li style="float:left; width: 33.33333%; padding: 5px;">
                                    <a href="javascript:void(0)" data-skin="skin-blue" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 7px; background: #367fa9"></span>
                                            <span class="bg-light-blue" style="display:block; width: 80%; float: left; height: 7px;"></span>
                                        </div>
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span>
                                            <span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
                                        </div>
                                    </a>
                                    <p class="text-center no-margin">蓝色</p>
                                </li>
                                <li style="float:left; width: 33.33333%; padding: 5px;">                                  
                                    <a href="javascript:void(0)" data-skin="skin-black" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">                                      
                                        <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix">                                           
                                            <span style="display:block; width: 20%; float: left; height: 7px; background: #fefefe"></span>
                                            <span style="display:block; width: 80%; float: left; height: 7px; background: #fefefe"></span>
                                        </div>
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 20px; background: #222"></span>
                                            <span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
                                        </div>
                                    </a>
                                    <p class="text-center no-margin">黑色</p>
                                </li>
                                <li style="float:left; width: 33.33333%; padding: 5px;">
                                    <a href="javascript:void(0)" data-skin="skin-purple" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span>
                                            <span class="bg-purple" style="display:block; width: 80%; float: left; height: 7px;"></span>
                                        </div>
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span>
                                            <span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
                                        </div>
                                    </a>
                                    <p class="text-center no-margin">紫色</p>
                                </li>
                                <li style="float:left; width: 33.33333%; padding: 5px;">
                                    <a href="javascript:void(0)" data-skin="skin-green" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span>
                                            <span class="bg-green" style="display:block; width: 80%; float: left; height: 7px;"></span>
                                        </div>
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span>
                                            <span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
                                        </div>
                                    </a>
                                    <p class="text-center no-margin">绿色</p>
                                </li>
                                <li style="float:left; width: 33.33333%; padding: 5px;">
                                    <a href="javascript:void(0)" data-skin="skin-red" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span>
                                            <span class="bg-red" style="display:block; width: 80%; float: left; height: 7px;"></span>
                                        </div>
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span>
                                            <span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
                                        </div>
                                    </a>
                                    <p class="text-center no-margin">红色</p>
                                </li>
                                <li style="float:left; width: 33.33333%; padding: 5px;">
                                    <a href="javascript:void(0)" data-skin="skin-yellow" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span>
                                            <span class="bg-yellow" style="display:block; width: 80%; float: left; height: 7px;"></span>
                                        </div>
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span>
                                            <span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
                                        </div>
                                    </a>
                                    <p class="text-center no-margin">黄色</p>
                                </li>
                                <li style="float:left; width: 33.33333%; padding: 5px;">
                                    <a href="javascript:void(0)" data-skin="skin-blue-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 7px; background: #367fa9"></span>
                                            <span class="bg-light-blue" style="display:block; width: 80%; float: left; height: 7px;"></span>
                                        </div>
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc">
                                            </span>
                                            <span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7">
                                            </span>
                                        </div>
                                    </a>
                                    <p class="text-center no-margin" style="font-size: 12px">蓝白色</p>
                                </li>
                                <li style="float:left; width: 33.33333%; padding: 5px;">
                                    <a href="javascript:void(0)" data-skin="skin-black-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                        <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix">
                                            <span style="display:block; width: 20%; float: left; height: 7px; background: #fefefe"></span>
                                            <span style="display:block; width: 80%; float: left; height: 7px; background: #fefefe"></span>
                                        </div>
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span>
                                            <span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
                                        </div>
                                    </a>
                                    <p class="text-center no-margin" style="font-size: 12px">黑白色</p>
                                </li>
                                <li style="float:left; width: 33.33333%; padding: 5px;">
                                    <a href="javascript:void(0)" data-skin="skin-purple-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span>
                                            <span class="bg-purple" style="display:block; width: 80%; float: left; height: 7px;"></span>
                                        </div>
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span>
                                            <span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
                                        </div>
                                    </a>
                                    <p class="text-center no-margin" style="font-size: 12px">紫白色</p>
                                </li>
                                <li style="float:left; width: 33.33333%; padding: 5px;">
                                    <a href="javascript:void(0)" data-skin="skin-green-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span>
                                            <span class="bg-green" style="display:block; width: 80%; float: left; height: 7px;"></span>
                                        </div>
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span>
                                            <span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
                                        </div>
                                    </a>
                                    <p class="text-center no-margin" style="font-size: 12px">绿白色</p>
                                </li>
                                <li style="float:left; width: 33.33333%; padding: 5px;">
                                    <a href="javascript:void(0)" data-skin="skin-red-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span>
                                            <span class="bg-red" style="display:block; width: 80%; float: left; height: 7px;"></span>
                                        </div>
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span>
                                            <span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
                                        </div>
                                    </a>
                                    <p class="text-center no-margin" style="font-size: 12px">红白色</p>
                                </li>
                                <li style="float:left; width: 33.33333%; padding: 5px;">
                                    <a href="javascript:void(0)" data-skin="skin-yellow-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span>
                                            <span class="bg-yellow" style="display:block; width: 80%; float: left; height: 7px;"></span>
                                        </div>
                                        <div>
                                            <span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span>
                                            <span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span>
                                        </div>
                                    </a>
                                    <p class="text-center no-margin" style="font-size: 12px">黄白色</p>
                                </li>
                            </ul>
                            <h4 class="control-sidebar-heading">布局设置</h4>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="fixed" class="pull-right">固定布局
                                </label>
                                <p>激活固定布局。不能同时使用固定和自适应布局。</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="layout-boxed" class="pull-right">自适应布局
                                </label>
                                <p>激活自适应布局</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="sidebar-collapse" class="pull-right">切换左侧边栏
                                </label>
                                <p>切换左侧边栏的状态（打开或折叠）</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-enable="expandOnHover" class="pull-right">左侧边栏展开悬停
                                </label>
                                <p>让左侧边栏微扩展悬停</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-controlsidebar="control-sidebar-open" class="pull-right">切换右侧边栏
                                </label>
                                <p>切换右侧边栏切换</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-sidebarskin="toggle" class="pull-right">切换右边栏皮肤
                                </label>
                                <p>切换右边栏皮肤黑或者白</p>
                            </div>
                     </div>
                 </div>
            </aside>
            <!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->
        <!--<sitemesh:write property='body'></sitemesh:write>-->
    </body>
</html>