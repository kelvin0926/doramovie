<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="DoraMovie.user.edit" MasterPageFile="~/user/Site1.Master" %>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    <div class="page-content">
        <div class="page-header">
            <h1>
                修改基本资料
            </h1>
        </div>
        <!-- /.page-header -->
        <div class="row">
            <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->
                <div>
                    <div id="user-profile-3" class="user-profile row">
                        <div class="col-sm-offset-1 col-sm-10">
                            <%--<div class="well well-sm">
                                <button type="button" class="close" data-dismiss="alert">
                                    &times;</button>
                                &nbsp;
                                <div class="inline middle blue bigger-110">
                                    您的基本资料完成情况：
                                </div>
                                &nbsp; &nbsp; &nbsp;
                                <div style="width: 400px;" data-percent="70%" class="inline middle no-margin progress progress-striped active">
                                    <div class="progress-bar progress-bar-success" style="width: 70%">
                                    </div>
                                </div>
                            </div>--%>
                            <!-- /well -->
                            <div class="space">
                            </div>
                            <form class="form-horizontal" runat="server" id="form1">
                            <div class="tabbable">
                                <ul class="nav nav-tabs padding-16">
                                    <li class="active"><a data-toggle="tab" href="#edit-basic"><i class="green icon-edit bigger-125"></i>Basic Info </a></li>
                                    <%--<li>
															<a data-toggle="tab" href="#edit-settings">
																<i class="purple icon-cog bigger-125"></i>
																Settings
															</a>
														</li>

														<li>
															<a data-toggle="tab" href="#edit-password">
																<i class="blue icon-key bigger-125"></i>
																Password
															</a>
														</li>--%>
                                </ul>
                                        <div class="tab-content profile-edit-tab-content">
                                            <div id="edit-basic" class="tab-pane in active">
                                                <h4 class="header blue bolder smaller">
                                                    头像和姓名</h4>
                                                <div class="row">
                                                    <div class="col-xs-12 col-sm-4">
                                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                                    </div>
                                                    <div class="vspace-xs">
                                                    </div>
                                                    <div class="col-xs-12 col-sm-8">
                                                        <div class="form-group">
                                                            <label class="col-sm-4 control-label no-padding-right" for="form-field-username">
                                                                网名/笔名/昵称</label>
                                                            <div class="col-sm-8">
                                                                <input class="col-xs-12 col-sm-4" type="text" id="form-field-username" name="form-field-username" placeholder="网名/笔名/昵称" value="<%=user.UserName %>" />
                                                            </div>
                                                        </div>
                                                        <div class="space-4">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-sm-4 control-label no-padding-right" for="form-field-first">
                                                                姓名</label>
                                                            <div class="col-sm-8">
                                                                <input class="input-small" type="text" id="form-field-first" name="form-field-first" placeholder="真实姓名" value="<%=user.CnName %>" />
                                                            </div>
                                                        </div>
                                                        <div class="space-4">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-sm-4 control-label no-padding-right" for="QQ">
                                                                QQ</label>
                                                            <div class="col-sm-8">
                                                                <input class="col-xs-12 col-sm-4" type="text" id="QQ" name="QQ" placeholder="网名/笔名/昵称" value="<%=user.QQ %>" />
                                                            </div>
                                                        </div>                                                        
                                                    </div>
                                                </div>
                                                <hr />
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-date">
                                                        生日</label>
                                                    <div class="col-sm-9">
                                                        <div class="input-medium">
                                                            <div class="input-group">
                                                                <input class="input-medium date-picker" id="form-field-date" name="form-field-date" type="text" data-date-format="dd-mm-yyyy" placeholder="dd-mm-yyyy" value="<%=user.Age %>" />
                                                                <span class="input-group-addon"><i class="icon-calendar"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="space-4">
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label no-padding-right">
                                                        性别</label>
                                                    <div class="col-sm-9">
                                                        <label class="inline">
                                                            <input name="form-field-radio" type="radio" class="ace" value="Boy" <%=user.sex == "Boy"?"checked":"" %> />
                                                            <span class="lbl">男士</span>
                                                        </label>
                                                        &nbsp; &nbsp; &nbsp;
                                                        <label class="inline">
                                                            <input name="form-field-radio" type="radio" class="ace" value="Girl" <%=user.sex == "Girl"?"checked":"" %> />
                                                            <span class="lbl">女生</span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="space-4">
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-comment">
                                                        自我介绍</label>
                                                    <div class="col-sm-9">
                                                        <textarea name="form-field-comment" rows="10" cols="80" placeholder="比如写过什么专栏，毕业什么大学，擅长什么等等……只要你愿意写都可以"><%=user.jianjie %></textarea>
                                                    </div>
                                                </div>
                                                <div class="space">
                                                </div>
                                                <h4 class="header blue bolder smaller">
                                                    联系方式</h4>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-email">
                                                        Email</label>
                                                    <div class="col-sm-9">
                                                        <span class="input-icon input-icon-right">
                                                            <input type="email" disabled name="form-field-email" value="<%=user.email %>" />
                                                            <i class="icon-envelope"></i></span>
                                                    </div>
                                                </div>
                                                <div class="space-4">
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-website">
                                                        Website</label>
                                                    <div class="col-sm-9">
                                                        <span class="input-icon input-icon-right">
                                                            <input type="url" name="form-field-website" placeholder="www.cowrybox.com" value="<%=user.website %>" />
                                                            <i class="icon-globe"></i></span>
                                                    </div>
                                                </div>
                                                <div class="space-4">
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-phone">
                                                        Phone</label>
                                                    <div class="col-sm-9">
                                                        <span class="input-icon input-icon-right">
                                                            <input class="input-medium input-mask-phone" type="text" name="form-field-phone" value="<%=user.Mobile %>" />
                                                            <i class="icon-phone icon-flip-horizontal"></i></span>
                                                    </div>
                                                </div>
                                                <div class="space-4">
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label no-padding-right" for="address">
                                                        家庭住址</label>
                                                    <div class="col-sm-9">
                                                        <span class="input-icon input-icon-right">
                                                            <input class="col-xs-12" type="text" name="address" value="<%=user.address %>" />
                                                            <i class="icon-globe"></i></span>
                                                    </div>
                                                </div>
                                                
                                                <div class="space">
                                                </div>
                                            </div>
                                        </div>
                            </div>
                            <div class="clearfix form-actions">
                                <div class="col-md-offset-3 col-md-9">
                                    <button class="btn btn-info" type="submit" name="submitButton" value="tijiao">
                                        <i class="icon-ok bigger-110"></i>保存
                                    </button>
                                    &nbsp; &nbsp;
                                    <button class="btn" type="reset">
                                        <i class="icon-undo bigger-110"></i>重置
                                    </button>
                                </div>
                            </div>
                            </form>
                        </div>
                        <!-- /span -->
                    </div>
                    <!-- /user-profile -->
                </div>
                <!-- PAGE CONTENT ENDS -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse"><i class="icon-double-angle-up icon-only bigger-110"></i></a>
    </div>
</asp:Content>
