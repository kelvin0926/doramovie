<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="article.aspx.cs" Inherits="DoraMovie.article" EnableViewState="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server"><%=_title %>|</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <meta name="Keywords" content="<%=_key %>" />
    <meta name="Description" content="<%=_description %>，<%=_head %>" />
    <meta property="og:url" content="<%=Request.Url.AbsoluteUri.Split('?')[0] %>" />
    <meta property="og:title" content="<%=_title %>" />
    <meta property="og:description" content="<%=_description %>，<%=_head %>" />

    <link rel="canonical" href="<%=Request.Url.AbsoluteUri.Split('?')[0] %>" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="content" runat="server">
        <ItemTemplate>
            <div class="article ninecol last">
               
                
                <ul class="article-meta clearfix">
                    <li>
                        <span style="color:#F36119;font-size:22px;"><%#Eval("title") %></span>&nbsp;&nbsp;
                    </li>
                    <li><span class="article-pubdate">
                        <time datetime="<%#Eval("addtime") %>" pubdate="pubdate">
                            <%# DateTime.Parse(Eval("addtime")+"").ToString("M-d") %></time>
                         </span></li>
                    <li class="article-meta-right"><a class="article-share" href="javascript:;"><i class="icon share"></i>分享</a> <a class="article-comment-count" href="#comments"><i class="icon comment"></i>
                        <a href="#comment" id="uyan_count_unit">评论</a></a>
                        <div class="article-share-dropdown hidden">
                            <a href="http://service.weibo.com/share/share.php?url=<%=Request.Url.AbsoluteUri.Split('?')[0] %>&title=<%#Eval("title")%> | <%=Application["title"] %>" target="_blank"><i class="share-weibo"></i>新浪微博</a> <a target="_blank" href="https://plus.google.com/share?url=<%=Request.Url.AbsoluteUri.Split('?')[0] %>">
                                <i class="share-google" title="分享到google+"></i>google+</a> <a href="http://share.v.t.qq.com/index.php?c=share&a=index&url=<%=Request.Url.AbsoluteUri.Split('?')[0] %>&title=<%#Eval("title")%> | <%=Application["title"] %>" target="_blank"><i class="share-tencent"></i>腾讯微博</a> <a href="https://twitter.com/intent/tweet?text=<%#Eval("title")%> | <%=Application["title"] %>"
                                    target="_blank"><i class="share-facebook"></i>Facebook</a> <a href="http://www.linkedin.com/shareArticle?mini=true&url=<%=Request.Url.AbsoluteUri.Split('?')[0] %>&title=<%#Eval("title")%> | <%=Application["title"] %>" target="_blank"><i class="share-linkedin"></i>LinkedIn</a>
                        </div>
                    </li>
                </ul>
                <section class="article-comments clearfix">
                    <p style="font-size: 22px; color: Red;">
                        在线播放：
                        <iframe style="display: block; margin-top: 5px;"
                            src="<%=Request.ApplicationPath %>Scripts/play.htm?s=<%=downURL.Length >= 8 ? downURL.ToLower().Substring(0, 8) == "https://" ? downURL.Substring(8) : downURL.ToLower().Substring(0, 7) == "http://" ? downURL.Substring(7) : downURL:downURL %>"
                            width="100%" height="300px"
                            scrolling="no" frameborder="0"></iframe>
                       
                    </p>
                    <p>
                        <div class="bdsharebuttonbox">
                            <a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_weixin" data-cmd="weixin"
                                title="分享到微信"></a><a href="#" class="bds_tsohu" data-cmd="tsohu" title="分享到搜狐微博"></a><a href="#" class="bds_t163" data-cmd="t163" title="分享到网易微博"></a><a href="#" class="bds_fbook" data-cmd="fbook" title="分享到Facebook"></a>
                        </div>
                        <!--<script>                window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "", "bdMini": "2", "bdMiniList": false, "bdPic": "", "bdStyle": "0", "bdSize": "24" }, "share": {}, "image": { "viewList": ["tsina", "tqq", "qzone", "weixin", "tsohu", "t163", "fbook"], "viewText": "分享到：", "viewSize": "24" }, "selectShare": { "bdContainerClass": null, "bdSelectMiniList": ["tsina", "tqq", "qzone", "weixin", "tsohu", "t163", "fbook"] } }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>-->
                    </p>
                    <p style="font-size: 22px; color: Red;">
                        重要提示：如通过微信不能正常播放或者只显示几秒钟的那种广告，请复制链接至浏览器打开
                        <br />
                        <br />
                        如果您发现该资源无法播放，请在下面留言，感谢您的支持。<p>
                    <p>
                </section>
                <section class="article-body">
                    <p>相关关键词：<%=_tip%></p>
                    <%# Eval("body") %>
                    <!--<p>
                            文章来源：<a href="<%#Eval("laiyuan") %>" target="_blank"><%#Eval("laiyuan") %></a></p>-->
                </section>
        </ItemTemplate>
    </asp:Repeater>

    <section class="article-read-more clearfix">
        <%=upNews %>
        <%=NextNews %>
    </section>
    <section id="comments" class="article-comments clearfix">

      
        <div class="article-comment-post" id="comment">
            <!-- 评论 BEGIN -->
            <!--高速版，加载速度快，使用前需测试页面的兼容性-->
            <div id="SOHUCS" sid="<%=id %>"></div>
            <script>
                (function () {
                    var appid = 'cysiqDnJx',
					conf = 'prod_5f6fe0a822aa70f157459fc2c4a8abc7';
                    var doc = document,
					s = doc.createElement('script'),
					h = doc.getElementsByTagName('head')[0] || doc.head || doc.documentElement;
                    s.type = 'text/javascript';
                    s.charset = 'utf-8';
                    s.src = 'http://assets.changyan.sohu.com/upload/changyan.js?conf=' + conf + '&appid=' + appid;
                    h.insertBefore(s, h.firstChild);
                    window.SCS_NO_IFRAME = true;
                })()
            </script>
            <!-- 评论 END -->
        </div>
    </section>
    </div>
	<script>
		if (!isPad) {
			/*PC图+*/
			var cpro_id = "u2588655";
			document.write('<script src="http:\/\/cpro.baidustatic.com\/cpro\/ui\/i.js" type="text\/javascript"><\/script>');
			
			
		} 
		
	</script>
	<script>
		if (!isPad) {
			/*PC内文*/
			var cpro_id = "u2588662";
			document.write('<script src="http:\/\/cpro.baidustatic.com\/cpro\/ui\/cnw.js" type="text\/javascript"><\/script>');
			
			
		} 
		
	</script>
</asp:Content>
