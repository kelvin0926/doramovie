<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CIndex.aspx.cs" Inherits="DoraMovie.CIndex" EnableViewState="false" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <%=_Title%>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="welcome-bar ninecol">
        <i class="sun"></i>
        <%=DataBase.DbHelper.q("class")%>最新列表 <span class="layout-hot-tag" id="hot-tog-bottom"><span><a href="/">返回...</a></span></span>
    </div>
    <br clear="both" />
    <div style="min-height:300px;padding:10px 20px;color:#F36119;font-size:20px;" class="ninecol">
        <% if (ItemCount == 0)
            { %>
            未能搜索到资源.
        <%} %>
        <asp:Repeater ID="newList" runat="server">
            <ItemTemplate>
                <article class="fourcol" style="margin-right:2.5%;">
                    <a class="article-item" href="/movie/<%#Eval("id") %>.html" target="_blank">
                        <img class="article-image" src="<%#DataBase.DbHelper.getImageUrl(Eval("body").ToString()) %>">
                        <h1 class="article-title">
                            <span>
                                <%#Eval("title")%></span></h1>
                        <p class="subhead" title="<%#DataBase.DbHelper.SplitString(Eval("body").ToString(), "介,剧情",300).Replace("\""," ")%>">
                            <%#DataBase.DbHelper.SplitString(Eval("body").ToString(), "介,剧情",300)%>
                        </p>
                        <ul class="article-meta">
                            <li class="article-meta-right"><span class="article-comment-count"><span class="article-pubdate">
                                <time datetime="<%#Eval("addtime") %>" pubdate="pubdate">
                                    <%#DataBase.DbHelper.times(Eval("addtime")) %></time></span></span></li>
                            <li><span class="article-publisher"></span></li>
                        </ul>
                    </a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </article>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div style="clear: both;">
    </div>
    <ul class="page-numbers">
        <%=Paging %>
    </ul>
</asp:Content>

