<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="author.aspx.cs" Inherits="DoraMovie.author" %>

<%@ Register TagPrefix="ascx" TagName="foot" Src="~/PageFoot.ascx" %>
<!DOCTYPE html>
<html>
<head>
    <title>
        <%=Application["title"] %></title>
    <link href="css/css.css" rel="stylesheet" type="text/css" />
    <meta name="keywords" content="<%=Application["keyword"] %>">
    <meta name="description" content="<%=Application["description"] %>">
</head>
<body>
    <form id="form1" runat="server">
    <header class="global-nav">
        <nav class="nav-categories">
            <a href="/index.aspx">首页</a>
            <asp:Repeater ID="daohang" runat="server">
                <ItemTemplate>
                    <a href="/class-<%#Eval("name") %>">
                        <%#Eval("name") %></a>
                </ItemTemplate>
            </asp:Repeater>
        </nav>
        <%--<div class="offline">
            <strong><a target="_blank" href="<%=Application["url"]%>/">SHIFT：智能汽车</a></strong>
        </div>
        <div class="offline">
            <strong><a target="_blank" href="<%=Application["url"]%>/">活动</a></strong>
        </div>
        <div class="offline">
            <strong><a target="_blank" href="http://<%=Application["url"]%>/subject/">专题</a></strong>
        </div>
        <label class="icon search" for="search">
        </label>
        <input type="search" name="s" id="search" placeholder="搜索...">--%>
        <div class="login-wrapper">
            <%if (Request.Cookies["userCookie"] == null) {%>
            <strong><i class="user"></i>帐户</strong> <span class="nav-dropdown"><a class="news-user-login" href="user/Login.aspx"><i class="login"></i>登录 </a></span>
            <%} else { %>
            <strong><i class="user"></i><a href="user/index.aspx">
                <%=Request.Cookies["userCookie"]["name"] %></a></strong>
            <%} %>
        </div>
    </header>
    <%--<div id="modal" class="hidden">
        <div class="modal-wrapper news-tip-login hidden">
            <h2>
                <i class="user"></i>登录 <a href="javascript:;" class="news-tip-close">[X]</a>
            </h2>
            <div class="news-tip-body">
                <div class="news-tip-item">
                    <span class="news-tip-info">没有帐号？<a class="goto-signup" href="javascript:;">现在注册 <i class="link-arrow"></i></a></span>
                </div>
                <div>
                    <div class="news-tip-item">
                        <span class="label">用户名</span>
                        <input type="text" name="log" id="user_login" class="input" value="" size="20" />
                    </div>
                    <div class="news-tip-item">
                        <span class="label">密码</span>
                        <input type="password" name="pwd" id="user_pass" class="input" value="" size="20" />
                    </div>
                    <div class="news-tip-item">
                        <span class="label"></span>
                        <input type="hidden" name="rememberme" id="rememberme" value="forever" />
                        <input type="hidden" name="redirect_to" id="redirect_to" value="/" />
                    </div>
                    <div>
                        <input class="news-tip-submit" name="wp-login" id="wp-login" type="submit" value="登录" tabindex="3">
                        <label id="info_login" class="alert alert-error" style="display: none">
                        </label>
                        <a href="http://<%=Application["url"]%>/wp-login.php?action=lostpassword" class="forgot-password">忘记密码？</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-wrapper news-tip-signup hidden">
            <h2>
                <i class="user"></i>注册 <a href="javascript:;" class="news-tip-close">[X]</a>
            </h2>
            <div class="news-tip-body">
                <div class="news-tip-item">
                    <span class="news-tip-info">已有帐号？<a class="goto-login" href="javascript:;">现在登录 <i class="link-arrow"></i></a></span>
                </div>
                <div class="news-tip-item">
                    <span class="label">用户名</span>
                    <input type="text" name="user_register" id="user_register" class="input" value="" size="20" tabindex="1" />
                </div>
                <div class="news-tip-item">
                    <span class="label">邮箱</span>
                    <input type="text" name="user_email" id="user_email" class="input" value="" size="25" tabindex="2" />
                </div>
                <div class="news-tip-item">
                    <span class="label">密码</span>
                    <input class="password optional" id="password" name="password" size="50" type="password" tabindex="3">
                </div>
                <div class="news-tip-item">
                    <span class="label">确认</span>
                    <input class="password optional" id="repeat_password" name="repeat_password" size="50" type="password" tabindex="4">
                </div>
                <div>
                    <input type="hidden" name="redirect_to" id="redirect_to" value="/" />
                    <input type="button" name="wp-register" id="wp-register" class="news-tip-submit" value="注册" tabindex="5" />
                    <label id="info_register" class="alert alert-error" style="display: none">
                    </label>
                    <!--<label for="eula" class="news-tip-eula"><input type="checkbox" id="eula">同意 <a href="javascript:;">用户协议</a></label>-->
                </div>
            </div>
        </div>
        <div class="modal-bg">
        </div>
    </div>--%>
    <main class="layout-grid">
	  <div class="row clearfix">
    <div class="logo-wrapper clearfix fivecol">
      <a href="/">
        <h1 class="logo"><%=Application["smallurl"] %></h1>
        <h2>关注<strong> 互联网 </strong>创新科技资讯媒体平台</h2>
      </a>
    </div>
    <div class="promoted-header sevencol">
    <a href="<%=Application["url"]%>/"  height="90"></a>
    </div>
  </div>  
  <div class="row clearfix">

      <div class="welcome-bar ninecol" style="width:100%">
        <i class="sun"></i><a href="../author-<%=Class1.DbHelper.q("author")%>"><%=Class1.DbHelper.q("author")%></a> 的最新报道列表 <span class="layout-hot-tag" id="hot-tog-bottom"><span><a target="_blank" href="/index.aspx">返回...</a></span></span>
    </div>
    <asp:Repeater ID="newList" runat="server">
        <ItemTemplate>
            <article class="threecol" style="width:21.05%">
                <a href="/news<%#Eval("id") %>" target="_blank">
                    <img class="article-image" src="<%#Class1.DbHelper.getImageUrl(Eval("content").ToString()) %>">
                    <h1 class="article-title">
                        <span>
                            <%#Eval("title")%></span></h1>
                    <p class="subhead">
                        <%#Class1.DbHelper.MyFormatnoHtml(Eval("content").ToString()).Length > 50 ? Class1.DbHelper.MyFormatnoHtml(Eval("content").ToString()).Remove(50) : Class1.DbHelper.MyFormatnoHtml(Eval("content").ToString())%></p>
                    <ul class="article-meta">
                        <li class="article-meta-right"><span class="article-comment-count"><span class="article-pubdate">
                                <time datetime="<%#Eval("addtime") %>" pubdate="pubdate">
                                    <%#Class1.DbHelper.times(Eval("addtime")) %></time></span></span></li>
                        <li><span class="article-publisher">
                            </span> </li>
                    </ul>
                </a>
            </article>
        </ItemTemplate>
    </asp:Repeater>
    <div style="clear: both;">
    </div>
    <ul class="page-numbers">
        <%=Paging %>
    </ul>

  </div>
  
