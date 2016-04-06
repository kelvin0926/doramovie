<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="articleClass.aspx.cs" Inherits="DoraMovie.admin.articleClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    文章分类管理</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <div class="page-header">
            <h1>
                文章分类管理
            </h1>
        </div>
        <!-- /.page-header -->
        <div class="row">
            <div class="col-xs-12">
                <div style="margin-bottom: 10px;">
                    <label>名称：</label><input type="text" name="nameClass" placeholder="输入分类名称" maxlength="20" value="<%=article.name %>" />
                </div>
                <div style="margin-bottom: 10px;">
                        <label style="padding-bottom:15px;">排序：</label><input type="text" class="input-mini" id="spinner1" name="spinner1" /><div class="space-6"></div>
                </div>
                <div>
                    <select class="form-control" id="form-field-select-2" name="form-field-select-2" multiple="multiple" style="height: 300px">
                        <option value="0" style="background: #efefef;">选中我的情况下，输入分类名称后则为添加新内容；否则为修改对应内容</option>
                        <%=ClassTree %>
                    </select>
                </div>
                <div class="clearfix form-actions">
                    <div class="col-md-offset-3 col-md-9">
                        <button class="btn btn-success" type="submit" name="addButton">
                            <i class="icon-ok bigger-110"></i>添加新的分类
                        </button>
                        &nbsp; &nbsp; &nbsp;
                        <button class="btn btn-info" type="submit" name="editButton">
                            <i class="icon-pencil bigger-110"></i>修改选定的分类
                        </button>
                        &nbsp; &nbsp; &nbsp;
                        <button class="btn" type="submit" name="delButton">
                            <i class="icon-undo bigger-110"></i>删除选定的分类
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="otherjquery" runat="server">
    <script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
    <script>
        jQuery(function ($) {
            $('#spinner1').ace_spinner({ value: 0, min: 0, max: 100, step: 1, on_sides: true, icon_up: 'icon-plus smaller-75', icon_down: 'icon-minus smaller-75', btn_up_class: 'btn-success', btn_down_class: 'btn-danger' });
        });
    </script>
</asp:Content>
