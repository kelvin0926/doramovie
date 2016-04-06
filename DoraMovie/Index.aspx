<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DoraMovie.Index" EnableViewState="false" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="<%=Application["keyword"] %>" />
    <meta name="description" content="<%=Application["description"] %>" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="<%=DoraMovie.WebInfo.ServerPath %>css/slider.css" rel="stylesheet" />
    <article class="top-story sixcol">
        <h2>
            <i class="headline"></i>本周推荐</h2>
        <div class="slider">
            <ul>
                <asp:Repeater ID="TopRP" runat="server">
                    <ItemTemplate>
                        <li><a href="/movie/<%#Eval("id") %>.html" target="_blank">
                            <img src="<%#DataBase.DbHelper.getImageUrl(Eval("body").ToString()) %>" alt="<%# Eval("title").ToString()%>"></a></li>
                        <%--<a href="/movie/<%#Eval("id") %>.html" target="_blank">
                    <img class="article-image" src="<%#DataBase.DbHelper.getImageUrl(Eval("body").ToString()) %>">
                    <p>
                        <%# Eval("title").ToString()%>
                    </p>
                    <ul class="article-meta">
                        <li class="article-meta-right"><span class="article-comment-count"><span class="article-pubdate">
                            <time datetime="<%#Eval("addtime") %>" pubdate="pubdate">
                                <%#DataBase.DbHelper.times(Eval("addtime")) %></time></span></span></li>
                    </ul>
                </a>--%>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
        <script src="<%=DoraMovie.WebInfo.ServerPath %>Scripts/yxMobileSlider.js"></script>
        <script>
            
            //$(".slider").yxMobileSlider({ width: $(".slider").parent().width(), height: $(".slider").parent().height(), during: 3000 })
            $(".slider").yxMobileSlider({ parent: $(".slider").parent(), during: 3000 })

        </script>
    </article>
    <div class="welcome-bar ninecol">
        <i class="sun"></i>最近更新
        <%--<span class="layout-hot-tag" id="hot-tog-bottom">
            <span><a target="_blank" href="/class-变形金刚4">变形金刚4:绝迹重生</a></span>
            <span><a target="_blank" href="/class-一路向西">一路向西</a></span>
            <span><a target="_blank" href="/class-肉蒲团">肉蒲团</a></span>
            <span><a target="_blank" href="/class-超体">超体</a></span>
            <span><a target="_blank" href="/class-逆转未来">X战警：逆转未来</a></span>
            <span><a target="_blank" href="/class-忍者神龟">忍者神龟：变种时代</a></span>

        </span>--%>
    </div>
    <br clear="both" />
    <asp:Repeater ID="newList" runat="server">
        <ItemTemplate>
            <article class="ninecol">
                <a href="/movie/<%#Eval("id") %>.html" target="_blank">
                    <img class="article-image" src="<%#DataBase.DbHelper.getImageUrl(Eval("body").ToString()) %>">
                    <h1 class="article-title">
                        <span>
                            <%#Eval("title") %></span></h1>
                    <p class="excerpt">
                        <%#DataBase.DbHelper.SplitString(Eval("body").ToString(), "介,剧情",300)%>
                    </p>
                    <ul class="article-meta">
                        <li class="article-meta-right"><span class="article-comment-count"><span class="article-pubdate">
                            <time datetime="<%#Eval("addtime") %>" pubdate="pubdate">
                                <%#DataBase.DbHelper.times(Eval("addtime")) %></time></span></span></li>
                        <li><span class="article-publisher"></span></li>
                    </ul>
                </a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </article>
        </ItemTemplate>
    </asp:Repeater>
    <div style="clear: both;">
    </div>
    <%--<ul class="page-numbers">
        <li><a href="Cindex.aspx?Page=1">1</a></li>
        <li><a href="Cindex.aspx?Page=2">2</a></li>
        <li><a href="Cindex.aspx?Page=3">3</a></li>
        <li><a href="Cindex.aspx?Page=4">更多...</a></li>
    </ul>--%>
</asp:Content>
