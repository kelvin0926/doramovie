<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="articleManage.aspx.cs" Inherits="DoraMovie.user.articleManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="nav-search" id="nav-search">
        <span class="input-icon">
            <input type="text" placeholder="Search ..." class="nav-search-input" name="search_input1" id="search_input1" autocomplete="on"  />
            <i class="icon-search nav-search-icon"></i></span>
    </div>
    <style>
        .dhcss { background: #eee; padding: 4px; }
        a.dhcss:hover { font-weight: bold; background: #eee; padding: 4px; }
        .a_dhcss { font-weight: bold; background: #eee; padding: 4px; border: 1px solid; }
        #sample-table-2_length label { margin-right: 5px; }
    </style>
    <div class="page-content">
        <div class="row">
            <div class="col-sm-6">
                <div id="sample-table-2_length" class="dataTables_length">
                    筛选：
                    <%foreach (WebApplication1.user.dhClass d in dh) {%>
                    <label>
                        <a class="<%=d.id == Class1.DbHelper.q("type")?"a_dhcss":"dhcss" %>" href="?type=<%=d.id %>">
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
                                <th>
                                    标题
                                </th>
                                <th>
                                    作者
                                </th>
                                <th class="hidden-480">
                                    点击数
                                </th>
                                <th>
                                    <i class="icon-time bigger-110 hidden-480"></i>Update
                                </th>
                                <th class="hidden-480">
                                    状态
                                </th>
                                <th>
                                </th>
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
                                            <a href="/news<%#Eval("id") %>" target="_blank">
                                                <%#Eval("title") %></a>【<a href="http://service.weibo.com/share/share.php?url=http://<%=Request.Url.Authority %>/news<%#Eval("id") %>&title=<%#Eval("zhaiyao")%>| CowryBox.Com 前沿科技趋势媒体" target="_blank"><i class="share-weibo"></i>新浪微博</a> | <a href="http://share.v.t.qq.com/index.php?c=share&a=index&url=http://<%=Request.Url.Authority %>/news<%#Eval("id") %>&title=<%#Eval("zhaiyao") %>| CowryBox.Com 前沿科技趋势媒体" target="_blank"><i class="share-tencent"></i>腾讯微博</a>】
                                        </td>
                                        <td>
                                            <%#Eval("zuozhe") %>
                                        </td>
                                        <td class="hidden-480">
                                            <%#Eval("lookcount")%>
                                        </td>
                                        <td>
                                            <%#Eval("addtime") %>
                                        </td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-warning">
                                                <%#Eval("status") %></span>
                                        </td>
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
                                <button class="btn btn-app btn-danger btn-sm" name="delbutton" value="del">
                                    <i class="icon-trash bigger-200"></i>删除选中
                                </button>
                                <button class="btn btn-app btn-purple btn-sm" name="wyc" value="wyc">
                                    <i class="icon-cloud-upload bigger-200"></i>伪原创</button>
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
<asp:Content ID="Content2" ContentPlaceHolderID="otherjquery" runat="server">
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

            $("#search_input1").on('keydown', function () {
                if (event.keyCode == '13') {
                    var txt = $("#search_input1").val();
                    alert('您搜索的是：' + txt); // 在form的窗体下，必须alert一次，否则会进入form的post提交流程而导致location.href被注销而不能跳转
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
