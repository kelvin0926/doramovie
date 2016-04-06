<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="youlianManage.aspx.cs" Inherits="DoraMovie.admin.youlianManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="nav-search" id="nav-search">
        <span class="input-icon">
            <input type="text" placeholder="单击任意地方开始搜索..." class="nav-search-input" name="search_input1" id="search_input1" />
            <i class="icon-search nav-search-icon"></i></span>
    </div>
    <style>
        .dhcss {
            background: #eee;
            padding: 4px;
        }

        a.dhcss:hover {
            font-weight: bold;
            background: #eee;
            padding: 4px;
        }

        .a_dhcss {
            font-weight: bold;
            background: #eee;
            padding: 4px;
            border: 1px solid;
        }

        #sample-table-2_length label {
            margin-right: 5px;
        }
    </style>
    <div class="page-content">
        <div class="row">
            <div class="col-xs-12">
                <div class="table-responsive">
                    <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th class="center">
                                    <label>
                                        <input type="checkbox" class="ace" />
                                        <span class="lbl"></span>
                                    </label>
                                </th>
                                <th>网站名称
                                </th>
                                <th>网站地址
                                </th>
                                <th>对方网站管理员
                                </th>
                                <th>
                                    <i class="icon-time bigger-110 hidden-480"></i>更新时间
                                </th>
                                <th class="hidden-480" style="width: 50px; text-align: center;">状态
                                </th>
                                <th style="width: 80px; text-align: center;">操作
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="RpList" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td class="center">
                                            <label>
                                                <input type="checkbox" name="checkbox" class="ace" value="<%#Eval("id") %>" />
                                                <span class="lbl"></span>
                                            </label>
                                        </td>
                                        <td>
                                            <%#Eval("title") %>
                                        </td>
                                        <td>
                                            <%#Eval("url") %>
                                        </td>
                                        <td>
                                            <%#Eval("QQ") %>
                                            <%--<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<%#Eval("QQ") %>&site=qq&menu=yes">
                                                <img border="0" src="http://wpa.qq.com/pa?p=2:<%#Eval("QQ") %>:51" alt="点击这里给我发消息" title="点击这里给我发消息" /></a>--%>

                                        </td>
                                        <td>
                                            <%#Eval("addtime") %>
                                        </td>
                                        <td class="hidden-480">
                                            <%#Eval("isPast").ToString() == "1" ? "<span class='label label-sm label-success'>显示</span>":"<span class='label label-sm label-warning'>下线</span>" %>
                                        </td>
                                        <td>
                                            <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
                                                <a href="youlianEdit.aspx?Action=Edit&Id=<%#Eval("id") %>" class="tooltip-success" data-rel="tooltip" title="修改">
                                                    <li class="btn btn-xs btn-success"><span style="color: #fff"><i class="icon-edit bigger-120"></i></span></li>
                                                </a><a href="?Action=Delete&Id=<%#Eval("id") %>" class="tooltip-error" data-rel="tooltip" title="删除" onclick="return confirm('确定要删除此项吗？此操作不可逆。')">
                                                    <li class="btn btn-xs btn-danger"><span style="color: #fff"><i class="icon-trash bigger-120"></i></li>
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="dataTables_info" id="sample-table-2_info">
                                <button class="btn btn-app btn-danger btn-sm" name="delbutton" value="del">
                                    <i class="icon-trash bigger-200"></i>删除选中
                                </button>
                            </div>
                        </div>
                        <div class="col-sm-6">
                        </div>
                        <div class="col-sm-6">
                            <div class="dataTables_paginate paging_bootstrap">
                                <ul class="pagination">
                                    <li class="active">
                                        <%=paging %></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.table-responsive -->
            </div>
            <!-- /span -->
        </div>
        <!-- /.row -->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="otherjquery" runat="server">
</asp:Content>
