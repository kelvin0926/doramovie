<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="adminEdit.aspx.cs" Inherits="DoraMovie.admin.adminEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .Content { margin-top: 10px; font-family: Verdana; }
        .Content .form-group { padding: 16px; }
        .Content label { text-align: right; }
        .form-actions { height: 88px; }
    </style>
    <div class="Content">
        <!-- PAGE CONTENT BEGINS -->
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                登录名
            </label>
            <div class="col-sm-9">
                <input type="text" name="user" maxlength="90" disabled placeholder="title" class="col-xs-10 col-sm-5" value='<%=adminModel.name %>' />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                密码
            </label>
            <div class="col-sm-9">
                <input type="password" name="pwd" placeholder="Password" class="col-xs-10 col-sm-5" value="" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="statuscheckbox">
                查看权限
            </label>
            <div class="col-sm-9">
                <div class="control-group">
                    <label><input name="ispast" value="1" type="radio" <%=adminModel.isPast==1?"checked":"" %> class="ace" /><span class="lbl">查看全部</span></label>
                    <label><input name="ispast" value="0" type="radio" <%=adminModel.isPast==0?"checked":"" %> class="ace" /><span class="lbl">仅限自己和投稿作品</span></label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                QQ邮箱
            </label>
            <div class="col-sm-9">
                <input type="text" name="email" maxlength="90" placeholder="title" class="col-xs-10 col-sm-5" value='<%=adminModel.Email %>' />
            </div>
        </div>
        <div class="clearfix form-actions">
            <div class="col-md-offset-3 col-md-9">
                <button class="btn btn-info" type="submit" name="submitButton">
                    <i class="icon-ok bigger-110"></i>提交
                </button>
                &nbsp; &nbsp; &nbsp;
                <button class="btn" type="reset">
                    <i class="icon-undo bigger-110"></i>重置
                </button>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="otherjquery" runat="server">
</asp:Content>