<aside class="pw-news-wrapper">
  <div><a target="_blank" href="/type-kuaixun"><h2><i class="news"></i> <%=Application["smallUrl"]%> 快讯 <i class="more-arrow"></i></h2></a></div>
	
<%--  <a target=“_blank” class="pw-news promoted-link" href="http://www.workyi.com">
    <strong>工作易人才招聘系统，为招聘机构提供优质的开源招聘系统网站</strong>
    <span class="promoted-mark">推广</span>
  </a>
--%>
  <asp:Repeater ID="kuaixun" runat="server">
  <ItemTemplate>
  <div><a class="pw-news" target="_blank" href="news<%#Eval("id") %>">
    <img src="<%#Class1.DbHelper.getImageUrl(Eval("content").ToString()) %>" alt="">
    <strong><%#Eval("title").ToString().Length > 20 ? Eval("title").ToString().Remove(20) : Eval("title").ToString()%></strong>
    <time pubdate="pubdate"><%#times()%></time>
  </a></div>
  </ItemTemplate>
  </asp:Repeater>

    <div>
  <a  target="_blank" class="pw-news-more" href="/type-kuaixun">
    <strong>查看全部</strong>
  </a>
</div>
</aside>  
</main>
    <ascx:foot ID="foot" runat="server" />
    </form>
</body>
</html>
