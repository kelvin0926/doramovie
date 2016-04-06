<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DoraMovie.user.index" MasterPageFile="~/user/Site1.Master" %>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    <div class="page-content">
        <div class="page-header">
            <h1>
                会员中心
            </h1>
        </div>
        <!-- /.page-header -->
        <div class="row">
            <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->
                <div>
                    <div id="user-profile-2" class="user-profile">
                        <div class="tabbable">
                            <asp:Repeater ID="ziliao" runat="server">
                                <ItemTemplate>
                                    <div class="tab-content no-border padding-24">
                                        <div id="home" class="tab-pane in active">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-3 center">
                                                    <span class="profile-picture">
                                                        <img class="editable img-responsive" alt="Alex's Avatar" src="image/<%#Eval("headPic") %>" />
                                                    </span>
                                                    <div class="space space-4">
                                                    </div>
                                                    <a href="edit.aspx" class="btn btn-sm btn-block btn-success"><i class="icon-plus-sign bigger-120"></i><span class="bigger-110">点击修改您的基本资料</span> </a>
                                                </div>
                                                <!-- /span -->
                                                <div class="col-xs-12 col-sm-9">
                                                    <h4 class="blue">
                                                        <span class="middle">
                                                            <%#Eval("username") %></span>
                                                    </h4>
                                                    <div class="profile-user-info">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name">
                                                                真实姓名
                                                            </div>
                                                            <div class="profile-info-value">
                                                                <span>
                                                                    <%#Eval("CnName") %></span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name">
                                                                家庭住址
                                                            </div>
                                                            <div class="profile-info-value">
                                                                <i class="icon-map-marker light-orange bigger-110"></i><span>
                                                                    <%#Eval("address") %></span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name">
                                                                QQ
                                                            </div>
                                                            <div class="profile-info-value">
                                                                <span>
                                                                    <%#Eval("QQ") %></span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name">
                                                                生日
                                                            </div>
                                                            <div class="profile-info-value">
                                                                <span>
                                                                    <%#Eval("age") %></span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name">
                                                                最后登录时间</div>
                                                            <div class="profile-info-value">
                                                                <span>
                                                                    <%#Eval("onlinetime") %></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="hr hr-8 dotted">
                                                    </div>
                                                    <div class="profile-user-info">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name">
                                                                Website
                                                            </div>
                                                            <div class="profile-info-value">
                                                                <a href="#" target="_blank">www.alexdoe.com/<%#Eval("UserName") %></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- /span -->
                                            </div>
                                            <!-- /row-fluid -->
                                            <div class="space-20">
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="widget-box transparent">
                                                        <div class="widget-header widget-header-small">
                                                            <h4 class="smaller">
                                                                <i class="icon-check bigger-110"></i>自我介绍
                                                            </h4>
                                                        </div>
                                                        <div class="widget-body">
                                                            <div class="widget-main">
                                                                <%#Eval("jianjie") %>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="widget-box transparent">
                                                        <div class="widget-header widget-header-small header-color-blue2">
                                                            <h4 class="smaller">
                                                                <i class="icon-lightbulb bigger-120"></i>我的状态
                                                            </h4>
                                                        </div>
                                                        <div class="widget-body">
                                                            <div class="widget-main padding-16">
                                                                <div class="clearfix">
                                                                    <div class="grid3 center">
                                                                        <div class="easy-pie-chart percentage" data-percent="88" data-color="#CA5952">
                                                                            <span class="percent">88</span>%
                                                                        </div>
                                                                        <div class="space-2">
                                                                        </div>
                                                                        文章发布比重
                                                                    </div>
                                                                    <div class="grid3 center">
                                                                        <div class="center easy-pie-chart percentage" data-percent="90" data-color="#59A84B">
                                                                            <span class="percent">90</span>%
                                                                        </div>
                                                                        <div class="space-2">
                                                                        </div>
                                                                        阅读所占比重
                                                                    </div>
                                                                    <div class="grid3 center">
                                                                        <div class="center easy-pie-chart percentage" data-percent="80" data-color="#9585BF">
                                                                            <span class="percent">80</span>%
                                                                        </div>
                                                                        <div class="space-2">
                                                                        </div>
                                                                        Javascript/jQuery
                                                                    </div>
                                                                </div>
                                                                <div class="hr hr-16">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- #home -->
                                        <!-- /#friends -->
                                        <!-- /#pictures -->
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
                <!-- PAGE CONTENT ENDS -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
</asp:Content>
