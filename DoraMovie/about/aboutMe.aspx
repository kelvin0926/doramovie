<%@ Page Title="" Language="C#" MasterPageFile="~/about/Site1.Master" AutoEventWireup="true" CodeBehind="aboutMe.aspx.cs" Inherits="DoraMovie.about.aboutMe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
关于我们
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row timeline single clearfix">
        <article class="latest">
            <div class="article_left">
                <div class="article-body">
                    <h2>
                        关于我们</h2>
                    <%=aboutModel.aboutMe%>
                </div>
            </div>
        </article>
    </div>
</asp:Content>
