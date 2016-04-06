<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="articleManage.aspx.cs" Inherits="DoraMovie.admin.articleManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    文章管理
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
            <div class="col-sm-6">
                <div id="sample-table-2_length" class="dataTables_length">
                    筛选：
                    <%foreach (DoraMovie.admin.dhClass d in dh)
                        {%>
                    <label>
                        <a class="<%=d.id == DataBase.DbHelper.q("type")?"a_dhcss":"dhcss" %>" href="?type=<%=d.id %>">
                            <%=d.name %></a></label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <%} %>
                </div>
            </div>
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
                                <th>标题
                                </th>
                                <th style="width:110px;text-align:center;">分类
                                </th>
                                <th>来源
                                </th>
                                <th class="hidden-480" style="width: 60px; text-align: center;">点击数
                                </th>
                                <th>
                                    <i class="icon-time bigger-110 hidden-480"></i>更新时间
                                </th>
                                <th class="hidden-480" style="width: 50px; text-align: center;">状态
                                </th>
                                <th style="width: 50px; text-align: center;">是否启用</th>
                                <th style="width: 80px; text-align: center;">操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="articleRP" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td class="center">
                                            <label>
                                                <input type="checkbox" name="checkbox" class="ace" value="<%#Eval("id") %>" />
                                                <span class="lbl"></span>
                                            </label>
                                        </td>
                                        <td>
                                            <a href="/movie/<%#Eval("id") %>.html" target="_blank">
                                                <%#Eval("title") %></a>
                                        </td>
                                        <td style="text-align:center;">
                                            <%#Eval("class") %>
                                        </td>
                                        <td>
                                            <%#Eval("laiyuan") %>
                                        </td>
                                        <td class="hidden-480" align="center">
                                            <%#Eval("Look")%>
                                        </td>
                                        <td>
                                            <%#Eval("addtime") %>
                                        </td>
                                        <td class="hidden-480" align="center">
                                            <span class="label label-sm label-warning">
                                                <%#Eval("status").ToString()=="wall"?"值得关注":Eval("status").ToString()=="top"?"置顶推荐":"普通" %></span>
                                        </td>
                                        <td style="text-align:center;"> <%#Eval("enable")+""=="1"?"<span style='color:green;'>是</span>":"<span style='color:red;'>否</span>" %></td>
                                        <td>
                                            <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
                                                <a href="articleEdit.aspx?Action=Edit&Id=<%#Eval("id") %>" class="tooltip-success" data-rel="tooltip" title="修改">
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
                                <button class="btn btn-danger" name="delbutton" value="del">删除选中</button>
                                <button class="btn btn-success" name="topbutton" value="top">置顶推荐</button>
                                <button class="btn btn-warning" name="wallButton" value="wall">值得关注</button>
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
<asp:Content ID="otherhead" runat="server" ContentPlaceHolderID="otherjquery">
    <!-- page specific plugin scripts -->
    <script src="assets/js/jquery.dataTables.min.js"></script>
    <script src="assets/js/jquery.dataTables.bootstrap.js"></script>
    <script type="text/javascript">
        jQuery(function ($) {
            $('table th input:checkbox').on('click', function () {
                var that = this;
                $(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function () {
					    this.checked = that.checked;
					    $(this).closest('tr').toggleClass('selected');
					});
            });

            $("#search_input1").on('blur', function () {
                var txt = $("#search_input1").val();
                if (txt != "") {
                    location.href = '?search=' + txt;
                }
            });

            $('[data-rel="tooltip"]').tooltip({ placement: tooltip_placement });
            function tooltip_placement(context, source) {
                var $source = $(source);
                var $parent = $source.closest('table')
                var off1 = $parent.offset();
                var w1 = $parent.width();

                var off2 = $source.offset();
                var w2 = $source.width();

                if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
                return 'left';
            }
        })
    </script>
</asp:Content>
