<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PageFoot.ascx.cs" Inherits="DoraMovie.PageFoot" %>
<footer>
    <div class="row clearfix">
        <div class="fivecol">
            <div>
                <h2>关于我们</h2>
            </div>
            <p>
                <%=Application["aboutMe"] %>
            </p>

        </div>
        <div class="fivecol last">
            <h2>合作伙伴</h2>
            <ul class="links clearfix">
                <asp:Repeater ID="friendRp" runat="server">
                    <ItemTemplate>
                        <li><a href="<%#Eval("url") %>" title="<%#Eval("title") %>" target="_blank">
                            <%#Eval("title") %></a></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
            <div>
                <h2>广告合作</h2>
            </div>
            <p>
                <%=Application["aboutAD"] %>
            </p>
        </div>
    </div>
    <div class="row clearfix footer-sns">
        <script type="text/javascript">
            var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
            document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F66f350c848d388da67a308b57313827b' type='text/javascript'%3E%3C/script%3E"));
        </script>

        <!--站长统计-->
        <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1257649957'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1257649957%26online%3D1%26show%3Dline' type='text/javascript'%3E%3C/script%3E"));</script>
        <!--Copyright-->
        <div class="row clearfix">

            <%=Application["Copyright"] %>
        </div>
    </div>

</footer>


<script src="<%=DoraMovie.WebInfo.ServerPath %>Scripts/jquery-sticky.js"></script>
<script src="<%=DoraMovie.WebInfo.ServerPath %>Scripts/jquery.lazyload.mini.js"></script>
<script type="text/javascript">
    $(function () {
         /*$("img[original^='http://fengche']").not(".demo-stories .article-image ").lazyload({
            placeholder: "<%=DoraMovie.WebInfo.ServerPath %>images/loading.png", //加载图片前的占位图片
            effect: "fadeIn"
        });*/
        
        $('img').each(function () {

            var error = false;

            if (!this.complete) {
                error = true;

            }

            if (typeof this.naturalWidth != "undefined" && this.naturalWidth == 0) {
                error = true;
            }

            if (error) {

                this.src = "<%=DoraMovie.WebInfo.ServerPath %>images/loading.png";
                //console.log("error:" + error)
                //$(this).bind('error.replaceSrc', function () {
                //    this.src = "<%=DoraMovie.WebInfo.ServerPath %>images/loading.png";
                //    console.log(this.src);
                //    $(this).unbind('error.replaceSrc');
                // }).trigger('load');
            }
        });
    });

    $(document).ready(function () {
        dropMenu(".pw_menu-item");
        
    });
</script>
<script>
	if (isPad) {
        
        /*20:3 底部固定手机*/
        var cpro_id = "u2583233";

        document.write('<script src="http:\/\/cpro.baidustatic.com\/cpro\/ui\/cm.js" type="text\/javascript"><\/script>');
	
    } else {
       
        /*250*200 悬浮右下PC*/
		
		(function() {
			var s = "_" + Math.random().toString(36).slice(2);
			document.write('<div id="' + s + '"></div>');
			(window.slotbydup=window.slotbydup || []).push({
				id: '2460301',
				container: s,
				size: '300,250',
				display: 'float'
			});
		})();
		document.write('<script src="http:\/\/dup.baidustatic.com\/js\/os.js" type="text\/javascript"><\/script>');
       
    }
	
</script>
