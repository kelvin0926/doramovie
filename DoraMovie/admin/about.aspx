<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="DoraMovie.admin.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="kindeditor/themes/default/default.css" />
    <link rel="stylesheet" href="kindeditor/plugins/code/prettify.css" />
    <script charset="utf-8" src="kindeditor/kindeditor.js"></script>
    <script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
    <script charset="utf-8" src="kindeditor/plugins/code/prettify.js"></script>
    <script type="text/javascript">
        KindEditor.ready(function (K) {
            var editor1 = K.create('#Textarea1,#Textarea2', {
                cssPath: 'kindeditor/plugins/code/prettify.css',
                uploadJson: 'kindeditor/upload_json.ashx',
                fileManagerJson: 'kindeditor/file_manager_json.ashx',
                allowFileManager: true,
                //下面这行代码就是关键的所在，当失去焦点时执行 this.sync()，否则取不到值;
                afterBlur: function () { this.sync(); }
            });
        });
    </script>
    <style>
        .Content { margin-top: 10px; font-family: Verdana; }
        .Content .form-group { margin: 16px; }
        .Content label { text-align: right; }
        .form-actions { height: 88px; }
    </style>
    <div class="Content">
        <!-- PAGE CONTENT BEGINS -->
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                关于我们
            </label>
            <div class="col-sm-9">
                <textarea id="Textarea1" name="Textarea1" rows="30" cols="140"><%=aboutModel.aboutMe%></textarea>
            </div>
        </div>
        <br />
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                联系我们
            </label>
            <div class="col-sm-9">
                <textarea id="Textarea2" name="Textarea2" rows="30" cols="140"><%=aboutModel.contact%></textarea>
            </div>
        </div>
        <div style="clear: both">
        </div>
        <div class="clearfix form-actions">
            <div class="col-md-offset-3 col-md-9">
                <button class="btn btn-info" type="submit" id="submitButton" name="submitButton">
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