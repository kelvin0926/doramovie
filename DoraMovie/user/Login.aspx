<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DoraMovie.user.Login" %>
<!DOCTYPE html>
<html>
<head>
    <title>
        <%=Application["title"] %>|后台管理系统</title>
    <!-- basic styles -->
    <link href="../admin/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../admin/assets/css/font-awesome.min.css" />
    <!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
    <!-- page specific plugin styles -->
    <!-- ace styles -->
    <link rel="stylesheet" href="../admin/assets/css/ace.min.css" />
    <link rel="stylesheet" href="../admin/assets/css/ace-rtl.min.css" />
    <!--[if lte IE 8]>
		  <link rel="stylesheet" href="../admin/assets/css/ace-ie.min.css" />
		<![endif]-->
    <!-- inline styles related to this page -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
		<script src="../admin/assets/js/html5shiv.js"></script>
		<script src="../admin/assets/js/respond.min.js"></script>
		<![endif]-->
</head>
<body class="login-layout">
    <form id="form1" runat="server">
    <div class="main-container">
        <div class="main-content">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="login-container">
                        <div class="center">
                            <h1>
                                <i class="icon-leaf green"></i><span class="red">CowryBox</span> <span class="white"> Manage Center</span>
                            </h1>                            
                        </div>
                        <div class="space-6">
                        </div>
                        <div class="position-relative">
                            <div id="login-box" class="login-box visible widget-box no-border">
                                <div class="widget-body">
                                    <div class="widget-main">
                                        <h4 class="header blue lighter bigger">
                                            <i class="icon-coffee green"></i>请输入您的账户密码
                                        </h4>
                                        <div class="space-6">
                                        </div>
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="text" class="form-control" placeholder="Email" name="Username" />
                                                    <i class="icon-user"></i></span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="password" class="form-control" placeholder="Password" name="Password" />
                                                    <i class="icon-lock"></i></span>
                                            </label>
                                            <div class="space">
                                            </div>
                                            <div class="clearfix">
                                                <%--<label class="inline">
                                                    <input type="checkbox" class="ace" />
                                                    <span class="lbl"></span>
                                                </label>--%>
                                                <button type="submit" name="Login" value="login" class="width-35 pull-right btn btn-sm btn-primary">
                                                    <i class="icon-key"></i>登陆
                                                </button>
                                            </div>
                                            <div class="space-4">
                                            </div>
                                        </fieldset>
                                        <%--<div class="social-or-login center">
                                            <span class="bigger-110">Or Login Using</span>
                                        </div>
                                        <div class="social-login center">
                                            <a class="btn btn-primary"><i class="icon-facebook"></i></a><a class="btn btn-info"><i class="icon-twitter"></i></a><a class="btn btn-danger"><i class="icon-google-plus"></i></a>
                                        </div>--%>
                                    </div>
                                    <!-- /widget-main -->
                                    <div class="toolbar clearfix">
                                        <div>
                                            <%--<a href="#" onclick="show_box('forgot-box'); return false;" class="forgot-password-link"><i class="icon-arrow-left"></i>忘记密码了？ </a>--%>
                                        </div>
                                        <div>
                                            <a href="#" onclick="show_box('signup-box'); return false;" class="user-signup-link">注册账号 <i class="icon-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- /widget-body -->
                            </div>
                            <!-- /login-box -->
                            <div id="forgot-box" class="forgot-box widget-box no-border">
                                <div class="widget-body">
                                    <div class="widget-main">
                                        <h4 class="header red lighter bigger">
                                            <i class="icon-key"></i>找回密码服务
                                        </h4>
                                        <div class="space-6">
                                        </div>
                                        <p>
                                            输入你注册时的邮箱地址，我们会将信息发给您。
                                        </p>
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="email" class="form-control" placeholder="Email" />
                                                    <i class="icon-envelope"></i></span>
                                            </label>
                                            <div class="clearfix">
                                                <button type="button" class="width-35 pull-right btn btn-sm btn-danger">
                                                    <i class="icon-lightbulb"></i>发给我吧
                                                </button>
                                            </div>
                                        </fieldset>
                                    </div>
                                    <!-- /widget-main -->
                                    <div class="toolbar center">
                                        <a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">返回到登陆 <i class="icon-arrow-right"></i></a>
                                    </div>
                                </div>
                                <!-- /widget-body -->
                            </div>
                            <!-- /forgot-box -->
                            <div id="signup-box" class="signup-box widget-box no-border">
                                <div class="widget-body">
                                    <div class="widget-main">
                                        <h4 class="header green lighter bigger">
                                            <i class="icon-group blue"></i>注册新用户
                                        </h4>
                                        <div class="space-6">
                                        </div>
                                        <script type="text/javascript">
                                            
                                        </script>
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input id="email" type="email" class="form-control" placeholder="邮箱地址..." />
                                                    <i class="icon-envelope"></i></span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input id="pwd" type="password" class="form-control" placeholder="输入密码..." />
                                                    <i class="icon-lock"></i></span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input id="pwd2" type="password" class="form-control" placeholder="重复一次密码..." />
                                                    <i class="icon-retweet"></i></span>
                                            </label>
                                            <div class="space-24">
                                            </div>
                                            <div class="clearfix">
                                                <button type="reset" class="width-30 pull-left btn btn-sm">
                                                    <i class="icon-refresh"></i>重写
                                                </button>
                                                <button id="regButton" type="button" class="width-65 pull-right btn btn-sm btn-success">
                                                    注册账户 <i class="icon-arrow-right icon-on-right"></i>
                                                </button>
                                            </div>
                                        </fieldset>
                                    </div>
                                    <div class="toolbar center">
                                        <a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link"><i class="icon-arrow-left"></i>返回登陆</a>
                                    </div>
                                </div>
                                <!-- /widget-body -->
                            </div>
                            <!-- /signup-box -->
                        </div>
                        <!-- /position-relative -->
                    </div>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
    </div>
    <!-- /.main-container -->
    <!-- basic scripts -->
    <!--[if !IE]> -->
    <script type="text/javascript">
        window.jQuery || document.write("<script src='../admin/assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
    </script>
    <!-- <![endif]-->
    <!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='../admin/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
    <script type="text/javascript">
        if ("ontouchend" in document) document.write("<script src='../admin/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>
    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        function show_box(id) {
            jQuery('.widget-box.visible').removeClass('visible');
            jQuery('#' + id).addClass('visible');
        }
    </script>
    <script src="../Scripts/function.js" type="text/javascript"></script>
    </form>
</body>
</html>
