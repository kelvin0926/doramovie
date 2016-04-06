<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="articleEdit.aspx.cs" Inherits="DoraMovie.user.articleEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link rel="stylesheet" href="../admin/kindeditor/themes/default/default.css" />
    <link rel="stylesheet" href="../admin/kindeditor/plugins/code/prettify.css" />
    <script charset="utf-8" src="../admin/kindeditor/kindeditor.js"></script>
    <script charset="utf-8" src="../admin/kindeditor/lang/zh_CN.js"></script>
    <script charset="utf-8" src="../admin/kindeditor/plugins/code/prettify.js"></script>
    <script type="text/javascript">
        KindEditor.ready(function (K) {
            var editor1 = K.create('#ctl00_content_Textarea1', {
                cssPath: '../admin/kindeditor/plugins/code/prettify.css',
                uploadJson: '../admin/kindeditor/upload_json.ashx',
                fileManagerJson: '../admin/kindeditor/file_manager_json.ashx',
                allowFileManager: true,
                //下面这行代码就是关键的所在，当失去焦点时执行 this.sync()，否则取不到值;
                afterBlur: function () { this.sync(); }
            });
        });
    </script>
    <style>
        .Content { margin-top: 10px; font-family: Verdana; }
        .Content .form-group { padding: 16px; }
        .Content label { text-align: right; }
        .form-actions { height: 88px; }
    </style>
    <form id="form1" runat="server">
    <div class="Content">
        <!-- PAGE CONTENT BEGINS -->
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                标题
            </label>
            <div class="col-sm-9">
                <input type="text" id="title" maxlength="90" placeholder="title" class="col-xs-10 col-sm-5" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                作者
            </label>
            <div class="col-sm-9">
                <input type="text" id="zuozhe" disabled  placeholder="Username" class="col-xs-10 col-sm-5" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                来源</label>
            <div class="col-sm-9">
                <div class="clearfix">
                    <input class="col-xs-10 col-sm-5" type="text" id="laiyuan" placeholder="0" runat="server" />
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                分类
            </label>
            <div class="col-sm-9">
                <select class="width-20 chosen-select " id="fenlei_select" data-placeholder="选择文章分类..." runat="server">
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                内容
            </label>
            <div class="col-sm-9">
                <textarea id="Textarea1" name="Textarea1" rows="30" cols="140" runat="server"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="statuscheckbox">
                状态
            </label>
            <div class="col-sm-9">
                <div class="control-group">
                    <label>
                        <input name="statuscheckbox" type="radio" class="ace" value="" <%= status == ""?"checked":"" %>>
                        <span class="lbl">无状态</span>
                    </label>
                    <label>
                        <input name="statuscheckbox" type="radio" class="ace" value="top" <%=status.Contains("top")?"checked":"" %>>
                        <span class="lbl">首页推荐</span>
                    </label>
                    <label>
                        <input name="statuscheckbox" type="radio" class="ace" value="wall" <%=status.Contains("wall")?"checked":"" %>>
                        <span class="lbl">推广墙</span>
                    </label>
                    <label>
                        <input name="statuscheckbox" type="radio" class="ace" value="kuaixun" <%=status.Contains("kuaixun")?"checked":"" %>>
                        <span class="lbl">快讯</span>
                    </label>
                </div>
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
    </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="otherjquery" runat="server">
    <%--分类下拉框需要的文件和Jquery--%>
    <script src="../admin/assets/js/chosen.jquery.min.js"></script>
    <script type="text/javascript">
        jQuery(function ($) {
            $(".chosen-select").chosen();
        });
    </script>
</asp:Content>
