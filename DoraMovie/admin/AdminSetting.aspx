<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="AdminSetting.aspx.cs" Inherits="DoraMovie.admin.AdminSetting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <div class="page-header">
            <h1>
                文章分类管理
            </h1>
        </div>
        <style>
            .form-group{margin:10px 23%;}
            .form-group input{width:511px;}
            .form-group label{width:120px;}
        </style>
        <!-- /.page-header -->
        <div class="row">
            <div class="col-xs-12">
                <div class="form-group">
                    <label>网站标题：<input name="title" type="text" /></label>
                </div>                
                <div class="form-group">
                    <label>网站链接：<input name="url" type="url" placeholder="http://开头，/结尾的完整链接" /></label>
                </div>
                <div class="form-group">
                    <label>短链接：<input name="smallUrl" type="text" placeholder="比如“Cowrybox.Com”" /></label>
                </div>
                <div class="form-group">
                    <label>关键字：<input name="keyword" type="text" /></label>
                </div>
                <div class="form-group">
                    <label>网站说明：<textarea name="description" rows="10" cols="80"></textarea></label>
                </div>
                <div class="form-group">
                    <label>广告合作：<textarea name="aboutAD" rows="10" cols="80"></textarea></label>
                </div>
                <div class="form-group">
                    <label>联系我们：<textarea name="aboutMe"  rows="10" cols="80"></textarea></label>
                </div>
                <div class="form-group">
                    <label>加入我们：<textarea name="AddTeam"  rows="10" cols="80"></textarea></label>
                </div>
                <div class="clearfix form-actions">
                    <div class="col-md-offset-3 col-md-9">
                        <button class="btn btn-info" type="submit" name="editButton">
                            <i class="icon-pencil bigger-110"></i>保存系统设置
                        </button>                        
                    </div>
                </div>
            </div>           
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="otherjquery" runat="server">
</asp:Content>
