<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Player.aspx.cs" Inherits="OurMovie.Movie.Player" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>
        <%=TITLE%>-多啦影院,微信关注tttv77，免费电影天堂在线观看</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta name="keywords" content="多啦影院,tttv77,电影天堂,免费电影天堂在线观看,免费电影在线观看,免费电影" />
    <meta name="description" content="多啦影院，微信关注tttv77电影天堂在线，免费提供热门电影视频在线观看，这里有最热门电影推荐，每一天带给您不一样的视界." />
    <script>
        window.onload = function () {
            var iframe = document.getElementsByTagName("iframe")[0];
            if (iframe != undefined) {
                iframe.height = window.innerHeight / 3;
                iframe.contentWindow.document.getElementsByTagName("iframe")[0].height = iframe.height;

            }
            loadComplete();
        }
        function loadComplete() {
            document.getElementById("prepareDiv").style.display = 'none';
            var iframe = document.getElementsByTagName("iframe")[0];
            if (iframe != undefined) {
                iframe.style.display = 'block';
            }
        }
    </script>
    <style>
        a {
            text-decoration: none;
        }

            a:visited {
                color: Blue;
            }

        #cnzz_stat_icon_1257649957 {
            display: none;
        }

        body {
            margin-bottom: 90px;
        }
    </style>

</head>
<body>
    <div style='margin: 0 auto; width: 0px; height: 0px; overflow: hidden;'>
        <img src="../images/logo.png" width='700'>
    </div>
    <form id="form1" runat="server">
        <div>
            <div style="background: green; text-align: center; border-radius: 5px; color: white; line-height: 20px; padding: 5px 0; margin: 0 5px;">
                微信关注“电影天堂在线”<br />
                添加微信号“tttv77”,随时随地看大片
            </div>
            <%
                if (string.IsNullOrEmpty(URL))
                {
            %>
            <div style="height: 180px; line-height: 180px; text-align: center;">
                当前视频可能已经失效，请<a href="javascript:window.history.back();">返回</a>重试
            </div>
            <%   
                }
                else
                {
            %>
            <iframe style="display: none; margin-top: 5px;" src="../Scripts/Play.htm?s=<%=URL %>" width="100%"
                scrolling="no" frameborder="0"></iframe>
            <div id="prepareDiv" style="height: 30%; padding: 30px 10px; text-align: center; color: white; background: black; margin-top: 10px;">
                视频加载中，请稍候...<br />
                部分安卓手机加载速度较慢，<br />
                请耐心等候..<br />
                微信关注“<span style="color: red;">tttv77</span>”，观免费大片
            </div>
            <%    
                }
            %>
            <div style="height: 20px"></div>
            <div style="color: red; text-align: center;">
                重要提示：如通过微信不能正常播放或者只显示几秒钟的那种广告，请复制链接至浏览器打开
            </div>

            <div style="text-align: center; margin-top: 20px; margin-bottom: 10px;">
                <a href="/" style="color: blue;">返回主页看更多</a>
            </div>
            <div style="background: red; text-align: center;">
                <img src="../Images/barcode.jpg" width="100%" alt="关注我们" />
            </div>
            <div style="text-align: center; line-height: 30px;">
                <div>
                    多啦影院电影免费观看，资源均收集于各大视频网站，本网站只提供页面服务，不提供影片资源存储，也不参与录制、上传<br />
                    若本站收录的节目无意侵犯了贵司版权，请与我们联系，我们会及时处理和回复，谢谢
                </div>
                站务合作:<a href="mailto:tttv77@sina.com">tttv77@sina.com</a> 沪ICP备09018167号-2
            </div>
        </div>
    </form>
    <!--百度统计-->
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F66f350c848d388da67a308b57313827b' type='text/javascript'%3E%3C/script%3E"));
    </script>
    <!--站长统计-->
    <script type="text/javascript">        var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1257649957'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1257649957%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</script>
</body>
</html>
