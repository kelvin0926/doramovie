<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="500error.aspx.cs" Inherits="DoraMovie._500error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
好像有什么不对
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row timeline single clearfix">
        <article class="latest">
            <div class="article_left">
                <div class="article-body">
                    <h2>
                        您要访问的页面好像发生了什么让人难以理解的事</h2>
                    <div>好吧，我也不知道发生了什么事，请<a href="javascript:window.location.href.go(-1);">返回</a>试试吧。</div>
                    <div></div>
                </div>
            </div>
        </article>
    </div>
</asp:Content>