<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="404error.aspx.cs" Inherits="DoraMovie._404error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
您要访问的页面找不到了
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row timeline single clearfix">
        <article class="latest">
            <div class="article_left">
                <div class="article-body">
                    <h2>
                        您要访问的页面找不到了</h2>
                    <div>好吧，我不知道你是怎么进来这个页面的，请<a href="<%=DoraMovie.WebInfo.ServerPath %>">点这去首页吧</a></div>
                    <div></div>
                </div>
            </div>
        </article>
    </div>
</asp:Content>