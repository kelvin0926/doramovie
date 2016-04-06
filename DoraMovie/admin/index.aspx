<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DoraMovie.admin.index" %>

<!DOCTYPE html>
<html>
<head>
    <title><%=Application["title"] %>|后台管理系统</title>
    <!-- basic styles -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
    <!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
    <!-- page specific plugin styles -->
    <!-- fonts -->
    <link rel="stylesheet" href="http://fonts.useso.com/css?family=Open+Sans:400,300" />
    <!-- ace styles -->
    <link rel="stylesheet" href="assets/css/ace.min.css" />
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
    <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
    <!-- inline styles related to this page -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script>
        function Validate() {
            if ($("#LoginName").val() == '') {
                $("#LoginName").focus();
                return false;
            } else if ($("#LoginPwd").val() == '') {
                $("#LoginPwd").focus();
                return false;
            }
        }
    </script>
</head>
<body class="login-layout">
    <div class="main-container">
        <div class="main-content">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="login-container">
                        <div class="center">
                            <h1>
                                <i class="icon-leaf green"></i><span class="red">多啦影院</span> <span class="white">管理系统</span>
                            </h1>
                            <h4 class="blue">
                                &copy; www.dora-movie.com.cn</h4>
                        </div>
                        <div class="space-6">
                        </div>
                        <div class="position-relative">
                            <div id="login-box" class="login-box visible widget-box no-border">
                                <div class="widget-body">
                                    <div class="widget-main">
                                        <h4 class="header blue lighter bigger">
                                            <i class="icon-coffee green"></i>Hi，请输入您的管理账号吧^_^
                                        </h4>
                                        <div class="space-6">
                                        </div>
                                        <form id="form1" runat="server">
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="text" class="form-control" name="LoginName" id="LoginName" placeholder="请输入管理员账号..." maxlength="20" />
                                                    <i class="icon-user"></i></span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="password" class="form-control" name="LoginPwd" id="LoginPwd" placeholder="请输入管理员密码..." maxlength="16" />
                                                    <i class="icon-lock"></i></span>
                                            </label>
                                            <div class="space">
                                            </div>
                                            <div class="clearfix">
                                                <button type="submit" runat="server" id="LoginButton" value="ok" class="width-35 pull-right btn btn-sm btn-primary" onserverclick="LoginButton_Click" onclick="return Validate();">
                                                    <i class="icon-key"></i>登陆
                                                </button>
                                            </div>
                                            <div class="space-4">
                                            </div>
                                        </fieldset>
                                        </form>
                                    </div>
                                    <!-- /widget-main -->
                                    <div class="toolbar clearfix">
                                        <div>
                                            如果您不是管理员而误闯了此地，<a href="../" class="forgot-password-link">点击此处</a>返回首页。
                                        </div>
                                    </div>
                                </div>
                                <!-- /widget-body -->
                            </div>
                            <!-- /login-box -->
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
</body>
</html>