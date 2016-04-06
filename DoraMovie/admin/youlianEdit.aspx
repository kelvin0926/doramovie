<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true"
    CodeBehind="youlianEdit.aspx.cs" Inherits="DoraMovie.admin.youlianEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .Content { margin-top: 10px; font-family: Verdana; }
        .Content .form-group { padding: 16px; }
        .Content label { text-align: right; }
        .form-actions { height: 88px; }
    </style>
    <script>
        function Validate() {
            if ($("#title").val() == "") {
                $("#title").focus();
                return false;
            } else if ($("#url").val() == "") {
                $("#url").focus();
                return false;
            }

        }
    </script>
    <div class="Content">
        <!-- PAGE CONTENT BEGINS -->
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                网站名称
            </label>
            <div class="col-sm-9">
                <input type="text" name="title" id="title" maxlength="90" placeholder="网站名称" class="col-xs-10 col-sm-5"
                    value='<%=youlianModel.title %>' />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                网站地址
            </label>
            <div class="col-sm-9">
                <input type="url" name="url" id="url" placeholder="网站地址" class="col-xs-10 col-sm-5"
                    value="<%=youlianModel.url %>" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="statuscheckbox">
                查看权限
            </label>
            <div class="col-sm-9">
                <div class="control-group">
                    <label>
                        <input name="ispast" value="1" type="radio" <%=(!youlianModel.isPast.HasValue || youlianModel.isPast.Value==1)?"checked":"" %>
                            class="ace" /><span class="lbl">显示</span></label>
                    <label>
                        <input name="ispast" value="0" type="radio" <%=youlianModel.isPast==0?"checked":"" %>
                            class="ace" /><span class="lbl">下线</span></label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                对方管理员QQ
            </label>
            <div class="col-sm-9">
                <input type="number" name="qq" maxlength="90" placeholder="QQ" class="col-xs-10 col-sm-5"
                    value='<%=youlianModel.qq %>' />
            </div>
        </div>
        <div class="clearfix form-actions">
            <div class="col-md-offset-3 col-md-9">
                <button class="btn btn-info" type="submit" name="submitButton" onclick="return Validate();">
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
