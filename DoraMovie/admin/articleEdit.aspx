<%@ Page Title="" ValidateRequest="false" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="articleEdit.aspx.cs" Inherits="DoraMovie.admin.articleEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    文章编辑
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="kindeditor/themes/default/default.css" />
    <link rel="stylesheet" href="kindeditor/plugins/code/prettify.css" />
    <script charset="utf-8" src="kindeditor/kindeditor.js"></script>
    <script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
    <script charset="utf-8" src="kindeditor/plugins/code/prettify.js"></script>
    <script type="text/javascript">
        KindEditor.ready(function (K) {
            var editor1 = K.create('#ctl00_ContentPlaceHolder1_Textarea1,#ctl00_ContentPlaceHolder1_zhaiyao', {
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
        .Content {
            margin-top: 10px;
            font-family: Verdana;
        }

            .Content .form-group {
                padding: 16px;
            }

            .Content label {
                text-align: right;
            }

        .form-actions {
            height: 88px;
        }
    </style>
    <div class="Content">
        <!-- PAGE CONTENT BEGINS -->
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                影片名
            </label>
            <div class="col-sm-9">
                <input type="text" id="title" maxlength="90" placeholder="影片名..." class="col-xs-10 col-sm-9" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                来源</label>
            <div class="col-sm-9">
                <div class="clearfix">
                    <input class="col-xs-10 col-sm-9" type="text" id="laiyuan" placeholder="视频来源，可空" runat="server" />
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                分类
            </label>
            <div class="col-sm-9">
                <asp:CheckBoxList runat="server" ID="chkType" CssClass="ace" DataValueField="name" DataMember="name" RepeatDirection="Horizontal">
                </asp:CheckBoxList>
                <input type="hidden" runat="server" id="txtType" />
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
                        <span class="lbl">普通</span>
                    </label>
                    <label>
                        <input name="statuscheckbox" type="radio" class="ace" value="top" <%=status.Contains("top")?"checked":"" %>>
                        <span class="lbl">置顶推荐</span>
                    </label>
                    <label>
                        <input name="statuscheckbox" type="radio" class="ace" value="wall" <%=status.Contains("wall")?"checked":"" %>>
                        <span class="lbl">值得关注</span>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                播放地址
            </label>
            <div class="col-sm-9">
                <input class="col-xs-10 col-sm-9" type="text" id="downURL" runat="server" placeholder="影片播放地址..." />
                <a href="javascript:void(0);" onclick="if(document.getElementById('ctl00_ContentPlaceHolder1_downURL').value!='') window.open(document.getElementById('ctl00_ContentPlaceHolder1_downURL').value);">预览</a>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                是否启用
            </label>
            <div class="col-sm-9">
                <div class="control-group">
                    <label>
                        <input name="enable" type="radio" class="ace" value="1" <%= enable?"checked":"" %>>
                        <span class="lbl">启用</span>
                    </label>
                    <label>
                        <input name="enable" type="radio" class="ace" value="0" <%=!enable?"checked":"" %>>
                        <span class="lbl">禁用</span>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right">
                简介
            </label>
            <div class="col-sm-9">
                <textarea id="Textarea1" name="Textarea1" rows="30" cols="90" runat="server"></textarea>
            </div>
        </div>
        <div style="clear: both">
        </div>
        <div class="clearfix form-actions">
            <div class="col-md-offset-3 col-md-9">
                <button class="btn btn-info" type="submit" id="submitButton" runat="server" onserverclick="submitButton_Button">
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
    <script>
        $(document).ready(function () {
            $("input[type='checkbox'][id*='chkType']").change(function () {
                if ($(this).is(':checked') == true) {
                    var types = "";
                    $("input[type='checkbox'][id*='chkType']:checked").each(function (index, item) {
                        types += (item.value) + ",";
                    });
                    if (types.length > 0) types = types.substr(0, types.length - 1);
                    $("input[type='hidden'][id*=txtType]").val(types);
                }
            });
        });
    </script>
</asp:Content>
