<%@ Page Title="" Language="C#" MasterPageFile="~/about/Site1.Master" AutoEventWireup="true" CodeBehind="contace.aspx.cs" Inherits="DoraMovie.about.contace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
联系我们
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row timeline single clearfix">
        <article class="latest">
            <div class="article_left">
                <div class="article-body">
                    <%=aboutModel.contact %>
                    
                    <div style="clear:both;"></div>
                    <%--<div class="contact_form article-comment-post">
                        <h1 style="font-weight: normal; margin-top: 20px; margin-bottom: 30px;">
                            在线联系我们</h1>
                        <input id="author" name="full_name" type="text" placeholder="姓名（必填）" value="" size="30" aria-required="true">
                        <input id="email" class="required email" name="email" type="email" placeholder="邮箱（必填）" value="" size="30" aria-required="true">
                        <textarea name="content" id="comment-content" placeholder="你想说的是...（必填）"></textarea>
                        <p class="form-submit">
                            <input name="submit" type="submit" id="submit" value="提交">
                    </div>--%>
                </div>
            </div>
        </article>
    </div>
</asp:Content>
