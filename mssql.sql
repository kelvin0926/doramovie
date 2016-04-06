if exists (select * from sysobjects where id = OBJECT_ID('[about]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [about]

CREATE TABLE [about] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[aboutMe] [ntext]  NULL,
[contact] [ntext]  NULL)

ALTER TABLE [about] WITH NOCHECK ADD  CONSTRAINT [PK_about] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [about] ON


SET IDENTITY_INSERT [about] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[adminManage]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [adminManage]

CREATE TABLE [adminManage] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[name] [nvarchar]  (20) NULL,
[pwd] [nvarchar]  (50) NULL,
[addtime] [datetime]  NULL,
[Email] [nvarchar]  (50) NULL,
[isPast] [int]  NULL)

ALTER TABLE [adminManage] WITH NOCHECK ADD  CONSTRAINT [PK_adminManage] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [adminManage] ON

INSERT [adminManage] ([id],[name],[pwd],[addtime],[Email],[isPast]) VALUES ( 1,N'admin',N'21232F297A57A5A743894A0E4A801FC3',N'2014/5/29 0:33:17',N'e333egsdfa@sdf.com',1)

SET IDENTITY_INSERT [adminManage] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[articleClass]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [articleClass]

CREATE TABLE [articleClass] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[cid] [int]  NULL,
[name] [nvarchar]  (50) NULL,
[paixu] [int]  NULL)

SET IDENTITY_INSERT [articleClass] ON

INSERT [articleClass] ([id],[cid],[name],[paixu]) VALUES ( 1,0,N'����',0)
INSERT [articleClass] ([id],[cid],[name],[paixu]) VALUES ( 2,0,N'�ֲ�',0)
INSERT [articleClass] ([id],[cid],[name],[paixu]) VALUES ( 3,0,N'�ƻ�',0)
INSERT [articleClass] ([id],[cid],[name],[paixu]) VALUES ( 4,0,N'ϲ��',0)
INSERT [articleClass] ([id],[cid],[name],[paixu]) VALUES ( 5,0,N'����',0)
INSERT [articleClass] ([id],[cid],[name],[paixu]) VALUES ( 6,0,N'3D',0)

SET IDENTITY_INSERT [articleClass] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[friendsite]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [friendsite]

CREATE TABLE [friendsite] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[title] [nvarchar]  (10) NULL,
[url] [nvarchar]  (200) NULL,
[qq] [float]  NULL,
[isPast] [int]  NULL,
[addtime] [datetime]  NULL)

ALTER TABLE [friendsite] WITH NOCHECK ADD  CONSTRAINT [PK_friendsite] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [friendsite] ON

INSERT [friendsite] ([id],[title],[url],[qq],[isPast],[addtime]) VALUES ( 1,N'�����Ӱ',N'http://www.Look1080.com',66477347,1,N'2014/5/29 14:53:37')

SET IDENTITY_INSERT [friendsite] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[movies]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [movies]

CREATE TABLE [movies] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[title] [nvarchar]  (200) NULL,
[body] [ntext]  NULL,
[zhaiyao] [ntext]  NULL,
[guojia] [ntext]  NULL,
[class] [ntext]  NULL,
[chicun] [nvarchar]  (50) NULL,
[year] [ntext]  NULL,
[laiyuan] [ntext]  NULL,
[downURL] [ntext]  NULL,
[addtime] [datetime]  NULL,
[status] [varchar]  (5) NULL,
[Look] [int]  NULL DEFAULT (0))

SET IDENTITY_INSERT [movies] ON

INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 387,N'������ء������ν���������ϼ�����BluRay-1080P.MKV����˫�',N'<font color="blue"><font size="5">��4��1080p�����������������ٷ���<br />
ף��ҹ�����֣�</font></font><br />
<br />
<br />
<br />
<font color="red"><font size="6">���ν��1</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.06/bianxingjingang1/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ν��/���ν�յ�Ӱ��<br />
Ƭ��������Transformers<br />
�ꡡ������2007<br />
�������ҡ�����<br />
�ࡡ���𡡶���/�ƻ�/ð��<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.2/10 from 410,608 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt0418279" target="_blank">http://www.imdb.com/title/tt0418279</a><br />
�ļ���ʽ��x264 + 5.1 DTS @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1920 x 1080</font></font><br />
�ļ���С��12.2 GB<br />
Ƭ��������144 Min<br />
�������ݡ����˶����� Michael Bay<br />
�������ݡ�ϣ�ǡ������� Shia LaBeouf&nbsp;&nbsp;....Sam Witwicky<br />
����������÷��������˹ Megan Fox&nbsp;&nbsp;....Mikaela Banes<br />
������������ʲ���Ź��� Josh Duhamel&nbsp;&nbsp;....Captain Lennox<br />
����������̩��˹������ɭ Tyrese Gibson&nbsp;&nbsp;....USAF Tech Sergeant Epps<br />
����������ǿ������ Jon Voight&nbsp;&nbsp;....Defense Secretary John Keller<br />
�������������ж���̩�� Rachael Taylor&nbsp;&nbsp;....Maggie Madsen<br />
����������Լ���������� John Turturro&nbsp;&nbsp;....Agent Simmons<br />
���������������ᡤ����ɭ Anthony Anderson&nbsp;&nbsp;....Glen Whitmann<br />
�������������滪���Ѷ��� Joshua Feinman&nbsp;&nbsp;....USAF Staff Sergeant (as Josh Feinman)<br />
�����������޲��ء�������˹ Robert Foxworth&nbsp;&nbsp;....Ratchet (voice)<br />
�������������ᡤ��� Bernie Mac&nbsp;&nbsp;....Bobby Bolivia<br />
�������������ס���˲����� Jamie McBride&nbsp;&nbsp;....FBI Agent<br />
������������Ī�ŵ��˹�� Amaury Nolasco&nbsp;&nbsp;....ACWO Jorge &quot;Fig&quot; Figueroa<br />
����������Լ�����ޱ�ѷ John Robinson&nbsp;&nbsp;....Miles<br />
���������������ά�� Hugo Weaving&nbsp;&nbsp;....Megatron (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����19���ͳ�������Ȧ�ڣ�<br />
<br />
����Archibald Witwicky����(ά��ά����������)��һ�����������ž޴�ı���������Ԩ���䵽������ڱ���֮�µ�һ�������������ϡ������������ֻ����˵��۾���ע������������̨���������Ǻܾ���ǰ�뿪����̹��ǰ������Ѱ�һ���Դ(Allspark)��������(Megatron)����<br />
���������콫��ʾ����Դ����ĵ�ͼ�տ��ڴ������۾��ϡ��۾���Ϊ����������һ��һ���ش�������ķ(Shia LaBeout����)�������<br />
<br />
�����ִ���᣺<br />
<br />
�����ж���������ĳ�������վ������⵽�˿���սʿѣ��(Blackout)���������������ȫ�ٵ������һ���һ̨����������˴�����Ϣ�����⣬ѣ�λ��ͷ��˾�Ы��(Scorponok)ȥ׷ɱLennox��ξ�������ر��ж�С�ӡ�Lennox��ξ����Ǵ�¥ȡ������ϵ������������ǲһ��ս������ʱ�����˿��ɵ�С��ģ������<br />
������ķ��ά��ά��(Sam Witwicky)�����������������������ĵ�һ��������������ǡǡ�ǲ��ɵĴ�Ʒ�(Bumblebee)����Ʒ������ķӮ����Mikaela�ķ��ġ�����ǰ��Ѱ��Archibald���ϴ������۾������Ǳ��ȶ������ķ�ҵĺ�Ժ����Ϊ�׶�ĵ��߷���(Sector 7)���ع�ͻȻ��������ķ�ļҡ���<br />
����ӰƬ�����������������ƽ���ƽ������ջ��ܵ���ʽ����ӰƬ�Ľ�β����һ����������������(Optimus Prime)���������������ľ����ս�����ǽ��Ӻ�����һֱɱ����ɼ����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />
<br />
<font color="red"><font size="6">���ν��2</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/bianxingjingang2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ν��2�������ߵĸ���/���ν��2����������/���ν��2�����ɵķ���/���ν�տ�������(��)/���ν�գ�����֮ս(̨)<br />
Ƭ��������Transformers Revenge of the Fallen<br />
�ꡡ������2009<br />
�������ҡ�����<br />
�ࡡ���𡡶���/�ƻ�/ð��/���<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.0/10 from 247,612 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1055369" target="_blank">http://www.imdb.com/title/tt1055369</a><br />
�ļ���ʽ��x264 + 5.1 DTS @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1920 x 1080</font></font><br />
�ļ���С��12.8 GB<br />
Ƭ��������150 Min<br />
�������ݡ����˶����� Michael Bay<br />
�������ݡ�ϣ�ǡ������� Shia LaBeouf&nbsp;&nbsp;....Sam Witwicky<br />
����������÷��������˹ Megan Fox&nbsp;&nbsp;....Mikaela Banes<br />
������������ʲ���Ź��� Josh Duhamel&nbsp;&nbsp;....Major William Lennox<br />
����������̩��˹������ɭ Tyrese Gibson&nbsp;&nbsp;....USAF Master Sergeant Epps<br />
����������Լ���������� John Turturro&nbsp;&nbsp;....Simmons<br />
�������������ɡ��޵������ Ramon Rodriguez&nbsp;&nbsp;....Leo Spitz<br />
�������������ġ��Ŷ� Kevin Dunn&nbsp;&nbsp;....Ron Witwicky<br />
��������������Ҷ������ Julie White&nbsp;&nbsp;....Judy Witwicky<br />
������������ɯ������¬��˹ Isabel Lucas&nbsp;&nbsp;....Alice<br />
����������Լ���������������� John Benjamin Hickey&nbsp;&nbsp;....Galloway<br />
�������������ޡ���˹�� Matthew Marsden&nbsp;&nbsp;....Captain Graham SAS<br />
��������������³�������� Andrew Howard&nbsp;&nbsp;....Special Air Service Forces<br />
�������������˶�������Լ�� Michael Papajohn&nbsp;&nbsp;....Cal<br />
�������������ס�ĪФ�� Glenn Morshower&nbsp;&nbsp;....General Morshower</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
���������ϵ�ս����Ȼ�����������ν��֮���ս����δ���ա���֩��ɻ�����̹���򣬴�����ž����ٻص�����һ����ս�������˷����������ʬ�岻���ˣ�ԭ���ѱ����˾���͵�ߣ���������󱻸������Ҫ��ʼ�������ͬʱ����֩��Ҳ����������̹��Ԯ������������������ʱ��ǿ���Լ���ս������һ����ս�������⡭��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />
<br />
<font color="red"><font size="6">���ν��3</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/bianxingjingang3/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ν��3/���ν��3�����½���(��)/���ν��3���º�֮ʱ<br />
Ƭ��������Transformers Dark Of The Moon<br />
�ꡡ������2011<br />
�������ҡ�����<br />
�ࡡ���𡡶���/ð��/�ƻ�<br />
����ԡ�<font color="red"><font size="3">Ӣ��˫����������</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.4/10 from 252,299 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1399103" target="_blank">http://www.imdb.com/title/tt1399103</a><br />
�ļ���ʽ��x264 + 5.1 DTS @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1920 x 1080</font></font><br />
�ļ���С��13.6 GB<br />
Ƭ��������154 Mins<br />
�������ݡ����˶����� Michael Bay<br />
�������ݡ�ϣ�ǡ������� Shia LaBeouf&nbsp;&nbsp;....Sam Witwicky<br />
�������������硤������-������ Rosie Huntington-Whiteley&nbsp;&nbsp;....Carly<br />
������������ʲ���Ź��� Josh Duhamel&nbsp;&nbsp;....Major William Lennox<br />
����������̩��˹������ɭ Tyrese Gibson&nbsp;&nbsp;....Robert Epps<br />
���������������ά�� Hugo Weaving&nbsp;&nbsp;....Megatron (voice)<br />
�������������ɵ¡���Ī�� Leonard Nimoy&nbsp;&nbsp;....Sentinel Prime (voice) (rumored)<br />
����������������ˡ���ķ�� Patrick Dempsey&nbsp;&nbsp;....Dylan<br />
����������Լ���������ά�� John Malkovich&nbsp;&nbsp;....Bruce<br />
�����������ϡ�֣ Ken Jeong<br />
����������������˹����˶��ɵ� Frances McDormand&nbsp;&nbsp;....Marissa Faireborn<br />
�������������ס�ͼ���� Alan Tudyk&nbsp;&nbsp;....Dutch<br />
����������Լ���������� John Turturro&nbsp;&nbsp;....Simmons<br />
���������������ˡ�ά���� Frank Welker&nbsp;&nbsp;....Soundwave (voice)<br />
������������ķ������ Tom Kenny&nbsp;&nbsp;....Wheelie (voice)<br />
�������������ء����� Peter Cullen&nbsp;&nbsp;....Optimus Prime (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������������������������š������ˡ�������ڶ���ʧ�ܺ���������ġ����컢����ս���������ˡ��롰���컢��������������֮��Σ�յġ�̫�վ������У�������ɽķ��һ��Ҫ�����Ļ��������������Ԯ��֮�֡���һ���н������µı��ν�յǳ����������ɡ��𵴲���Shockwave��������������������컢����������սʱ�ӹ�������̹����<br />
<br />
�������50����ǰ��һ����������̹�ķɴ�׹�������ɴ�����������������̫�վ��������������������ֻΪһ̽�ɴ��к��е����ܡ�ʱ��ص�21���ͳ�������������ս�����������ڴ�ܰ��컢�����֣��̶��������������ͬ���������ĵ���Ȼ���������ж�ŵ�������¼�ȴ�������Ѿõ�����ƻ����°ڵ����档Ϊ�˷�ֹ���컢�ҵ�������Ϊ����������������ս�ѷɸ����򣬸��ӵ���ķɴ��оȳ��������˵��ȴ��쵼�ߡ�������С���������������ķ����ߣ����ϰٸ�������������һ��������̫���ţ�ʵ�����ʵ�˲�䴫�͡�<br />
<br />
����æ���ҹ����Լ���Ů�ѿ������硤������-������Rosie Huntington-Whiteley �Σ���Ӫ�����ɽķ��ϣ�ǡ������� Shia LaBeouf �Σ��޿ɱ���ؾ������У����������ְ��컢�Ĳ���һ�е���ı��ȴ��֪�������ı��Σ������������Ӱ���󡭡� <br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/7.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/8.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/9.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��19���ͳ�������Ȧ�ڣ�Archibald Witwicky����(ά��ά����������)��һ�����������ž޴�ı���������Ԩ���䵽������ڱ���֮�µ�һ�������������ϡ������������ֻ����˵��۾���ע������������̨���������Ǻܾ���ǰ�뿪����̹��ǰ������Ѱ�һ���Դ(Allspark)��������(Megatron)���������콫��ʾ����Դ����ĵ�ͼ�տ��ڴ������۾��ϡ��۾���Ϊ����������һ��һ���ش�������ķ(Shia LaBeout����)��������ִ���᣺�ж���������ĳ�������վ������⵽�˿���սʿѣ��(Blackout)���������������ȫ�ٵ������һ���һ̨����������˴�����Ϣ�����⣬ѣ�λ��ͷ��˾�Ы��(Sc',N'����',N'����/�ƻ�/ð��',N'1920 x 1080',N'2007',N'http://www.lwgod.com/thread-618662-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904426&amp;k=840ef8b61f82e0fa6522247533c260d7&amp;t=1412261713&amp;sid=e8a8OJdoROXfYeG5Idbpq78MOcJfTbU%2BZ9HSugl1%2F0Zl6rA',N'2014/10/2 22:57:15',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 388,N'����14�����ڴ�Ʊ���������ձ�Ե����BluRay-1080P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ձ�Ե/���սʿ(��)/���ձ߽�(̨)/ɱ¾�ֻ�<br />
Ƭ��������Edge of Tomorrow<br />
�ꡡ������2014<br />
�������ҡ�����/�Ĵ�����<br />
�ࡡ���𡡶���/�ƻ�<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�<font color="red">8.1/10 from 136,222 users</font><br />
�������ӡ�<a href="http://www.imdb.com/title/tt1631867" target="_blank">http://www.imdb.com/title/tt1631867</a><br />
�ļ���ʽ��x264 + 5.1 DTS @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1920 x 1080</font></font><br />
�ļ���С��7.88 GB<br />
Ƭ��������113 Min<br />
�������ݡ��������� Doug Liman<br />
�������ݡ���ķ����³˹ Tom Cruise ....���������� Cage<br />
���������������򡤲����� Emily Blunt ....������������˹�� Rita<br />
�����������ȶ�������˹�� Bill Paxton ....ʿ�ٳ������ Master Sergeant Farell<br />
����������������������ɭ Brendan Gleeson ....�����ķ�Ͻ� General Brigham<br />
���������������ء����� Charlotte Riley ....��˹ Nance<br />
����������ŵ�ǡ�̩�� Noah Taylor ....���ز�ʿ Dr. Carter<br />
�������������������� Lara Pulver ....���ס��͵� Karen Lord<br />
����������Լ��˹����ķ˹���� Jonas Armstrong ....Skinner<br />
�������������ᡤκ Tony Way ....Kimmel<br />
������������ˡ����� Kick Gurry ....Griff<br />
���������������ȡ�����÷ Franz Drameh ....Ford<br />
�����������������׶�����ϣ�� Dragomir Mrsic ....Kuntz<br />
����������������� Masayoshi Haneda ....Takeda</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬ������һ���������˵�ս�������˹������δ���ܹ�����ѵ����ȴ���ɵ�ǰ����ս����������һ����ɱ�ж���������Ƶ������һ�̣�������ػ�ô�Խʱ�յ��������ܹ��������ϵ��ظ������ֻأ�һ�δ����»ص�ս������ÿ����һ�������������ս��������ǿһ�֡���<br />
<br />
����δ�������������������ֵĿֻ��У�������˵�ҿ�����У����ķ����³˹ Tom Cruise �Σ�η����ս��������û���������������������ɭ Brendan Gleeson �Σ�������ȥָ�Ӽ�����ʼ�ġ�ŵ����ս�ۡ����ܾ���������֮�󽫾���Ȼ�����������Ǿ��ǰ��������ӱ��ӽ��˾�Ӫ�С����汻������JС���н���ս����ս�۵ĵ�һ��Ͳ�����ս����û�뵽��һ������ӵ����ʱ��ѭ������������Ψһ���������˾��Ǳ���Ϊ��ȫ����սʿ����������������˹���������򡤲����� Emily Blunt �Σ������˿�ʼ��ʱ��ѭ����ս����ѵ�������ͬʱ���Ƿ����˿���ʱ��İ��أ����������ˡ����ԡ�ŷ�����йأ�����Ψһ��ȡ��ʤ���ķ��������ÿ��治����ȥ����������ʱ�䡣�ڲ����ظ���½�����ս����ͬʱ������Խ��Խ����ʧȥ��������<br />
<br />
������Ƭ�ı����ձ�����ӣ�������С˵��ɱ¾�ֻ� All you need is kill�������±����趨�ڽ�δ���ĵ�����һ��ȫ���Ե�������������ս���У����棨��ķ����³˹ �Σ����͵���½ս�ĺ�̲��ÿ�춼���ظ��űذܵ�������ս��������δ���ܹ��κξ���ѵ����ȴ���ɵ�ǰ���������ս����������һ����ɱ����ս�ж���������Ƶ������һ�̣�������ػ�ô�Խʱ�ջ��ȵ��������ܹ��������ϵ��ظ������ֻأ�һ����һ�ε����»ص�ս��������ÿһ���������ȶ���ս���ľ���͸���һ�㣬��Խ��Խ�˽���˵����㣬��ս���ϵĴ��ʱ��ҲԽ��Խ�á����ڡ�ս��Ů������������������������ �Σ���ħ��ѵ���£�ս������ͻ���ͽ�������һͬ������ս���������ⳡ����ϣ����ս��¶��һ��ʤ������⡣���ǿ���Ҳ����һ��ʹ��ľ��񡭡�<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
������Ӱ�ı����ձ�����ӣ����ԭ�������������廭����С˵��ɱ¾�ֻء���All you need is kill����2010��4�£������ֵܻ���Լ300��Ԫ������С˵�ı��Ȩ����������Ϊ��ɱ¾�ֻء�������ֹ���Ѫ�ȣ����ǽ�Ƭ����Ϊ�����ձ�Ե����Edge of Tomorrow����ӰƬ��2012��10��1����Ӣ���������㣬�����������˹��Ƭ������ǰ�������ǡ�����-���ء�������ء�ӰƬͶ��1.78����Ԫ���ɵ���-����������Ӱ���ء�����ʷ��˹�ж�����ִ������ķ-��³˹�������ݣ�ӰƬ������ָ���ǡ������ա��İ�����-ʩ�������Ӱָ��������ð�˹�������ĵ϶�-�ȱ����Ӿ�Ч���ܼ��ǲ���������������ڰ���ʿ�������-��ά˹���Ŷ�����ʮ�ֻ���������-������ǰִ����һ�����Ƭ����Ӱ���ء������ѽӽ�ʮ�꣬�����������Ƭ�籾ʱ�ǳ��˷ܣ����籾�ǳ����ʣ����ں��˺������Ƭ�����о���Ԫ�أ���ѡ����ȫ�µ��ӽ��������<br />
<br />
������ķ-��³˹��2012��7��20�ռ��뱾Ƭ�ĳﱸ������������һ����Ӱ������ս�����ػ�����һ��ʱ�䡣���50����ķ-��³˹�������Բ��Ͻ��ĸ��Ѷȶ���Ƭ��2011�����������������������ߵĽ�������γ��ݡ����ձ�Ե�����������޴�Ľ������ײ���ս����������Ҫ��ת���壬�ҵ��������İ취�����������ش�85��125������������ľ�ҵ�����������塣���⣬��ķ-��³˹������һ�����������Ϸʱ���ˣ���Ϸ���̶ȿɼ�һ�ߡ�Ů���ǰ�����Ҳ��ʾ�����ⲿϷ�ǡ���ô��ʹ�ࡱ��һЩ��ѵҲ�����Բ�����<br />
<br />
����ӰƬ��ӳ�󣬱�ý��һ��ʢ����2014���ļ���Ѵ�Ƭ֮һ����ս�����쳣���ͣ�ӰƬ�����ƽ���˶�������Ĭ������������������Ӣ�۵�Ԫ�ء���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ���ۣ�</font></strong></font><br />
<br />
����ý������71�֣��÷��ѷ������ʶ�89%��180��Ͷ�����ʷ��ѣ�22���ҳ��÷��ѣ�CinemaScore����B+������롶���е�4����ƽ�ĸ߷����ۡ�<br />
<br />
�������С�֥�Ӹ�̫������������֡������ձ�Ե����ʵ���Ƕ���ķ-��³˹��ҵ�İ���������ԶҲɱ������һ���ܻ�������ϵ�������������³˹��Ȼ�ǵ��������������ĵ�Ӱ��������ԭ��ġ����������Լ�Ŭ��׬ȡ�ģ�����������ǰհ�ԵĿƻ���Ʒ����������⡢����Ĳ߻��������ؾ籾������ִ���ַ��������ձ�Ե�����ܻ����ļ�����һ�����˵Ĵ����ִ�Ƭ�������ⲿӰƬ�ɹ���ԭ�����ڣ�����һ�ж��ӽ������������ϲ�����ȫ�µĶ�������Щ���¶��������ǻ��ò�������Ĭ������Ը�⻹���Խ�һ���������ں�����һ����������������ҵ���ִ�Ƭ����������ϵĴ��³������ϡ������˷ܡ����������ö�������;�ϲ�������ϡ��ðɣ���Ȼ�������ͷʹ�����ڴ�֮ǰ��³˹�벼���ؽ������ϵ�������Ϸ�����������Ǳ������á�������Ϊһ������ʱ��ѭ���ĵ�Ӱ�������ձ�Ե����Զ�����ù��ڸе����������ơ���<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ƭ�ı����ձ�����ӣ�������С˵��ɱ¾�ֻء�����һ��ʼ�������Ϊԭ���ı�����ڲпᣬ���Ӱ��ƫϲ������ղ�����֮��������ù������Ƕ��Ƿ��ˡ��ı��⣬���ո�Ϊ�����ձ�Ե����<br />
<br />
��ӰƬ�󲿷�Ϸ����Ӣ��ȡ���������Leavesden Studio�����ǹ���������ϵ��ӰƬ��Ƭ����<br />
<br />
��ӰƬ�бȶ���������ʿ�Ľ�ɫԭ���ɲ����¡�Ƥ�س��ݡ��������뵼��������������ʷ��˹�򸾡���<br />
<br />
����ķ����³˹�Դ�2012��7��20�ռ��뱾Ƭ�ľ��鿪ʼ�ﱸ�������Ǿ�������һ����Ӱ������ս�����ػ��в���һ��ʱ�䡣<br />
<br />
����ķ����³˹��������������10����ԪΪ����ٰ���һ��ʢ��Ĺػ��ɶԡ������������ڻ���Ϸ����Ҫ����δ��ǰ���μӡ�<br />
<br />
�������Ľ�ɫ�����������롶�����ҡ��ķ���Ů�Ǳ�����˿�����ǳ��ݡ�<br />
<br />
�����ɹ�˾Ϊ��Ƭ������һ��ʷ��ǰ���ġ�Ԥ���ؼ������ɡ�����ͬһ��֮�ڣ�������7֧�����ձ�Ե����ص�Ԥ�漰�����ؼ���<br />
<br />
�����㱾Ƭ�ڼ䣬Ů���ǰ����򡤲����ػ����ˣ���������ò��ܾ�����һЩ����Ϸ��������֪�����ܾ�������ԭ�����ֻ�а����硣<br />
<br />
��2013��8�£�ý�屨���ˡ����ǻ�顷���ǽ����ס�Ƥ�ļ��˱�Ƭ����Ϣ����������û�г�����ӰƬ����ӳ�浱�С�<br />
<br />
���Ⲣ���ǰ����򡤲��������ݵĵ�һ����ʱ�մ���Ϊ��ĵĿƻö���Ƭ����һ���ǡ�����ʹ�ߡ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/mingribianyuan/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/mingribianyuan/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/mingribianyuan/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬ������һ���������˵�ս�������˹������δ���ܹ�����ѵ����ȴ���ɵ�ǰ����ս����������һ����ɱ�ж���������Ƶ������һ�̣�������ػ�ô�Խʱ�յ��������ܹ��������ϵ��ظ������ֻأ�һ�δ����»ص�ս������ÿ����һ�������������ս��������ǿһ�֡���δ�������������������ֵĿֻ��У�������˵�ҿ�����У����ķ����³˹ Tom Cruise �Σ�η����ս��������û���������������������ɭ Brendan Gleeson �Σ�������ȥָ�Ӽ�����ʼ�ġ�ŵ����ս�ۡ����ܾ���������֮�󽫾���Ȼ�����������Ǿ��ǰ��������ӱ��ӽ��˾�Ӫ�С����汻������JС���н���ս����ս�۵ĵ�һ��Ͳ�����ս����û�뵽��һ������ӵ����ʱ��',N'����/�Ĵ�����',N'����/�ƻ�',N'1920 x 1080',N'2014',N'http://www.lwgod.com/thread-617960-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903482&amp;k=a5a7799f08f35b4159305a00f9854154&amp;t=1412261713&amp;sid=440coPxVhUPyMJXxnCVFCYhr%2BdI%2BJxCaBx77zBmGxMxmgJI',N'2014/10/2 22:57:15',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 389,N'��Ӣ14�ؿ�������ͷ��������ɱȭ����BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/jieba/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/jieba/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������ͷ��������ɱȭ/��ͷ�������̿�֮ȭ/�ְԣ���ɱȭ<br />
Ƭ��������Street Fighter: Assassin''s Fist<br />
�ꡡ������2014<br />
�������ҡ�Ӣ��<br />
�ࡡ���𡡶���/ð��/���/����<br />
����ԡ�Ӣ��/����<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.9/10 from 5,344 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3069212" target="_blank">http://www.imdb.com/title/tt3069212</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.42 GB<br />
Ƭ��������146 Min<br />
�������ݡ���������ɳ Joey Ansah<br />
�������ݡ�Mark Killeen<br />
������������������ Togo Igawa<br />
����������Mike Moh<br />
������������������ɳ Joey Ansah<br />
��������������˹�ٰ��������� Christian Howard<br />
����������ɽ�ڴ��� Hal Yamanouchi<br />
����������Gaku Space<br />
�������������� Hyunri<br />
����������С��ɽ�� Akira Koieyama<br />
�������������� Shogen</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������������Ӿ�ͨ��Capcom�ٷ���Ȩ�����������ְԣ����桱��ǰ�����飬�۽�¡�Ϳϵ�ʦ����ȭ�����������ֵܺ���ı�����Ӱ�죬����ѡ���Ƿ񴫳С���ɱȭ�����ɡ� ��ȭ��������ѧͽ¡�Ϳ��Ƿ����ͬ���꣬���Լ��ͺ���ݺ���Ϊʦ���������������ڰ��ĵ�·��<br />
<br />
�������ձ�һ��Ƨ�������ڣ��¶�¡��Mike Moh �Σ�����ͬ������������ϣ�Simeon Tsolov �Σ�һͬ��ʦ����ȭ��С��ɽ�� �Σ���ָ���£��ո�һ�ս��м��׿�������С����������ڸ��ܵ�������������֮ʱ��ʦ����ŵ�����ǽ��и��߽׶ε����������ǽ������ƻ���ʮ��İ�ɱȭ������ʱ������ȭ�͵ܵܺ�����ʦ���������������� �Σ���ϰ��һ�ı��ǿ��ĺ���͵��ʦ�����ؼ���ѧ����µİ�ɱȭ������ȴ�������ɱ��Ĳ��������ձ��������ʦ�š��·���һ��ѭ�������ƺ�Ҳ�������ź������·����ȭ��ӽ�ȫ�����Ɐ�����ݡ�<br />
<br />
����ֱ��ĳһ�죬��������������ʦ�ֵܲ��ò���������ĶԾ�����<br />
<br />
������Ƭ��Joey Ansah��ϵ���ԱChristian Howard��ͬ׫д�籾��Joeyָ������Ա���ݿ�ν�൱���������ռ�����¼������������ʿ�����ձ���Ա�������Ὣ���ݺ��������桶���泬�ˡ�ϵ�е� Mike Moh������¡��������ǡ���ɽ�ڴ������ɮ�ˣ���Ȩ������Ϸ��Mark Killeen���ݿϵĸ��ף���������Ѫ����ԱС��ɽ�ΰ��ݸ�ȭ��������������ΪGaku Space�������ȭΪ������<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/jieba/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/jieba/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/jieba/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/jieba/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/jieba/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����������Ӿ�ͨ��Capcom�ٷ���Ȩ�����������ְԣ����桱��ǰ�����飬�۽�¡�Ϳϵ�ʦ����ȭ�����������ֵܺ���ı�����Ӱ�죬����ѡ���Ƿ񴫳С���ɱȭ�����ɡ� ��ȭ��������ѧͽ¡�Ϳ��Ƿ����ͬ���꣬���Լ��ͺ���ݺ���Ϊʦ���������������ڰ��ĵ�·�����ձ�һ��Ƨ�������ڣ��¶�¡��Mike Moh �Σ�����ͬ������������ϣ�Simeon Tsolov �Σ�һͬ��ʦ����ȭ��С��ɽ�� �Σ���ָ���£��ո�һ�ս��м��׿�������С����������ڸ��ܵ�������������֮ʱ��ʦ����ŵ�����ǽ��и��߽׶ε����������ǽ������ƻ���ʮ��İ�ɱȭ������ʱ������ȭ�͵ܵܺ�����ʦ���������������� �Σ���ϰ��һ�ı��ǿ��ĺ���͵��',N'Ӣ��',N'����/ð��/���/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617503-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902438&amp;k=8080c210d999ac59603707044e1ee425&amp;t=1412261713&amp;sid=8847RAB91jy%2F7SwI1sPxXrE3U%2Fi7Kyd7%2Bs%2BSrlk3wJKB0mg',N'2014/10/2 22:57:15',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 390,N'����14Ʊ�����߷����������绤�ˡ���BluRay-720P.MKV�������֡�',N'<font color="blue"><font size="5">��Ƭ���������ָߴ�9.1�֣��������������˱ؿ���</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianhuren/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianhuren/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������绤��/��Ȩ��״(��)/����绤��(̨)<br />
Ƭ��������The Attorney<br />
�ꡡ������2013<br />
�������ҡ�����<br />
�ࡡ���𡡾���<br />
����ԡ�����<br />
�֡���Ļ�����ļ�<br />
�������֡�7.9/10 from 834 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3404140" target="_blank">http://www.imdb.com/title/tt3404140</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.97 GB<br />
Ƭ��������127 Min<br />
�������ݡ������ Woo-seok Yang<br />
�������ݡ��ο�� Kang-ho Song ....����˶<br />
������������ʱ�� Si-wan Lim ....����<br />
��������������Ԫ Do-won Gwak ....������<br />
��������������� Dal-su Oh ....�Ӷ��� Park Dong-ho<br />
������������Ӣ�� Yeong-ae Kim ....˳��<br />
���������������� Su-yeong Ryu<br />
������������Ӣ�� Young-chang Song ....Judge<br />
����������Byeong-gyu Kwak ....Cha Dong-yeong</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬ��1981�꺫�����干�͹�ȫ�������¶�����Ȩִ�����ڵĸ�ɽΪ������������ƽ��˰����ʦ����˶���ο�� �Σ���Ϊ��ȫ���ġ������¼����ܺ�ѧ��������Ȩ�绤�Ĺ��¡�<br />
<br />
����1978�ֻ꣬�и���ѧ��������˶���ο�� �Σ�ͨ������ļ��Ŭ��������ͨ��˾�����ԣ����ڳ�Ϊ���ٺ�ܿ�ת�г�Ϊһ����ʦ��������ش������������ᵽ�̻����Բ���������ҵ����ҡ���Ȼ��ͬ�м���Ϊ��ʱ����ɷ���Ƭ��ҹ��С�ܣ�����˶����Ϊ�裬һ��һ���������е�Ŀ��������������׬����Ǯ���޶����ϸ�������Ҳ��������ǰ�ڷ����������Ƿ�µ�����ծ������20����80��������������������������ҡ���˶ȫȻ���ܴ����£�������������׬Ǯ��Ȼ�����ľޱ��Ѿ��������������⣬��������Ķ���������������ĸ�ɽ�������ϻᱻ��Ϊ�������Ŷ��⵽���������ܵ��п��Ű���Ͳ�����ָ�ء�<br />
<br />
������Ȼ��Ǯȴ���ظ������˶��������������Ϊ�����绤�ĵ�·����<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
��ʵ�¼��ı�<br />
<br />
�������绤�ˡ���1981�꺫��ȫ�������¶���ZF�Դ���Σ���鼮�����зǷ����ᣬ����Υ�������Ұ�ȫ���������ɶԸ�ɽ�����Ĵ�ѧ���ʹ�ѧ����Ļ�ң����о�����Ѷ��&quot;�����¼�&quot;Ϊ�زĸı����㡣��ʱ���Ǹ�ƽ����˰����ʦ�ĺ����ѹ�ǰ��ͳ¬�����ڽӴ����ܺ�ѧ�����ܵ��𶯣�������Ϊѧ���绤�����Ӵ�����&quot;��Ȩ�绤&quot;��·���ο����Ƭ�������ݵ���ʦ����˶�Ľ�ɫ�趨��¬������Ϊ���ơ�<br />
<br />
����¬����2003-2008�����κ�����ͳ��ж�κ󲻾�Ϊ�������ܲƽ��¸�ĳ��������ţ���2009��5��23��������ɱ����������������������Ժͼ������飬�����ο��һ�Ⱦ��ݡ������ĺ��Ѻ��޹˼���ȥ����һ���ľ����������������������档���ڻ�ζ�˾籾15����ο�껾������������ɫ����������������&quot;Ϊ���Ǹ��������Щ���ǵ�����̬�Ⱥ���������&quot;�������ο�껻�̹��&quot;���˹�����˶ǰ���ľ�����ʵ�ж���ת�乴�������ı�������&quot;���ڡ��绤�ˡ��ﻮ���ڣ���ֵ������������һ��ӳ��ȫ����ǰ��ͳ��ɱ�¼��ġ�26�꡷�����������һ��ͣ�ġ����绤�ˡ�սս��������������Ϊ�ο�껵ļ��˿�����һ������������ʱ�ով����������С��͡����Ρ�������ҵ��ӰƱ�����ߵ��ο�껣�Ҳ������һ��Ϊ�Լ������ĺý�ɫ��<br />
<br />
�ο���ݼ�ͻ��<br />
<br />
����ӰƬ���绤�ˡ��̻���һ��ֻ֪����Ǯ��˰����ʦ������Ȩ�绤��·�Ĺ��̡�����ӰƬ��ǰ�벿�֣�����һ������������Ƥ����������˵�����������ʦ��Ϊ����չҵ�񵽴�����ϵɢ��Ƭ�����ο�������ֲ���ĵĽ�ɫһ������ͷ���Ŷ�͸��ϲ�С�����ɱ�˻��䡷������Ϊ�ǵ����ܾ��졢���������а�ˣС�����ĳ����ϰ塢���С�Т�Ӷ���ʦ����С���������ʦ��������˶���ϣ������ҵ����ǵ�Ӱ�ӡ���������˶ƽ����һ�β�ΪǮ������Ϊ���˵����Ϻ�˾������վ�Ϸ�ͥ����ɫ�����ʸ�Ҳ��֮͹�ԡ�����ʮ�ֿ���̨�ʹ��׵�ͥ��Ϸ���ο�껻���ս��һ��ǰ��δ�е������ݼ���<br />
<br />
�������⣬Ϊ������ڹ�ͽ�ɫ����ǰ���籾ֻ��һ�飬�Ӳ������ɫ�������ǰ�Ӳ���Ϸ���ο�껣���ǰ������ͽ����˾�����ϰ̨�ʡ������Ϸȫ���ٳ����ӡ�׷����Ȼ�ݼ����ġ��ж��ɡ���Ա�ο����˵���ǵ�һ�Ρ�<br />
<br />
���˵���������ʷ<br />
<br />
������Ȼ�����绤�ˡ����Ǵ��ǵ�Ӱ�������˽���һ���Ӱ����FACTION��FACT+FICTION��--����ʵΪ�����Ķ�׫��Ӱ���ڡ��绤�ˡ�֮ǰ�����Ƶĺ�����ӰҲ���ֹ��ܶ࣬������ͳ��ɱ�¼��ġ�26�꡷�����׶������ű�ը�¼�Ϊԭ�͵���ı�۵�Ӱ���׾���������������ͳ����ʦΪ���˹��ġ�Т�Ӷ���ʦ���ȣ���ЩӰƬͨ��Ϸ˵С�������Ϸ����Ĺ�����չ���ض���ʱ���������ο���ڡ��绤�ˡ����������Ҳ��������ʷ�����е�һ��С���ֻ������ʵ�е����������ɵ����˺�����ͳ��������˼���ǣ����˹�����˶���������ο�껵��պ͵��ݵ�����ɣ�����ĺ���������ԣ������Ҳ�ǵ��ݵĿ���֮�٣������￴��ȥ�����ܵĵ������������롣<br />
<br />
�����롶Т�Ӷ���ʦ��һ�������绤�ˡ��ĵ�������˶Ҳ���״�ִ����Ӱ�����⡶26�꡷���׾���Ҳ����������Ʒ������������˵��ݸ�ϲ���������������ʹȻ�����ǲ���������û�й��ǣ���������ֻ����α���Լ�����ʵ�뷨��������������ҵ�ں���������ѧ����ѧ��Ӣ��ѧרҵ������˶����������ܶ�������ͬʱ���Ǹ��������ҡ����������������������꡷����Ԥ���˽����յ�ȥ��һ�ȳ�Ϊ���Ż��⡣�����꡷�������ڽ�����ȥ����İ뵺��ս״̬�£��������˹���ֹս�����ȼ��˵Ĺ��¡���˶���������״̬�Ĺ�ע�͹ػ�Ҳ���ڵ�Ӱ���绤�ˡ��м�����<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
��ӰƬ��1981�꺫��ȫ�������¶��������Դ���Σ���鼮�����зǷ����ᣬ����Υ�������Ұ�ȫ���������ɶԸ�ɽ�����Ĵ�ѧ���ʹ�ѧ����Ļ�ң����о�����Ѷ�ġ������¼���Ϊ�زĸı����㡣<br />
<br />
���ο����Ƭ�����ݽ�ɫ��ԭ�����ǵ�ʱ���Ǹ�ƽ��˰����ʦ�ĺ����ѹ�ǰ��ͳ¬���硣����¬�����ڽӴ����ܺ�ѧ�����ܵ��𶯲�Ϊѧ���绤�����Ӵ�����&quot;��Ȩ�绤&quot;�ĵ�·��<br />
<br />
����Ϊ¬������һ��ɫԭ�͵������Ժ������ԣ��ο����һ�Ⱦܾ����ݸ�Ƭ���������������ǡ����ĸ�����¬���磩���鷳����<br />
<br />
��Ϊ������ڹ�ͽ�ɫ����ǰ���籾ֻ��һ�飬����ǰ�Ӳ���Ϸ���ο�껣���ǰ������ͽ��˾�����ϰ̨�ʡ������Ϸȫ���ٳ����ӡ�׷����Ȼ�ݼ����ġ��ж��ɡ���Ա�ο����˵���ǵ�һ�Ρ�<br />
<br />
�����˹�����˶���������ο�껵��պ͵��ݵ�����ɡ�<br />
<br />
����ҵ�ں���������ѧ����ѧ��Ӣ��ѧרҵ������˶���ݣ���������ܶ�������ͬʱ���Ǹ��������ҡ����������������������꡷����Ԥ���˽����յ�ȥ��һ�ȳ�Ϊ���Ż��⡣<br />
<br />
�����绤�ˡ������ο���״���������ʷԭ�͵Ľ�ɫ����2004����ӳ�ġ�Т�Ӷ���ʦ���У��ο�껰����˺���ǰ��ͳ����������ʦ��<br />
<br />
������¬������һ���������ԣ�ӰƬ��δ��ӳ�����ں����Ż���վ�ϵõ���һЩ����1�ֵ����ۣ���������ƫ�����ۡ���Щ����г���Ҳ��Ƭ�����Ԥ�ϵ��ģ����������������У���Ȼ���ἰ&quot;�����¼�&quot;��ȴ������ر���&quot;¬����&quot;�����֣���ͼ����޶ȼ��ٹ��ڶ�ӰƬ����Ϊ����ƫ���жϡ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianhuren/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianhuren/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianhuren/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianhuren/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianhuren/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬ��1981�꺫�����干�͹�ȫ�������¶�����Ȩִ�����ڵĸ�ɽΪ������������ƽ��˰����ʦ����˶���ο�� �Σ���Ϊ��ȫ���ġ������¼����ܺ�ѧ��������Ȩ�绤�Ĺ��¡�1978�ֻ꣬�и���ѧ��������˶���ο�� �Σ�ͨ������ļ��Ŭ��������ͨ��˾�����ԣ����ڳ�Ϊ���ٺ�ܿ�ת�г�Ϊһ����ʦ��������ش������������ᵽ�̻����Բ���������ҵ����ҡ���Ȼ��ͬ�м���Ϊ��ʱ����ɷ���Ƭ��ҹ��С�ܣ�����˶����Ϊ�裬һ��һ���������е�Ŀ��������������׬����Ǯ���޶����ϸ�������Ҳ��������ǰ�ڷ����������Ƿ�µ�����ծ������20����80��������������������������ҡ���˶ȫȻ���ܴ����£�������������׬Ǯ��Ȼ�����ľޱ���',N'����',N'����',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-618618-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904305&amp;k=bad544d71cb9a14181ee3d30e8b1aece&amp;t=1412261714&amp;sid=b8bdIzWxiSX%2Ff%2FGYETjhq%2FbAS%2FOOmYZn2YwiAeyakiuENy8',N'2014/10/2 22:57:15',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 391,N'�������߷����Աؿ������ֲ����֡���BluRay-720P.MKV������Ӣ��',N'<font color="blue"><font size="5">��Ƭ��ʵ���������Ƭ�����ȹ��죬ʱ���ϼ��ȸ��ӣ�<br />
��ʵ��Ƭ�����ơ����ձ�Ե��������Ƭ���ǳ��ÿ���<br />
������8.2�߷֣����Ӽ����Ƽ���û�������ֵܱ��£�</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/youlun/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/youlun/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������ֲ�����/����Ѫ�Ԍm(̨)/�ֻ�����/������/��ʧ������<br />
Ƭ��������Triangle<br />
�ꡡ������2009<br />
�������ҡ�Ӣ��/�Ĵ�����<br />
�ࡡ���𡡾���/����/���/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.9/10 from 43,668 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1187064" target="_blank">http://www.imdb.com/title/tt1187064</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.45 GB<br />
Ƭ��������99 Min<br />
�������ݡ�����˹�и���ʷ��˹ Christopher Smith<br />
�������ݡ�÷��ɯ������ Melissa George ....Jess<br />
��������������ķ����Ī˹��˹ Liam Hemsworth ....Victor<br />
�������������ꡤ�� Emma Lung ....Heather<br />
����������Rachael Carpani ....Sally<br />
�������������˶������� Michael Dorman ....Greg<br />
����������Henry Nixon ....Downey<br />
����������Joshua McIvor ....Tommy<br />
����������Jack Taylor ....Jack<br />
����������Bryan Probets ....Driver</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����������һ�����ѳ���ͧ�������棬��������һ���в��õ����鷢���ĸо�����Ȼ����ͧ�����˷籩������������ֻ�û�����һ���պ�·���Ĵ���������֤��ȫ�����ǽ��������������������������֣����ϵ���ͻȻֹͣ�ˣ�һЩ�ֲ�����������������<br />
<br />
��������ĸ�׽�����÷��ɯ������ �Σ���һ�����ѳ���ͧ�������棬��������һ���в��õ����鷢���ĸо������ã����Ǳ��ں�������һ��ǿ�ҵķ籩����ͧ�����������亣�������������Ǻò�����������ͧ�к����������������޼ƿ�ʩ֮ʱ��һ�Ҿ޴�����������˻���ʻ����������ϲ������δ��˼�������������Ϊ��������˹�������֣���������⾹��һ��1930����ʧ�ٵ�����֮���������ϸ��ǿ���һ�ˡ�<br />
<br />
�����洦�ɼ�����Ѫ�����ص�ָʾ�Լ�ͻ����������ɱ�¼�������Ⱥ��Ů������ٲ����Ŀֲ��ֻ�֮�С���<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
���������Ŀֲ�֮��<br />
<br />
����ÿ�������Ʒ�ĵ�Ӱ�У��ֲ�������Ӱ���������в�����������ݬ������Ϊ���ص�һ�࣬ÿ���ڿֲ���Ӱ�У��ܱ���ס���ڸ���ʱ��Ϊ�˽���ֵ�����ָ����������2009�꣬Ӣ�����ݿ���˹�и���ʷ��˹���ϵ�һ�����ֲ����֡������ǵ����Ϊ���۵�һ�����ⲿ��Ӱ��δ��Ѫ�ȳ��溧�ˣ�ȴ�Ծ��ɵľ���ܹ����������һ�����ۣ��ù��ڲ����������У����ڿ���ӰƬ��Ҫ��������һ����ʵ���Ͽ���˹�и������ݵ�������Ƭ��Ȼ��Ϊ�ֲ�Ƭ��ȴһֱ�ó�������ע���ر�Ļ��������Եñ��һ�񣬶����ֲ����֡������ص��ֻ�ʽ�籾�ܹ����ɱ��Ǳ�Ƭ��Ϊ�����˵����ʡ�<br />
<br />
������������һ����Ϊ�������������ĵ�Ӱ���侫�ɵľ籾�γɹ����������˹�ע��������˹�и�����Ҳ���Ǳ�Ƭ��磬���ҿ�ʼ�и������Ĺ�˼�����뵽��������ͷһ���������Լ�������ͧ�ϵ�һ�̣������ҵ�ʱ��û�����̫�������������������£��������뵽�Ĺؼ������������һ���Լ������Լ��ĽǶȡ����������ħ�硷��1959���ĵ��ӣ�����Χ�����������˼�룬�ҽ����Ŀ�ʼ�ḻ�籾���ݡ�����̸��籾�������̣�����˹�и�Ҳ��������������������е�ӰƬ���Ǿ��ǡ����顷��1980��������ϣ���ڵ�Ӱ���ӽ���Ӫ�졶���顷һ����Ч��������ۿ�ӰƬʱ����֪���Լ��������ڽܿˡ���ƶ�ɭ����ȥ���飬������һ���������ĽǶȸ����Ǹ��Ƶ��з�����һ�С������ⲿӰƬ�У����������ȡ������Ĳ��ú;�ͷ�Թ��ڵ������϶�����ˡ����顷�������������������У�����˹�и�Ҫ������ע�����������Ժ��߼��ԣ���д�˴�����Сֽ�����Ӹ���ϸ��ƴ�ӹ۲죬��������������и�ɻ���<br />
<br />
�ǳ������������<br />
<br />
�������������籾�󣬿���˹�и��������ڰĴ����ǵĵ�Ӱ�����Ͷ���¿�ʼ�˱�Ƭ�����㣬Ϊ������ⲿ��Ӱ�������ĵ�һ���£�����ֱ�ӽ����˰�����֡������ǿ�ʼ��ֱ����һ�����֣�����ʵ��Ѱ������һ����ͧ�Ƿǳ����ֵ��¡���Ϊ���ֲ������������һ�����ֱ����ˣ�������Զ�ı�֫���ˣ�����������ҵ�һ�Ҳ�����Ӫ����Ȼ���õ����֡���̸��Ѱ�����ֵĹ��̣�����˹�и�˵���������ǽ���һ����������Ҫ�������Ǻܴ��Ԥ�㣬�����ҵ�ʱ��Ĳ�֪���⣨������ʵ�����ֳ������Ƿ��Ǹ����ǵľ�������Ȼ������������ڳɹ��Ľ�����һ�ҡ���<br />
<br />
����������Ƭ���ˣ���ز��ٻᱻƬ�н�֯�Ķ����������Σ������ڱ�Ƭ����÷��ɯ��������˵����������һ����Ӱͬ���Ǹ��޴����ս���Դ˿���˹�и�Ҳ������᣺����̫���ˣ���Աͨ����ϣ����һ����ɫ�͹��µ�ȫò���������ǲ���Ͷ�뵽������ȥ���㲻������һ��ʼ�ͽ��뵽���缶����10���ľ���״̬������ͨ���ľ��飬��Ҫ����һ�����̲��ܴﵽ��һ�������ǣ�������µ���ս�����ڣ�����Ҫ�ڼ������ھ��ȴ���10���־��״̬��Ȼ���������Լ�����������һ�飬����÷��ɯ��˵��Ҫ��ʶ�������ѣ���Ϊ������ǹ׷���������Ǵ˿�����Ҫ����ڶ�ѭ������Ȼ����Ƭ�У�÷��ɯҲһֱ���ڱ���״̬���ݿ���˹�и�͸¶�������ı���������ʱҲ��ƣ������������Ҳû��������̫�������еı��֣���Ϊ�����Ѿ��۵Ŀ�����������ˣ���Ȼ��÷��ɯ�����ı���Ҳ�õ��˵��ݵĳ���Ͽɣ�����ʾ��������������̶�����Ȼ���ѣ������ҷǳ�ϲ�����ı��ݣ�����<br />
<br />
����ʽ����Ŀֲ�����<br />
<br />
������һ�������顷һ���ĵ�Ӱ��һ����������ɱ�����˹���������ĵ�Ӱ��һ���硶͵����Ե����1993���������ĵ�Ӱ�������ʼ������δ������Ƭ�Ĺ��ڽ��ܴ�Ƭʱ������˹�и�����˵��ȷʵ����Ƭ�ھ����ϣ����硶͵����Ե��һ�������˹���Զ�Ȳ���������֮ҹ�����ϵ�ѭ��ͬ���ľ������������ӵ��ǣ��ڡ��ֲ����֡��У���Щ�ظ��ľ������˴˽��������ǣ���Ƭ�У����ǿ���ͬ��������ͬ���ĳ��س��֣������˴�׷ɱ��Ů���ǽ���Ҳ���ɱ����������ı�������Ƭ�ľ���ܹ����ɶԹ���������ս������Ҳ��������Ȥ��ͬʱ�ṩ�˶����ľ��������ܣ�����Ϊ��ˣ��ⲿ��ӰҲ��Ϊ2009�꾪㤵�Ӱ�Ļ���֮���������˹��ڹ㷺�����ۡ��ڿ���˹�и���������������뷨���ǽ����еľ��鶼Χ��һ��ĸ�׵����չ��������һ�������軹��һ�������裿���ĺ���ȷʵ���Ա�֢������ֻ�������е��뷨��һ����������˴����Ƿ���������ִ�����������ӱܣ�����һ����������Ŀֲ���Ӱ������һ���������ʽ�ĵ�Ӱ���ⲿ��Ӱ������˺ܶ���棬�ù��ڿ��Խ��ж����Ľ�������ݱ�ʾ����Ƭ��������֣����Ƕ����յ�����ͬ�����յ㣬�����ĳ���һĻ����÷��ɯ��������޾���ѭ���У�ӰƬ���ƽ�����ȴ���¸������⡣����������ⲿ��Ӱ���������������߼��Ͻ���������������һ������ʽ�ľ��飬һ����δ��ȫ�������⣬�ù�����ͬ����һ���������������Լ���ѡ��<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
��Χ�ơ��ֲ����֡�������Ҳ�����˴����ֲ���Ӱ�����˵����Լ����������ġ����顷����12ֻ���ӡ�����͵����Ե����������֮ҹ����Dead of Night��1945���⣬���⣬������ָ����Ƭ�ṹ����������Ӱ����ʱ�շ����2008���ǳ����ƣ���������ý�屨����Ƭ�����4��֮ǰ���������������Ƹ�����ֻ���ɺ϶��ѡ�<br />
<br />
��Ϊ�˱�Ƭ�����ݿ���˹�и���ʷ��˹��˰���������Ϊ�����������������ź����ǣ����ҡ����֡����ղ�δ�������£�����������ӰƬ�󱻲����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/youlun/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/youlun/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/youlun/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/youlun/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/youlun/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��������һ�����ѳ���ͧ�������棬��������һ���в��õ����鷢���ĸо�����Ȼ����ͧ�����˷籩������������ֻ�û�����һ���պ�·���Ĵ���������֤��ȫ�����ǽ��������������������������֣����ϵ���ͻȻֹͣ�ˣ�һЩ�ֲ���������������������ĸ�׽�����÷��ɯ������ �Σ���һ�����ѳ���ͧ�������棬��������һ���в��õ����鷢���ĸо������ã����Ǳ��ں�������һ��ǿ�ҵķ籩����ͧ�����������亣�������������Ǻò�����������ͧ�к����������������޼ƿ�ʩ֮ʱ��һ�Ҿ޴�����������˻���ʻ����������ϲ������δ��˼�������������Ϊ��������˹�������֣���������⾹��һ��1930����ʧ�ٵ�����֮���������ϸ��ǿ���һ�ˡ��洦�ɼ�����',N'Ӣ��/�Ĵ�����',N'����/����/���/����',N'1280 x 720',N'2009',N'http://www.lwgod.com/thread-617435-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902362&amp;k=96b52cc23e515d67efedc59ca0cd1ce3&amp;t=1412261719&amp;sid=b4bcC7%2BLTSriImHxarNRSxJU%2B%2F6kCV7C9z2RNRwQh6XzuAk',N'2014/10/2 22:57:16',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 392,N'��14���´����Ƽ��������������ࡿ��BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/qingyu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/qingyu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/qingyu/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������������/����������(̨)/���ɵ�����(��)/������/��������<br />
Ƭ��������Third Person<br />
�ꡡ������2013<br />
�������ҡ�Ӣ��/����/�¹�/����ʱ<br />
�ࡡ���𡡾���/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.4/10 from 3,436 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2343793" target="_blank">http://www.imdb.com/title/tt2343793</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.20 GB<br />
Ƭ��������137 Min<br />
�������ݡ����ޡ�����˹ Paul Haggis<br />
�������ݡ���ķ����ɭ Liam Neeson ....Michael<br />
��������������ά�ǡ������� Olivia Wilde ....Anna<br />
��������������������˿ Mila Kunis ....Julia<br />
����������ղķ˹�������� James Franco ....Rick<br />
���������������ﰲ������� Adrien Brody ....Sean<br />
�����������𡤱����� Kim Basinger ....Elaine<br />
���������������ǡ����� Maria Bello ....Theresa<br />
���������������ա��ŵ� Caroline Goodall ....Dr. Gertner<br />
����������Ī�������ᰬ˹ Moran Atias ....Monika<br />
��������������������� David Harewood ....Jake Long<br />
�����������￨���ࡤ˹������� Riccardo Scamarcio<br />
����������Gisella Marengo ....Natalia</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����ݵ��ݱ��ޡ�����˹��������Ƭ�ṹ���ơ�ײ�����������������������߽�֯�������Էǳ����صķ�ʽ������ŦԼ������������������С�������ķ����ɭ����һ�����ż��ߣ�����ά�ǡ������µĽ�ɫ��һλŦԼ����ר�����ҡ�<br />
<br />
����ӰƬ��һ�����ҵ��ӵ����������������鰮���£���ͷ������ŦԼ�Ͱ�����������֮������ת�������ϱ仯�ĳ��г��������Ŀ��Ͼ�ӡ��ṹ������ÿһ�龵ͷ֮�䶼������������νӣ���ʾ�˳�����Ů�ڻ���֮���֮�������ȷ��������˶԰��������������Ƭ������������ͬһ�����˵�ʫ��Ҳ��һ���������Ρ�<br />
<br />
<font color="red"><strong><font size="3">Ļ������</font></strong></font><br />
<br />
������Ϊ��Ƭ�ĵ��ݼ��磬���ޡ�����˹�ʼ������������µ��뷨������ɡ�Σ�����ա����á��������Դ������Ƭ�е���ɫ��Ů��ԱĪ�������ᰬ˹��һϵ��̸����Ī�������ˡ�Σ�����ա��͹���˹��˹������Ʒ��ײ�����ĵ��Ӿ�档��Ҳ�ڡ������ߡ��г����������������ŮĪ�ݿ�����ʾ��Ƭ����й�ϵ�����⡣��к�����ս����������λ������ҵ������ս������˹����Ƭ��˾��ͬ�ţ�ͬʱҲ�Ǳ�Ƭ����Ƭ�����˶�������ˣ��Թ���˹�Ĵ������з���Ȩ����˵�������޵Ĵ������Ǻܿ죬�����ڡ������ߡ���˵����������ִ��һ��Ҫ����д�á��ұ����Ķ�������ʮ�����ͬ�ĸ��ӣ�������ע������������ľ籾��ɵ�ǰ���꣬���Ǿ��ö������ݡ�����һ���󵨶�ð�յľ��������Ծ籾��������ơ���<br />
<br />
��������˹����д����ʮ���汾�ľ籾����ֻ�ǲ�ͣ�ľ��������⣬Ȼ�����¿�ʼ����������ʱ���ڣ�һ�����죬ÿ���������˸�Сʱ����������Ϊ֮������ֱ�����ھ�����Щ��·�ˡ����Ӳ�ͬ����Ƭ�����ﶼ�յ��˺ܶཨ�飬��Щ�������ˣ���Щ��û����ᡣ����ӰƬ��������һλ���ң������ܺ������Ƿ������˹�ľ����йء����Ļ�Ӧ�ǣ��������Ҷ�֪�����ǲ����ܵġ���������������Ƿ����Դ�����Щ��ɫ�����ң���Ϊ���Ƕ���̽��ͬ�������⣬�����һ�ι�ϵ�����棬��εõ�����Ҫ�ģ��������Ƿ�������ù��������롣��������ε�����ȫ��������ô�죿������Ǹı������ǣ��Ƿ�Ͳ������ˣ���Щ���������˳���ϣ����ͬʱҲ���˾�ɥ����ͬ�������һ��ʼ������˹��֪���⽫��һ��������Ӱ��Ҫ�ڴ�Ƭ��֮�������ϵͳ�н������ʣ����������о����˰�����Ѱ��Ͷ�ʷ����ⲿ��Ӱ�����ɴ������Corsan��Ӱ��˾����Ϊ��ս�����ɴ����������ǵ����������ڳɱ����ޣ����ǵ�ȫ�����㶼�������������Ӱ������ɡ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/qingyu/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/qingyu/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/qingyu/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/qingyu/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/qingyu/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/qingyu/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���ݵ��ݱ��ޡ�����˹��������Ƭ�ṹ���ơ�ײ�����������������������߽�֯�������Էǳ����صķ�ʽ������ŦԼ������������������С�������ķ����ɭ����һ�����ż��ߣ�����ά�ǡ������µĽ�ɫ��һλŦԼ����ר�����ҡ�ӰƬ��һ�����ҵ��ӵ����������������鰮���£���ͷ������ŦԼ�Ͱ�����������֮������ת�������ϱ仯�ĳ��г��������Ŀ��Ͼ�ӡ��ṹ������ÿһ�龵ͷ֮�䶼������������νӣ���ʾ�˳�����Ů�ڻ���֮���֮�������ȷ��������˶԰��������������Ƭ������������ͬһ�����˵�ʫ��Ҳ��һ���������Ρ�Ļ��������Ϊ��Ƭ�ĵ��ݼ��磬���ޡ�����˹�ʼ������������µ��뷨������ɡ�Σ�����ա����á��������Դ����',N'Ӣ��/����/�¹�/����ʱ',N'����/����',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-617880-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903187&amp;k=58237bbbd7d1fd4344615ed2df3255fd&amp;t=1412261714&amp;sid=e5f8W4ZraxZxxxI8dJzAxnvyfQkTmhPZm0XAmE1Z%2Ftgpp3U',N'2014/10/2 22:57:16',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 393,N'��14�����Ƽ���ǿӲ����������������3����HD-1024.MP4�������֡�',N'<font color="blue"><font size="5">�����Ŀǰ��õİ汾�ˣ������к���Ӳ��Ļ���޷�ȥ����</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/gansidui3/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/gansidui3/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������������3/ԡѪ����3(̨)/�����ͽ�3(��)<br />
Ƭ��������The Expendables 3<br />
�ꡡ������2014<br />
�������ҡ�����/����<br />
�ࡡ���𡡶���/ð��/���<br />
����ԡ�Ӣ��<br />
�֡���Ļ��������Ļ<br />
�������֡�6.3/10 from 46,719 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2333784" target="_blank">http://www.imdb.com/title/tt2333784</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��1.23 GB<br />
Ƭ��������126 Min<br />
�������ݡ�������ˡ���˹ Patrick Hughes<br />
�������ݡ�����ά˹�ء�ʷ̩�� Sylvester Stallone ....���� Barney Ross<br />
������������ɭ��˹̹ɭ Jason Statham ....����˹��˹ Lee Christmas<br />
����������÷��������ɭ Mel Gibson ....�����¡�˹ͨ���˹ Conrad Stonebanks<br />
���������������� Jet Li ....Yin Yang<br />
����������������¡������˹ Antonio Banderas ....Rapido<br />
����������Τ˹����˹����˹ Wesley Snipes ....Surgeon<br />
�����������ŷ������ Dolph Lundgren ....Gunnar Jensen<br />
��������������ɭ������ Harrison Ford ....Max Drummer<br />
������������ŵ��ʩ������ Arnold Schwarzenegger ....Trench<br />
�������������ϡ�³�� Kellan Lutz ....Smilee<br />
����������̩�𡤿�³˹ Terry Crews ....Hale Caesar<br />
��������������ϣ������Ī Kelsey Grammer ....Bonaparte<br />
�������������ϡ���׿ Randy Couture ....Toll Road<br />
����������ά�˶ࡤ������ Victor Ortiz ....Mars<br />
�������������ס������� Glen Powell Jr. ....Thorn/Wifi<br />
����������¡�³�� Ronda Rousey ....Luna<br />
�����������޲��ء���ά Robert Davi ....Goran Vogner<br />
����������Sarai Givaty ....Camilla</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����ڴ˴ε������Ĺ����У����ᣨʷ̩���Σ������˹��˹����ɭ��˹̹ɭ �Σ����εĸ����ӽ�����ӭս����ս�ѡ����ľ������ۿ����¡�˹ͨ���˹��÷��������ɭ �Σ���˹ͨ���˹����������������һ�Σ��������Ը������´��˾�ɱ�����������һ�����㣺Ϊӭսǿ�У����������������ע������ѪҺ����ļ�˸����ǿ�ĸ߿Ƽ�ս�����������䳤ǹӲ�ڵ�Ӳ��ǰ����չ��һ�����ս��<br />
<br />
����ӰƬ���������ᡤ��˹������ά˹�ء�ʷ̩�� Sylvester Stallone �Σ���������ӵ��ϻ�����ɭ��˹̹ɭ Jason Statham �Σ������ɣ��ŷ������ Dolph Lundgren �Σ����˼�ʻֱ�����ٳֻ𳵣��ȳ��˱��������õ�����ҽ����Τ˹����˹����˹ Wesley Snipes �Σ����������ݵ����������Ǳ���������Ǳ��ĳ����������֯���ϳ���ִ������˭֪���ᷢ�ָ���֯�ϴ�Ȼ�ǵ��걾����ȥ�ĸ�����ս�ѿ����¡�˹ͨ��ˣ�÷��������ɭ Mel Gibson �Σ���һ�����ҵĽ������˹ͨ��˳ɹ����ѣ��������ӷ�������ʧ���ء�<br />
<br />
�������۹��󣬲��������͸����Ӳ���һ��ŭ����˹ͨ���Ҳ�����׼�ŭ����ǿ��Ӳ��ӭ�������Ծ�����<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
��ʷ̩���������Լ÷��������ɭ���١������ӡ�ϵ�е���һְ����������ɭ�Ŵ���ܡ��˴δ�Ӧ���ݡ�������3�����ɣ�Ҳ���Ǹ�����ʷ̩��һ��������<br />
<br />
���Ĵ����ǵ���������ˡ���˹��ʷ̩���յ㡢�������ӰƬ����ɫɽ�𡷼�����������İ����Ƭ���źš����˴�����������ݵ�������������ִͬ����<br />
<br />
���¼����Ů���ȴ³������������һ��MMA�����ǣ���Ҳ�������ײ�����Ļ��Ʒ�����������ˡ��ٶ��뼤��7������һ����ҵ�ڿ��õĶ������ǡ�<br />
<br />
�����ݸ�Ƭ��һ�ھ�������һ������ʱ�䲢������������ֻ�����˼��죬 ̩�𡤿�³˹������һ�ܣ�ʩ��������һ�ܶ�ʱ�䣬�����ⲻ���٣���һ����ʩ������ֻ���˰��죬�ڶ���Ҳ�����졣<br />
<br />
��ʷ̩��͸¶���������ܿˡ���ƶ�ɭ���ݡ�<br />
<br />
����ӰƬ��ʼ���֣�Τ˹���ӷɻ�������𳵵ĳ���������ģ�����ʲô��Ч�ϳɡ�<br />
<br />
������Լ��200���˷�����ӰƬ��Ч��������������2��������1400-1700����Ч��ͷ����������3���������2000����ͷ��<br />
<br />
����������3��ʹ�õ�����������A12���Զ�ɢ��ǹ��HK416�Զ���ǹ���������ڡ���ɱ�����ǡ��г��ֹ������кܶ�����δ���ع⡣<br />
<br />
��Ϊ�˽�ʡʱ�䡢�����ͷ��ã����齫�����ѡ���˱������ǣ�����ӵ�ж����ĵ�ò��15����ʱ�䣬��Ϳ��Դ�ѩɽ��Խ�����У����ú̵ܶ�ʱ�䣬�㻹�ܿ���ɭ�֡�<br />
<br />
��ƾ��ս�������ŶӼ����ո������ǵ���ߡ������������ǹе���ã��¶���M�������8��MP5��SG550��G36K��һ�������綥����ǹʹ��ӰƬ�������ǡ�Ӳ���������ˣ����ǳ����ִ�����չ��<br />
<br />
��������ӳһ��ǰ������ͻȻ���֡�������3���ĵ������أ���ӳ��Ƭ������������һ��֮��ȫ������������20��Σ�ʨ��Ӱҵ������10���׷�ɣ�����������������ߡ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/gansidui3/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/gansidui3/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/gansidui3/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/gansidui3/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/gansidui3/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/gansidui3/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/gansidui3/7.jpg" onload="thumbImg(this)" alt="" /><br />
<br />',N'���ڴ˴ε������Ĺ����У����ᣨʷ̩���Σ������˹��˹����ɭ��˹̹ɭ �Σ����εĸ����ӽ�����ӭս����ս�ѡ����ľ������ۿ����¡�˹ͨ���˹��÷��������ɭ �Σ���˹ͨ���˹����������������һ�Σ��������Ը������´��˾�ɱ�����������һ�����㣺Ϊӭսǿ�У����������������ע������ѪҺ����ļ�˸����ǿ�ĸ߿Ƽ�ս�����������䳤ǹӲ�ڵ�Ӳ��ǰ����չ��һ�����ս��ӰƬ���������ᡤ��˹������ά˹�ء�ʷ̩�� Sylvester Stallone �Σ���������ӵ��ϻ�����ɭ��˹̹ɭ Jason Statham �Σ������ɣ��ŷ������ Dolph Lundgren �Σ����˼�ʻֱ�����ٳֻ𳵣��ȳ��˱���������',N'����/����',N'����/ð��/���',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-618612-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904189&amp;k=a1b7e48e6c2b6aebfb6750b296c3dc0c&amp;t=1412261715&amp;sid=a58c6wWQM3PtTmpAUzyIQNj9BekUpYV2K%2B71O5FMt1s5gqU',N'2014/10/2 22:57:16',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 394,N'����14ȫ�������ڴ����ơ������ν��4����HD-1024.MP4�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/bianxingjingang4/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/bianxingjingang4/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ν��4����������/���ν�գ���������(��)/���ν��4�����ʱ��/���ν��4/��4<br />
Ƭ��������Transformers: Age of Extinction<br />
�ꡡ������2014<br />
�������ҡ�����/�й�<br />
�ࡡ���𡡶���/ð��/�ƻ�<br />
����ԡ�Ӣ��<br />
�֡���Ļ��������Ļ<br />
�������֡�6.2/10 from 98,468 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2109248" target="_blank">http://www.imdb.com/title/tt2109248</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��1.61 GB<br />
Ƭ��������165 Min<br />
�������ݡ����˶����� Michael Bay<br />
�������ݡ���ˡ��ֶ����� Mark Wahlberg ....���¡������ Cade Yeager<br />
�����������ݿ���������� Nicola Peltz ....̩ɯ������� Tessa Yeager<br />
�����������ܿˡ���ŵ Jack Reynor ....Ф�� Shane<br />
��������������� Bingbing Li ....������ Su Yueming<br />
����������˹̹����ͼ�� Stanley Tucci ....Լ���� Joshua<br />
��������������ϣ������Ī Kelsey Grammer ....���޵¡���͡�� Harold Attinger<br />
������������ͼ˹��ά���� Titus Welliver .... ������ Savoy<br />
���������������ǡ�����˹ Sophia Myles ....���� Darcy<br />
����������T��J������ T.J.Miller ....¬��˹ Lucas<br />
�������������ء����� Peter Cullen ....������ Optimus Prime (voice)<br />
����������Լ�����ŵ��� John Goodman ....̽�� Autobot Hound (voice)<br />
�����������ɱ�ǫ Ken Watanabe ....Ư�� Drift (voice)<br />
����������Լ�����ϡ��꼪ŷ John Di Maggio ....ʮ���� Crosshairs (voice)<br />
�����������޲��ء�������˹ Robert Foxworth ....�Ȼ��� Ratchet (voice)<br />
���������������ˡ�ά���� Frank Welker ....������ Galvatron (voice)<br />
������������ˡ��� Mark Ryan ....���� Lockdown (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������·�����ǰ��֥�Ӹ��ռ���ս���������������컢�ӵ��������伣��������Ҳ�ڶϱڲ�ԫ�ķ����п�ʼ��������Ȼ����һȺ���մ�Ȩ������������ſ�ѧ�ң�����ͨ���ǳ����ִ��Ʊ��ݣ��з�������ʵ�����Լ�Ԧ��ȫ�¼��������ͬʱ������Ҳ���ܵ���һ�����϶�ǿ��ı��ν�յ���в���ţ��غ�������ū�۵���аʷʫ��սһ����������<br />
<br />
���������ǳ����ҵ�֥�Ӹ��ս����������Ȼ�ɹ������˰��컢�����֣�ȴҲ�õ����˶�����ʧȥ��Ӧ�е����������ء�������������齨�ġ�Ĺ�硱���Ӷ����еı��ν�ս����޲�����ɱ��һʱ�������˺Ͱ��컢ȫ���ڵ��򲻼�����Ӱ��ĳ�죬��ס�ڵ��ݵ����ǻ�е�����ҿ��¡�������ˡ��ֶ����� Marky Mark �Σ������һ���ƾɵĿ�����ͷ��˭֪�Ǿ��Ǵ��������е��������������������ᵽ��Ϣ��Ĺ�粿�ӷ�ӵ���������Ѻ�������������˿���һ�ң�Ҳ��ɢ���ڸ�����������������ȡ����ϵ����һ���棬���������ѧ�Ҵӱ��ν�յĲк��л�֪�����Ǳ��ε����ܣ�����ͼ�������������գ�����̥��������ľ������������ǵĵ�����Ʒ�Լ���������<br />
<br />
������һ�ֵ�Σ�������������������ٸ�������ѡ���<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
�����˶����������ع顶��4������Ϊ�����¼��µĻ���Ӱ�ǿ�������Ը��Ϊ���ν����3��Сʱ�Ķӣ��������þ��鲻��ĵ����ģ��Ա�֤ӰƬ������<br />
<br />
����������������������ҡ�ĳ��ͷ�ȥ���˶������İ칫�ң���ȷ����Щ�����ڵ�Ӱ����һϯ֮�ء�<br />
<br />
�����˶����������þ�ʯǿɭ���ˣ���ϧʱ����г�ͻ����Ȼ��������Ǯ�š�����λ������Ҫ�ؾ��ˡ�<br />
<br />
���ⲿӰƬ��Լ����18���±��ν�ս�ɫ��<br />
<br />
�����˶���������������������һ��ӵ��850��ĵ�Ӱ��ҵ��ҵ���顣<br />
<br />
������4�����ײ�����4K IMAX 3D��Ӱ������ĵ�Ӱ��һ̨��Ӱ���ͼ�ֵ100����Ԫ��<br />
<br />
����ֵ������Ԫ��4K IMAX 3D��Ӱ������װ���˼�ֵ5�������ı�ʱ�ݿ��綥����<br />
<br />
�����˶�������������Ʊ��ν�ձ���Ϊ��������������ÿ����Ӱ�ﶼ������ս��һ������<br />
<br />
�����˶�������һ��ʼ��������һϵ������۷�������ڣ�������Ϊ�й����ڡ��ع���һЩƬ�Ρ�<br />
<br />
���������������ӰƬ�еġ���ɫ������ܴ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/bianxingjingang4/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/bianxingjingang4/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/bianxingjingang4/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/bianxingjingang4/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/bianxingjingang4/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����·�����ǰ��֥�Ӹ��ռ���ս���������������컢�ӵ��������伣��������Ҳ�ڶϱڲ�ԫ�ķ����п�ʼ��������Ȼ����һȺ���մ�Ȩ������������ſ�ѧ�ң�����ͨ���ǳ����ִ��Ʊ��ݣ��з�������ʵ�����Լ�Ԧ��ȫ�¼��������ͬʱ������Ҳ���ܵ���һ�����϶�ǿ��ı��ν�յ���в���ţ��غ�������ū�۵���аʷʫ��սһ���������������ǳ����ҵ�֥�Ӹ��ս����������Ȼ�ɹ������˰��컢�����֣�ȴҲ�õ����˶�����ʧȥ��Ӧ�е����������ء�������������齨�ġ�Ĺ�硱���Ӷ����еı��ν�ս����޲�����ɱ��һʱ�������˺Ͱ��컢ȫ���ڵ��򲻼�����Ӱ��ĳ�죬��ס�ڵ��ݵ����ǻ�е�����ҿ��¡�������ˡ��ֶ����� Marky Mark �Σ�',N'����/�й�',N'����/ð��/�ƻ�',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-617431-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902361&amp;k=9709ebe65f8cda362bf23cf36ed5f9bd&amp;t=1412261720&amp;sid=6ca76EhisSZbh1z%2F2Gmy%2FuomrckILT9NLLwdBfW6khnQAxs',N'2014/10/2 22:57:16',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 395,N'����14����Ѫ��㤷����ɱ���ǡ���BluRay-720P.MKV�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/killers/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/killers/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/killers/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������ɱ����<br />
Ƭ��������Killers<br />
�ꡡ������2014<br />
�������ҡ�ӡ��������/�ձ�<br />
�ࡡ���𡡶���/����/����/���<br />
����ԡ�����/ӡ����/Ӣ��<br />
�֡���Ļ�����ļ�<br />
�������֡�6.9/10 from 1,386 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2409300" target="_blank">http://www.imdb.com/title/tt2409300</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.12 GB<br />
Ƭ��������137 Min<br />
�������ݡ���Ī���������� Timo Tjahjanto<br />
����������Kimo Stamboel<br />
�������ݡ�����һ�� Kazuki Kitamura<br />
���������������� Rin Takanashi<br />
�����������¿��������� Oka Antara<br />
����������Ray Sahetapy<br />
����������Epy Kusnandar<br />
����������¶�ȡ����� Luna Maya<br />
�����������ڴ�ѿ�� Mei Kurokawa<br />
����������Tara Basro</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����һλ����ɱ�˵�ӡ����ߺ�һλ�ձ�������ɱ�֣�������ż����չ��һ����̬��ɱ¾��ƴ��������ɱ��ֻ����Ϊ���ǿ��ԣ���һ����˭����ӰƬ��Χ����ʥ��˹��Ӱ����ҹչӳ��Ԫ����Mo�ֵ�ִ����ӡ����ԱOka Antara���ձ���Ա����һ�����ݡ�<br />
<br />
�����ձ�������Ұ�壨����һ�� �Σ�������������´�����������Ů�Ա�����Űɱ��ȫ���̣����������ϴ����硣ĳ��ҹ����ż���������϶�ľûݣ������� �Σ���ܣ�Ұ��Ծûݲ�������Ȥ���˺�ÿ��������Ů�������Ļ��ꡣ���ĳ����þû�����Ц�ݣ��������������顣<br />
<br />
����ӡ���żӴ��������е����ɼ��߰��ɣ�Oka Antara �Σ������ڽ�¶��Ȩ��̰�۵���ʵ��ȴ����Է����µ����壬�����ɴ�����ǰ��δ�е�����֮�С�ĳ�������⿴��Ұ�����Ƶ���Ӷ�֮��ȴ��Σ�յ��������ĵ���������żȻɱ��һ����ǹ��ͽ��������ͽ��ʬ�����������������ϡ�Զ�ڶ�����Ұ�忴�������Ƶ��ֱ����ʶ��ͬ�����˵Ĵ��ڡ���������ͬ���е����ߣ���ʼ����Ϊ���յĽӴ�����<br />
<br />
������Ƭ���ܳ��ǳ���������������ھ�λ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/killers/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/killers/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/killers/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/killers/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/killers/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/killers/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��һλ����ɱ�˵�ӡ����ߺ�һλ�ձ�������ɱ�֣�������ż����չ��һ����̬��ɱ¾��ƴ��������ɱ��ֻ����Ϊ���ǿ��ԣ���һ����˭����ӰƬ��Χ����ʥ��˹��Ӱ����ҹչӳ��Ԫ����Mo�ֵ�ִ����ӡ����ԱOka Antara���ձ���Ա����һ�����ݡ��ձ�������Ұ�壨����һ�� �Σ�������������´�����������Ů�Ա�����Űɱ��ȫ���̣����������ϴ����硣ĳ��ҹ����ż���������϶�ľûݣ������� �Σ���ܣ�Ұ��Ծûݲ�������Ȥ���˺�ÿ��������Ů�������Ļ��ꡣ���ĳ����þû�����Ц�ݣ��������������顣ӡ���żӴ��������е����ɼ��߰��ɣ�Oka Antara �Σ������ڽ�¶��Ȩ��̰�۵���ʵ��ȴ����Է����µ����壬�����ɴ���',N'ӡ��������/�ձ�',N'����/����/����/���',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617837-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903183&amp;k=846261f2fe9dbb49bb87fbbbeb00d2da&amp;t=1412261716&amp;sid=f6bcStP7xd%2BVIrAybClpUoBay7cqPH6IBRtBuLX9YAR2jd0',N'2014/10/2 22:57:16',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 396,N'����14���Կƻÿڱ��ؿ������źš���BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/xinhao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/xinhao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������ź�/��졤Ѷ(̨)/����Ѷ<br />
Ƭ��������The Signal<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡿ƻ�/���<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.3/10 from 11,995 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2910814" target="_blank">http://www.imdb.com/title/tt2910814</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.61 GB<br />
Ƭ��������97 Min<br />
�������ݡ��������ȿ˰� William Eubank<br />
�������ݡ������١�˼���� Brenton Thwaites ....Nic<br />
��������������˹����ʲ���� Laurence Fishburne ....Damon<br />
��������������ά�ǡ���� Olivia Cooke ....Haley<br />
������������������ Beau Knapp ....Jonah<br />
����������Patrick Davidson ....Boy Playing Claw Game<br />
����������Jeffrey Grover ....Gas Station Clerk<br />
����������Roy Kenny ....Hazmat 1<br />
����������Timothy Holmes ....Hazmat 2<br />
����������Ricardo Campos ....Hazmat 3<br />
����������Drew Sykes ....Hazmat 4<br />
�����������ա�ɯҮ Lin Shaye ....Mirabelle<br />
����������Robert Longstreet ....James</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����˫�����˵���ˣ����׶١�˼Τ�� Brenton Thwaites �Σ���Ů�Ѻ��򣨰���ά櫡���� Olivia Cooke �Σ��Լ��ø���Լ�ã����ڡ����� Beau Knapp �Σ����ڽ���һ��ϲ�ֲΰ���������С��ڴ�֮ǰ���Ͷ�����ʡ������һֱ��Լ����׷��һ���ڽ�ѧУ��վ����ź��ͣ�����һ��ʱ���Ŭ������������ץס���͵��ټ����������Խҷ��Է���˭֪�Է����·���������߼�����һ������;������ҹĻ���٣�����׼����һ��������С����š����ڴ�ʱ���⴫������ĺ������������Ҳ�������ػ�����<br />
<br />
���������ٶ�������ֻ�������ŷ������·���İ�����ӣ�����˹����ʲ���� Laurence Fishburne �Σ��ں���˵������ʱ�˿̣����·�����һ��������������ľ޴���ı֮�У�ج����Զû�о�ͷ����<br />
<br />
������ʡ��ѧԺ�ĸ߲���Լ�ã�Ϊ�˰���˵�Ů�Ѻ����ң����˼ƻ���һ�˹�·���С����ڿ����������ϲ��Ļ�Ұʱ������Ϊ��׷��һ������ѧУ����ź��ͣ�˫����������·��������������<br />
<br />
���������ͽ��������յ�һ���ķϵ����ӣ�����˺�Լ�����������һ����ɫ����ʱ������ȴ�������������ļ���������ͬʱ��������ǰҲͻȻһ�ڣ��漴���¶���ʡ���¡�<br />
<br />
��������˻ָ���ʶ֮���������Լ�������������һ��İ����ʵ���ң�ֻ�ܺ�һ��ÿ�������������������Ӵ�����ϵ����Ȼ�Է���ͣ�ͳ����⣬��������¶�����Ҫ�ҵ�ͬ��һ������ʱ��ȴû�뵽����һ���������ı֮�С���<br />
<br />
<font color="red"><strong><font size="3">Ļ������</font></strong></font><br />
<br />
������Ƭ�ĵ����������ȿ˰��ν������Ϊ����������������Ϊ���¼��Ź�ְ�Ĺ�����㾭�飬Ϊ������Ӱ�ͻ���������з�������˷ḻ�ľ��顣��ʵ�ϣ����ڻ��洦���ϵĹ���츳�����ⲿ�������źš���Ҳ��ν�ǵõ��˳�ֵ�չ�֡����������ʥ��˹��Ӱ�������ȿ�����Ƭ�Ĺ����ǣ������������ӰƬ�������µĻ����������������ӰƬԤ���еĴ󲿷ֶ������˺�����Ч�����ϣ���ΪӰƬ�����˾�տ������Ч�������������ȿ˰�Ĺ��������ϣ�Ҳͬ���������㡪��ȥ����������ˡ��ֶ�����������������͵Ⱦ������ݵ�ӰƬ������֮�ǡ��ĸ����ݡ�����Ϊ��ƬΨһ�����Ǽ���Ա������˹����ʲ������ν�����������������ߵ�����ƺ����ƿ���ȫ�֣�Ҳ�����Ź��ں����˹����С��һ���������һ������֮�á�<br />
<br />
������ʵ�ϣ���Ϊһ���ɱ�����ȴ���������Ŀƻþ��Ƭ�����źš������ǴӾ��µ�����Ǹ����ǿ�ҵ����ݷ��棬���Ʋ�����һ��������Ʒ����ˣ���ʥ��˹��Ӱ���Ϸ�ӳ��ĸ�ƬҲ�����ջ��������ֻ�������ۣ���ϲ���Ĺ���������Ϊ�ٽ��Ӱ����ʽ���ù���ģ���ڴ���Ļ�ϸ�Ц��ϲ���Ĺ�������ƬΪ����ƻ�Ƭ�е����㣬���������ڴ����ڱ�����ӳ��ĵڶ��ε�����ȥ�ٿ���Ƭ���Գ�ֵ�ȥ�͵��ݵ���һ����ʶ�������ϴ���Ļ̽������������<br />
<br />
<font color="red"><strong><font size="3">ӰƬ���ۣ�</font></strong></font><br />
<br />
����ý������52�֣��÷��ѷ������ʶ�54%��34��Ͷ�����ʷ���29���ҳ��÷��ѣ�����������<br />
<br />
�����������������������źš���һ�����츲�صĹ�·��Ӱ�������ⲿӰƬ�����Ҿ�㤣���Ϊ���ڴ����˲�ͬѰ�������⡱�����Ⱥܶ��Ӱ���ӷ����Ͳ��ܻ�ӭ�����ڹ�������֮��ȴ��һ�����˾��޵��ںˡ�������Ȼ���ݷǳ����ᵫȴӵ���Ӿ�����Ķ����츳���������õ�����=ȴ���޵���Ч�������Ծ�ϲ����������ȥ���ơ�����ħ�硷�͡�X���������ۺ��壬����ȡ����֮������Ȼ���ɡ���<br />
<br />
��������������������ӰƬ�����������Ϊ�ǵĹ�Ū���飬��ֵĴ�ת����������ȻʧЦ����������ӰƬֵ�óƵ��ľ����Ӿ���񣬳���֮�����һЩ����ƫִ���Ļ����������������θС���ʵ��Ƭ�ǳ���ʽ���������ڵ��ݴ���Ļ���������һ�������˰�ġ�Ů�ײ����������ҵó�������һ�����ֻ��һ���������ͦ��Ȥ�ġ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/xinhao/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/xinhao/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/xinhao/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/xinhao/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/xinhao/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��˫�����˵���ˣ����׶١�˼Τ�� Brenton Thwaites �Σ���Ů�Ѻ��򣨰���ά櫡���� Olivia Cooke �Σ��Լ��ø���Լ�ã����ڡ����� Beau Knapp �Σ����ڽ���һ��ϲ�ֲΰ���������С��ڴ�֮ǰ���Ͷ�����ʡ������һֱ��Լ����׷��һ���ڽ�ѧУ��վ����ź��ͣ�����һ��ʱ���Ŭ������������ץס���͵��ټ����������Խҷ��Է���˭֪�Է����·���������߼�����һ������;������ҹĻ���٣�����׼����һ��������С����š����ڴ�ʱ���⴫������ĺ������������Ҳ�������ػ����������ٶ�������ֻ�������ŷ������·���İ�����ӣ�����˹����ʲ���� Laurence Fishburne �Σ��ں���',N'����',N'�ƻ�/���',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-618522-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904098&amp;k=e43690c073d9099ac3b90e26f357d923&amp;t=1412261716&amp;sid=d7b32XCZu6u%2FGV%2BMyfYXGXQ%2BINNvLQS3AAVXsIoj5VzjCTg',N'2014/10/2 22:57:16',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 397,N'����14���ơ����׷�ħŮ��֮�����������HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/baifamonv/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/baifamonv/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������׷�ħŮ��֮�������/�׷�ħŮ��3D<br />
Ƭ��������The White Haired Witch of Lunar Kingdom<br />
�ꡡ������2014<br />
�������ҡ��й�/�й����<br />
�ࡡ���𡡶���/����/���/����/��װ<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�������֡�4.8/10 from 76 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3465456" target="_blank">http://www.imdb.com/title/tt3465456</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��994 MB<br />
Ƭ��������100 Min<br />
�������ݡ���֮�� Jacob Cheung<br />
�������ݡ������� Bingbing Fan ....������<br />
���������������� Xiaoming Huang ....׿һ��<br />
��������������׿ Vincent Zhao ....�����<br />
����������ͯ�� Yao Tong ....�����<br />
������������ѧ�� Xuebing Wang ....Ľ�ݳ�<br />
�����������ߴ�� Dahong Ni ....κ����<br />
���������������� Shera Li ....��ɺ��<br />
����������Ҷͯ Cecilia Yip ....���Ʒ�<br />
�������������ٿ� Yikuan Yan ....��̫��</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
���������ܶ�׿����������׿һ���������� �Σ��ոճ�Ϊ�䵱�ɵ��������ˣ����������������������֮��ǰ�����ǽ�����衣˭֪����κ���ͣ��ߴ�� �Σ������������üٺ��趾���ǻ����õ������ڣ�֮��ѳֳ������ɳ�������׷ɱ׿һ�������ͬʱ�����¸�������죨����׿ �Σ�ͼı����׿���������߾��������ħ��Ů������ɲ�������� �Σ�����ս���й�һ��֮Ե������ɲ��׿һ���ٶ���꣬��׹�밮�ӡ�Ȼ���þ���������������ħצ�ֱ���������ɲ���ڵ�����կ�Լ��䵱ɽ������֮�˱��ȷ��롣Ϊ����䵱����֮�ѣ�׿һ��ֻ�����踺�ع�˳�˵�����֪׿һ��Ȣ����Ϣ������ɲһҹ��ͷ��<br />
<br />
��������֮���Ů����ǧ����������<br />
<br />
��������ĩ�꣬�������ܣ��鳼������������˻�����ս��һ��������<br />
<br />
�����������߾����������࣬ħ����Ů����ɲ�������� �Σ�Ϊ���������ɱ����Ĺٱ���ɱ��ȴ����Ա�޻���ɱ���ܶ�׿����֮���֣���ʱ������ɲ����ħ�̱��ͨ��Ŀ�ꡣ<br />
<br />
������һ���棬�����䵱�����������ƾٵ���׿һ���������� �Σ�Ϊ�������ţ����������뾩����ʥ�ϡ��ʵ۳Ժ����һ���غ�����͢������ȫ��׽��׿һ����<br />
<br />
������ʱ��׿�Ѿ��뾩����������һ��żȻ��������ʱ��ʶ����ɲ�������ֶΣ����˲�����ʶ��׿������ص�����կ������������Ա��֮Ϊ��ħ�ߡ��ĵط�����ʵ��������Դ��׿��ʶ��Ĵ������������徫�����������Խ�׹�밮�ӣ�����������<br />
<br />
������������������կ׽��׿һ����ͬ�½ҷ�����ɲ��ɱ��׿����������׿һ��үү֮���֣�׿��ʹ�뿪���ӽ����Σ���������Ϊ��׿�����Ծ���׿�̶������䵱��Ͷ���鵳��Ȣ�鳼֮Ů�����յ���Ϣ�����·���ִ����׿�����ȥ����һҹ�䣬��֮�ڷ�����ɫ�������ɡ���<br />
<br />
����һ�������ĳ���������ע�������ˣ����ǵ�Ե���ܷ�Խ��а������������<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ӱ��2012��11��2����ʽ������2013��4��2��ӰƬɱ�ࡣ<br />
<br />
����Ӱ������ص���ҪΪ�������졢���������<br />
<br />
�������ڼ侭�����Ϻ�����ѩ��������Ƭ�����˵����⡣�����ڵ�֪�������˺�Ϊ�˽�ʡ��֧���ᵽ��80ԪǮһ��ļ�ª�д���������Ŀ�֧������ʳס����ʡ�������Ѹ��ྭ���õ������ϡ�<br />
<br />
���������뷶�����ڡ��׷�ħŮ��֮����������ǵ�һ������������<br />
<br />
����֮ǰ�Ź��ٰ汾��Ƚϣ���Ӱ���һ�����Ӿ�Ч�����������������ﶼ�иı䡣<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/baifamonv/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/baifamonv/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/baifamonv/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/baifamonv/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/baifamonv/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�������ܶ�׿����������׿һ���������� �Σ��ոճ�Ϊ�䵱�ɵ��������ˣ����������������������֮��ǰ�����ǽ�����衣˭֪����κ���ͣ��ߴ�� �Σ������������üٺ��趾���ǻ����õ������ڣ�֮��ѳֳ������ɳ�������׷ɱ׿һ�������ͬʱ�����¸�������죨����׿ �Σ�ͼı����׿���������߾��������ħ��Ů������ɲ�������� �Σ�����ս���й�һ��֮Ե������ɲ��׿һ���ٶ���꣬��׹�밮�ӡ�Ȼ���þ���������������ħצ�ֱ���������ɲ���ڵ�����կ�Լ��䵱ɽ������֮�˱��ȷ��롣Ϊ����䵱����֮�ѣ�׿һ��ֻ�����踺�ع�˳�˵�����֪׿һ��Ȣ����Ϣ������ɲһҹ��ͷ������֮���Ů����ǧ��������������ĩ�꣬�������ܣ��鳼����������',N'�й�/�й����',N'����/����/���/����/��װ',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-617425-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902360&amp;k=02bd241ddb350adb591c1599b2d20234&amp;t=1412261721&amp;sid=1e59BMdNmkWQrva48QOU3XDlRcHsyDxM7WIfThge3VOaaL0',N'2014/10/2 22:57:17',N'wall',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 398,N'���߷ִ�߶�������������ҹδ�ߡ���BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/yeweimian/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/yeweimian/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������ҹδ��/�����ˮ(��)<br />
Ƭ��������Cashback<br />
�ꡡ������2006<br />
�������ҡ�Ӣ��<br />
�ࡡ����ϲ��/����/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.3/10 from 63,588 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt0460740" target="_blank">http://www.imdb.com/title/tt0460740</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.86 GB<br />
Ƭ��������102 Min<br />
�������ݡ�����������˹ Sean Ellis<br />
�������ݡ�Ф�����ȸ�˹���� Sean Biggerstaff&nbsp;&nbsp;....Ben Willis<br />
�����������������š�����˹ Emilia Fox&nbsp;&nbsp;....Sharon Pintey<br />
�������������˶����Ͽ�ɭ Michael Dixon&nbsp;&nbsp;....Barry Brickman<br />
����������˹ͼ���ء��ŵ��� Stuart Goodwin&nbsp;&nbsp;....Jenkins<br />
������������Ъ�����׶� Michelle Ryan&nbsp;&nbsp;....Suzy<br />
������������ܽ�ݡ�����˹ Daphne Guinness&nbsp;&nbsp;....Anna Shapiro<br />
�������������򡤹���� Keeley Hazell&nbsp;&nbsp;....Frozen Girl in Sainsbury''s (as Keeley Hazel)<br />
����������Ф��������˹ Shaun Evans&nbsp;&nbsp;....Sean Higgins<br />
������������櫡��޲��� Nia Roberts&nbsp;&nbsp;....Woman at the Till<br />
��������������¡�����˹ Jared Harris&nbsp;&nbsp;....Alex Proud (uncredited)</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����Ben Willis��Ф�����ȸ�˹�����Σ���������ѧԺ�Ͷ���ѧ��������Ů����Suzy˦��֮�󣬿�ʼ���ʧ�ߡ���һ����ҹȥ���������������п����˳��е�һ����Ƹ�����ǣ�Ϊ����ĥ����������ʱ�䣬�����������ص���ҳ�������ࡣ�����ܹ���һ��Ů����ԱSharon Pintey���������š�����˹�Σ����ĸ��й���Ա����๤��Sean Higgins��Barry Brickman����Ben�ͺ������Ĳ��Ṧ��ȴһֱ���������Brian''Kung Fu''����һ�����ϰ�Jenkins���ڳ������棬Sharon���Ǹо�ʱ������ر�����Sean Higgins��Barry Brickman���ǿ��Ÿ�������Ц��Brian''Kung Fu''�������ʱ������ʾ���ָ�Ц�Ĺ���������������˸���ȥ�����������ˡ��ڿ��﷦ζ��ҹ�๤��ʱ�����ʩչ�Լ����˷ḻ������������ͬ�º͹˿�ȫ��������Լ��Ժ��б�֯�Ĺ��µĽ�ɫ��������ʱ�䡰��ʱͣ�١����ܹ��������������֮�����Ա���ϸ�ʹ��ݵ�������������������Ȼ�����Լ����еı�ȥ������ǡ����Բ�̫��˵����Ů����ԱSharon�ƺ����ر�ĺøУ��ƺ������Ů���������ܹ��ҵ����Benʧ�ߵİ취��һ�Σ�Sean Higgins��Barry Brickman����������Ben����һ����Ц��Ȼ�������������Ц��Ben�߽����µİ����������Ŀ�ꡣ<br />
<br />
<font color="red"><strong><font size="3">һ�仰���ۣ�</font></strong></font><br />
<br />
����ӰƬ�����Ż��ǵ�������Ĭ������Ф��������˹�ɹ��ذ�ʱ����뵽������ҹδ�ߡ�֮�У��������˹���һ�������Ĺ��±������Ӷ��ھ����м޽���һ����������ɫ�ʵİ�����¡� <br />
���������ա���־ <br />
<br />
��������Ȼ�����ǲ�֪�����ݾ�������ѱ�Ƭ�ĳɴ���������Ϣ�������ٿ�ʽ�ĳ����ڻ������һ������ʹ���������������á�����װ����FHM���Ķ��߿�����Ҳ�����ɵ�һ����Ӱ��������λ��Ļ��Ů����Ӣ������Ф��������˹������Ƕ��߼�ˡ� <br />
������eye WEEKLY����־ <br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
��������������ҹδ�ߡ� <br />
<br />
����2004����һ�����ܺ����Ķ�Ƭ������ҹδ�ߡ�����Ƭ�ܳ�18���ӣ������ж���֮����ʱ�䶼�����˹������󣬻��治����¶���Ե�Ԫ�أ����MPAA����һ��������ϡ�R�����ı�ǩ����ʵ�����ǵ�Ը�����þ���ʵ�֣���Ϊ��Ƭ���ݡ���35���ʱ����Ӱʦ����浼��Ф��������˹��ʹ�������һ����Ƭ�汾�ġ�����ҹδ�ߡ������ұ�֤�ᱣ����Ƭ�е�һ�С��� <br />
<br />
�������������Ǳ�������������102���ӵĳ�Ƭ������2006�������˼��档����˹��2004��Ķ�Ƭ����һ�����������18���ӵ�С���ӣ�������һλӢ�����д򹤵Ĺ�Ա��Ϊ�˴�ҹ�������ζ�İ�Сʱ����ʱ�䣬����������޾������󡣱�Ƭ���и��ӳ�ԣ��ʱ��Ϳռ䣬��չ�������ġ���������Ӱ��������Ben(Ф�����ȸ�˹������Ϊ����֪�Ľ�ɫ�����ڹ������ϵ�е�Ӱ�а��ݵİ����������)��һ�������츳������רҵѧ�����������Լ�����ʱ��ͣ�͵����������߿����෴��ͨ��ͣ�ٴӶ���ʱ���ߵø��졣 <br />
<br />
�������˵�����������İ��� <br />
<br />
����ӰƬ����������������������Ψ�����԰�������Ư���������ַ���������ҹδ�ߡ�ͨ�������ϳ����ʱ��ͼ�����Ϸ��Ϊ���ڽ�����һ�����ϳ���İ�����¡������Լ������ľ籾��ȶ��ԣ���λӢ���������������㼼�����Ե�Ҫ���ӵ���Ӧ�ֺ���������ȻƬ���漰��������Է��棬����Ⱥ��˻��������٣�����ӰƬ��ù��������ĺÿڱ����Ϻ����׾������˼�ס��Ƭ�����������ɹ�˾(Gaumont)���������緶Χ�ķ�����ӳ����ϳ�ͨ���裬�Լ��ڱ���Ҳ��õ�һЩ������ڵ������� <br />
<br />
�������˹�Ben�ڡ�����ҹδ�ߡ��У�������ѧ��ζ�Ļ������ᴩ��������Ӱ�����������ơ������ľ����Ŷ��ܹ�����������ڹ��������£�����û��̫������԰׵ı��ݣ���Ů���ǰ������š�����˹�������ŵ������ٿ���Ϣʮ���Ǻϡ�������Ƣ��������ϰ��˹ͼ���ء��ŵ��£������й����򣩵Ĵ��ڣ�����˵��ȫ�Ǹʵ���Ҷ�����к컨�����á� <br />
<br />
����ӰƬ���������Ͱ�����̽�ֵ�����ֻ����֤���Լ�����ֹ�ڱ����ǳ�ԣ��ᴩȫƬ�ĵ����ߵ��ݳ�(�԰�)�е�ʱ��Ҳ�Ե�ʮ�ֶ��ࡣ���ڻ��棬������������ͷ��Ŀѣ���ڼ���ʦ˹���ء�����˹(Scott Thomas)�Ϳ���˹�����׿�(Carlos Domeque)�Ĵ���������ͨ��Э���£����ڻ����Ըо������ݰ���˹���˺���Ȼ��վ����Ӱ������ͬ����ȤŨ�������������ٶȺͶ����棬���ӳ���ͬ������Ӿ�Ч�������ص����˹�ͯ��ʱ���Ļ��仭�棬������Ȼ����¶�ۼ���ͬʱҲǿ����ӰƬ����ʱ�����ױ仯�����ǲ�ȷ�������⡣<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ƭ�����Ե���2004���ͬ����Ƭ������ҹδ�ߡ����ö�Ƭ���2006���78���˹��������˶�Ƭ�������ǵ����岿������Ƭ��Ψһ�������޹صĵ�Ӱ�����⻹�����ŦԼ�䱴����Ӱ�ں�֥�Ӹ���ʵ�Ӱ�ڵ���߽���12�����ʵ�Ӱ�ڵ���Ѷ�Ƭ����<br />
<br />
����Ƭ��������Ȼ�Ƕ�Ƭ�����ݣ����ڡ����������ء�ϵ���а���Oliver Wood��Ф�����ȸ�˹����(Sean Biggerstaff)��<br />
<br />
����һ����ͷ��Ben���Լ�����ָ��������������ʼ��ʱ��Ȼ���е�BenΪ�������ѿ��ŵľ�ͷ������������ͷ֮���Ѿ��������ʱ���������Ǳ�Ƭ����ǰ������ɵ��ǲ���Ƭ��ʱ�䡣���������š�����˹Ϊ��׼��������ǳ�Ϸ�����Լ���������֧��һ�����ӣ������ͷ���������ϰ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/yeweimian/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/yeweimian/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/yeweimian/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/yeweimian/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/yeweimian/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��Ben Willis��Ф�����ȸ�˹�����Σ���������ѧԺ�Ͷ���ѧ��������Ů����Suzy˦��֮�󣬿�ʼ���ʧ�ߡ���һ����ҹȥ���������������п����˳��е�һ����Ƹ�����ǣ�Ϊ����ĥ����������ʱ�䣬�����������ص���ҳ�������ࡣ�����ܹ���һ��Ů����ԱSharon Pintey���������š�����˹�Σ����ĸ��й���Ա����๤��Sean Higgins��Barry Brickman����Ben�ͺ������Ĳ��Ṧ��ȴһֱ���������Brian''Kung Fu''����һ�����ϰ�Jenkins���ڳ������棬Sharon���Ǹо�ʱ������ر�����Sean Higgins��Barry Brickman���ǿ��Ÿ�������Ц��Bri',N'Ӣ��',N'ϲ��/����/����',N'1280 x 720',N'2006',N'http://www.lwgod.com/thread-617746-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903098&amp;k=fef7c5ab5b6b294aec9de88da3b45ccd&amp;t=1412261721&amp;sid=a92eBTDsGw3F5sqZB5EFiOoJlEMuETgBc5uNHvju8bRABx8',N'2014/10/2 22:57:17',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 399,N'����13����Ц�����ޡ�����̬���桿��BluRay-720P.MKV�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/jiamian/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/jiamian/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������̬����/��̬����(��)/������(̨)<br />
Ƭ��������Hentai Kamen<br />
�ꡡ������2013<br />
�������ҡ��ձ�<br />
�ࡡ����ϲ��/����<br />
����ԡ�����<br />
�֡���Ļ�����ļ�<br />
�������֡�6.1/10 from 696 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2708764" target="_blank">http://www.imdb.com/title/tt2708764</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.54 GB<br />
Ƭ��������105 Min<br />
�������ݡ�������һ Yuichi Fukuda<br />
�������ݡ���ľ��ƽ Ryohei Suzuki ....ɫة���<br />
������������ˮ������ Fumika Shimizu<br />
����������Ƭ������ Nana Katase ....ɫةħϲ<br />
���������������� Ken Yasuda ....����<br />
�������������ٶ��� Jiro Sato<br />
����������С��Ѯ Shun Oguri<br />
�����������V����ʷ Takashi Tsukamoto<br />
�����������󶫿��� Shunsuke Daito<br />
����������������� Yoshinori Okada<br />
���������������� Ken Yasuda<br />
�������������� Tsuyoshi Muro<br />
���������������־ Narushi Ikeda</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������M��Ű�̾���SMŮ����������ĺ���ɫة��飬ƽ���Ǹ���û�õĸ���������ֻҪ�������ڿ㡢��������ȫ�����һ�������ڿ���ܱ���Ϊ���µġ���̬���ˡ���������<br />
<br />
������S�Ͷ�M֮��ɫة��飨��ľ��ƽ �Σ�ò��û�м̳��Ѳ�һ��ħ���̾��ϵ��Ļ�����Ȼ����һ���׺ݵ���ף�����Ϊ��ų����С����ʹ����ȭ����֮��Ҳû��˿���Ĺۡ�ĳ�죬�����ɰ���תѧ����Ұ���ӣ���ˮ������ �Σ��������İ��ϣ���������к���ᵽǰ��δ�е������о�����ѧ�ؼ�·�ϣ�һȺ��ͽ�������нٳ����ʣ������и��п�����ǵİ��ӡ�Ϊ�˾ȳ�Ů����������Ǳ�����У�˭֪żȻ�����ִ�֮�󣬾�Ȼ���⻽������Ǳ�ص�ǿ���������ڴ�֮���������̬���棬��ѹ���Ե�ʵ�����ܷ�ͽ��Ҳ��ӶԱ�̬���������Ľ֮�顣ĳ�죬����ͳ���ܱ�ѧУ�Ķ񺺴����������ѧУ���ɴ������˺ͱ�̬������ճ־õ�ս������<br />
<br />
������Ƭ���ݰ������ܵ�ͬ������ԭ���ıࡣ<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/jiamian/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/jiamian/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/jiamian/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/jiamian/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/jiamian/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����M��Ű�̾���SMŮ����������ĺ���ɫة��飬ƽ���Ǹ���û�õĸ���������ֻҪ�������ڿ㡢��������ȫ�����һ�������ڿ���ܱ���Ϊ���µġ���̬���ˡ�����������S�Ͷ�M֮��ɫة��飨��ľ��ƽ �Σ�ò��û�м̳��Ѳ�һ��ħ���̾��ϵ��Ļ�����Ȼ����һ���׺ݵ���ף�����Ϊ��ų����С����ʹ����ȭ����֮��Ҳû��˿���Ĺۡ�ĳ�죬�����ɰ���תѧ����Ұ���ӣ���ˮ������ �Σ��������İ��ϣ���������к���ᵽǰ��δ�е������о�����ѧ�ؼ�·�ϣ�һȺ��ͽ�������нٳ����ʣ������и��п�����ǵİ��ӡ�Ϊ�˾ȳ�Ů����������Ǳ�����У�˭֪żȻ�����ִ�֮�󣬾�Ȼ���⻽������Ǳ�ص�ǿ���������ڴ�֮���������̬���棬��ѹ���Ե�',N'�ձ�',N'ϲ��/����',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-618521-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904097&amp;k=3f588c72ce29406755d5a4d4a4175c42&amp;t=1412261717&amp;sid=8533Cv6aGO2K8COveNgidZQjQfTC%2BgFmUqP8oTaNvasLufs',N'2014/10/2 22:57:17',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 400,N'������14��ħ�þ��ơ�����˯ħ�䡿��BluRay-1080P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������˯ħ��/��ħ�󣺳�˯ħ��(��)/��ħŮ����˯ħ��(̨)/���շ�ɭ/�ڷ�ħŮ/˯�����⴫<br />
Ƭ��������Maleficent<br />
�ꡡ������2014<br />
�������ҡ�����/Ӣ��<br />
�ࡡ���𡡶���/���/ð��/��ͥ<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.3/10 from 103,916 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1587310" target="_blank">http://www.imdb.com/title/tt1587310</a><br />
�ļ���ʽ��x264 + 5.1 DTS @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1920 x 1080</font></font><br />
�ļ���С��6.23 GB<br />
Ƭ��������97 Min<br />
�������ݡ��޲��ء�˹��ķ���� Robert Stromberg<br />
�������ݡ��������ȡ����� Angelina Jolie ....���շ�ɭ Maleficent<br />
�������������������� Elle Fanning ....���幫�� Princess Aurora<br />
����������ɳ���С������� Sharlto Copley ....˹�ط����� Stefan<br />
������������ķ������ Sam Riley ....���߶� Diaval<br />
���������������١�˼���� Brenton Thwaites ....�������� Prince Phillip<br />
������������˿������ά�� Lesley Manville ....�������� Flittle<br />
������������÷���˹���� Imelda Staunton ....��Ҷ���� Knotgrass<br />
������������ŵ��̹�ն� Juno Temple ....��ާ���� Thistletwit<br />
�������������������ڶ� Ella Purnell ....��Ů���շ�ɭ Teen Maleficent<br />
�����������ܿ�ɭ������˼ Jackson Bews ....����˹�ط� Teen Stefan<br />
������������������Ī���� Isobelle Molloy ....��ʱ���շ�ɭ Young Maleficent<br />
�������������˶���ϣ��˹ Michael Higgins ....��ʱ˹�ط� Young Stefan</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������շ�ɭ���������ȡ������Σ�����һ���������࣬ӵ�г���ܹ�������������ӣ�������������͵�ɭ��������Ȼ�����õ�ʱ�����Ƕ��ݵģ�����ͻ�����������Ϯ�����շ�ɭ��ս�����𽥳ɳ�Ϊ��Ƭɭ�ֵ��ػ��ߣ�ͬʱҲ���ܵ������鱳�ѣ��Ӵ��������鿪ʼ�����ᣬ�Ժ�ֻʣ�������ͷ��Ϊ�˱������������������Ů�����幫��ʩ�¶��䣻Ȼ�����Ű���ĳɳ������շ�ɭ������ʶ��������λС���������ܸ��������������ƽ��Ҳ���ܸ��Լ����������Ŀ��֡�<br />
<br />
������������͵�Ħ������������Ĵ�ɭ���У������뾫���г�ദ���������ǡ���һ�꣬������а��С��Ů���շ�ɭ����ɯ������Ī���� Isobelle Molloy �Σ�����������С�к�˹�ط������˶���ϣ��˹ Michael Higgins �Σ���������С�޲£���Ϊ�����޼�ĺ����ѣ�����������ػ���׹�밮�ӡ��������������������˹�ط���ɳ���С������� Sharlto Copley �Σ���ȥ�����յĴ��棬�������̰���������������շ�ɭ���������ȡ����� Angelina Jolie �Σ���ɳ�Ϊ����ǿ�����Ů���޴���������Ħ��������չ��˹�ط�Ϊ�˳�Ϊ��λ�̳��ߣ����̵ظ��������շ�ɭ�ĳ��<br />
<br />
���������ʹ�������Ĵ��ˣ������շ�ɭ�����������޵����ħŮ��Ϊ�˸�������˹�ط���Ů�����幫�������������� Elle Fanning �Σ�ʩ���˳�˯ħ�䡭��<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
��������Ƭ������İ������ȡ�������̸����������ɫʱ�ƣ����շ�ɭʵ������һ����ΰ����ˣ������ǲ������ġ�����Ϊ������մ�ֶ����ڴ���ԭ�й��µ�ͬʱ�����ǶԹ������˼򵥵ļ򻯻���ת�����ǽ���һ������Ĺ��£�&quot;���ǵ���ս��վ����һ���Ƕ�ȥ������&quot;��<br />
<br />
����ӰƬ����Ϊ���ǵ����˹����շ�ɭͷ�ϳ��ǣ�Ƥ����ɫ���ܱ���ɺ���ɫ�ľ�����̸����ɫ����ʱ��������������������У���ţ���ǲ���ȱ�ٵģ�&quot;ţ��װ&quot;���ʺ��Լ�����Ҳ���л���˺ܶ���Ȥ��<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
�������Ů��ޱޱ����Ƭ�а���Сʱ��İ��幫���������ʾ��Ů�����ݽ�ɫ��ȫ�ǡ������������������������С��Ա������ͷ�ϵĽǺͼ���ָ���Ż��ˣ���������Ҫһ�������ݶ���Ϸ��ֻ����ޱޱ����<br />
<br />
��Ϊ��Ƭ�еĿ������ͣ�����ÿ����Ϸǰ��Ҫ����������Щ��������ͻ��ȧ�ǣ�����Ҳ�ǿ������ߵġ�<br />
<br />
����Ƭ�����޲��ء�˹��ķ���������Ρ��������������˹�����ɾ����͡�ħ�����١�������ָ��������˯ħ�䡷�����׶ȵ��ٵ��ݵĴ�������<br />
<br />
��������̸���Խ�ɫ�����ʱָ����������˯ħ�䡷�����ǵ����Ľ���һ������Ů�׵Ĺ��£�����Ҫ̽��һ���������һ��������а��Ҳ���ǡ��������������ɵġ���ӰƬ���ص��ǽ�¶Ů�ױ���Ĺ��¡���<br />
<br />
������Ů����Lana Del ReyΪ��Ƭ�������ϰ����������Once Upon a Dream���������ɰ������ȡ��������յ����ѡ��<br />
<br />
��ӰƬ�ǵ�ʿ�ṫ˾��ʷ������һλ���˵�������Ͷ������ӰƬ��������2010��ġ���ս�͡���<br />
<br />
����Ƭ��2014��5��30����ʼ��ӳ������Ҳ������1959��桶˯���ˡ�����ӳ55��������ա�<br />
<br />
������˯ħ�䡷�������Դ�2010�꡶�������á�ʱ������֮�����ݵĵ�һ��������<br />
<br />
����Ƭ�����շ�ɭ�İ�����һֻ��ѻ������Diaval(������ħ��devil����)�����ϰ�����ѻ�����н���Diablo�������������ж�ħ����˼��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/chenshuimozhou/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/chenshuimozhou/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/chenshuimozhou/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����շ�ɭ���������ȡ������Σ�����һ���������࣬ӵ�г���ܹ�������������ӣ�������������͵�ɭ��������Ȼ�����õ�ʱ�����Ƕ��ݵģ�����ͻ�����������Ϯ�����շ�ɭ��ս�����𽥳ɳ�Ϊ��Ƭɭ�ֵ��ػ��ߣ�ͬʱҲ���ܵ������鱳�ѣ��Ӵ��������鿪ʼ�����ᣬ�Ժ�ֻʣ�������ͷ��Ϊ�˱������������������Ů�����幫��ʩ�¶��䣻Ȼ�����Ű���ĳɳ������շ�ɭ������ʶ��������λС���������ܸ��������������ƽ��Ҳ���ܸ��Լ����������Ŀ��֡���������͵�Ħ������������Ĵ�ɭ���У������뾫���г�ദ���������ǡ���һ�꣬������а��С��Ů���շ�ɭ����ɯ������Ī���� Isobelle Molloy �Σ�����������С�к�˹�ط���',N'����/Ӣ��',N'����/���/ð��/��ͥ',N'1920 x 1080',N'2014',N'http://www.lwgod.com/thread-617345-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902160&amp;k=1def00b8f052136a1d2d499414c10517&amp;t=1412261722&amp;sid=48c8hkps3%2FHQCAPdHytBbwG%2BduUJFXXz8Q8uXNE5WvN60WY',N'2014/10/2 22:57:17',N'wall',0)
INSERT [movies] ([id],[title],[body],[class],[chicun],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 401,N'���Ƽ�������ʬ���������16��ȫ����BluRay-720P.MKV������Ӣ��',N'<font color="blue"><font size="5">������˼���ô�ҵȾ��ˣ����ļ��һᾡ��ģ�<br />
<a href="http://www.lwgod.com/thread-607520-1-1.html" target="_blank">��ʬ�����һ�����ص�ַ</a><br />
<a href="http://www.lwgod.com/thread-612194-1-1.html" target="_blank">��ʬ����ڶ������ص�ַ</a></font></font><br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/xingshizourou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/xingshizourou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������ʬ���� ������/��ʬ· ��3��(̨)<br />
Ƭ��������The Walking Dead Season 3<br />
�������ҡ�����<br />
�ࡡ���𡡶���/���/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�8.7/10 from 414,224 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1520211" target="_blank">http://www.imdb.com/title/tt1520211</a><br />
�ס�������2012-10-14<br />
����������16<br />
����Ƭ����Լ45����<br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��20.4 GB<br />
�������ݡ����������������� Gregory Nicotero<br />
����������Bill Gierhart<br />
�����������ǡ��Ѷ����� Guy Ferland<br />
��������������˹�ء�R���Ͽ�ɭ Ernest R. Dickerson<br />
�������ݡ�����³���ֿ� Andrew Lincoln<br />
����������ɯ����Τ��������˿ Sarah Wayne Callies<br />
����������������Ī��ɪ David Morrissey<br />
�������������𡤺�� Laurie Holden<br />
����������ʷ���ġ��� Steven Yeun<br />
����������Ǯ���ա����˹ Chandler Riggs<br />
����������˹���ء�����ɭ Scott Wilson<br />
�������������ס��ƺ� Lauren Cohan<br />
����������ŵ�������˹ Norman Reedus</strong></font><br />
<br />
<font color="red"><strong><font size="3">��飺</font></strong></font><br />
<br />
����ʱ�������ţ������뿹�����ó�����������������ͷ��������ˣ�����³���ֿ� Andrew Lincoln �Σ�һ���˵�����������̫����żȻ�У������ҵ���������ıӻ�������һ�������Ѿõļ�����������µ������չ����<br />
<br />
������һ�ߣ����ߵİ������ǣ����𡤺�� Laurie Holden �Σ��롰��Ů������������ȡ��ֿ����������� Danai Jekesai Gurira �Σ����ҵ���һ���ɡ��ܶ�����������Ī��ɪ David Morrissey �Σ���ͳ�εġ�������Դ������������ʮ��ϲ������ò��ƽ�����ֵ��������Ȼ�����������ô���ã�����ʱ������ƣ�һ�����˶��ֲ������ܽ���������ˮ�档��˺͡��ܶ�������������ԭ���������ȫ��㣵ġ��쵼������֮ʱ��ս�������ˡ�<br />
<br />
��������ʬ���⡷�����˾��������һ��ִ���ж������е����˶���ʡ���£������ӻ��������Ѻ�ȴ���ȵط��֣����������Ȼ�췭�ظ�������һ��������ɥʬ���У�û�л�����Ӱ��������������˸ϵ����У�ȴ�����޶�����Ӱ����<br />
<br />
�������ܽ�ʬ�����Щ���ף����ⲿ����ȴ���ؿ̻��������ɫ��������仯�������еĺڰ����ڴ������б�¶���ɡ������Ұ��ɥʬ��Ŀ�����������й��Ӳд��������������˺��Ĳ���������Щ��ʬ���⣬���л��˼�Ļ������������½����˹�һ�δ����������ͬʱ��Ҳ�������һ������ĩ���ı�����<br />
<br />
<font color="red"><strong><font size="3">��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/xingshizourou/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/xingshizourou/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/xingshizourou/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/xingshizourou/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/xingshizourou/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/xingshizourou/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/xingshizourou/7.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/xingshizourou/8.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����/���/����',N'1280 x 720',N'http://www.lwgod.com/thread-617116-1-1.html',N'http://www.lwgod.com/attachment.php?aid=901630&amp;k=338449c5b23dd46a1526df66176acb60&amp;t=1412261724&amp;sid=2247f%2Fa2ttm%2BIvOiR%2FI4VKkFXEb1IX44fcDRrfoNKS3EecY',N'2014/10/2 22:57:17',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 402,N'����14�������ɾ����Ƭ������������2����HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/chuangxiayouren2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/chuangxiayouren2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������������2<br />
Ƭ��������Under The Bed 2<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ��������/���<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��837 MB<br />
Ƭ��������84 Min<br />
�������ݡ�Ԭ�� Jie Yuan<br />
�������ݡ������ Guo-er Yin<br />
������������׿Զ Zhuoyuan Li<br />
������������԰ Chen Yuan<br />
������������ΰ Song Wei<br />
��������������� Xinya Sun<br />
�������������� Henan Li<br />
�����������¼��� Chen Jia Min<br />
�������������ӳ� Zhongchao Wang</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������ݡ�ʮ��У԰����¡�֮�׵ġ������ѱ��������ı���ɣ�������ҽѧԺ�ڷ�����һ�������������¼���һ��Ů��ѧ������������ʬ�屻�����˺����ѵĴ����¡������һȺҽѧԺ�Ĵ�ѧ���ص����ǻķ��Ѿõľ���У԰��ͬʱҲ������ɱ��Ů��ѧ��������Ů����<br />
<br />
�����������ĵ�һ�죬ҽ�ƴ�ѧ�������ã������ �Σ�������������԰ �Σ��������ࣨ�¼��� �Σ��������������� �Σ�����գ���ΰ �Σ�����Ƽ������� �Σ���������Լ�������ѻķϵľ�У����ˣ������ǰ��ѧУ������һ������ɱ�˰���һ��Ů�����ڡ������ѣ����������Ŀֲ����ԣ����˴�˵�˴��й�һ���ֵ����Ļ̡̻�����η���������Ů���˿�����У�����ʦ�����棬ִ��Ҫ�ڴ˵�ס�����졣ҹĻ���٣����ĸ��������˿���һ�������Ĺ�Ӱ����������˽�����͡�<br />
<br />
��������һ�磬����������ʧ�٣���Ⱥ��Ů�ֲ̿����������ǵ�ج��Ҳ��������ֲ���ʱ�̡���<br />
<br />
������Ƭ������Դ��һ�������ġ�è�ˡ��ٶ����ɵ�֪����̳��㷺������У԰����� �������ѣ�������������������У԰�ﳯϦ�ദ�����ѹ���֮��ľ�㤹��¡��ù���һ�����������������ڶ�У԰���С˵�����ߵ�Χ�ۣ����൱��һ��ʱ����λ�ӡ�У԰ʮ�����¡����ף���Ϊ������Ŀ�е�У԰��㤹���֮� ��һ�����������ˡ��Ĺ��·����ڹ��Ӿ�����һ�����ιųǣ���������ȴ�������˲���İ���ľ���С�������������2����ѹ��µķ����ذᵽ�˸����ײ����׽��еĴ�ѧУ԰��������ʵ������ӰƬ�Ĵ���У���ͨ��������ֲ�����л��������Ҷ�У԰�����ǧ���ָ���Ļ����빲�������˳���������ӰƬ�������ɫ��Ҳ�����˹���Ƭ��ȫ��λչʾ��У԰�еĸ�ɫ��������ۡ��ֵܡ����¡���С�ʦ����������ɫ��ī�ǳ����������Ҳ��֮�������ݡ��������ľ���������������ڶ��Ǵ���ǹ���Ƭ��Ӳ�ˣ���ӰƬ����������2���Ĵ����Ŷ����������ʣ��ھ������澫��ϸ����Ŭ�����������Ƶ�����������ӰƬ�������ֳ���ѧͬ��֮��ļ���ì������ů�ػ����������鰮�������渴����໥��֯Ҳ����׬��������ڵ�����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/chuangxiayouren2/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/chuangxiayouren2/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/chuangxiayouren2/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/chuangxiayouren2/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/chuangxiayouren2/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����ݡ�ʮ��У԰����¡�֮�׵ġ������ѱ��������ı���ɣ�������ҽѧԺ�ڷ�����һ�������������¼���һ��Ů��ѧ������������ʬ�屻�����˺����ѵĴ����¡������һȺҽѧԺ�Ĵ�ѧ���ص����ǻķ��Ѿõľ���У԰��ͬʱҲ������ɱ��Ů��ѧ��������Ů�����������ĵ�һ�죬ҽ�ƴ�ѧ�������ã������ �Σ�������������԰ �Σ��������ࣨ�¼��� �Σ��������������� �Σ�����գ���ΰ �Σ�����Ƽ������� �Σ���������Լ�������ѻķϵľ�У����ˣ������ǰ��ѧУ������һ������ɱ�˰���һ��Ů�����ڡ������ѣ����������Ŀֲ����ԣ����˴�˵�˴��й�һ���ֵ����Ļ̡̻�����η���������Ů���˿�����У�����ʦ�����棬ִ��Ҫ�ڴ˵�ס������',N'�й�',N'����/���',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-618520-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904096&amp;k=a366da41d902b4e28a03e80cc3ac839d&amp;t=1412261720&amp;sid=4228lsc%2F2NVuD4HrRFc2nTaxO%2BRbO8UMWg25clTf09qkVgs',N'2014/10/2 22:57:18',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 403,N'����14�³���߶ȡ��������ߣ��㡿��BluRay-720P.MKV�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/ling/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�����������ߣ���<br />
Ƭ��������Hana to hebi: Zero<br />
�ꡡ������2014<br />
�������ҡ��ձ�<br />
�ࡡ���𡡾���/����/���<br />
����ԡ�����<br />
�֡���Ļ�����ļ�<br />
�������֡�6.3/10 from 11 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3421616" target="_blank">http://www.imdb.com/title/tt3421616</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.14 GB<br />
Ƭ��������111 Min<br />
�������ݡ��ű�һ Hajime Hashimoto<br />
�������ݡ����������� Maiko Amano ....Misaki<br />
��������������Τ��� Noriko Hamada ....Shizuko<br />
�����������@ľ���� Rina Sakuragi ....Ruri<br />
������������Ұֱ�� Naoki Kawano<br />
����������ľ��vһ Yuichi Kimura<br />
�����������YӢ�� Hideo Sakaki<br />
������������ԭ�� Daikichi Sugawara<br />
�����������������&nbsp;&nbsp;Kanji Tsuda<br />
�����������y���v�� Yuki Tsujimoto</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����Ź���������С˵����ϵ�е��������������� ZERO�����ڱ���Ӱ���ˣ������ĵ������ڡ�̽�ɤ�BAR�ˤ��롹���ݰ���̽��ϵ���г������ű�һ�������������ɶ�ӳӳ���ṩ��ɼ�������ݡ����ϵ�е��Ĳ����󻮸�����ԭ��ع顣���е���Ա����ͨ����ѡ��ѡ���ڹ�����SM����ʱ��չ�ֳ���տ�ݼ���Ů��Ա��<br />
<br />
��������Ϊֹ�ġ������ߡ�ϵ�У����¶���Χ�������˹�����չ���ġ���������������λŮ���ݣ������������ֲ�ͬ���������硣����ѡ�л�ʤ�������������ӡ���ﷶ�ӡ��@ľ������3�ˡ�������̣�����ͬʱ��������ͬ����SM�����޵�ɫ����д���Ǳ������Ŀ��㡣<br />
<br />
�������˰��ݵ��ǣ���׷��������Υ��ӳ����վ���Хӥ�󡹣��ͱ��ף���ı�ߵĹ����У�������������еľ��������ȫ�������Ѷӵľ�������m���D�������������ѣ�Ҳ�¸ҵ���ս�������棬�������µľ��ء����ʵ�˵����ʱ������ŭ�ű����ݵ�ʱ�򣬡�ѵ�����Ժ������ǻῪ����Ц������ʱҲ���Ὣ������룬����õĻ��������㣬�Ҿ���������Ƿǳ��õľ��项����˻ش�<br />
<br />
������ȥ�����ҷ��Ǳ��Ƶġ�������ȥե��`���еĳ�Ա�����Ϊ������ϵ�е���Ҫ��Ա�����˾��ӡ����ڡ��ͱ��ס�����������̣����һ��汻�ϴ��������ϡ���˵���ǽ��������趨����ľ��飬��������ʹ�����������������ݼ������ᡣ���ǣ�����ƻ����ò���ȡ��֮�󣬵��ݵıർ����ÿ�춼�ܵ����������ӣľ���ݵ��Ǿ��ӷ�˿�������޷�����������������������������ļ�¼������ȫ�����ű����ݺ͹�����Ա�����ĺ����嶼�ſ����ǳ��������㡹��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/ling/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/ling/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/ling/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/ling/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/ling/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���Ź���������С˵����ϵ�е��������������� ZERO�����ڱ���Ӱ���ˣ������ĵ������ڡ�̽�ɤ�BAR�ˤ��롹���ݰ���̽��ϵ���г������ű�һ�������������ɶ�ӳӳ���ṩ��ɼ�������ݡ����ϵ�е��Ĳ����󻮸�����ԭ��ع顣���е���Ա����ͨ����ѡ��ѡ���ڹ�����SM����ʱ��չ�ֳ���տ�ݼ���Ů��Ա������Ϊֹ�ġ������ߡ�ϵ�У����¶���Χ�������˹�����չ���ġ���������������λŮ���ݣ������������ֲ�ͬ���������硣����ѡ�л�ʤ�������������ӡ���ﷶ�ӡ��@ľ������3�ˡ�������̣�����ͬʱ��������ͬ����SM�����޵�ɫ����д���Ǳ������Ŀ��㡣���˰��ݵ��ǣ���׷��������Υ��ӳ����վ���Хӥ�󡹣��ͱ��ף���ı�ߵĹ����У�',N'�ձ�',N'����/����/���',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617320-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902159&amp;k=604c49cac75b1c00d7545082670a4a44&amp;t=1412261724&amp;sid=144b00P9pBJGdA9KlYthO4GAcpOCACprTTaSrQbvy0PRCpU',N'2014/10/2 22:57:18',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 404,N'����14�߷ֶ���������֮�ȣ������������HD-1024.MP4�������',N'<font color="blue"><font size="5">��Ƭ�ڶ���������7.5�ָ߷֣����������۷�֮����<br />
�������ע�⣬�˰汾������һ�㣡</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/longzhigu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/longzhigu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������֮�ȣ��������/��֮��֮��������/��֮�ȴ��Ӱ/��֮��ǰ��<br />
Ƭ��������Dragon Nest: Warriors'' Dawn<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ���𡡶���/���/ð��/����<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�������֡�8.8/10 from 77 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2911342" target="_blank">http://www.imdb.com/title/tt2911342</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��901 MB<br />
Ƭ��������90 Min<br />
�������ݡ������� Yue Feng Song<br />
�������ݡ����� Ge Hu ....��˼�µ�����<br />
�������������� Tian Jing ....����������������<br />
��������������ͩ Xia Zi Tong ....Ů�׿���������<br />
�����������콿 Jiao Xu ....���鹭������������</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ԭ�������İ��������Ǵ�½������������ħ��׷���ߵ�������ϯ�������£����������º�С��������أ���������С��ׯ�����ͨ���꣬ȴΪ�˱�����ׯ���������ײ����ΪС���������Ϊ�ַ�������������Ӣ�����ˡ���֧�ɾ��顢ħ��ʦ�������ʹ���սʿ��ɵ���ʱ�������ˣ�̤����ʧ���ѾõĹŵ�����Խ����Ĵ��ֺ���õ�ѩɽѰ�ٺ����ĳ�Ѩ����ǰ����ȴ�����벻����Σ���������ǵĵ������ó̵ļ���������ľ�����������Ѹ�ٳɳ������������������ҵ������Լ���ս����������<br />
<br />
����������ҵ��������������������������а��Ĵ��������ħ��׼����ռ���������Ǵ�½�������Ϊ�˱�����������ħ������������ȴ�������Ͷ��ɾ��£����뵽�����������ء��������������� �������Ķ����С�����һ���еķ�ʦ���쿨�������ͩ ������Ҳ���Ź����ڶ����빭����������ǣ��콿 ������ǰ���������������ս�����ħ������֣����Ǻ����������Լ�������ʿ��˹�µ£����� ����������˶Ը�����������ˡ������������������˴�����ĳ�Ѩ���������������վ����飬��������ȴ��֪�������غͰ����������Լ���˹�µ¸��Դ��Ų�Ϊ��֪�����ܡ���<br />
<br />
������Ƭ���������Ρ���֮�ȡ��ı�Ķ������Ӱ����ʢ����Ϸ��˾�Ƴ����ƻ������������������µ�����Χ�ơ���֮�ȡ���Ϸǰ����<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����λ�������Ӱ�˱ȶ������٣������򡷡��������ഺ��ϵ�С������е�3����Ƭ�ˣ��������ء�÷�ܣ���ָ������������������ա������̵���������ָ�������롶��֮�ȡ��Ĵ����Ŷӣ�Ϊ���������������300�˾���������������ϵĹ��ʻ���<br />
<br />
�����ȶ���ȫ��ȫ���г���׼��Ҫ����¡�������������˵������������ʹ�������ϣ�����������ӰƬ�趨����Ⱥ�Ĺ�ȣ�����������ͬ�Ļ������Ĺ��ڣ������ϣ�Ҫ�չ˵��ӵ��䵽������ڵ����������<br />
<br />
����ƾ�衶ָ��������ù���˹���������ָ���ĸ����ء�÷�ܣ���Ϊ����֮�ȡ������˲�ͬ�ں������Ӱ���Ӿ���ϵ���������������˵�������½��������������ѧ������趨�ϣ�÷�ܸ��й������Ŷ�һ��Ѱ�ҽ�����Ԫ������������µķ��������գ�����ȷ�����������������ƫ�ɰ��������趨����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/longzhigu/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/longzhigu/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/longzhigu/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/longzhigu/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/longzhigu/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ԭ�������İ��������Ǵ�½������������ħ��׷���ߵ�������ϯ�������£����������º�С��������أ���������С��ׯ�����ͨ���꣬ȴΪ�˱�����ׯ���������ײ����ΪС���������Ϊ�ַ�������������Ӣ�����ˡ���֧�ɾ��顢ħ��ʦ�������ʹ���սʿ��ɵ���ʱ�������ˣ�̤����ʧ���ѾõĹŵ�����Խ����Ĵ��ֺ���õ�ѩɽѰ�ٺ����ĳ�Ѩ����ǰ����ȴ�����벻����Σ���������ǵĵ������ó̵ļ���������ľ�����������Ѹ�ٳɳ������������������ҵ������Լ���ս���������𣿲�����ҵ��������������������������а��Ĵ��������ħ��׼����ռ���������Ǵ�½�������Ϊ�˱�����������ħ������������ȴ�������Ͷ��ɾ��£����뵽�����������ء�������',N'�й�',N'����/���/ð��/����',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-617833-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903178&amp;k=b1ff84750ac03a913a43d6895d0af94d&amp;t=1412261724&amp;sid=cda7W%2FSoKVUzADgf1p8zNRQxAu67JmUX6T0BFQttdFZOe0g',N'2014/10/2 22:57:18',N'wall',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 405,N'������ɭ14�º�������ɳ��Ư���ˡ���BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/shahai/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/shahai/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������ɳ��Ư����/Ư����/��������<br />
Ƭ��������The Rover<br />
�ꡡ������2014<br />
�������ҡ��Ĵ�����/����<br />
�ࡡ���𡡾���/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.6/10 from 13,271 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2345737" target="_blank">http://www.imdb.com/title/tt2345737</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.54 GB<br />
Ƭ��������103 Min<br />
�������ݡ���������Ф�� David Michod<br />
�������ݡ��޲��ء�����ɭ Robert Pattinson ....Reynolds<br />
�����������ǡ�Ƥ��˹ Guy Pearce ....Eric<br />
����������˹���ء�������� Scoot McNairy ....Reynolds'' Brother<br />
����������Samuel F. Lee ....Chinese Acrobat<br />
����������Anthony Hayes<br />
����������David Field<br />
����������Gillian Jones<br />
����������Susan Prior<br />
����������Matt Connelly ....Soldier<br />
����������T. Stinga ....Soldier<br />
�����������������¶� Nash Edgerton ....Town Soldier</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
���������ڰ��޵�ɳĮ����չ�����ǡ�Ƥ��˹���ݵİ���ˣ�Eric���ڽ���Σ����ʧȥ�����вƸ����Ĵ����˵�������һȺ��ͽ�����٣����������������Ľ�Ǯ��ͬʱҲ�����������������������õĲ��֡�����˾�����������ð��׷����ﱩͽ�����õ�����һλ���˵ı�ͽ�������޲��ء�����ɭ ���ݣ��İ�������<br />
<br />
<font color="red"><strong><font size="3">Ļ������</font></strong></font><br />
<br />
��������Σ���Ĵ󱳾������Ϲ��µķ����ػ����޶ȵİ���ɳĮ����������������Ͷ��·�����ԣ���һ��ʼ�㾭�����Ͼ����޴�Ŀ���ʹ����ⲿ����ӰƬ�������������ĵ��ݴ�������Ф�µ�����������������۴������ϻ��Ǵ����ݵ�ʵ�ʣ��Թ������ǲ�С����Ȥ�������ǲ���Ӣ�׵İ���Ӳ���ǡ�Ƥ��˹��Ӣ�״�˧���޲��ء�����ɭ����ϣ������˸������档��ʵ�ϣ�����ӰƬ�����������־��պ�Ԥ��Ƭʱ�����Ѿ����������Լ�����λ���ݵķ�˿���㹻���������ˡ������Ǻ����޲��ء�����ɭ������ƾ�衶��������5���еľ������࣬�Լ����ĺ��֮�ǡ�ϵ����ľ�տ���֣���Ȼ�����Ϊ����ŷ����������Ӱ̳��һ��ż����ǡ�Ȼ�����˷�������ݵ�����ػ���һЩŮ��˿���ġ����������ⲿ�������Ƭ�ı��֣����۴������ϵľ޴󷴲�����ݼ�����Ľ���������ν������С�������ġ�������Ѫ������Ҳ�����ղں��ӵ�һ�档<br />
<br />
�������ٶ��Ա��Ե��İ��޲ſ���������Ф�£���ƾ�衶�����������ջ�2010���ʥ��˹��Ӱ�ڵ������Ŵ�֮�󣬿�ν����ˮ���������һ���ǵ��͵�����Ƭ��ʽ��Ũ�����Ա��Ʊ��ķ�񣬼���Ũ�صľ��Ԫ�أ�������п���ʵ�������ݱ��Ѱ�ҳ�·�Ĺ���չ�ֳ������ⲿͶ�ʽ���������Ԫ�Ķ���ӰƬ����Ȼƾ���䲻��ĳ�ɫ�������Ӱչ���ջ�ڱ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/shahai/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/shahai/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/shahai/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/shahai/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/shahai/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�������ڰ��޵�ɳĮ����չ�����ǡ�Ƥ��˹���ݵİ���ˣ�Eric���ڽ���Σ����ʧȥ�����вƸ����Ĵ����˵�������һȺ��ͽ�����٣����������������Ľ�Ǯ��ͬʱҲ�����������������������õĲ��֡�����˾�����������ð��׷����ﱩͽ�����õ�����һλ���˵ı�ͽ�������޲��ء�����ɭ ���ݣ��İ�������Ļ����������Σ���Ĵ󱳾������Ϲ��µķ����ػ����޶ȵİ���ɳĮ����������������Ͷ��·�����ԣ���һ��ʼ�㾭�����Ͼ����޴�Ŀ���ʹ����ⲿ����ӰƬ�������������ĵ��ݴ�������Ф�µ�����������������۴������ϻ��Ǵ����ݵ�ʵ�ʣ��Թ������ǲ�С����Ȥ�������ǲ���Ӣ�׵İ���Ӳ���ǡ�Ƥ��˹��Ӣ�״�˧���޲��ء�����ɭ����ϣ������˸�',N'�Ĵ�����/����',N'����/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-618473-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904054&amp;k=405fa799748473b4d87394f21cda50c2&amp;t=1412261721&amp;sid=9347SOgSsN60P1KBMUlYYad0xcY14NHNn77RKk7CZPgKINg',N'2014/10/2 22:57:18',N'wall',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 406,N'���췫�½���14��ϲ�硿����椵��Ҽҡ���HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/yangniu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/yangniu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������椵��Ҽ�<br />
Ƭ��������When a Peking Family Meets Aupair<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ����ϲ��/����/��ͥ<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��942 MB<br />
Ƭ��������94 Min<br />
�������ݡ��¸� Gang Chen<br />
�������ݡ��췫 Fan Xu ....���������ľ�<br />
�����������½��� Jianbin Chen ....�����ϰ�����־<br />
������������һŵ Yinuo Chen ....Ů��ƤƤ<br />
��������������� Honglei Sun ....Ϭ���ܲ�<br />
���������������ȡ������ɡ�����ŵ�� Gianina ....Ұ�����������<br />
�������������� Tao Guo ....�����ھ�<br />
����������١��� Liya Tong ....�������׽̡�<br />
���������������� Xiaolong Zhang ....��̫�ࡱ����Ա<br />
������������ǧԴ Qianyuan Wang<br />
�������������ķ� Fann Wong ....����<br />
��������������˳ Christopher Lee<br />
������������ٻٻ Qianqian Wu<br />
��������������� Guihua Sun<br />
������������־�� Zhiwen Jin<br />
������������� Jia Xu</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬ�����й�����һ��������Ұ����椵ı�Ц���¡�<br />
<br />
����һ���������һ���й���ͥ��������Ц�Է��ַ����ݣ��������裨�췫 �Σ�����͵�ļ��ˡ�ǿ���Ϲ��ִ�������Դ����ݺ촽�ջ���Ҫ��Ů�������������˻�ױҲԸ�⡣<br />
<br />
�������޴��ڸе������ϰ֣��½��� �Σ��������켣�ǴӲ���˧�絽��˿���壬�����Ǵ��ϱȻ���ҲҪ�þ��������������������ʪ����ӵ��<br />
<br />
������񣬹�ش����ˡ�����Ұ���ˡ��Ϲ�Σ���ˡ����������ھ����ˣ�<br />
<br />
����������Ϸ��ѧԺ���ڳ¸�ִ���������磬�췫���½��󡢳�һŵ���ݣ�����ס����Ρ�١��櫵�ʮ��λ�������ǲ��ݵ�Ⱥ������ϲ�硶��椵��Ҽҡ�ȷ����8��8��ȫ����ӳ��ӰƬ�����й�����һ��������Ұ����椵ı�Ц���£���ʱ��ҽ�����һ����Ʒ���˵ı�Цʢ�硣<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/yangniu/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/yangniu/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/yangniu/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/yangniu/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/yangniu/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬ�����й�����һ��������Ұ����椵ı�Ц���¡�һ���������һ���й���ͥ��������Ц�Է��ַ����ݣ��������裨�췫 �Σ�����͵�ļ��ˡ�ǿ���Ϲ��ִ�������Դ����ݺ촽�ջ���Ҫ��Ů�������������˻�ױҲԸ�⡣���޴��ڸе������ϰ֣��½��� �Σ��������켣�ǴӲ���˧�絽��˿���壬�����Ǵ��ϱȻ���ҲҪ�þ��������������������ʪ����ӵ����񣬹�ش����ˡ�����Ұ���ˡ��Ϲ�Σ���ˡ����������ھ����ˣ�������Ϸ��ѧԺ���ڳ¸�ִ���������磬�췫���½��󡢳�һŵ���ݣ�����ס����Ρ�١��櫵�ʮ��λ�������ǲ��ݵ�Ⱥ������ϲ�硶��椵��Ҽҡ�ȷ����8��8��ȫ����ӳ��ӰƬ�����й�����һ��������Ұ����椵ı�Ц���£���ʱ��ҽ�����',N'�й�',N'ϲ��/����/��ͥ',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-617319-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902157&amp;k=5ed29c22c0bad18df4f94b527241f967&amp;t=1412261725&amp;sid=185fybgYyfzZsTzjPBCsI8%2BqNZkgA5rUrIdXN3b0jGPekxw',N'2014/10/2 22:57:18',N'wall',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 407,N'����14�����ڴ�Ʊ���������ձ�Ե����BluRay-720P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ձ�Ե/���սʿ(��)/���ձ߽�(̨)/ɱ¾�ֻ�<br />
Ƭ��������Edge of Tomorrow<br />
�ꡡ������2014<br />
�������ҡ�����/�Ĵ�����<br />
�ࡡ���𡡶���/�ƻ�<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�<font color="red">8.1/10 from 136,222 users</font><br />
�������ӡ�<a href="http://www.imdb.com/title/tt1631867" target="_blank">http://www.imdb.com/title/tt1631867</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.40 GB<br />
Ƭ��������113 Min<br />
�������ݡ��������� Doug Liman<br />
�������ݡ���ķ����³˹ Tom Cruise ....���������� Cage<br />
���������������򡤲����� Emily Blunt ....������������˹�� Rita<br />
�����������ȶ�������˹�� Bill Paxton ....ʿ�ٳ������ Master Sergeant Farell<br />
����������������������ɭ Brendan Gleeson ....�����ķ�Ͻ� General Brigham<br />
���������������ء����� Charlotte Riley ....��˹ Nance<br />
����������ŵ�ǡ�̩�� Noah Taylor ....���ز�ʿ Dr. Carter<br />
�������������������� Lara Pulver ....���ס��͵� Karen Lord<br />
����������Լ��˹����ķ˹���� Jonas Armstrong ....Skinner<br />
�������������ᡤκ Tony Way ....Kimmel<br />
������������ˡ����� Kick Gurry ....Griff<br />
���������������ȡ�����÷ Franz Drameh ....Ford<br />
�����������������׶�����ϣ�� Dragomir Mrsic ....Kuntz<br />
����������������� Masayoshi Haneda ....Takeda</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬ������һ���������˵�ս�������˹������δ���ܹ�����ѵ����ȴ���ɵ�ǰ����ս����������һ����ɱ�ж���������Ƶ������һ�̣�������ػ�ô�Խʱ�յ��������ܹ��������ϵ��ظ������ֻأ�һ�δ����»ص�ս������ÿ����һ�������������ս��������ǿһ�֡���<br />
<br />
����δ�������������������ֵĿֻ��У�������˵�ҿ�����У����ķ����³˹ Tom Cruise �Σ�η����ս��������û���������������������ɭ Brendan Gleeson �Σ�������ȥָ�Ӽ�����ʼ�ġ�ŵ����ս�ۡ����ܾ���������֮�󽫾���Ȼ�����������Ǿ��ǰ��������ӱ��ӽ��˾�Ӫ�С����汻������JС���н���ս����ս�۵ĵ�һ��Ͳ�����ս����û�뵽��һ������ӵ����ʱ��ѭ������������Ψһ���������˾��Ǳ���Ϊ��ȫ����սʿ����������������˹���������򡤲����� Emily Blunt �Σ������˿�ʼ��ʱ��ѭ����ս����ѵ�������ͬʱ���Ƿ����˿���ʱ��İ��أ����������ˡ����ԡ�ŷ�����йأ�����Ψһ��ȡ��ʤ���ķ��������ÿ��治����ȥ����������ʱ�䡣�ڲ����ظ���½�����ս����ͬʱ������Խ��Խ����ʧȥ��������<br />
<br />
������Ƭ�ı����ձ�����ӣ�������С˵��ɱ¾�ֻ� All you need is kill�������±����趨�ڽ�δ���ĵ�����һ��ȫ���Ե�������������ս���У����棨��ķ����³˹ �Σ����͵���½ս�ĺ�̲��ÿ�춼���ظ��űذܵ�������ս��������δ���ܹ��κξ���ѵ����ȴ���ɵ�ǰ���������ս����������һ����ɱ����ս�ж���������Ƶ������һ�̣�������ػ�ô�Խʱ�ջ��ȵ��������ܹ��������ϵ��ظ������ֻأ�һ����һ�ε����»ص�ս��������ÿһ���������ȶ���ս���ľ���͸���һ�㣬��Խ��Խ�˽���˵����㣬��ս���ϵĴ��ʱ��ҲԽ��Խ�á����ڡ�ս��Ů������������������������ �Σ���ħ��ѵ���£�ս������ͻ���ͽ�������һͬ������ս���������ⳡ����ϣ����ս��¶��һ��ʤ������⡣���ǿ���Ҳ����һ��ʹ��ľ��񡭡�<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
������Ӱ�ı����ձ�����ӣ����ԭ�������������廭����С˵��ɱ¾�ֻء���All you need is kill����2010��4�£������ֵܻ���Լ300��Ԫ������С˵�ı��Ȩ����������Ϊ��ɱ¾�ֻء�������ֹ���Ѫ�ȣ����ǽ�Ƭ����Ϊ�����ձ�Ե����Edge of Tomorrow����ӰƬ��2012��10��1����Ӣ���������㣬�����������˹��Ƭ������ǰ�������ǡ�����-���ء�������ء�ӰƬͶ��1.78����Ԫ���ɵ���-����������Ӱ���ء�����ʷ��˹�ж�����ִ������ķ-��³˹�������ݣ�ӰƬ������ָ���ǡ������ա��İ�����-ʩ�������Ӱָ��������ð�˹�������ĵ϶�-�ȱ����Ӿ�Ч���ܼ��ǲ���������������ڰ���ʿ�������-��ά˹���Ŷ�����ʮ�ֻ���������-������ǰִ����һ�����Ƭ����Ӱ���ء������ѽӽ�ʮ�꣬�����������Ƭ�籾ʱ�ǳ��˷ܣ����籾�ǳ����ʣ����ں��˺������Ƭ�����о���Ԫ�أ���ѡ����ȫ�µ��ӽ��������<br />
<br />
������ķ-��³˹��2012��7��20�ռ��뱾Ƭ�ĳﱸ������������һ����Ӱ������ս�����ػ�����һ��ʱ�䡣���50����ķ-��³˹�������Բ��Ͻ��ĸ��Ѷȶ���Ƭ��2011�����������������������ߵĽ�������γ��ݡ����ձ�Ե�����������޴�Ľ������ײ���ս����������Ҫ��ת���壬�ҵ��������İ취�����������ش�85��125������������ľ�ҵ�����������塣���⣬��ķ-��³˹������һ�����������Ϸʱ���ˣ���Ϸ���̶ȿɼ�һ�ߡ�Ů���ǰ�����Ҳ��ʾ�����ⲿϷ�ǡ���ô��ʹ�ࡱ��һЩ��ѵҲ�����Բ�����<br />
<br />
����ӰƬ��ӳ�󣬱�ý��һ��ʢ����2014���ļ���Ѵ�Ƭ֮һ����ս�����쳣���ͣ�ӰƬ�����ƽ���˶�������Ĭ������������������Ӣ�۵�Ԫ�ء���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ���ۣ�</font></strong></font><br />
<br />
����ý������71�֣��÷��ѷ������ʶ�89%��180��Ͷ�����ʷ��ѣ�22���ҳ��÷��ѣ�CinemaScore����B+������롶���е�4����ƽ�ĸ߷����ۡ�<br />
<br />
�������С�֥�Ӹ�̫������������֡������ձ�Ե����ʵ���Ƕ���ķ-��³˹��ҵ�İ���������ԶҲɱ������һ���ܻ�������ϵ�������������³˹��Ȼ�ǵ��������������ĵ�Ӱ��������ԭ��ġ����������Լ�Ŭ��׬ȡ�ģ�����������ǰհ�ԵĿƻ���Ʒ����������⡢����Ĳ߻��������ؾ籾������ִ���ַ��������ձ�Ե�����ܻ����ļ�����һ�����˵Ĵ����ִ�Ƭ�������ⲿӰƬ�ɹ���ԭ�����ڣ�����һ�ж��ӽ������������ϲ�����ȫ�µĶ�������Щ���¶��������ǻ��ò�������Ĭ������Ը�⻹���Խ�һ���������ں�����һ����������������ҵ���ִ�Ƭ����������ϵĴ��³������ϡ������˷ܡ����������ö�������;�ϲ�������ϡ��ðɣ���Ȼ�������ͷʹ�����ڴ�֮ǰ��³˹�벼���ؽ������ϵ�������Ϸ�����������Ǳ������á�������Ϊһ������ʱ��ѭ���ĵ�Ӱ�������ձ�Ե����Զ�����ù��ڸе����������ơ���<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ƭ�ı����ձ�����ӣ�������С˵��ɱ¾�ֻء�����һ��ʼ�������Ϊԭ���ı�����ڲпᣬ���Ӱ��ƫϲ������ղ�����֮��������ù������Ƕ��Ƿ��ˡ��ı��⣬���ո�Ϊ�����ձ�Ե����<br />
<br />
��ӰƬ�󲿷�Ϸ����Ӣ��ȡ���������Leavesden Studio�����ǹ���������ϵ��ӰƬ��Ƭ����<br />
<br />
��ӰƬ�бȶ���������ʿ�Ľ�ɫԭ���ɲ����¡�Ƥ�س��ݡ��������뵼��������������ʷ��˹�򸾡���<br />
<br />
����ķ����³˹�Դ�2012��7��20�ռ��뱾Ƭ�ľ��鿪ʼ�ﱸ�������Ǿ�������һ����Ӱ������ս�����ػ��в���һ��ʱ�䡣<br />
<br />
����ķ����³˹��������������10����ԪΪ����ٰ���һ��ʢ��Ĺػ��ɶԡ������������ڻ���Ϸ����Ҫ����δ��ǰ���μӡ�<br />
<br />
�������Ľ�ɫ�����������롶�����ҡ��ķ���Ů�Ǳ�����˿�����ǳ��ݡ�<br />
<br />
�����ɹ�˾Ϊ��Ƭ������һ��ʷ��ǰ���ġ�Ԥ���ؼ������ɡ�����ͬһ��֮�ڣ�������7֧�����ձ�Ե����ص�Ԥ�漰�����ؼ���<br />
<br />
�����㱾Ƭ�ڼ䣬Ů���ǰ����򡤲����ػ����ˣ���������ò��ܾ�����һЩ����Ϸ��������֪�����ܾ�������ԭ�����ֻ�а����硣<br />
<br />
��2013��8�£�ý�屨���ˡ����ǻ�顷���ǽ����ס�Ƥ�ļ��˱�Ƭ����Ϣ����������û�г�����ӰƬ����ӳ�浱�С�<br />
<br />
���Ⲣ���ǰ����򡤲��������ݵĵ�һ����ʱ�մ���Ϊ��ĵĿƻö���Ƭ����һ���ǡ�����ʹ�ߡ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬ������һ���������˵�ս�������˹������δ���ܹ�����ѵ����ȴ���ɵ�ǰ����ս����������һ����ɱ�ж���������Ƶ������һ�̣�������ػ�ô�Խʱ�յ��������ܹ��������ϵ��ظ������ֻأ�һ�δ����»ص�ս������ÿ����һ�������������ս��������ǿһ�֡���δ�������������������ֵĿֻ��У�������˵�ҿ�����У����ķ����³˹ Tom Cruise �Σ�η����ս��������û���������������������ɭ Brendan Gleeson �Σ�������ȥָ�Ӽ�����ʼ�ġ�ŵ����ս�ۡ����ܾ���������֮�󽫾���Ȼ�����������Ǿ��ǰ��������ӱ��ӽ��˾�Ӫ�С����汻������JС���н���ս����ս�۵ĵ�һ��Ͳ�����ս����û�뵽��һ������ӵ����ʱ��',N'����/�Ĵ�����',N'����/�ƻ�',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617750-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903115&amp;k=f4d5c06b0ed83d4e890f270deba1f62a&amp;t=1412261725&amp;sid=c148IvX9SqvBju%2BZB4%2F9cohvCiqsQKdJEPmUV85zC6Rs%2Frc',N'2014/10/2 22:57:18',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 408,N'����³˹��14���¡�����ɱ�����顿��BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/sirenzu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/sirenzu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������ɱ������/��ɱ���ֲ�/����������/������·/������<br />
Ƭ��������A Long Way Down<br />
�ꡡ������2014<br />
�������ҡ�Ӣ��<br />
�ࡡ���𡡾���/ϲ��<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.3/10 from 10,423 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt0458413" target="_blank">http://www.imdb.com/title/tt0458413</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.32 GB<br />
Ƭ��������96 Min<br />
�������ݡ���˹��������÷ Pascal Chaumeil<br />
�������ݡ����ס����� Aaron Paul ....J.J.<br />
����������Ƥ��˹����³˹�� Pierce Brosnan ....Martin Sharp<br />
�������������ݡ������� Toni Collette ....Maureen<br />
������������Ī�䡤���� Imogen Poots ....Jess Crichton<br />
������������ɯ���¡��ɿ� Rosamund Pike<br />
����������ɽķ����� Sam Neill<br />
��������������˿���׵¶��� Tuppence Middleton ....Kathy<br />
����������Joe Cole ....Chas<br />
����������Diana Kent ....Hope<br />
����������Mohammed Ali<br />
����������George Hewer ....Party Goer</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������Ԫ�����������ҹ���׶����ĸ�ʧ��������ˣ���Ϊ��һ��15����Ů�ϴ����������ѵĵ����������������չ��Լ����زм��ĳ������û���Լ���������긾ŮĪ������Ϊ��㼸��ǰ����ʧ�ٶ�һֱ�߲���������Ӱ����Ů��˿�����ֶӽ�ɢ��Ů�ѷ��ֵ�����ҡ������JJ�����Ƕ��뵽�����ġ���ñ�� �á�¥����¥��ɱ��������¥�����ڶ���������һ��ȹ���һ�����ϣ��������Բ��ҵ��������ڶ���һ����Իؼң����Ӵ��γ���һ����ֵ�����С���壬��ʼ�������ָ�����Ȥ�����飬����������ͼ������Ļ��������һ���㣻������ɶ���ᣬר��������ɱ�������ǣ����ǻ��ƻ����ܵشҴ�ȥ��˿ȸȺ�����С�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/sirenzu/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/sirenzu/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/sirenzu/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/sirenzu/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/sirenzu/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����Ԫ�����������ҹ���׶����ĸ�ʧ��������ˣ���Ϊ��һ��15����Ů�ϴ����������ѵĵ����������������չ��Լ����زм��ĳ������û���Լ���������긾ŮĪ������Ϊ��㼸��ǰ����ʧ�ٶ�һֱ�߲���������Ӱ����Ů��˿�����ֶӽ�ɢ��Ů�ѷ��ֵ�����ҡ������JJ�����Ƕ��뵽�����ġ���ñ�� �á�¥����¥��ɱ��������¥�����ڶ���������һ��ȹ���һ�����ϣ��������Բ��ҵ��������ڶ���һ����Իؼң����Ӵ��γ���һ����ֵ�����С���壬��ʼ�������ָ�����Ȥ�����飬����������ͼ������Ļ��������һ���㣻������ɶ���ᣬר��������ɱ�������ǣ����ǻ��ƻ����ܵشҴ�ȥ��˿ȸȺ�����С�ӰƬ',N'Ӣ��',N'����/ϲ��',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-618472-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904053&amp;k=e4435c62878ffc6c88c02f3ff9be7d42&amp;t=1412261725&amp;sid=539dVWoyg7SwdYCPjBin4aF1%2B235Qp6sAdVP%2BmOLkkLOpNE',N'2014/10/2 22:57:19',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 409,N'����14Ц���졿��������Ӳ�ķ�ʽ����BluRay-720P.MKV������Ӣ��',N'<font color="blue"><font size="5">δ�ּ��ӳ��棡����ͨ�����19���ӣ�<br />
Ц����Ʊ���ؿ���Ƭ�����ɴ����</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xibu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xibu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xibu/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������������һ�����ַ�ʽ/������(��)/������Ӳ�ķ�ʽ(̨)/������һ����������<br />
Ƭ��������A Million Ways to Die in the West<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ����ϲ��/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.2/10 from 52,268 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2557490" target="_blank">http://www.imdb.com/title/tt2557490</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.15 GB<br />
Ƭ��������135 Min<br />
�������ݡ���˼����˷��� Seth MacFarlane<br />
�������ݡ���˼����˷��� Seth MacFarlane ....Albert<br />
���������������ȡ���¡ Charlize Theron ....Anna<br />
���������������������� Amanda Seyfried ....Louise<br />
������������ķ����ɭ Liam Neeson ....Clinch<br />
�����������������ᡤ����� Giovanni Ribisi ....Edward<br />
���������������������ˡ��� Neil Patrick Harris ....Foy<br />
����������������˿���� Sarah Silverman ....Ruth<br />
��������������˹��򡤹��� Christopher Hagen ....George Stark <br />
����������Τ˹��˹���� Wes Studi ....Cochise <br />
����������Matt Clark ....Old Prospector<br />
����������Evan Jones ....Lewis<br />
����������Aaron MacPherson ....Ben<br />
�����������׿�˹���� Rex Linn ....Sheriff / Narrator</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����һ��ų����ũ����˼����˷��� ���ݣ�����������Ů���ѣ������������� ���ݣ�������Ů�����Ըл�������ũ����Ե��������һ���޶񲻴�Ĵ󻵵��������������ˡ�����˹ ���ݣ��������������ǹ��һ������δ��������Ů�ѷ��ģ���Ϊũ���������������⡣��ʱ��¡���ݵ�����Ů���������ϣ�����ũ����ϰǹ���������һ��˶��Ů�ѵ����ġ��������ദ�У�ũ��ȴ������������λ����Ů�ӡ������ţ�����Ů�ӵĶ���ɷ���ķ����ɭ ���ݣ�Ҳ�����������ͼ�������ǡ���<br />
<br />
����ӰƬ��Ҫ����һ��ų����ũ��������˹����˷��� �Σ��ھ�����ǰ���������Ů�ѣ������������� �Σ�������ȥ����һ�����ˣ������������ˡ�����˹ �Σ����ˡ�֮������ũ����������һλ�����������ӣ�ɯ���ȡ���¡ �Σ�����������������Ů�˽̻�����ǹ���������������������������Ҳ�����˰��ӡ�����������û����ã�����������������ķ����ɭ �Σ������ˣ������ĸ�����ǰ��ũ�����ո��һص������⵽�˿��顣<br />
<br />
<font color="red"><strong><font size="3">Ļ������</font></strong></font><br />
<br />
�����������ʶ��˼����˷�����ͨ����ֻ���ȱ��ֵ�̩���ܡ�����һ�ε��ݵ�Ӱ�ͻ���˿ڱ���Ʊ���ľ޴�ɹ���ֱ�Ӵ����ͬ����ӳ�ġ�����2������ǰ����˼��Ҫ�������ž缯�������ˣ����硶���֮�ҡ����������ϰ֡��͡���������㡷������Ϊ��Щ�����缯������������������������Լ����Źܶ���ϵ�С���Ϊ��Ա�����ʹ��������Ӿ磬����������ĪŮ����������ͥս�����͡�FlashForward�����Կƻõ�ϲ�����������˴���Ļ�������ˡ��Ǽ��Ժ����͡������к����е�С���<br />
<br />
������˷�����������Ʒ�У�ѡ���˷����ʽ������Ƭ��ġ����ɳ�������Ƭ�Ļƽ������һֱ������Ƭ����ʵ��˿��ϣ��Ч�¡����ա��е�����-�Ͷ������������ʽ����Ƭ������������ʮ�����Щ������Լ��-���ص���Ұ�Ͱ���Ĭ-����˹̹�����֡�������������˽��ִ�Ԫ�������ȥ���ǽ���ǰ��δ�еġ����������������У�����һ���Ǹ��������ӣ���������ĵط������ԣ�����ͼ��ӰƬӵ��һ�־������������п���ʵ��ϵ�Ч����Ƭ�г������˼ϲ����Ԫ�أ������໰��ƪ�����˷�θ�ı��������������˺Ͷ���ģ�����Ȼ�����в�����-��¡���ݳ�����˷��������ϸ���ô���£����յ�Ŀ�Ĳ����Ǻ���¡������������¡��ƾ�衶�����꡷��ý����������ⲿ��Ӱ����������һ����������ϲ�硣��˷���˵�����ڵ�Ӱ�еĹ�ϵ���������������������ֵ�Ӱ�Ĳ�Ρ������Ҳ�������¡���õĴ�ˡ������������ø��á�����¡��һ��ȥ�����Լ�����Ļ�ϵı��֣����е���ο�������Լ������㹻��Ŭ����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xibu/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xibu/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xibu/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xibu/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xibu/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��һ��ų����ũ����˼����˷��� ���ݣ�����������Ů���ѣ������������� ���ݣ�������Ů�����Ըл�������ũ����Ե��������һ���޶񲻴�Ĵ󻵵��������������ˡ�����˹ ���ݣ��������������ǹ��һ������δ��������Ů�ѷ��ģ���Ϊũ���������������⡣��ʱ��¡���ݵ�����Ů���������ϣ�����ũ����ϰǹ���������һ��˶��Ů�ѵ����ġ��������ദ�У�ũ��ȴ������������λ����Ů�ӡ������ţ�����Ů�ӵĶ���ɷ���ķ����ɭ ���ݣ�Ҳ�����������ͼ�������ǡ���ӰƬ��Ҫ����һ��ų����ũ��������˹����˷��� �Σ��ھ�����ǰ���������Ů�ѣ������������� �Σ�������ȥ����һ�����ˣ������������ˡ�����˹ �Σ����ˡ�',N'����',N'ϲ��/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617259-1-1.html',N'http://www.lwgod.com/attachment.php?aid=901920&amp;k=9fffcd6a075ca3271960970846fd6e31&amp;t=1412261726&amp;sid=41f8wy1eH9Tmql%2Bdw1kZxZM5XyA6incbk9%2BMd%2BPxy3LhAtc',N'2014/10/2 22:57:19',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 410,N'����14��������ϲ�硿�����Ǵ������BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/luopodachu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/luopodachu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������Ǵ��/����������ͳ�(̨)/��ζ�ó�(��)/���<br />
Ƭ��������Chef<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ����ϲ��<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.4/10 from 38,044 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2883512" target="_blank">http://www.imdb.com/title/tt2883512</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.57 GB<br />
Ƭ��������110 Min<br />
�������ݡ��Ƕ������� Jon Favreau<br />
�������ݡ��Ƕ������� Jon Favreau ....Carl Casper<br />
��������������櫡�ά���� Sofia Vergara<br />
����������Լ�����׼���Ī John Leguizamo<br />
����������˹������Լ��ѷ Scarlett Johansson ....Molly<br />
������������������������ Oliver Platt<br />
����������С�޲��ء����� Robert Downey Jr.<br />
������������˹͡�������� Dustin Hoffman<br />
�������������ȡ������߶� Bobby Cannavale<br />
�������������ס�������˿ Amy Sedaris<br />
����������ŵ�ǡ��ֲ��� Noa Lindberg ....Hungry Jogger<br />
����������÷������¶�u Meghan Aruffo ....Customer</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������������˹�� (�Ƕ������� ��) ����ɼ�һ�����ǲ����ĵ��������������޷���������������ǿ���ϰ� (��˹͡�������� ��)������һ��֮�´ǵ��˹��������������Լ��Ÿ���٣�˳������δ���ķ��򡣿��������������ܡ�����ǰ�� (�����ǡ�ά���� ��)�������Լ����� (Լ�����׼���Ī ��)һ������һ�Ҽ�ª���ƶ��ͳ����ͳ���·�ˣ�������ͼ���������ó�����ͼ�޲����޶��Ĺ�ϵ��ͬʱ�һ��Լ���������Լ�������Ȱ���ӰƬ�ɡ����������ĵ��ݼ���Ա�Ƕ��������Ա��Ե����ݣ���������������λ������С�޲��ء����ᡢ˹������Լ��ѷ�ʹ�������<br />
<br />
<font color="red"><strong><font size="3">Ļ������</font></strong></font><br />
<br />
�����˷������ݡ��������������������Ƕ�-�����ٴ�չʾ�����Ա��Ե����ݵĶ��زŻ����ԡ����Ǵ��������ݾ������ࡣ��չʾ��������˴������ߵ���ζ���ȼ���տ���������ա������޵ĵ�ŷ�޵������ʳ���ڼ�������������ڳ��������˵�ζ��������ʳ��Ӱ����������Ҳ�������š���ӰƬ���������������Ĺ�����ɢ�������ģ�������������м򵥶��ֻ��������ݡ���������һ��ɫ��ζ��ѵ���ʳ������Ҫ�Լ�����׼������Ҫ���İ�����ϲ����<br />
<br />
����ӰƬ������ʳ֮�����һ�󿴵㣬����ӰƬ�Ƽ��Ĵ��������ǣ����Զ����������������ⲿ������ҵ��Ƭ�ĸ���֮����Ҳ��������Ƕ�-������Ȧ�ڵĺ������������ԸС�Ů��˹����?Լ��ѷ��Ƭ������һ���͹ݾ���ͬʱҲ�������Ƕ�-����ĳ����Լ��䱾�˵�������֮�⡣���С���������С�޲���-����ȴ�������ˡ����ع��һ��Ԥ��Ƭ�У����ǿ��Լ���С�޲���-���������ڣ����д�˹͡-���������ݵĿ����ϰ壬��Ů�����-ά�������ݵ��Ը�ǰ�ޣ���ȻҲ�ٲ�����һλ�ݼ�������Լ��-�׼���Ī��������顣<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/luopodachu/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/luopodachu/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/luopodachu/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/luopodachu/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/luopodachu/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����������˹�� (�Ƕ������� ��) ����ɼ�һ�����ǲ����ĵ��������������޷���������������ǿ���ϰ� (��˹͡�������� ��)������һ��֮�´ǵ��˹��������������Լ��Ÿ���٣�˳������δ���ķ��򡣿��������������ܡ�����ǰ�� (�����ǡ�ά���� ��)�������Լ����� (Լ�����׼���Ī ��)һ������һ�Ҽ�ª���ƶ��ͳ����ͳ���·�ˣ�������ͼ���������ó�����ͼ�޲����޶��Ĺ�ϵ��ͬʱ�һ��Լ���������Լ�������Ȱ���ӰƬ�ɡ����������ĵ��ݼ���Ա�Ƕ��������Ա��Ե����ݣ���������������λ������С�޲��ء����ᡢ˹������Լ��ѷ�ʹ�������Ļ�������˷������ݡ��������������������Ƕ�-�����ٴ�չʾ�����Ա��Ե����ݵĶ��زŻ���',N'����',N'ϲ��',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617602-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902526&amp;k=d73d4afb6027b1628552df78ef383b02&amp;t=1412261726&amp;sid=d02aaKgavZbF5LWRSofzWNX4fwN%2Fo%2BgzdN2PBE3dA5gW9Po',N'2014/10/2 22:57:19',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 411,N'����14������������Ʊ����Ƭ�������ۡ���HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/guimi/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/guimi/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������<br />
Ƭ��������Girls<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ����ϲ��/����<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��1.16 GB<br />
Ƭ��������118 Min<br />
�������ݡ������� Babara Wong<br />
�������ݡ�Ѧ���� Fiona Sit ....Kimmy<br />
�������������⺭ Ivy Chen ....ϣ��<br />
��������������� Zishan Yang ....С��<br />
�����������⽨�� VanNess Wu ....����<br />
���������������� Shawn Yue ....����<br />
�����������Ӻ��� Wallace Chung ....�ֽ�</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
���������ۡ����������ɳ��⺭���ݵ�ϣ�롢Ѧ�������ݵ�Kimmy����������ݵ�С������Ů��֮��20����Ĺ����顣����Ů�������£��Ը���죬ϣ����Ϊ�Թ�Ů�������������Լ��ļƻ���ϣ��28���飬30����С��������Ҫȥ���裬���ǰҪ��÷��ӣ�Kimmy���ڹ�湫˾��չȭ�ţ��������������Ű��飬���˶���������ֻ��������������ǿ����ȴ�����¶���С������һ���������е�����Ů���꣬��������������Ҫ��һ�����ݣ�Ϊ��ʵ�����������Է���һ�С�����������ͬ����ʵ��������Ļ������Ů��ͬ��Ҳ������ʧ������ã�����������ʡ����������Σ�Ҳ������Ϊ����֮��ϸ������೤����У��嵭�������еı��࣬����һ����һ����һ��Ц��������<br />
<br />
����ϣ�루���⺭ �Σ���Kimmy��Ѧ���� �Σ���С��������ɺ �Σ�һֱ���޻���̸�Ĺ��ۣ����˴�ѧ��ҵ��ʼ��ͬ������Թ�Ůϣ�����������ȫ�������మ7���δ����ֽܣ��Ӻ��� �Σ����ϣ��������ֽܵĳ��죬�����õ�����ȫ�������ˡ����в����İ׸���Kimmy�Ϳ���С�����ò�ȫ����չ���ʧ�������ҵ�ϣ�룬����������Ϊ���۵����߲嵶���Ȳ���ů�������������� �Σ��ĳ��֡���ϣ����Ϊ��������ȡ����ʱ��Kimmy��С��ȴ��������ҡ�������˾��죨�⽨�� �Σ����������У������ž��츰�������ݳ������ð��Ȼ���ϣ����Kimmy����֧��С���;�������飬����С��Ҫ��������һ��ȥ�ݳ��ᣬ�Ͳ��ò��������еĸ����ݹ��������˵�����Σ��һ��������С�����ջ��ȥ�δӣ�<br />
<br />
�������ݻ�����Ҳ�����˱�Ƭ���������Լ������һ�ԭ���Լ��ļ�¼Ƭ��������Ů���ǻ������������ֳ���<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
�����������������Ŷ� ��Ӱ�����ۡ����Ƹ�ֽ�����ʱ���̡���͵�ߵ������꡷���ɹ��󣬴˴λ����浼�ݸ����б���ս����Ϥ��Ӱ�����ۡ��������Ŷ�����������ƾ�衶���¿ˡ��������������Ρ���ӰƬ9���ʶ�̨����������Ч��¼���Ƚ���Ķ���֮��ƾ���Ӱ����ף���ٻ��14����۵�Ӱ������ѵ�Ӱ���ֽ����������������̵¡�ƾ�衶���¿ˡ����������48��̨���Ӱ�����������������������������ˡ����������Ӱ����ʳ��Ů2012��������36�����¡�����Ů���ѡ������ѡ���ӰƬ��������ƣ�����õ�47�����������������������ظ��Լ�ƾ���Ӱ������ɭ�֡���ī��������ս����ӰƬ��λ����۵�Ӱ���񽱵ļ���ʦ��־���������浼�ݱ�ʾ��֮���Ի�ۼ���ң���������һ���ƽ��Ŷӣ�����Ϊ����һ����ˮ׼��������ӰƬ�������ʿ͸¶����Ӱ�����ۡ����۴Ӿ��顢���桢���ݡ��Լ�ӰƬ���ݵ���Ϣ�ȵȶ��Ǵ��������еĸ�֣����ŵ�Ӱ�����ۡ�����ڼ���󣬽�����һ��ȫ�µĵ�Ӱʱ����<br />
<br />
�����̡���͵�ߵ������꡷�ɹ��󣬴˴λ����浼�ݸ����б���ս����Ϥ��Ӱ�����ۡ��������Ŷ�����������ƾ�衶���¿ˡ��������������Ρ���ӰƬ9���ʶ�̨����������Ч��¼���Ƚ���Ķ���֮��ƾ���Ӱ����ף���ٻ��14����۵�Ӱ������ѵ�Ӱ���ֽ����������������̵£�ƾ�衶���¿ˡ����������48��̨���Ӱ�����������������������������ˣ����������Ӱ����ʳ��Ů2012��������36�����¡�����Ů���ѡ������ѡ���ӰƬ��������ƣ�����õ�47�����������������������ظ��Լ�ƾ���Ӱ������ɭ�֡�����ī����������ս����ӰƬ��λ����۵�Ӱ���񽱵ļ���ʦ��־���������浼�ݱ�ʾ��֮���Ի�ۼ���ң���������һ���ƽ��Ŷӣ�����Ϊ����һ����ˮ׼��������ӰƬ��<br />
<br />
���������浼����Ʒ�����ۡ�2014��7��30��ȫ��ӳ����������1650��Ʊ����ռ������Ʊ��1/5�����õ�Ʊ�����ָ�������ӰԺ���ã������˿ɹ���Ƭ����ֹ2014��8��4�ս�����ӳ5��ġ����ۡ�Ʊ���Ѵ�1.16�ڡ�<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
��ӰƬ��һ��������Ӱ���ݵ�С������ĵ�Ӱ���ǵ��ݻ�����ĳ�������������Ů���ǻ�������������Ҳ̹��С����������ʱ���Ӱ�ӡ�<br />
<br />
����Ȼ�����ǹ����飬�����������Ʒ��Ȼ�����ؿ�ζԪ�ء�Ƭ���в���Ů�Դ�߶Ȼ�������ۣ��Լ�Ů��ƽʱ����˵���ڵ����Ի��⡣<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/guimi/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/guimi/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/guimi/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/guimi/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/guimi/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�������ۡ����������ɳ��⺭���ݵ�ϣ�롢Ѧ�������ݵ�Kimmy����������ݵ�С������Ů��֮��20����Ĺ����顣����Ů�������£��Ը���죬ϣ����Ϊ�Թ�Ů�������������Լ��ļƻ���ϣ��28���飬30����С��������Ҫȥ���裬���ǰҪ��÷��ӣ�Kimmy���ڹ�湫˾��չȭ�ţ��������������Ű��飬���˶���������ֻ��������������ǿ����ȴ�����¶���С������һ���������е�����Ů���꣬��������������Ҫ��һ�����ݣ�Ϊ��ʵ�����������Է���һ�С�����������ͬ����ʵ��������Ļ������Ů��ͬ��Ҳ������ʧ������ã�����������ʡ����������Σ�Ҳ������Ϊ����֮��ϸ������೤����У��嵭�������еı��࣬����һ����һ����һ',N'�й�',N'ϲ��/����',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-618450-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904052&amp;k=3108eb8c7ccdec46d63ac4c272af0a85&amp;t=1412261728&amp;sid=5f19vqpK05uT%2FTnmhedADnnEsGBS76wuxJ6LA1d9LwKtNgs',N'2014/10/2 22:57:19',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 412,N'���żһ�14�³����ˡ��������񹦡���BluRay-720P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/shengong/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/shengong/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������������/���m��<br />
Ƭ��������Hungry Ghost Ritual<br />
�ꡡ������2014<br />
�������ҡ��й����<br />
�ࡡ���𡡾��/�ֲ�<br />
����ԡ�<font color="red"><font size="3">��������˫����</font></font><br />
�֡���Ļ�����ļ�<br />
�������֡�5.9/10 from 49 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3830194" target="_blank">http://www.imdb.com/title/tt3830194</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.15 GB<br />
Ƭ��������82 Min<br />
�������ݡ��żһ� Nick Cheung<br />
�������ݡ��żһ� Nick Cheung<br />
���������������� Annie Liu<br />
������������Ԫ�� Cathryn Lee<br />
��������������� Carrie Ng<br />
�������������� Wai Lam</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ũ������Ϊ�й���������ڣ���˵������·ݣ��������Ŵ󿪣��λ�Ұ��ᵽ���䡰���桱��Ϊ������ǡ���Ͼ�ĳ�Ѱ������Ϸ�����ũ��������ʮ����ʮ�ߣ�춿յ��ϴ�������Ϸ̨������Ϸ�������ķ�����<br />
<br />
�����������ڣ����ﻨ�����������������Ϊ�콫�������Ϸ���ţ��ϰ���Х�� ������ �Σ� �۾�����ؿ��Ŵ�Ϸ����Ȼ�ڶ������У������ҵĴ��ű��ƿ����߽�������Х����߶���Ķ����ڻ� ���żһ� �Σ���Х���ؼ�����ϲ����ʤ�����ڻ����ƴ�����꣬�����������ʧ�ܵ��³����λؼң��ǳ�ʧ�⣬����ͬĸ�츸�����þ����������䣬���ڻ��������ܡ�<br />
<br />
������ϷǰϦ��Х��ͻȻ���ಡ����Ժ��Σ����ֻ�ܽ����Ž����ڻ����죬���ŵĻ���С�� �������� �Σ��м�����������֪��֮����������Э���ڻ���������˽ӹܾ��ţ��ݳ���Ϸ��˫�������кøС����ڻ�������ţ�����Ҫ��Ը���Ա���䵭�Դ��������⣬���е����ŵ����չ��죬����������ҽԺ�ڣ��ڻ����ϸ������͌����Ů�����Է������ڻ�Ҫ�����ũ�����·���С�ġ��������ڻ������ڼ��Ϸ���������ڽ��ϣ������Ͽ�������˼��ľ����м��θ�������ڻ����Ƶ���������Σ�ա����ǽӽ��������ڣ�������С�༰������Ա����ʱ�������켰�޷����͵���Ϊ���ڻ��������ԣ�Ϊ�����˰�ȫΨ�����ȡ���ݳ���Ȼ��������У������ڻ�Ը��Ը�⣬һ���ֲ���Ϸ����ʵ��һ���ڰ������ݡ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/shengong/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/shengong/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/shengong/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/shengong/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/shengong/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ũ������Ϊ�й���������ڣ���˵������·ݣ��������Ŵ󿪣��λ�Ұ��ᵽ���䡰���桱��Ϊ������ǡ���Ͼ�ĳ�Ѱ������Ϸ�����ũ��������ʮ����ʮ�ߣ�춿յ��ϴ�������Ϸ̨������Ϸ�������ķ����񡣲������ڣ����ﻨ�����������������Ϊ�콫�������Ϸ���ţ��ϰ���Х�� ������ �Σ� �۾�����ؿ��Ŵ�Ϸ����Ȼ�ڶ������У������ҵĴ��ű��ƿ����߽�������Х����߶���Ķ����ڻ� ���żһ� �Σ���Х���ؼ�����ϲ����ʤ�����ڻ����ƴ�����꣬�����������ʧ�ܵ��³����λؼң��ǳ�ʧ�⣬����ͬĸ�츸�����þ����������䣬���ڻ��������ܡ���ϷǰϦ��Х��ͻȻ���ಡ����Ժ��Σ����ֻ�ܽ����Ž����ڻ����죬���ŵĻ���С�� ��������',N'�й����',N'���/�ֲ�',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617231-1-1.html',N'http://www.lwgod.com/attachment.php?aid=901915&amp;k=a7a34754b2ab61372c0a19a4fe5ccd06&amp;t=1412261727&amp;sid=26a4q064lU443YqXLhpXZ6D%2Fsisnhx1NBwiGsPFNuoWHQuY',N'2014/10/2 22:57:19',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 413,N'���Ը���Ů���𱬡����Ը�Ů�ع�1����BluRay-720P.MKV������Ӣ��',N'<font color="blue"><font size="5">����ԭ�̸߲�����ѹ�ƣ�������֮ǰ�����汾��̫�࣡<br />
�뿴�Ľ������£���Ƭ���������ۺúܶ࣬Ƭ��Ӧ�û�����</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/xiaomao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/xiaomao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������Ը�Ů�ع�/��·ɱ��/Сè����(δ�ּ��ӳ���)<br />
Ƭ��������Cat Run<br />
�ꡡ������2011<br />
�������ҡ�����<br />
�ࡡ���𡡶���/ϲ��<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�5.5/10 from 3,758 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1446147" target="_blank">http://www.imdb.com/title/tt1446147</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.77 GB<br />
Ƭ��������106 Min<br />
�������ݡ�Լ����˹�п�Τ�� John Stockwell<br />
�������ݡ����ȡ�ά�� Paz Vega ....Catarina<br />
����������˹���ء������ά�� Scott Mechlowicz ....Anthony<br />
�������������ݡ���˵ٶ� Janet McTeer ....Helen Bingham<br />
��������������˹�и���������� Christopher McDonald ....Krebb<br />
�������������ᡤ���� Tony Curran ....Sean Moody<br />
������������������޵� Karel Roden ....Daniel Carver<br />
����������Michelle Lombardo ....Stephanie<br />
����������D��L������ D.L. Hughley ....Dexter<br />
���������������ơ��¼����� Branko Djuric ....Hamilton<br />
����������Jelena Gavrilovic ....Grushenka<br />
�������������ȡ������� Ana Sakic ....Woman<br />
��������������������˰��� Alphonso McAuley ....Julian</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬ������һ��Ů�ع����������������ڸǷ����֤�ݣ���ʱ��λ�����˽����̽Ҳ�������С���<br />
<br />
�������ڰ����ᣨ˹���ء������ά�� Scott Mechlowicz �Σ���˵����Ϊһ���ɹ��ĳ�ʦ�����ı���־Ը��������������룬��������������˹����׼�������￪һ��С������û�뵽����������û���ɣ������ỹ��ż���ĺ���������������������˰��� Alphonso McAuley �Σ�һ�������˽����̽�Ļ�ơ�������֪���������Ǹ���ɫ�Ļ������ӣ��������Ļ��һ��ҵ���û��������<br />
<br />
����һ�����п������ȣ����ȡ�ά�� Paz Vega �Σ�������Ů�ӳ������˰����������������ǰ��������Ϊ������һ�ݾ��ܵ��鱨����Σ��֮�У��������������ѱ��Ĵ������ܹ������������������˴�ʱ����֪�����ǣ������Ѿ���Ϊ�����ɱ�ֺ��ף����ݡ���˵ٶ� Janet McTeer �Σ�����һ��Ŀ�ꡣ<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
����һ�����²�η��ӵĶ���ϲ�硶�Ը�Ů�ع�����������һ������˶��ֵ�ӰԪ�ص�ϲ����£������Ǹ��ַ�����Į�ӵ��µĻ���ʱ�̣�������ĵ�Ӱ��Լ����˹�п�Τ����John Stockwell��ִ������<br />
<br />
������ӰƬ�����������е�һλ������̽���������˹���ء������ά�ģ�Scott Mechlowicz����������ͨ��2004���һ����ŷ�������С���EuroTrip��ͻȻ�߽��˴�ҵ���Ұ������һ����ͬһ����ӳ�Ķ���ӰƬ����Ⱥ��������Mean Creek��������Ȼ��ʵ֤�������ά�Ĳ�����һ���ܶ������Ա������ȴ�޷��ڸ����Ż�����ı�����֣�����һ�ж��������������޺ͽ������Ը�����ģ������ά�ĳ��ϵ������е�ʱ���㲻�ò����������Լ���ѡ�񣬰��������ҵδ���ķ�չ�����ڵ����Ĺ�������������Ҫ��������֮�������ʧ����Ϊ���Ӧ�����ľ���Ϊ�˹��������������������뷨����Լ�£��ҷ����Լ�������������һ������Ϊ�ѵľ��أ��Ǿ���Ҫ��Ҫ��������ȥ��ֻΪ��һ����֪��ʱ����ֵ�������ĵĺõĵ�Ӱ�زģ��������ʣ�����Ч����ֹ����ʱ�����ڹ����е�æµ״̬��Ҳ�������˸����ʱ��ȥ˼�����̶��˽��Լ��������εĵ�����ʲô���� �ھ�����Ӧ�ķ�˼�����֮��˹���ء������ά����ѡ���ʱ��Ҳ�Եø��ӵ����������ˣ�����һ�۾ʹӡ��Ը�Ů�ع����п������Լ�һֱ�ڿ��Ѱ�ҵ����ʣ������ά��˵�������ҵ�һ�ζ����籾��ʱ������ʶ������һ��ӵ���ſ�Ұ���������ĵ�Ӱ���£������ڷ�չ�Ĺ����У�����ĺܶ����ݶ������˸�����Ҫ��ĵ����͸ı䣬����ÿһ�춼��ȫ�µ�Ԫ�ر���ӽ���������˵����һֱ���ڽ����еġ���<br />
<br />
������֮���Զ԰����������ɫ��˵����ԣ�����Ϊ�ҷ����ܴ����������ھ���ܶ���ȫ��ͬ�Ķ�̬��ϵ��˵ʵ��������һ�ηǳ�����Ȥζ�Եľ������ʼ����ʱ�򣬰�������һ��������Ա��������լ�У�Ȼ�����뿪�����ļ��ˣ�����һ��İ���ĵط����������������뿪һ�������Լ��Ĳ͹ݵģ����ȴ������ͯ���������������̽�����������׷�ٵ����Ů����һ����Ů������������Ŀ����������ʵʩ��һ����ı��һ��ıɱ�����ܵ��������ڸ�������������˵���׷���ᡣ����ʱ������ƣ������᲻�ò����Լ����ϵ�����Ǳ��ȫ�������������������з�չ�ͽ�������������һ���ӻ�������ȫΪ�����ҵ����ʵķ�й�����������������е�ʧȥ���ơ��� ȷʵ���κ������¶�����һ����İ������Ϥ��ѭ�򽥽��Ĺ��̣���Ȼ����һ���Ȳ����ѵ�����£�������ž�������һϵ���鷳���еģ����Ƕ���˹���ء������ά����˵����������δӱ��ֱ��ŵ�����Ӧ�ֵĹ��̣�ȷʵ��һ�ַǳ��������顣��������ʵ��һ���ǳ����������뷨���ˣ�ֻ���������������һ�ֺܲ���˼��Ĺ���۵���ѡ�����������һ�鳡���У�����������˹�ĵ��������ȡ�ά�Σ�Paz Vega�����ݵĿ������Ȳ�Ҫ͵���ĳ���ʱ���ƺ������ڶ������������һ����Ϊǡ���ô����ܽᣬ�����ά�����ݵ�������һ���ֵ�����ȷʵ�Ƿǳ�����Ȥζ�ԣ�Ҳ������������������ɫ�йص����ݡ���<br />
<br />
�����������ҿ�����������ﲢû�еõ���ֵķ��ӣ��ұ������Խ����̻��ĸ�����ȵģ�����һ����Ӱ���ԣ��Ͼ���Ҫ�����Ŷ���ҵ�������ܸ����е�һ����ɫ̫�����ҵĿռ䣬����Ϊ�˰��������ȶ�����Ľṹ�ͽ��࣬���ǲ��ò������������ʱ��Ϊ���������úõ�һЩ��ȫ��ͬ���Ը���档������ʹ��ˣ�����Ȼ��ӰƬ������˺ܶ�ǳ�������ʱ�̣���������Ҳ��������������������������ԭ��֮һ���� ��ȻӰƬ�в�û�ж԰�����Ϊ��������򡢱���������ϸ�Ľ��ͣ��������Ź��µķ�չ�����Ƕ�������ܹ��ӵ�ε�Ƭ���л�ϤһЩ��ص���Ϣ��˹���ء������ά��˵�������밲����֮���Ի��ɽ�������������֮ǰ��һЩ���������ܲ��ɷֵ���ϵ������������ȥ���ˣ��ټ������������ֵ�֮�������ѿ��Ĳ���״���������ǵ����л���ȡ���ˣ��������������Ҳ��һ�겻���������Ʋ��������ճ������е���һ�У������˴�ʹ���߽�����һ�����봫ͳ�ľ����ֱ�Ӷ�����Ҳ��ӵ�˵������Ϊʲô�����һ�����˽Ӵ��Ļ���Ϳ����ԡ��� ����ϲ�����жȵĵ�Ӱ����Ը�Ů�ع����������Ĺ����漰��ŷ�޺ܶ಻ͬ�ĵط�����Ȼ���ڶ������������޵�Ԥ�������£���ӰƬ��Ļ���Ӱ���Ŷӻ��Ǿ���ѡ�񼸴����е�λ�ý���ʵ�����㣬˹���ء������ά���������������Ƿֱ�ȥ�˱��������¡�����ά�Ǻ��ŵ��ڸ��ޡ�������ʵ����̫���ˣ���Ϊ���ǰݷõ�ȫ������ӵ���Ż�������ΰ�Ľ�����ĺ��������ͷ���С����Ȼ�󣬵����ǵִ���˹������׶����������µ�ʱ���ֱ�����Ũ�����ʷ��Ϣ�ͻ����ײ�ĵִ������������ס�ˣ�������ÿһ���˶��ԣ������ɶ���һ���ǳ����صľ��������顣��<br />
<br />
�������ݡ���˵ٶ���Janet McTeer����ӰƬ�����ݵ���һ����Ѫɱ�֣��������Ц���ǣ����İ��࿴�����ͺ����ǡ��������˼䡷��Mary Poppins�������������ƽ˹���������ֻ��֣������䶷�ͶԴ�ĳ������ڣ��������ȫ������һЩ�Ƿ���׿Խ������Ч����˹���ء������ά��˵������˵ٶ������������������˾�̾��Ů��Ա�����������һ������Ů������������������Եø��ӵػ����ˡ����ҷ���һ���ر�����˼��������������������һ��������ô��Ŷ��յı��������ҵĻ������ǿ��Լ���������������һ�棬�о��������̫���ˡ���ʼ���գ���˵ٶ����Եú��˷ܣ��������Ĵ������ǡ���������Ϸ�ﻹ��Ϸ�⣬������Ϸ����һ���쳣���ܵĹ��̡��� ���������̽��������İ������ǰ���������˰��ף�Alphonso McAuley����ͬ����һ����Ϳ�ĵ�ù������Ϊͯ��ʱ���ĺ����ѣ����ܴ�����֮��Ĺ�ϵ�ϸ��ܵ����Ǻ����ܵĸ������꣬˹���ء������ά�Ľ��͵�����Ϊ���ܹ�����Ǣ���ദ����ӰƬ��ʽ����֮ǰ���Һ���˰��׽����˺ü���˽�˻��Ļ��棬������ķǳ��غϵ��������������һ��ᡢ�ҽ�ڳ����桭����˰�����һ�������쳣�����С���ӣ��ܺ����������˺����������һ�ηǳ�ΰ������飬�����ܹ��ƶ�����ӰƬ��ǰ���ٶȣ�����һ�����󲻵��ķ�ʽ�������ڳ���ÿһλ������Ա����Ա��������ÿһ�춼�е��ܿ��֣����ⶼ����Ϊ����˰��׵Ĵ��ڡ��� ����Լ����˹�п�Τ����ǰ������Ա�����������ݹ���׳־���ơ���Top Gun�����ַǳ��ܻ�ӭ�Ķ�����Ƭ�������ḻ�ı��ݾ��飬�ͳ��ˡ��Ը�Ů�ع�����Ҫ����������һ�ֲƸ���˹���ء������ά��˵������һֱ���Ա��������߳����ĵ���ӡ����̣���Ϊ���Ƕ���Ա������ͬ�飬�������������ܱ���ġ��������֮ǰ��������Ա����ʹ����ת�͵����ݣ��м���ܻ��е�ĳЩ��������Ĭ���ǲ�����˾�����ת��ġ�˹�п�Τ���ı���ֻ���������������������ȥ����һЩ�������������ھ�ͷ�����÷��棬���������������˼��Ķ�̬Ч�������Ȱ���һ��ȫ�������һ��֮�����Ǿ͵õ���һ���൱����ĵ�Ӱ��Ʒ����<br />
<br />
�����ڡ��Ը�Ů�ع�������Ĺ����У�������Ա�빤����Ա���ڣ����ǹ�ͬ�����˺ܶ����Ҳ������������������֮һ����ʳ���ж�����ɵļ���ȱϯ��˹���ء������ά�Ļ�����������ڻ���������Ȼ�����е��������ţ��о��Ϻ����������������м�Ͷ����һ�Ŷ���������������һ�ܵ�ʱ�䣬���Ƕ�û�취���κ��£�ֻ�ܺͲ����򽻵��������ǵ�ʱ��������ά�ǣ���μ����ж��¼�һ���Ӿ�����������80%��ս����������һֱ����ҽԺ��ȴ�����κ�һ���һ���ҽԺ��������Ϊ��������������������߽���һ���Ѿ����յĶ�ͯҽԺ�����������ֿ��£���ֱ������������һ��ɱ�˵�Ӱ���ֳ����������ܵ���˵�����Ƕ����˵�����һ���ǳ���Ȥ��С�������� �ܶ��˶����ⲿӰƬ��Ƭ�������˷ǳ������������Ϊ���Ƿ��ֹ��µ������������ı����ƺ�ȫȻû��ʲô�����ԣ�ȷʵ�Ǻ��������˶Դ˲����Ի�Ĳ²⣬˹���ء������ά��˵������ʵ�ϣ����ǵ�ӰƬ�����ʱ�򲢲��С��Ը�Ů�ع���������ʹ�õ�����һ���������е����֡�������·ɱ�֡���Roadkill������󣬶�Ƭ���ľ�������ǰǰ������ٳ�����20����ͬ�İ汾�����ղž���ʹ�á��Ը�Ů�ع����ģ��Ҿ���������ֺ���Ȥ���򵥺üǣ�����һ������һ�����š��𱬵Ķ�����Ӱ��������Ҫ���ǣ����������κ�й©ӰƬϸ�ڵĿ����ԡ��� ���Ը�Ů�ع��������ص㣬������һ�ּ����������Ĺ�����̬���������ͬ�ĵ�ӰԪ���ۺ�����һ�𣬶��Ҳ�������κβ��ײ���Ĳ�Э���У�˹���ء������ά�ı�ʾ�����ⲿӰƬչ�ֳ��������뽲�����йص���ȫ��һ���Ķ����ԣ������ǰ�����֮Ϊ�����ӻ⡯Ҳ��Ϊ���������Ҿ������ʺ��κα����Ĺ���Ⱥ�壬������ĵ�ӰƷζ��ʲô���ģ��߶˵�Ҳ�ã����׵�Ҳ�գ����ܴ��������������������ҵ������Լ��Ŀ�����Ȥζ�ԡ����������ǲ��õļ��ȿ��ȵĹ��½��࣬Ҳ�ڲ��ϵؼ��١����µ��У�ֱ�����е�һ����Ҳû�취ͣ����Ϊֹ���Ʊػ����������ס���ע������������Ҳ�޷��ƿ�Ŀ�⡣��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/xiaomao/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/xiaomao/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/xiaomao/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/xiaomao/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/xiaomao/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬ������һ��Ů�ع����������������ڸǷ����֤�ݣ���ʱ��λ�����˽����̽Ҳ�������С������ڰ����ᣨ˹���ء������ά�� Scott Mechlowicz �Σ���˵����Ϊһ���ɹ��ĳ�ʦ�����ı���־Ը��������������룬��������������˹����׼�������￪һ��С������û�뵽����������û���ɣ������ỹ��ż���ĺ���������������������˰��� Alphonso McAuley �Σ�һ�������˽����̽�Ļ�ơ�������֪���������Ǹ���ɫ�Ļ������ӣ��������Ļ��һ��ҵ���û��������һ�����п������ȣ����ȡ�ά�� Paz Vega �Σ�������Ů�ӳ������˰����������������ǰ��������Ϊ������һ�ݾ��ܵ��鱨����Σ��֮��',N'����',N'����/ϲ��',N'1280 x 720',N'2011',N'http://www.lwgod.com/thread-617592-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902500&amp;k=bff16cfb73b73a90c08f20724de476a3&amp;t=1412261727&amp;sid=301bf6%2FtrDUf%2Bx%2FN944L4t43U63JgHq9D36xZ%2FSACW3b2s0',N'2014/10/2 22:57:19',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 414,N'����14ȫ�������ڴ��������ν��4����BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/bianxingjingang4/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/bianxingjingang4/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ν��4����������/���ν�գ���������(��)/���ν��4�����ʱ��/���ν��4/��4<br />
Ƭ��������Transformers: Age of Extinction<br />
�ꡡ������2014<br />
�������ҡ�����/�й�<br />
�ࡡ���𡡶���/ð��/�ƻ�<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.1/10 from 111,037 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2109248" target="_blank">http://www.imdb.com/title/tt2109248</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��5.24 GB<br />
Ƭ��������165 Min<br />
�������ݡ����˶����� Michael Bay<br />
�������ݡ���ˡ��ֶ����� Mark Wahlberg ....���¡������ Cade Yeager<br />
�����������ݿ���������� Nicola Peltz ....̩ɯ������� Tessa Yeager<br />
�����������ܿˡ���ŵ Jack Reynor ....Ф�� Shane<br />
��������������� Bingbing Li ....������ Su Yueming<br />
����������˹̹����ͼ�� Stanley Tucci ....Լ���� Joshua<br />
��������������ϣ������Ī Kelsey Grammer ....���޵¡���͡�� Harold Attinger<br />
������������ͼ˹��ά���� Titus Welliver .... ������ Savoy<br />
���������������ǡ�����˹ Sophia Myles ....���� Darcy<br />
����������T��J������ T.J.Miller ....¬��˹ Lucas<br />
�������������ء����� Peter Cullen ....������ Optimus Prime (voice)<br />
����������Լ�����ŵ��� John Goodman ....̽�� Autobot Hound (voice)<br />
�����������ɱ�ǫ Ken Watanabe ....Ư�� Drift (voice)<br />
����������Լ�����ϡ��꼪ŷ John Di Maggio ....ʮ���� Crosshairs (voice)<br />
�����������޲��ء�������˹ Robert Foxworth ....�Ȼ��� Ratchet (voice)<br />
���������������ˡ�ά���� Frank Welker ....������ Galvatron (voice)<br />
������������ˡ��� Mark Ryan ....���� Lockdown (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������·�����ǰ��֥�Ӹ��ռ���ս���������������컢�ӵ��������伣��������Ҳ�ڶϱڲ�ԫ�ķ����п�ʼ��������Ȼ����һȺ���մ�Ȩ������������ſ�ѧ�ң�����ͨ���ǳ����ִ��Ʊ��ݣ��з�������ʵ�����Լ�Ԧ��ȫ�¼��������ͬʱ������Ҳ���ܵ���һ�����϶�ǿ��ı��ν�յ���в���ţ��غ�������ū�۵���аʷʫ��սһ����������<br />
<br />
���������ǳ����ҵ�֥�Ӹ��ս����������Ȼ�ɹ������˰��컢�����֣�ȴҲ�õ����˶�����ʧȥ��Ӧ�е����������ء�������������齨�ġ�Ĺ�硱���Ӷ����еı��ν�ս����޲�����ɱ��һʱ�������˺Ͱ��컢ȫ���ڵ��򲻼�����Ӱ��ĳ�죬��ס�ڵ��ݵ����ǻ�е�����ҿ��¡�������ˡ��ֶ����� Marky Mark �Σ������һ���ƾɵĿ�����ͷ��˭֪�Ǿ��Ǵ��������е��������������������ᵽ��Ϣ��Ĺ�粿�ӷ�ӵ���������Ѻ�������������˿���һ�ң�Ҳ��ɢ���ڸ�����������������ȡ����ϵ����һ���棬���������ѧ�Ҵӱ��ν�յĲк��л�֪�����Ǳ��ε����ܣ�����ͼ�������������գ�����̥��������ľ������������ǵĵ�����Ʒ�Լ���������<br />
<br />
������һ�ֵ�Σ�������������������ٸ�������ѡ���<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
�����˶����������ع顶��4������Ϊ�����¼��µĻ���Ӱ�ǿ�������Ը��Ϊ���ν����3��Сʱ�Ķӣ��������þ��鲻��ĵ����ģ��Ա�֤ӰƬ������<br />
<br />
����������������������ҡ�ĳ��ͷ�ȥ���˶������İ칫�ң���ȷ����Щ�����ڵ�Ӱ����һϯ֮�ء�<br />
<br />
�����˶����������þ�ʯǿɭ���ˣ���ϧʱ����г�ͻ����Ȼ��������Ǯ�š�����λ������Ҫ�ؾ��ˡ�<br />
<br />
���ⲿӰƬ��Լ����18���±��ν�ս�ɫ��<br />
<br />
�����˶���������������������һ��ӵ��850��ĵ�Ӱ��ҵ��ҵ���顣<br />
<br />
������4�����ײ�����4K IMAX 3D��Ӱ������ĵ�Ӱ��һ̨��Ӱ���ͼ�ֵ100����Ԫ��<br />
<br />
����ֵ������Ԫ��4K IMAX 3D��Ӱ������װ���˼�ֵ5�������ı�ʱ�ݿ��綥����<br />
<br />
�����˶�������������Ʊ��ν�ձ���Ϊ��������������ÿ����Ӱ�ﶼ������ս��һ������<br />
<br />
�����˶�������һ��ʼ��������һϵ������۷�������ڣ�������Ϊ�й����ڡ��ع���һЩƬ�Ρ�<br />
<br />
���������������ӰƬ�еġ���ɫ������ܴ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/bianxingjingang4/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/bianxingjingang4/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/bianxingjingang4/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/bianxingjingang4/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/bianxingjingang4/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/bianxingjingang4/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/bianxingjingang4/7.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����·�����ǰ��֥�Ӹ��ռ���ս���������������컢�ӵ��������伣��������Ҳ�ڶϱڲ�ԫ�ķ����п�ʼ��������Ȼ����һȺ���մ�Ȩ������������ſ�ѧ�ң�����ͨ���ǳ����ִ��Ʊ��ݣ��з�������ʵ�����Լ�Ԧ��ȫ�¼��������ͬʱ������Ҳ���ܵ���һ�����϶�ǿ��ı��ν�յ���в���ţ��غ�������ū�۵���аʷʫ��սһ���������������ǳ����ҵ�֥�Ӹ��ս����������Ȼ�ɹ������˰��컢�����֣�ȴҲ�õ����˶�����ʧȥ��Ӧ�е����������ء�������������齨�ġ�Ĺ�硱���Ӷ����еı��ν�ս����޲�����ɱ��һʱ�������˺Ͱ��컢ȫ���ڵ��򲻼�����Ӱ��ĳ�죬��ס�ڵ��ݵ����ǻ�е�����ҿ��¡�������ˡ��ֶ����� Marky Mark �Σ�',N'����/�й�',N'����/ð��/�ƻ�',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617989-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903483&amp;k=53ee3e882510b6710e28405dc17d9dc8&amp;t=1412261729&amp;sid=4d55MtEiFYqHZDLHe4PbRy%2BL7eTWkum%2FcoG6qAMuZlI9NKM',N'2014/10/2 22:57:20',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 415,N'����14�������߷ֱؿ����������崺������HD-1024.MP4�������',N'<font color="blue"><font size="5">������7.6�ָ߷֣�����Ƭ���ѵõĸ߷ִ�����<br />
�����Ҳ�Ҫ����ˣ�</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xiuchundao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xiuchundao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������崺��/������崺��/ն����<br />
Ƭ��������Brotherhood of Blades<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ���𡡶���/����/����/��װ<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�������֡�7.0/10 from 38 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt4019426" target="_blank">http://www.imdb.com/title/tt4019426</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��1.04 GB<br />
Ƭ��������107 Min<br />
�������ݡ�·�� Yang Lu<br />
�������ݡ����� Zhen Zhang ....����<br />
������������ʫʫ Cecilia Liu ....����ͮ<br />
������������ǧԴ Qianyuan Wang ....¬����<br />
�����������ѧ Dong Xue Li ....��һ��<br />
������������Զ Yuan Nie ....�Ծ���<br />
������������ʿ�� Shijie Jin ....κ����<br />
�����������쵤 Dani ....κ͢<br />
������������һΧ Yiwei Zhou ....����<br />
����������Ҷ�� Qing Ye ....����<br />
���������������� Lixin Zhao ....����</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����������ʵ۵ǻ�����̫��κ���ͣ������� �Σ����䡰�˵������������㳲���𡣽���������¬���ǣ���ǧԴ �Σ������������� �Σ��ͽ�һ�����ѧ �Σ�������ֵ���Ϊ������ֱ���ϴ�¬����Ϊ�����ٰٻ�������Ϊ��̷�˾��Ů����ͮ����ʫʫ �Σ��������ܽ�һ��Ϊ�������˶��ޣ���һΧ �Σ��ľ��������ֵܾ������ܶ��������Ծ��ң���Զ �Σ�׷ɱκ���͵������ж����ж��������⵽κ������Ůκ͢���쵤 �Σ�����������һ���ȷ�Ѫ���κ����ʬ�ױ����أ�¬������Ը�Գ����ٰٻ�������Ϊ������Ը����ʵ�֣���û�뵽������Ȼ������һ���������ܣ����������˴󳼺����������� �Σ��Ļ��ɡ��˺����ֵܶ�����������Σ�գ���������˵�����൫Ϊʱ������һ����õ�ҽ��Ů�ӣ�Ҷ�� �Σ�������ͮ����ǣ�����С����Σ����������������ֵܡ������뿪���ǣ���͢������ң�С��������˽���ȥ�δӣ�<br />
<br />
�������������ʵ۵ǻ���Ȩ�����µĴ�̫��κ���ͱ������ǹ٣��˵����𡣽���������׷���˵�����һ����ָ�ɸ�¬���ǣ���ǧԴ �Σ������������� �Σ�����һ�����ѧ �Σ����������ǽ���ֵܣ���������׮����Ĳ��£�ȴΪ�������˵�����ת��������������<br />
<br />
����¬���ǡ���������һ�����˸����ص㣬Ҳ�������¡����¬���ǳ������أ�һ�����ɸ��׵���Ը��Ϊ�������ٻ������������������̣���������һ��Ϊ�ֵ����룬����������̷�˾��Ů������ͮ����ʫʫ �Σ������ܽ�һ�������Ų��ɸ��˵Ĺ�ȥ����ʦ�ֶ��ޣ���һΧ �Σ�����������<br />
<br />
�������ֵܷ���׷ɱκ���ͣ������� �Σ���һ����������֮�󣬴����˴�̫��κ���͵�ʬ�ף�����Ϊƾ�˴󹦣����˵���Ը�Կ�ʵ�֡������ţ���ʬ���˵�������¼��ķ�����������Ϊ��ʸ֮�ģ�Σ��ҲԽ��Խ�󡭡�<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
������Ӱ����<br />
<br />
������������崺����ʵ���������������ı�׼���ã�������ǽ��������Ʒ������崺�����ǽ������Ŀ�������������ʵ�ʺֲܿ�������������λ������Ƭ�ж�ʹ�á��崺������Ƭ��Ҳ�ɴ˵�����<br />
<br />
������������<br />
<br />
������Ӱ�Ĺ��µ���Դ���ձ�����˾����̫�ɵġ�������˾֮������·��������ид���ԭ���Ա�Ե�˵���ͨ���Ϊ��������·���ı��£����µĺ��ı�Ϊ��Ե���߶Բ�Ū�Լ������˵ĵֿ���������Ȼ��Ҫ�������Ǻ����ˡ�<br />
<br />
������������ä�˵�ӰԺ��ͬʱ�Ѿ�д���ˡ��崺�����Ĺ��³��Σ��籾д����2010�ꡣ·�����ġ��崺����ʱ���й�˾Ȱ������װ��ĳ��ִ�Ϸ�����ܾ��Ѳ��㣬������û��ͬ�⡣Ҳ����Ϊû����Ͷ�ʣ�û����Ա�ͷ��з�Ը�������2012��ף�ԭ������ϣ����·���ɹ���˵������Ա����Ҳ���������Ӱ��3000��Ͷ�ʡ�<br />
<br />
��������ʱ��·��һ��ʼ���򶨣�������Ϊ��������Ӱ�������ģ������������������Ǯ���������������������ú������Ӱ�����硶��Ӱ���ء����Ľ�����Ǵ�ͳ����Ƭ�������������ⲿ��Ӱ�������Ҫ�����ġ����ٵľ�ͷ�����ھ������ǵ���������ֻ��67�죬����һ�����������������ʮ����ͷ������ŵ�һ������һ�ٸ�����һ�����������Ĺ�������һ��һ��ֻ���ʮ����ʮ����ͷ��<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
�������ֳ��ǳ����죬ʬ���أ�һƬѪ�ȣ��������ġ����˳��������ڰ���Ҳ͸�ż�����ɭ�ɲ��ĸо���<br />
<br />
����Ա��ǧԴ�״������Ϸ��Ҳ������һͬ��ϰ������Ϊ�ݴ�绹Ҫճ�����ӡ���<br />
<br />
������ʱ��Ա����Ҫ���Ϸ�� �������족�ĸ��»�������Ҫ�����������������Ϸ�����ѧ��˵�٩�Լ��ǡ�ʮ��Ϸ�����ﺹ����<br />
<br />
���ڡ��崺�����У�������ʹ�õ������Ե�Ϊ������ǰ�������£�������ָɣ��ר��������ѵ����<br />
<br />
����Ȼ����ʹ���崺������Ҳ�в�֮ͬ�����ѧ�õ���˫���������ǧԴ�õ���ն������������ĵ���ӽ��崺��ԭ�ͣ����������˸�����<br />
<br />
���쵤���ݵ�κ͢����һ��Ů�Խ�ɫ������κ����һֱ��������������������Ƭ�����������Ի���������<br />
<br />
����ǧԴ����������Ϸʱ��ƨ�ɱ�ĥ��һ��Ƥ��˯����Ҫſ��˯��<br />
<br />
���ⲿӰƬ����ǧԴ�״����㶯��Ϸ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xiuchundao/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xiuchundao/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xiuchundao/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xiuchundao/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xiuchundao/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���������ʵ۵ǻ�����̫��κ���ͣ������� �Σ����䡰�˵������������㳲���𡣽���������¬���ǣ���ǧԴ �Σ������������� �Σ��ͽ�һ�����ѧ �Σ�������ֵ���Ϊ������ֱ���ϴ�¬����Ϊ�����ٰٻ�������Ϊ��̷�˾��Ů����ͮ����ʫʫ �Σ��������ܽ�һ��Ϊ�������˶��ޣ���һΧ �Σ��ľ��������ֵܾ������ܶ��������Ծ��ң���Զ �Σ�׷ɱκ���͵������ж����ж��������⵽κ������Ůκ͢���쵤 �Σ�����������һ���ȷ�Ѫ���κ����ʬ�ױ����أ�¬������Ը�Գ����ٰٻ�������Ϊ������Ը����ʵ�֣���û�뵽������Ȼ������һ���������ܣ����������˴󳼺����������� �Σ��Ļ��ɡ��˺����ֵܶ�����������Σ�գ���������˵�����൫Ϊ',N'�й�',N'����/����/����/��װ',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-617204-1-1.html',N'http://www.lwgod.com/attachment.php?aid=901699&amp;k=ce44d33b49d558a792ae5f8d04df624e&amp;t=1412261728&amp;sid=f745V5jdEPf7OvTqPxvMkBfUGvA0rOYvtsyV6U%2B0thWgNfw',N'2014/10/2 22:57:20',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 416,N'����14����Ů���������Ը�Ů�ع�2����BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/xiaomao2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������Ը�Ů�ع�2/��·ɱ��2/Сè����2<br />
Ƭ��������Cat Run 2<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡶���<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�3.9/10 from 245 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3461828" target="_blank">http://www.imdb.com/title/tt3461828</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.65 GB<br />
Ƭ��������96 Min<br />
�������ݡ�Լ����˹�п�Τ�� John Stockwell<br />
�������ݡ����ء����ޡ����� Winter Ave Zoli ....Tatiana<br />
����������˹���ء������ά�� Scott Mechlowicz ....Anthony<br />
��������������������˰��� Alphonso McAuley ....Julian<br />
����������Kamille Leai ....Simone<br />
��������������ɯ�������� Vanessa Branch ....Hannah Wollcroft<br />
����������Maria Rogers ....Mina<br />
����������Lawrence P. Beron ....Bojan Dragnovic<br />
����������Thomas Hyde III ....Wilson<br />
����������David Maldonado ....Lamonde<br />
���������������ɶࡤ�� Leonardo Nam ....Zhang</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������Ƭ�ǡ��Ը�Ů�ع�������������Ȼ��Լ����˹�п�ά��ִ����ӰƬ������һ��Ů�ع����������������ڸǷ����֤�ݣ���ʱ��λ�����˽����̽Ҳ�������С���<br />
<br />
�������Ը�Ů�ع�2���ǡ��Ը�Ů�ع���������ӰƬ��ӰƬ������һ��Ů�ع������˾�������Ҫ�鱨������˽����̽Ҳ�������У�׷ɱ�뱻׷ɱ�Ĺ��£�����ӰƬȫ������������ȡ�����㣬ӰƬ��������Ů�ع���ս�����˵Ŀƻó��棬��ν�Ƕ���Ԫ�ػ���һ������Ƭ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/xiaomao2/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/xiaomao2/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/xiaomao2/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/xiaomao2/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/xiaomao2/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����Ƭ�ǡ��Ը�Ů�ع�������������Ȼ��Լ����˹�п�ά��ִ����ӰƬ������һ��Ů�ع����������������ڸǷ����֤�ݣ���ʱ��λ�����˽����̽Ҳ�������С������Ը�Ů�ع�2���ǡ��Ը�Ů�ع���������ӰƬ��ӰƬ������һ��Ů�ع������˾�������Ҫ�鱨������˽����̽Ҳ�������У�׷ɱ�뱻׷ɱ�Ĺ��£�����ӰƬȫ������������ȡ�����㣬ӰƬ��������Ů�ع���ս�����˵Ŀƻó��棬��ν�Ƕ���Ԫ�ػ���һ������Ƭ��ӰƬ',N'����',N'����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617532-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902451&amp;k=7d9bac0c90214ebb56e34373af90e35d&amp;t=1412261728&amp;sid=fb27BauouQT%2BHGO1NK8vJTggBkWQMrky7QjbfzQxyZpSA5Y',N'2014/10/2 22:57:20',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 417,N'������14��ħ�þ��ơ�����˯ħ�䡿��BluRay-720P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������˯ħ��/��ħ�󣺳�˯ħ��(��)/��ħŮ����˯ħ��(̨)/���շ�ɭ/�ڷ�ħŮ/˯�����⴫<br />
Ƭ��������Maleficent<br />
�ꡡ������2014<br />
�������ҡ�����/Ӣ��<br />
�ࡡ���𡡶���/���/ð��/��ͥ<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.3/10 from 103,916 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1587310" target="_blank">http://www.imdb.com/title/tt1587310</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.65 GB<br />
Ƭ��������97 Min<br />
�������ݡ��޲��ء�˹��ķ���� Robert Stromberg<br />
�������ݡ��������ȡ����� Angelina Jolie ....���շ�ɭ Maleficent<br />
�������������������� Elle Fanning ....���幫�� Princess Aurora<br />
����������ɳ���С������� Sharlto Copley ....˹�ط����� Stefan<br />
������������ķ������ Sam Riley ....���߶� Diaval<br />
���������������١�˼���� Brenton Thwaites ....�������� Prince Phillip<br />
������������˿������ά�� Lesley Manville ....�������� Flittle<br />
������������÷���˹���� Imelda Staunton ....��Ҷ���� Knotgrass<br />
������������ŵ��̹�ն� Juno Temple ....��ާ���� Thistletwit<br />
�������������������ڶ� Ella Purnell ....��Ů���շ�ɭ Teen Maleficent<br />
�����������ܿ�ɭ������˼ Jackson Bews ....����˹�ط� Teen Stefan<br />
������������������Ī���� Isobelle Molloy ....��ʱ���շ�ɭ Young Maleficent<br />
�������������˶���ϣ��˹ Michael Higgins ....��ʱ˹�ط� Young Stefan</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������շ�ɭ���������ȡ������Σ�����һ���������࣬ӵ�г���ܹ�������������ӣ�������������͵�ɭ��������Ȼ�����õ�ʱ�����Ƕ��ݵģ�����ͻ�����������Ϯ�����շ�ɭ��ս�����𽥳ɳ�Ϊ��Ƭɭ�ֵ��ػ��ߣ�ͬʱҲ���ܵ������鱳�ѣ��Ӵ��������鿪ʼ�����ᣬ�Ժ�ֻʣ�������ͷ��Ϊ�˱������������������Ů�����幫��ʩ�¶��䣻Ȼ�����Ű���ĳɳ������շ�ɭ������ʶ��������λС���������ܸ��������������ƽ��Ҳ���ܸ��Լ����������Ŀ��֡�<br />
<br />
������������͵�Ħ������������Ĵ�ɭ���У������뾫���г�ദ���������ǡ���һ�꣬������а��С��Ů���շ�ɭ����ɯ������Ī���� Isobelle Molloy �Σ�����������С�к�˹�ط������˶���ϣ��˹ Michael Higgins �Σ���������С�޲£���Ϊ�����޼�ĺ����ѣ�����������ػ���׹�밮�ӡ��������������������˹�ط���ɳ���С������� Sharlto Copley �Σ���ȥ�����յĴ��棬�������̰���������������շ�ɭ���������ȡ����� Angelina Jolie �Σ���ɳ�Ϊ����ǿ�����Ů���޴���������Ħ��������չ��˹�ط�Ϊ�˳�Ϊ��λ�̳��ߣ����̵ظ��������շ�ɭ�ĳ��<br />
<br />
���������ʹ�������Ĵ��ˣ������շ�ɭ�����������޵����ħŮ��Ϊ�˸�������˹�ط���Ů�����幫�������������� Elle Fanning �Σ�ʩ���˳�˯ħ�䡭��<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
��������Ƭ������İ������ȡ�������̸����������ɫʱ�ƣ����շ�ɭʵ������һ����ΰ����ˣ������ǲ������ġ�����Ϊ������մ�ֶ����ڴ���ԭ�й��µ�ͬʱ�����ǶԹ������˼򵥵ļ򻯻���ת�����ǽ���һ������Ĺ��£�&quot;���ǵ���ս��վ����һ���Ƕ�ȥ������&quot;��<br />
<br />
����ӰƬ����Ϊ���ǵ����˹����շ�ɭͷ�ϳ��ǣ�Ƥ����ɫ���ܱ���ɺ���ɫ�ľ�����̸����ɫ����ʱ��������������������У���ţ���ǲ���ȱ�ٵģ�&quot;ţ��װ&quot;���ʺ��Լ�����Ҳ���л���˺ܶ���Ȥ��<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
�������Ů��ޱޱ����Ƭ�а���Сʱ��İ��幫���������ʾ��Ů�����ݽ�ɫ��ȫ�ǡ������������������������С��Ա������ͷ�ϵĽǺͼ���ָ���Ż��ˣ���������Ҫһ�������ݶ���Ϸ��ֻ����ޱޱ����<br />
<br />
��Ϊ��Ƭ�еĿ������ͣ�����ÿ����Ϸǰ��Ҫ����������Щ��������ͻ��ȧ�ǣ�����Ҳ�ǿ������ߵġ�<br />
<br />
����Ƭ�����޲��ء�˹��ķ���������Ρ��������������˹�����ɾ����͡�ħ�����١�������ָ��������˯ħ�䡷�����׶ȵ��ٵ��ݵĴ�������<br />
<br />
��������̸���Խ�ɫ�����ʱָ����������˯ħ�䡷�����ǵ����Ľ���һ������Ů�׵Ĺ��£�����Ҫ̽��һ���������һ��������а��Ҳ���ǡ��������������ɵġ���ӰƬ���ص��ǽ�¶Ů�ױ���Ĺ��¡���<br />
<br />
������Ů����Lana Del ReyΪ��Ƭ�������ϰ����������Once Upon a Dream���������ɰ������ȡ��������յ����ѡ��<br />
<br />
��ӰƬ�ǵ�ʿ�ṫ˾��ʷ������һλ���˵�������Ͷ������ӰƬ��������2010��ġ���ս�͡���<br />
<br />
����Ƭ��2014��5��30����ʼ��ӳ������Ҳ������1959��桶˯���ˡ�����ӳ55��������ա�<br />
<br />
������˯ħ�䡷�������Դ�2010�꡶�������á�ʱ������֮�����ݵĵ�һ��������<br />
<br />
����Ƭ�����շ�ɭ�İ�����һֻ��ѻ������Diaval(������ħ��devil����)�����ϰ�����ѻ�����н���Diablo�������������ж�ħ����˼��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����շ�ɭ���������ȡ������Σ�����һ���������࣬ӵ�г���ܹ�������������ӣ�������������͵�ɭ��������Ȼ�����õ�ʱ�����Ƕ��ݵģ�����ͻ�����������Ϯ�����շ�ɭ��ս�����𽥳ɳ�Ϊ��Ƭɭ�ֵ��ػ��ߣ�ͬʱҲ���ܵ������鱳�ѣ��Ӵ��������鿪ʼ�����ᣬ�Ժ�ֻʣ�������ͷ��Ϊ�˱������������������Ů�����幫��ʩ�¶��䣻Ȼ�����Ű���ĳɳ������շ�ɭ������ʶ��������λС���������ܸ��������������ƽ��Ҳ���ܸ��Լ����������Ŀ��֡���������͵�Ħ������������Ĵ�ɭ���У������뾫���г�ദ���������ǡ���һ�꣬������а��С��Ů���շ�ɭ����ɯ������Ī���� Isobelle Molloy �Σ�����������С�к�˹�ط���',N'����/Ӣ��',N'����/���/ð��/��ͥ',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617123-1-1.html',N'http://www.lwgod.com/attachment.php?aid=901631&amp;k=dda4d0e5bb3556be24eca447ec693253&amp;t=1412261729&amp;sid=6c3bNki7esBSsuMxmyKJYOrNMmLgRczzTIp%2FiHf4Ut4%2FfS4',N'2014/10/2 22:57:21',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 418,N'����14�»�ɫ�ഺ�������ŵĻ��ԡ���BluRay-720P.MKV�������֡�',N'<font color="blue"><font size="5">��ƬIMDB����һ�㣬������ȴ��7.5�߷֣�<br />
���ۺܸߵ�ӰƬ���Ƽ��ۿ���</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/youyadehuangyan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/youyadehuangyan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ŵĻ���<br />
Ƭ��������Thread of Lies<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡾���/����<br />
����ԡ�����<br />
�֡���Ļ�����ļ�<br />
�������֡�6.3/10 from 16 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3837154" target="_blank">http://www.imdb.com/title/tt3837154</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.73 GB<br />
Ƭ��������117 Min<br />
�������ݡ�� Han Lee<br />
�������ݡ���ϲ�� Hie-ae Kim ....����<br />
���������������� Yoo-jeong Kim ....����<br />
���������������� Ah-sung Ko ....����<br />
���������������� Hyang-gi Kim<br />
�����������ɶ��� Dong-il Sung<br />
���������������� Ah In Yoo</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
���������ŵĻ��ԡ��ǡ������ҵá�������嫵�������ӰƬ�ı������ҽ������ͬ��С˵����һ����ɫ�������ഺƬ������һλƽ����ŮͻȻ����Χ����Ů����������ĸ�ס�������Χ������֮�䷢���Ĺ��¡�<br />
<br />
��������ͥ�����ڳ��й������κ�ʱ����ֱ���������������磨��ϲ�� �Σ��ͶԼ��˺����������⡢ӵ�й�Ƨ�Ը�Ľ�����ǣ������� �Σ����Լ����Ƕ�����ͽ������º͵�СŮ�����ǣ������� �Σ���һ�����һ�����������뿪����������֮��������õ�СŮ������ȥ������ͽ�㾪��ʧ�룬���͵�����ͽ��Ϊ����Ӧû�����ǵ�����Ŭ���š�ֱ������żȻ�����ǵ����ѿ��е�֪��һЩ���ǵ����ܣ�ԭ������֮�����������ܵ����ѻ����йء�ͬʱ�����ǻ����ں�ɫë����������������ص���Ϣ����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/youyadehuangyan/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/youyadehuangyan/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/youyadehuangyan/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/youyadehuangyan/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/youyadehuangyan/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�������ŵĻ��ԡ��ǡ������ҵá�������嫵�������ӰƬ�ı������ҽ������ͬ��С˵����һ����ɫ�������ഺƬ������һλƽ����ŮͻȻ����Χ����Ů����������ĸ�ס�������Χ������֮�䷢���Ĺ��¡�����ͥ�����ڳ��й������κ�ʱ����ֱ���������������磨��ϲ�� �Σ��ͶԼ��˺����������⡢ӵ�й�Ƨ�Ը�Ľ�����ǣ������� �Σ����Լ����Ƕ�����ͽ������º͵�СŮ�����ǣ������� �Σ���һ�����һ�����������뿪����������֮��������õ�СŮ������ȥ������ͽ�㾪��ʧ�룬���͵�����ͽ��Ϊ����Ӧû�����ǵ�����Ŭ���š�ֱ������żȻ�����ǵ����ѿ��е�֪��һЩ���ǵ����ܣ�ԭ������֮�����������ܵ����ѻ����йء�ͬʱ������',N'����',N'����/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616273-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899186&amp;k=a943c7c158f8239ff20521a57058c5bf&amp;t=1412261730&amp;sid=72e8UxyubSDrfKp0r43mdS9kFtrvmJEu7Ecs9vANyhWQe28',N'2014/10/2 22:57:21',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 419,N'��ŷ��14��˿��ϮŮ�񡿡�����Ӣ�ۡ���HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chaomengyingxiong/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chaomengyingxiong/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������Ӣ��<br />
Ƭ��������A Simple Hero<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ����ϲ��/����/ð��<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��887 MB<br />
Ƭ��������89 Min<br />
�������ݡ�ŷ����ǿ Fenqiang Ouyang<br />
�������ݡ�ŷ�� O Ti<br />
���������������� Shuting Yang<br />
������������̩�� Taishen Cheng<br />
������������Դ Yuan Tian<br />
�������������� Prince Yau</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����һ��ҵ�ౣ�ں���������������ͬչ����һ�ξ��Ķ��ǵĻ���֮�á�<br />
<br />
����ŷ�ܰ��ݵġ���˿�С��������ð��ݵġ�D CUP����������Թ��й�Ů�ڻ�Ե�ɺ��±���ͬ���Լ�����ǧ���������δ֪��Σ�պ͸���·ʱ����֮�䲻�ϵ�Ħ��������̤����;��һ·���������ؿ����ĥ�ѣ��ȱ������Ż�Χ׷�½ر��پ������ְ�·ɱ�����������ݡ��ؿ�ζ��׷������ս��������׳���ķ����������������֮�У����Թ�ϵҲ�������ķ��ͣ�Ů�����𽥱��ڻ���<br />
<br />
<font color="red"><strong><font size="3">Ļ������</font></strong></font><br />
<br />
������87��ֱ��������ŷ����ǿִ���Ĺ�·ϲ���Ӱ������Ӣ�ۡ������½����ȸ��ģ�����Ϸ��ʶ��ŷ�ܺ������ã��״δ��Ļ���¾��Ե�Ĭ��ʮ�㣬ٲȻһ�Ժ��������ɴεĻƽ�������Ϸ����λ��������͸����ٳɴ󷨵��أ�ͨ���ع�����㻨����������һ̽�����ɡ�<br />
<br />
���������ؾ�һ�����Ȳ��ɳܡ�<br />
<br />
����Ϸ�У���ŷ�����ݵĹ�̹��һ���ĵ��������ȴ����ȵķ�ְҵ���ڣ���ô������Ȼ�����Ŀ��ұ��졣��ֵ�����Ƭ����ϢʱҲ���������ˣ����װ���ȣ�������������Ŀɰ������ɰ������ø��ֻ��ˡ���˵������������Ĵ��к������׼���Ů���İ���Ŷ��<br />
<br />
���������ؾ�������Ĭ�Ƿ�����<br />
<br />
�������������⣬��ĬҲ���������˸����һ�󷨱����׻�˵���˲�����Ů�˲�����Ӧ�øĳ����˲�ƶ�죬׷���ܶ��ȡ������ֳ���ŷ���ܻ�ʱ��ʱð��һ�侫����¼���ǵ������ý�Ц������������§��һ��üĿ�������̬�������е��Ϸ�����ġ��Ͻš�����<br />
<br />
���������ؾ�������������ǹؼ���<br />
<br />
����׷Ů�����˷�����Ĵ��������⻹�������㿴�˼�ŷ�ܶ����Լ���������Ļ��ᡣ��Ϸʱ�ڱ����������������Ů����ǰ�ְ�ο�����ע����һ������죬һ������۵ģ�װ�����Ĺ����ɲ�һ�㰡��<br />
<br />
�������á�ŷ�ܨD�D��Ů���ӡ�С���ˡ���<br />
<br />
���������¸���Ѹ������֮������ð��鱣���أ������ù�̹�ͻ�������λϷ����ʥ�����֧֧�ж���<br />
<br />
����Ϸ�����·�ϵ�С����������Ů���ӣ���·�벻���������С���ŷ��ƽ�����ǹ����Ӻ��ľ���һ����������ǰ�ɾ�ȫû�ˡ���������ϲԩ����;�У�����һ·�������֣��������ǡ���ͷ���ܴ�β�͡�������Ҫ�밮���ܹ����ܣ�������ݲ��ǹؼ��������ﻹ��������ͬ���ǣ����������Ů���ӣ�ƽʱװ����ûʲô���ؼ�ʱ��Ҫ������Ӻ���������Ŷ��<br />
<br />
������87��ֱ��������ŷ����ǿִ���Ĺ�·ϲ���Ӱ������Ӣ�ۡ������½�����������㡣��Ӱ������һ�����Ᵽ����������������������޴��ٷ˵Ĵ����Ц���ȡ����¡��ڵ�Ӱ����Ա������ӰƬ�г������桢�����Ů�������һ�����ŷ�����ݵı���һ�����飬��ŷ��������ȡ�<br />
<br />
�����Ӷ�ŷ��������ȣ�������Ҫ��������<br />
<br />
����Ӱ����Ա����Ц����������Ƥ�ɰ����ݼ���죬�������¶�͸¶�����е�ϲ�У��ɰ�������������Ȳ��硶��̫�ɵ��Ҹ�����еĻ�ʿСѩ��������֪�����У����ӽ�Сѩ�Ը����ƴ���������������������ľ���֣���Ϊ�þ������֮һ���˴Σ���ӰƬ������Ӣ�ۡ��У��������ݵĽ�ɫ����Сѩ��ν�й�֮���޲�������۲��Ƶ����һ�ƫƫ������һ��С��������ݵľ޴����Ϊ��Ӱ�����˺ܶ�Ŀɿ��ԡ�������Ϸ���ͻ֮�£����һ������ˣ�ŷ�ܵ������δ�����ΪӰƬ������������ڡ���̫�����Ҹ�����е��������˵�������һ������ɫ�ķ��ӿռ�������ھ������棬�ر���Ǯ�ֺܳ��飬�ҿ��籾��ʱ���Ѿ��������ɫ�����������������ܹ�񫡣����Ϥ��ӰƬ�У����һ�Ϊ��׷��ŷ��ʹ���˻�����������������ڴ����վ���Ҫ��������<br />
<br />
�������ѹ�������������ֶ����ա�<br />
<br />
������Ӱ������Ӣ�ۡ��ƻ��ڱ������½�����ȵ�ȡ����ȫ����Ա����������н��ŵ����㹤������������������������Ѿ�ƫ�ͣ�������Ա�������ֳ��Ѿ������˺��ص����¡�ͬʱ�����ӿ������ڹ�����Աÿ�춼Ҫ���Ѽ���Сʱ�ĳ���������Ƭ����פ��֮�䣬����ʮ�����ࡣΪ�˻�������ѹ�������Ĺ�������Ƭ���ķ��ɷ�ʽ���ǡ��������ա������Ǹ��ֹ۵��ˣ������Ƕ�˵�ҳ�����������������ÿ�칤�����ܴ󣬵��Ǵ����ϵĺ�Ĭ����һ�ж����������ɵĽ����У��ܿ��ġ����ѹ֣�����˷��ص���������֮��������ȻӦ�����磬����������������С���ͨ��������ӰƬ�����ڴ�ӫĻ֮ǰһ�������ù���ʧ����<br />
<br />
������Ϥ����Ӱ������Ӣ�ۡ��������Ѿ����룬���ӽ��ڼ����ɱ��ؾ�����ͣ�㿪ʼ�µ��Ӿ�����㹤������������Ӣ�ۡ�Ҳ������2014����굵ȫ����ӳ��<br />
<br />
�������<br />
<br />
������������������ŷ�ܵĵ�Ӱ��Ů������·ϲ�硶����Ӣ�ۡ��Ѷ���2014��7��4�յ�½ȫ������Ժ�ߣ�ӰƬ��87�桶��¥�Ρ��ֱ���İ�����ŷ����ǿִ����2014��7�£���Ƭ�׶��ع��������Ӣ���ס���ɫ��������ŷ�����⣬��������Ӱ�������á�ʵ����Ӱ�۳�̩�����������ֵܡ���Դ��ϲ����Ա���ӡ������һ�����ݵ�Ƭ��������ʽ����ڼ��棬���������Ǽ���ϲ�е�����Ҳ�൱�������롣<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chaomengyingxiong/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chaomengyingxiong/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chaomengyingxiong/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chaomengyingxiong/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chaomengyingxiong/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��һ��ҵ�ౣ�ں���������������ͬչ����һ�ξ��Ķ��ǵĻ���֮�á�ŷ�ܰ��ݵġ���˿�С��������ð��ݵġ�D CUP����������Թ��й�Ů�ڻ�Ե�ɺ��±���ͬ���Լ�����ǧ���������δ֪��Σ�պ͸���·ʱ����֮�䲻�ϵ�Ħ��������̤����;��һ·���������ؿ����ĥ�ѣ��ȱ������Ż�Χ׷�½ر��پ������ְ�·ɱ�����������ݡ��ؿ�ζ��׷������ս��������׳���ķ����������������֮�У����Թ�ϵҲ�������ķ��ͣ�Ů�����𽥱��ڻ���Ļ��������87��ֱ��������ŷ����ǿִ���Ĺ�·ϲ���Ӱ������Ӣ�ۡ������½����ȸ��ģ�����Ϸ��ʶ��ŷ�ܺ������ã��״δ��Ļ���¾��Ե�Ĭ��ʮ�㣬ٲȻһ�Ժ��������ɴεĻƽ�������Ϸ����λ�����',N'�й�',N'ϲ��/����/ð��',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-617113-1-1.html',N'http://www.lwgod.com/attachment.php?aid=901628&amp;k=2e0ddeeacd02d2c8b1243754fb5bf382&amp;t=1412261730&amp;sid=37fbW%2BlPrDu6cyZjiQ%2Bkf2UUWUfT84iy3W0hCq87eXvu%2FDw',N'2014/10/2 22:57:21',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 420,N'����14�����ڴ�Ʊ�����ơ���ѱ������2����HD-1024.MP4�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/xunlonggaoshou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/xunlonggaoshou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������ѱ������2/ѱ����2(��)<br />
Ƭ��������How to Train Your Dragon 2<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡶���/����/ð��/ϲ��<br />
����ԡ�Ӣ��<br />
�֡���Ļ��������Ļ<br />
�������֡�<font color="red">8.3/10 from 62,008 users&nbsp;&nbsp;Top 250 #192</font><br />
�������ӡ�<a href="http://www.imdb.com/title/tt1646971" target="_blank">http://www.imdb.com/title/tt1646971</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��0.99 GB<br />
Ƭ��������102 Min<br />
�������ݡ��϶����²���˹ Dean DeBlois<br />
�������ݡ��ָ��� Gengxin Lin ....С���ã�����������<br />
�����������װٺ� Baihe Bai ....��˿��£�����������<br />
���������������� Wenli Jiang ....�ֶ���������������<br />
������������������³�ж� Jay Baruchel ....С���ã�Ӣ��������Hiccup (voice)<br />
�������������ء��������� Cate Blanchett ....�ֶ��� Valka (voice)<br />
���������������򿨡������� America Ferrera ....��˿��� Astrid (voice)<br />
���������������¡������� Gerard Butler ....˹��� Stoick the Vast (voice)<br />
�������������׸񡤷Ѹ�ɭ Craig Ferguson ....�߲� Gobber (voice)<br />
�������������ء������ Kit Harington ....������ (voice)<br />
�������������������� Djimon Hounsou ....���׸� Drago Bludvist (voice)<br />
�������������ɡ�ϣ�� Jonah Hill ....����� Snotlout (voice)<br />
��������������˹͡��Τ�� Kristen Wiig ....��ܽ���� Ruffnut (voice)<br />
����������T��J������ T.J. Miller ....�ط����� Tuffnut (voice)<br />
��������������˹�з�÷�� Christopher Mintz ....���˾ Fishlegs (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����ⲿ�������³н�ǰ������֮����һ���о�������ά�����Ѿ�������Ϊ��顣���˹���С���á�û��������ά���������������ڡ������桱���������Ǻ���������顰û���С�һ��ʼ���µ�ð�ա���Ի�鷢���Լ��ѱ�����һ��ս�������ĵش������Ǳ����������˺�����Ƭ���ص�ƽ���������������⣬С��������˼�ĸ�����Ҳ����ӰƬ���ص㡣<br />
<br />
�����ι�����������������ʷ��ˡ�����������è���������ԭʼ�ˡ���״��������ڴ������˹���������ı��Ը��������ά��ͬ����ͯС˵ϵ�Щ�����ѱ�����֡����������⼤�����ģ�ʷʫʽ�������еĵڶ��½�������Ӣ�µ�ά����ʿС���� (��������³�ж�����)ѱ�����˵�������������Ϊ���ѡ���������ʱ�䣬���˵���������������������Ϣ�����˵������Ǹ�ά����������ƽ��������á�<br />
<br />
����Ȼ�����ɳ�ȴ��ζ�����Ρ�Ϊ��Ѱ�Ҵ𰸣�С�������ҳϵ�û���п�ʼ�����ǵ�ð���ọ́������ȴ����Ԥ�ϡ�һ���棬С���÷������ص�ѱ����ʿ������ʧ�ٶ������ĸ�ֶ���(��˹��Ӱ���ء�������������)����һ���棬��Ȩ�ĵ��׸�(��˹�������Ա������������������)�������˰����� (��Ȩ����Ϸ����Ա���ء����������)���ˣ���в�����˵����������ĺ�ƽ��<br />
<br />
����Ϊ�˱������ܴ��ϲ����������˿���(�����򿨡�����������)���߲�(���׸񡤷Ѹ�ɭ����)��ά������ǣ������(���ɡ�ϣ��)�����˾(����˹�з�÷��-����ɪ����)��˫��̥��ܽ����(����˹͡��Τ������)���ط�����(�е¡�Լɪ����������)����������������С���á���Ϊ���������ĸ���˹���(�����¡�����������)��ĸ�����ֺ����������ڼ䣬С����һֱ׷Ѱ�Ĵ𰸾��ڲ�֪���������벻���ķ�ʽ�����ˡ�<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
�����ݵ϶����²���˹���������������Ӱ�ǡ������ս2���۹�����ս �������ƴ�ƬΪ���ġ�ѱ������2�������ԴȪ��<br />
<br />
�����ݵ϶����²���˹��Ϊ���������Ƭ������û�д��ڵ����壬���ι���ϣ����ִ��ʱ��ֱ�Ӹ���CEO�ܸ����ɭ���񣬱����������ð취�ǰ����������õĹ��´������������������������֡�<br />
<br />
����ѱ�����֡���ӳ��һ���º��ι����ͼƻ������������������������ꡣ<br />
<br />
����ѱ������2���ܹ�����30-40��������ʦ�������ڳ�����ӰƬ����󼸸��¾����������˲ţ����ʱ��50��������ʦͬʱ����ӰƬ��<br />
<br />
�����ݵ϶����²���˹��2011���˹���佱�������ҵ����ء��������ز��������ڡ�ѱ������2������һ��Ϊ���������Ľ�ɫ���������ر�ʾ�ǳ�����Ȥ����Ϊ���ĺ����Ƿǳ�ϲ����ѱ�����֡���<br />
<br />
������˵�߶����Ľ�ɫ��Ϊ���ء���������д�ģ������ɫ����Զ��������ᣬ��ʱ�ܴ���������������Ҳ�ǳ���ǿ��Ȩ����ʮ�㡣������Ŀ�в��������Ǵ˽ǵĲ�����ѡ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/xunlonggaoshou/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/xunlonggaoshou/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/xunlonggaoshou/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/xunlonggaoshou/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/xunlonggaoshou/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���ⲿ�������³н�ǰ������֮����һ���о�������ά�����Ѿ�������Ϊ��顣���˹���С���á�û��������ά���������������ڡ������桱���������Ǻ���������顰û���С�һ��ʼ���µ�ð�ա���Ի�鷢���Լ��ѱ�����һ��ս�������ĵش������Ǳ����������˺�����Ƭ���ص�ƽ���������������⣬С��������˼�ĸ�����Ҳ����ӰƬ���ص㡣�ι�����������������ʷ��ˡ�����������è���������ԭʼ�ˡ���״��������ڴ������˹���������ı��Ը��������ά��ͬ����ͯС˵ϵ�Щ�����ѱ�����֡����������⼤�����ģ�ʷʫʽ�������еĵڶ��½�������Ӣ�µ�ά����ʿС���� (��������³�ж�����)ѱ�����˵�������������Ϊ���ѡ���������ʱ�䣬����',N'����',N'����/����/ð��/ϲ��',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-616259-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899165&amp;k=d80c432dae4e78746c5b1e393621f185&amp;t=1412261731&amp;sid=3c25euRF7Z6XYNduRq9szm%2BMHaS6LhZYRiTLrAznupx90oo',N'2014/10/2 22:57:21',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 421,N'����13�����Ƽ���Ƭ����������¡���BluRay-720P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/guanghuisuiyue/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/guanghuisuiyue/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������������<br />
Ƭ��������7 Assassins<br />
�ꡡ������2013<br />
�������ҡ��й�/�й����<br />
�ࡡ���𡡶���/ð��/����<br />
����ԡ�<font color="red"><font size="3">��������˫����</font></font><br />
�֡���Ļ�����ļ�<br />
�������֡�5.5/10 from 40 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3552642" target="_blank">http://www.imdb.com/title/tt3552642</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.64 GB<br />
Ƭ��������102 Min<br />
�������ݡ������� Xin Xin Xiong<br />
�������ݡ���־ΰ Eric Tsang ....è�ϰ�<br />
�������������ջ� Felix Wong ....����<br />
������������ӽ�� Gigi Leung ....ϸ��<br />
��������������ΰ Ray Lui ....����<br />
�������������� Tao Guo ....������<br />
���������������� Xin Xin Xiong ....�޳�<br />
����������Ī�ٴ� Siu Chung Mok ....Ľ��<br />
���������������� Michael Wong ....���˵�<br />
���������������� Waise Lee ....����ͷ<br />
�����������ߺ�� Hongjie Ni ....�����<br />
������������� Wei Li ....����<br />
���������������� Oh-seong Yu ....���Ҷ�<br />
�����������δﻪ Simon Yam ....�Ϻ�<br />
������������Ӣ�� Kara Hui ....����<br />
�������������� Lung Ti ....׿֪��</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����峯ĩ�꣬���ƶ�����������֡��������ƻ���������Ϲ������������ƣ����ջ� �Σ���־ͬ���ϵ�ս���´���Į��͵�˻ƽ�׼��������������ٴ����¡�˭֪;���⵽����������������ΰ �Σ�֮צ������죨�ߺ�� �Σ��ķ������ؼ�ʱ���ҵ���ǻ��ϵĴ���Ʒ��׿֪�������� �Σ�������ȡ�׿֪������Զ��׿ʶ�������������ɣ����Խ����ҵ����˼������������ϣ�������ǰ���ƽ�ϿѰ�����������Ҳ���������è�ϰ壨��־ΰ �Σ���Ϊ�˸�Ը�������ż�С������è�ϰ������μӹ�����ŵ���ʿ�������ػ��Ļƽ�Ͽ�Ƽ�����������˷���������ʿ����Ҳ������������������Σ�������������ڹ���������Դ�����<br />
<br />
�����������Ƶĵ������ƽ�Ͽ�����������״��ơ����˽�����Ӣ����Ϊ��Ϊ�ң���չ���֡���<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
�������Ӱ̳��Ϸ�Ǵ�Ϸ��������<br />
<br />
������������¡�����־ΰ�����ջ�������ΰ���������δﻪ�����εȸ�������Ϸ����Աƽ�������Ѿ�����50�ꡣ����׿֪���ĵ�������Ա��������ǰ��������Ϊ���㱻��ʱ��һ����ͷ��Ϸ�����㡰������һ���죬��65���ˣ������Ǹ����Ŀ��飬����һ��Ҫ�ĺ�ÿһ��Ϸ�������˵�������־ΰ���ݵ�è����Ƭ��Ҳ�жೡ��Ϸ������Ȼ�����Ǹ��������ǵ��ݵ�Ҫ��ǳ��ߣ�һ��������Ҫ��ʮ�����ϰ�����ݵ�Ҫ��ǳ�֮�ߡ���<br />
<br />
����һ�ٶ�ֻ��ƥ��פ���� �����ֳ���Ӱ����������<br />
<br />
�������˴�Ϸ����������¡��У���Ϸ����Ҳ������֮�ء�������Ϸ������140��ƥ����Щ���Ǵӱ�����ѡ��õ�Ʒ�֣��ô󿨳�3��3ҹ��������ġ������������ֳ�������ﱼ���������ġ����ϣ���ƥͻȻ�ܾ�ʧ�أ��ܵ�׹�����˲��𣬵������ȴ�����������ڻ����Ϊ�˱�����������������߹Ƕ��������������ҽ��������ʱ���龰����������£�������ϵ������ص㣬���˵����࣬������Σ�յġ������ҵ��ǣ�����������Ա������ǰ���㱣�����򣬡��޵�ͷ�����������������վ�������������������δ���ĵ������������ֿ�ʼ��һ�ֵĴ�Ϸ���㣬�����˲��»��ߣ�������Ӣ���������<br />
<br />
������Ӣ��&quot;��&quot;��������<br />
<br />
���������ڼ䣬��������¡�շת���ྰ̩���ƺ�ʯ�ֺ����ϳ��۽������㣬�ڸ���2200�׺��εĸ�ԭ�ϣ����龭����������ʷ��������ҵ��������ɳ����ѩ���������¶��������������顣��־ΰֱ����Ϸ30�����δ������ô���ӵĻ���������ɳһ������������ĩ��һ�����۾��������������������ѵġ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/guanghuisuiyue/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/guanghuisuiyue/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/guanghuisuiyue/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/guanghuisuiyue/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/guanghuisuiyue/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/guanghuisuiyue/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���峯ĩ�꣬���ƶ�����������֡��������ƻ���������Ϲ������������ƣ����ջ� �Σ���־ͬ���ϵ�ս���´���Į��͵�˻ƽ�׼��������������ٴ����¡�˭֪;���⵽����������������ΰ �Σ�֮צ������죨�ߺ�� �Σ��ķ������ؼ�ʱ���ҵ���ǻ��ϵĴ���Ʒ��׿֪�������� �Σ�������ȡ�׿֪������Զ��׿ʶ�������������ɣ����Խ����ҵ����˼������������ϣ�������ǰ���ƽ�ϿѰ�����������Ҳ���������è�ϰ壨��־ΰ �Σ���Ϊ�˸�Ը�������ż�С������è�ϰ������μӹ�����ŵ���ʿ�������ػ��Ļƽ�Ͽ�Ƽ�����������˷���������ʿ����Ҳ������������������Σ�������������ڹ���������Դ������������Ƶĵ������ƽ�Ͽ�����������״���',N'�й�/�й����',N'����/ð��/����',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-616555-1-1.html',N'http://www.lwgod.com/attachment.php?aid=900151&amp;k=b9bc23ee83e558daa4d00be6f0e477fa&amp;t=1412261731&amp;sid=aa9cLiSXyj3zbQzi5Lk2BDOZYiILkRKR72miYNUoMSFTE2M',N'2014/10/2 22:57:22',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 422,N'�����Ϊ��2��Ԥ�ȡ�����������1����BluRay-1080P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������������/Գ������/���ŵ�����/Գ������ս�����׸���(��)<br />
Ƭ��������Rise of the Planet of the Apes<br />
�ꡡ������2011<br />
�������ҡ�����<br />
�ࡡ���𡡶���/����/�ƻ�/���<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.6/10 from 311,999 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1318514" target="_blank">http://www.imdb.com/title/tt1318514</a><br />
�ļ���ʽ��x264 + 5.1 DTS @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1920 x 1080</font></font><br />
�ļ���С��8.36 GB<br />
Ƭ��������105 Min<br />
�������ݡ�³���ء���Ү�� Rupert Wyatt<br />
�������ݡ�ղķ˹�������� James Franco&nbsp;&nbsp;....Will Rodman<br />
����������ܽ�ٴƽ�� Freida Pinto&nbsp;&nbsp;....Caroline Aranha<br />
�������������ϡ�ɪ��˹ Andy Serkis&nbsp;&nbsp;....Caesar<br />
����������Լ�������ظ� John Lithgow&nbsp;&nbsp;....Charles Rodman<br />
����������������������˹ Brian Cox&nbsp;&nbsp;....John Landon<br />
������������ķ���Ѷ��� Tom Felton&nbsp;&nbsp;....Dodge Landon<br />
���������������������� David Oyelowo&nbsp;&nbsp;....Steven Jacobs<br />
����������̩�ա����� Tyler Labine&nbsp;&nbsp;....Robert Franklin<br />
�������������ס�����˹ Jamie Harris&nbsp;&nbsp;....Rodney<br />
���������������������� David Hewlett&nbsp;&nbsp;....Hunsiker<br />
����������̩���¶�ɭ Ty Olsson&nbsp;&nbsp;....Chief John Hamil<br />
�������������ѷ������ Madison Bell&nbsp;&nbsp;....Alice Hunsiker<br />
����������Makena Joy&nbsp;&nbsp;....Alice Hunsiker (Teen)<br />
����������Ф����̩ɭ Sean Tyson&nbsp;&nbsp;....Animal Control Officer #2<br />
�����������ܿˡ�����˹ Jack Kuris&nbsp;&nbsp;....Boy in Muir Woods</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����2011�꣬�ɽ�ɽ��<br />
<br />
����Ϊ���о������������մ�֢������֪���Ŀ�ѧ��������������ղķ˹���������Σ��Ѿ������о��˶��ꡣ����һֱû��ȡ��̫�����ɫ����Ȼ�����鳤��ѧ�ҿ����գ�ܽ�ٴƽ���Σ�һ��������һ����Ϊ��Cure������ҩ�����ҩ���ܸı���򣬵����ڼ���Σ�յĸ����ã�ʹ�����Ҳ������ʵ��ٴ������������֤Cure��ҩ�ԡ����ڣ��ڿ�������������������������˹�Σ�������֮�£�����ҩ������˴��������ϡ�<br />
<br />
����Cure���������޸����Ե����ã����ڴ��������ϵõ�����֤������Cure����Ч�������ɿ�ʼ��ó������ǻۣ����걻����Ű���Ķ����ǿ�ʼ�������࣬���Ȼָ������Ĵ����ɿ��������ϡ�ɪ��˹�Σ���ʼ�����������ɶ�������з������㣬���಻���ǵ���Ψһ��ͳ���ߣ�Գ�忪ʼ�����𡣴��´�������������������������Լ��ķ�ʽ��������һ�������Գ��֮���ս������<br />
<br />
<font color="red"><strong><font size="3">һ�仰���ۣ�</font></strong></font><br />
<br />
�Ȱ����˶�������������жԿƼ������ɣ���Գ��������ȫ���Ժ��ϰ�ġ���ա�����Ӱʷ��<br />
������ʱ����־��<br />
<br />
ǿ���Ķ���Ϸ����ɫ����Ч������Ϊֹ����ŵ���Գ�����ݡ�����Щ���ز��ѵĴ����ɻ���Ʊ���ġ�<br />
�����������뱨���ߡ�<br />
<br />
��Գ���������úܲ�����������Ȥ���ǳ����������ԡ���Ӧ�������ڴ�Ƭ��һ��ģ��֮������������������̵���Ϊ��<br />
��������ɼ�ʱ����<br />
<br />
��Գ����������ӡ����̣���������֪�����ǰ����չ������Գ����ϵ���������ʲô���ı����β��<br />
���������ա�<br />
<br />
��Գ�����������������ֵ�ù���ȥӰԺ�ۿ�����ѵ�Ӱ��<br />
������ŦԼÿ�����š�<br />
<br />
Գ����ֱײ�Ķ������󣬷ǳ������ģ����ƺ�����Ŀǰ���ˮƽ�ĵ�Ӱ������<br />
�����������ܿ���<br />
<br />
���¼����ˣ�����Աͨ��������׽��ɵ�Գ��ı��ݣ�������������ӡ����̣��ⲿ��Ӱ�����ù��ڲ���������<br />
�����������ʱ���<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
���������а����Գ��ս<br />
<br />
����ĩ�տƻ���ĵĵ�Ӱ�ܶ࣬������������ֵ�������ս�ĵ�ӰҲ��ʤö�٣����С����֡������Ρ����Ǻ�ս�ӡ���ӰƬ�������е�ٮٮ�ߡ������⵱�У�1999��ġ���Գ����Ҳ��ֵ��һ�����ɫ�������ⲿ�ı���1968��ͬ����Ʒ�ĵ�Ӱ������һλ̽��������Ա���ŷɴ�׹����Գ�������У������е�һϵ������ð�ա����µĺڰ����ֵ���ʹ���ⲿ��Ӱ��Ϊ�ƻ��Խ���ֵ��ĵ�Ӱ��ʮ����󣬡�Գ����������ǰ������̬��ʼ�Թ��½��������������������ĩ���黳�Ĺ��£��������ι������ۻ��ۡ������֡���Ƭ�ı����ˡ��ܷ�˵�������Һ�ϲ��1968��ġ���ս���򡷣����Ǹ�����������Ե÷ǳ�����������ͳ����������ᣬ�����෴ȴ��Ϊ�������ġ���չ����ϡ�������ӰҪ��̵Ķ��������ԣ����ǲ����ض������һ���Ƕȣ������ܵ����ǵ�ʹ�ࡣ���Ǹ����������ս���򡷵������Եúܳ�ǰ������ڡ�Գ����������Ǳ����ˡ���ս���򡷵�����ۣ�ͬʱ����������ķ��������ø���ϸ����һ��ڹ����￴���������ϵ�����������ڸ�����˽�����£�һ��һ����������������<br />
<br />
������Գ��������һ��ǰ�������·����ڡ���ս����֮ǰ�����ڹ�������֪����֣���ô��λ��û���񡶾�ս���򡷵Ľ����������������ô������أ��Դˣ������ˡ��ܷ�����˵�������ڽ���ϣ���Ȼ���������֡���ս�����������𺳡����һ���һ���Ƕȣ���Ȼ����Ѿ�������֪���β�����һ�ַ�ʽȥ�����أ���Ҷ�֪������ռ��������������ô���Ǿͻ����ⲿ��Ӱ���ʾ��Ϊʲô�ᱻ����ռ�죬���඼����Щʲô�����¡�����ս���򡷱�����һ�ָ߶ȵ���ʵ��̣���Գ������Ҳ�����⣬�����ⷽ��͡�12���ӡ��е����ƣ�������ὲ���˺�����֮��Ĺ�ϵ������������һ�����������潲����һЩ���л�����������һЩ�ǳ����˵���ʵ�飬���津Ŀ���ģ�����������˷ǳ���̵�ӡ���ڱ���ѧ������ʵ��̨�ϵ�ʱ������¶����һ�ַǳ�Թ�޵���������������һ��������������������������Һܳ�ʱ����������ӡ�󣬵��ҿ�ʼд��Գ�����𡷵�ʱ���Ҿ��Ѿ����������Ĺ���д����Ӱ���С���<br />
<br />
����ִ����Գ�����𡷵�³���ء���Ү������ʮ���꣬�����������࣬ǰ������2008��ġ�������������һ���ͳɱ���С���������ִ����Գ�����𡷣���������������������Ϊ���͵���Ŀ��̸��ִ����Գ�����𡷵ľ�����³���ء���Ү��˵������������֮ǰ�ԡ���ս�����˽�ò���������꿴�ⲿ��Ӱ��ʱ��ֻ�����������ˣ����ɵķ�װ���úܱ��档2001��İ汾������ҽ���֮ǰ���ص��о��������ⲿ��Ӱ���������һ���ʣ����Ǿ���������ս������һ�����˾����ĵ�Ӱ����Ϊ������Զû�г�·��һ�еĿ�������ͽ�͡�����ʵ�Ǻ����˾�ɥ��һ���£�����ȴ���˿�����ʵ���ù����ܹ��������������ȱ�㡣�ڡ�Գ��������ҳ��԰����־�����Ϊ���µ����յ㣬һ�еľ����̵涼Ϊ���Ľ���������Ǹ������������ı�����֡����ҿ�����Գ�����𡷵Ĺ��£��ұ�������Ӱ���Լ�����ȥ����ģ���Ϊ����Ȼ����һ��ƻõ�Ӱ����ǣ������ｲ�������ȴʮ�����أ��Ǿ�������Ӧ��ƽ�ȵĶԴ������ϵ���������������ǻ��ܵ��ǳ����صġ������ĳͷ��������ϣ�����һ�������а�ʽ�ĵ�Ӱ����<br />
<br />
������Ȼһ�µļ�������<br />
<br />
������Գ�������������עĿ����Ȼ���ڶ�����ɣ�����Щ���ɶ���CG���������죬�����μӹ����������������Ч�Ŷ�Ϊ��Ƭ��������ϰٸ���������ɡ����ڡ�Գ���������CG��Ч���棬����³���ء���Ү��˵���������ⲿ��Ӱ��ɰܵĹؼ������ڶ������ǵĿ̻����ڡ���ա���ƬΪ����������һ��ΰ��ĳ��Ժ�ͻ��֮�󣬡�Գ����������������һЩ������ڶ�Ŀһ�µļ��������������CG�����ǳ��ɹ��������2010���У��Һ����ǵ���Ч�Ŷ�һ�𣬿�ʼ�ԡ�Գ�����𡷵�CG��������̽�֡����������ⲿ��Ӱ�ﳢ�Ը���Ŀ����ԡ���������֮ǰ�����˴�����ȻҰ����¼��̽��Ƶ��������Ϊ�����ǵĺ�����飬��������������ǻ����˲��ٵľ��飬�����ð��ϡ�ɪ��˹��ĳ�Ϊ��һ�����˿־�Ĵ����ɡ���<br />
<br />
������ӰƬ������������쿭���İ��ϡ�ɪ��˹�������Ȼû�����Լ��������������Ļǰ��ȴ����˴����Ķ�����׽�������ڡ�Գ��������ı��ݣ�����oɪ��˹˵�����������Ҵ�Ӱ�����ĵú������һ����Ӱ����Ȼ��99����ʱ�䶼������Ч����������б��ݣ����������ѵ�����ȴҪ����ͨ��Ӱ��öࡣ����Ҫ������Ч�Ŷӵ�Ҫ���������ֶ��������Ұ��ղ�ͬ�Ĺ��»��벻ͬ�ĳ������Ͳ����ڵĽ�ɫ�ǽ��ж�Ϸ���⼸����һ������һ������ɵĻ��硣�������Ҹе������Ƶ�һ���ǣ����������Ķ���ͨ������Ч�Ŷ���������в�࣬����ұ����������ÿ��������ɵĹ�������з����Ĺ�ͨ������һ����������ĥ�˵Ĺ��̣����Ҽ������������������ҿ�����Ļ�Ͽ����Ķ�������֪����Щ������ֵ�õģ������ͺ�����һ���������һ�������ָо����˾������������<br />
<br />
�����ڡ�Գ����������������ǵ�ղķ˹�������ƣ��ǽ�������Ļ�ϵ���ĺ�����С������˹����Ӱ����������������ˮ��̸������ڡ�Գ��������ı��֣�ղķ˹��������˵����������һ�����Ҹо��ܹ��ĵ�Ӱ����Ϊ�Һ�ϲ����ȥ�ġ���ս���򡷡����ⲿ��Ӱ��Ұ��ݵĿ�ѧ�ҽ����Ϊ�����¼��ĺ���������ڻ���������˽��������µ���Դ���ڵ�Ӱ������ѧ����ʵ��ȫ�Ǳ�������������ĺ���ȥ����ҩ������ȴ������Ϊ��ݺ��������һ��������ص����ѣ�����ҲΪ�ⳡ���Ѹ����˴��ۡ����µĻ����ȽϺ�ɫ����Ҳ�����˻���һЦ�ĵط���������µ����ص㽫���ֳ�������δ��������Ƿ������ࡣ��<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ƭ����Ч����ֱ�������ԡ�������������Ƕ�����׽�����״����չ��½��С�<br />
<br />
�������ġ������Ը��кܴ�Ŀ�Խ�ԣ���һ���޹��ߵ�һ���������䣬���ϡ�ɪ��˹Ϊ����߱��ݼ��ɣ���Ħ�˺ܶ���޺����ɵĻ��<br />
<br />
�����ϡ�ɪ��˹��ΪӰƬ����Ч�������٣���Ҫ��ģ�º����ɵ�������<br />
<br />
�����ݿ�����ͬ��֮ǰ�ڡ���ա��С����ݡ������ɽ�գ���Ϊ�������Ը��ϸ��߿�ȡ�<br />
<br />
��ӰƬ�����˴�����Ч������������������ʵ����ȡ�������Բ������˸е���٣�������ʵ�С�<br />
<br />
��ӰƬ�ļ���ģ������Ч��Ӱ�Ͷ�����׽������Ӱ�Ľ��ޣ�����Գ�����𡷵ļ������Ա�����ΪһȺ��ʵ����Ա������ʵ��ʱ�䡢��ʵ�������У��Զ�����׽�ķ�ʽ������<br />
<br />
����Ƭ�������ɱ�ԼΪ9000����Ԫ��<br />
<br />
��2011�������Ʒ��20���͸�˹��˾����������Գ�����𡷵ĵ��ڴ�2011��6��24������11��23�գ�����3����Ѯ��20���͸�˹��˾�־�������Ƭ�Ĺ�ӳʱ����ǰ��8��3�գ�������Ƭ���ջ��ǳ�Ϊɱ�����ڵ���һ����Ƭ��<br />
<br />
����Գ�����𡷵�����ۺ͡���ս���򡷱���һ�£����ڵ�Ӱ��ķ���ʱ�������������µ���Դ��<br />
<br />
����Ƭ��Ҫ�ڼ��ô�������㡣<br />
<br />
����Ϊ��ƬҪ���ּ���ΪPG-13�����Ժܶ��漰�����ɺ������ս�ı�����ͷ��������ɾ����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.02/xingqiujueqi/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.02/xingqiujueqi/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.02/xingqiujueqi/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��2011�꣬�ɽ�ɽ��Ϊ���о������������մ�֢������֪���Ŀ�ѧ��������������ղķ˹���������Σ��Ѿ������о��˶��ꡣ����һֱû��ȡ��̫�����ɫ����Ȼ�����鳤��ѧ�ҿ����գ�ܽ�ٴƽ���Σ�һ��������һ����Ϊ��Cure������ҩ�����ҩ���ܸı���򣬵����ڼ���Σ�յĸ����ã�ʹ�����Ҳ������ʵ��ٴ������������֤Cure��ҩ�ԡ����ڣ��ڿ�������������������������˹�Σ�������֮�£�����ҩ������˴��������ϡ�Cure���������޸����Ե����ã����ڴ��������ϵõ�����֤������Cure����Ч�������ɿ�ʼ��ó������ǻۣ����걻����Ű���Ķ����ǿ�ʼ�������࣬���Ȼָ������Ĵ����ɿ��������ϡ�ɪ��˹�Σ���ʼ�����������ɶ�',N'����',N'����/����/�ƻ�/���',N'1920 x 1080',N'2011',N'http://www.lwgod.com/thread-616189-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898978&amp;k=a06f59a4b4ea33a5f14e1f23c8fd57f1&amp;t=1412261733&amp;sid=81ache%2B%2BWWnzyhVghEq39NW8Q9LjDKSTbfieQwWu19JHJkE',N'2014/10/2 22:57:22',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 423,N'��������������14��Ʊ��������˯ħ�䡿��HD-1024.MP4�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/chenshuimozhou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/chenshuimozhou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������˯ħ��/��ħ�󣺳�˯ħ��(��)/��ħŮ����˯ħ��(̨)/���շ�ɭ/�ڷ�ħŮ/˯�����⴫<br />
Ƭ��������Maleficent<br />
�ꡡ������2014<br />
�������ҡ�����/Ӣ��<br />
�ࡡ���𡡶���/���/ð��/��ͥ<br />
����ԡ�Ӣ��<br />
�֡���Ļ��������Ļ<br />
�������֡�7.3/10 from 97,207 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1587310" target="_blank">http://www.imdb.com/title/tt1587310</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��979 MB<br />
Ƭ��������98 Min<br />
�������ݡ��޲��ء�˹��ķ���� Robert Stromberg<br />
�������ݡ��������ȡ����� Angelina Jolie ....���շ�ɭ Maleficent<br />
�������������������� Elle Fanning ....���幫�� Princess Aurora<br />
����������ɳ���С������� Sharlto Copley ....˹�ط����� Stefan<br />
������������ķ������ Sam Riley ....���߶� Diaval<br />
���������������١�˼���� Brenton Thwaites ....�������� Prince Phillip<br />
������������˿������ά�� Lesley Manville ....�������� Flittle<br />
������������÷���˹���� Imelda Staunton ....��Ҷ���� Knotgrass<br />
������������ŵ��̹�ն� Juno Temple ....��ާ���� Thistletwit<br />
�������������������ڶ� Ella Purnell ....��Ů���շ�ɭ Teen Maleficent<br />
�����������ܿ�ɭ������˼ Jackson Bews ....����˹�ط� Teen Stefan<br />
������������������Ī���� Isobelle Molloy ....��ʱ���շ�ɭ Young Maleficent<br />
�������������˶���ϣ��˹ Michael Higgins ....��ʱ˹�ط� Young Stefan</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������շ�ɭ���������ȡ������Σ�����һ���������࣬ӵ�г���ܹ�������������ӣ�������������͵�ɭ��������Ȼ�����õ�ʱ�����Ƕ��ݵģ�����ͻ�����������Ϯ�����շ�ɭ��ս�����𽥳ɳ�Ϊ��Ƭɭ�ֵ��ػ��ߣ�ͬʱҲ���ܵ������鱳�ѣ��Ӵ��������鿪ʼ�����ᣬ�Ժ�ֻʣ�������ͷ��Ϊ�˱������������������Ů�����幫��ʩ�¶��䣻Ȼ�����Ű���ĳɳ������շ�ɭ������ʶ��������λС���������ܸ��������������ƽ��Ҳ���ܸ��Լ����������Ŀ��֡�<br />
<br />
������������͵�Ħ������������Ĵ�ɭ���У������뾫���г�ദ���������ǡ���һ�꣬������а��С��Ů���շ�ɭ����ɯ������Ī���� Isobelle Molloy �Σ�����������С�к�˹�ط������˶���ϣ��˹ Michael Higgins �Σ���������С�޲£���Ϊ�����޼�ĺ����ѣ�����������ػ���׹�밮�ӡ��������������������˹�ط���ɳ���С������� Sharlto Copley �Σ���ȥ�����յĴ��棬�������̰���������������շ�ɭ���������ȡ����� Angelina Jolie �Σ���ɳ�Ϊ����ǿ�����Ů���޴���������Ħ��������չ��˹�ط�Ϊ�˳�Ϊ��λ�̳��ߣ����̵ظ��������շ�ɭ�ĳ��<br />
<br />
���������ʹ�������Ĵ��ˣ������շ�ɭ�����������޵����ħŮ��Ϊ�˸�������˹�ط���Ů�����幫�������������� Elle Fanning �Σ�ʩ���˳�˯ħ�䡭��<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
��������Ƭ������İ������ȡ�������̸����������ɫʱ�ƣ����շ�ɭʵ������һ����ΰ����ˣ������ǲ������ġ�����Ϊ������մ�ֶ����ڴ���ԭ�й��µ�ͬʱ�����ǶԹ������˼򵥵ļ򻯻���ת�����ǽ���һ������Ĺ��£�&quot;���ǵ���ս��վ����һ���Ƕ�ȥ������&quot;��<br />
<br />
����ӰƬ����Ϊ���ǵ����˹����շ�ɭͷ�ϳ��ǣ�Ƥ����ɫ���ܱ���ɺ���ɫ�ľ�����̸����ɫ����ʱ��������������������У���ţ���ǲ���ȱ�ٵģ�&quot;ţ��װ&quot;���ʺ��Լ�����Ҳ���л���˺ܶ���Ȥ��<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
�������Ů��ޱޱ����Ƭ�а���Сʱ��İ��幫���������ʾ��Ů�����ݽ�ɫ��ȫ�ǡ������������������������С��Ա������ͷ�ϵĽǺͼ���ָ���Ż��ˣ���������Ҫһ�������ݶ���Ϸ��ֻ����ޱޱ����<br />
<br />
��Ϊ��Ƭ�еĿ������ͣ�����ÿ����Ϸǰ��Ҫ����������Щ��������ͻ��ȧ�ǣ�����Ҳ�ǿ������ߵġ�<br />
<br />
����Ƭ�����޲��ء�˹��ķ���������Ρ��������������˹�����ɾ����͡�ħ�����١�������ָ��������˯ħ�䡷�����׶ȵ��ٵ��ݵĴ�������<br />
<br />
��������̸���Խ�ɫ�����ʱָ����������˯ħ�䡷�����ǵ����Ľ���һ������Ů�׵Ĺ��£�����Ҫ̽��һ���������һ��������а��Ҳ���ǡ��������������ɵġ���ӰƬ���ص��ǽ�¶Ů�ױ���Ĺ��¡���<br />
<br />
������Ů����Lana Del ReyΪ��Ƭ�������ϰ����������Once Upon a Dream���������ɰ������ȡ��������յ����ѡ��<br />
<br />
��ӰƬ�ǵ�ʿ�ṫ˾��ʷ������һλ���˵�������Ͷ������ӰƬ��������2010��ġ���ս�͡���<br />
<br />
����Ƭ��2014��5��30����ʼ��ӳ������Ҳ������1959��桶˯���ˡ�����ӳ55��������ա�<br />
<br />
������˯ħ�䡷�������Դ�2010�꡶�������á�ʱ������֮�����ݵĵ�һ��������<br />
<br />
����Ƭ�����շ�ɭ�İ�����һֻ��ѻ������Diaval(������ħ��devil����)�����ϰ�����ѻ�����н���Diablo�������������ж�ħ����˼��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/chenshuimozhou/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/chenshuimozhou/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/chenshuimozhou/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/chenshuimozhou/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/chenshuimozhou/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����շ�ɭ���������ȡ������Σ�����һ���������࣬ӵ�г���ܹ�������������ӣ�������������͵�ɭ��������Ȼ�����õ�ʱ�����Ƕ��ݵģ�����ͻ�����������Ϯ�����շ�ɭ��ս�����𽥳ɳ�Ϊ��Ƭɭ�ֵ��ػ��ߣ�ͬʱҲ���ܵ������鱳�ѣ��Ӵ��������鿪ʼ�����ᣬ�Ժ�ֻʣ�������ͷ��Ϊ�˱������������������Ů�����幫��ʩ�¶��䣻Ȼ�����Ű���ĳɳ������շ�ɭ������ʶ��������λС���������ܸ��������������ƽ��Ҳ���ܸ��Լ����������Ŀ��֡���������͵�Ħ������������Ĵ�ɭ���У������뾫���г�ദ���������ǡ���һ�꣬������а��С��Ů���շ�ɭ����ɯ������Ī���� Isobelle Molloy �Σ�����������С�к�˹�ط���',N'����/Ӣ��',N'����/���/ð��/��ͥ',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-616552-1-1.html',N'http://www.lwgod.com/attachment.php?aid=900150&amp;k=188652165e84254dffec5ee9eee0293c&amp;t=1412261732&amp;sid=58a8cBZTocdAgYI5QIEuj1NO3v%2FWS8%2BKtbQPjXU3FZDstYw',N'2014/10/2 22:57:22',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 424,N'����14���߷ֱؿ�����������Ĵ���BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/xingyunlidecuo/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/xingyunlidecuo/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������������Ĵ�/�����е�����ȱ��(��)/���˵Ĵ�/�ޱ������ʹ��<br />
Ƭ��������The Fault in Our Stars<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡾���/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�<font color="red">8.2/10 from 75,966 users</font><br />
�������ӡ�<a href="http://www.imdb.com/title/tt2582846" target="_blank">http://www.imdb.com/title/tt2582846</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.10 GB<br />
Ƭ��������133 Min<br />
�������ݡ���ʲ������ Josh Boone<br />
�������ݡ�л�ա������ Shailene Woodley ....Hazel<br />
�������������������������� Ansel Elgort ....Gus<br />
�������������ء��ֶ��� Nat Wolff ....Isaac<br />
�����������������˶� Laura Dern ....Frannie<br />
����������ɽķ������÷�� Sam Trammell ....Michael<br />
�����������������︣ Willem Dafoe ....Van Houten<br />
�������������ء������� Lotte Verbeek ....Lidewij<br />
����������Ana De La Cruz ....Dr. Maria<br />
����������Randy Kovitz ....Dr. Simmons<br />
����������Toni Saldana ....Flight Attendant<br />
����������David Whalen ....Gus'' Dad<br />
����������Mia Govich ....Gus'' Mom</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������Ӱ����Լ��������ͬ��С˵�ı࣬�������������а�֢����������йذ��飬�����������Ĺ��¡�16����Ů���軼�зΰ�����������ƺ��������⣬�������������漣����û�ие��ر���ˣ���Ϊ�����ǵò��Ͻ������ƣ�ÿ�ε����ƶ��·��ڿ�ӡ������������ƪ�£������޸��ǳ�Ϊ��ά�����������ɻ�ȱ����顣ֱ���������갩�ѻ�������ʶ��ͬ�����ǰ����к��¹�˹��˹�����������������µ���ҳ����<br />
<br />
�����������л�ա������ Shailene Woodley �Σ���һ��ʮ�����������Ů�������ڻƽ�����������ú�����ͬ����һ�����������������ഺ�����Ŀ�����ϣ����������Ĳ�ħ�����˺����������һ���ΰ����ߡ�<br />
<br />
���������������������ת���������������ȴ��û����˶����ɰ�֣���֢��ʱ���ܸ�������Ӱ���޷��жϵ�������Ӱ���Σ��ú��������������ʧȥ�����е������ϣ����һ��żȻ�У�������ڰ��ѻ������н�ʶ�����а¹�˹�������������������� Ansel Elgort �Σ���Ӣ���к������������ǹǰ��������������Ƶ������˺ܿ��Խ��Խ����������һ��̽�����ϵ��������ǵ�СС��һƬ���磬�����Ҳ��˿�����δ����ϣ����<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
����ӰƬͶ��Լ1200����Ԫ����Ӱ����Լ��-����ͬ��С˵�ı࣬����ԭ��ӵ�н϶��˿����Ӱ���ĺ�������Ŀ����ӰԤ��Ƭ������Ѹ�ٳ�ΪYouTube���ܻ�ӭԤ��Ƭ��ӰƬ�����������˵������������ʵд�գ�ͬʱ�úܶ���Ϊ֮�˸����ᣬ��Ӱ��ӳ�󣬱�һЩý��ʢ����һ��ΰ��İ����Ӱ��Ҳ�м��ߵ�٩��Ӱ�Ĵ��ᣬ˵��Ƭ�ֳ�������׷���ᣬ������ͬʱ�ڴ�ޡ�<br />
<br />
������Ӱ�籾�ĳ�������������ɣ�֮��Ƭ����ʼ��ѡ���ݣ��μ��Ծ�Ů���ǵ������ﵽ��200�ˣ�����л��-�����ƾ�����������Ӯ���˽�ɫ�����˹����˵���Լ���ԭ���ĳ�����˿���������ȥ�ı�ɾ籾��������Ҳ������ôȥ�����������Ǻܿ��ܰ�������ҡ�˹���ػ���ʾ����Ӱ��Ĺ��»�ǳ��ӽ�С˵������һ�������⡣��Ƭ����Ƭ������-�긥�����ǡ�ĺ��֮�ǡ���Ƭ�ˣ���β��뱾Ƭ����������ʾ������࣬����������ԭ�������ж������������������ϵ�������������ȡ�ĺ��֮�ǡ�����Ƭ�Ĺ��¸���ʵ�������ǹ��ڰ�������������Եõ���������ϵĹ������긥�׻���Ϊ��Ů��������������һ����Ļ���£����ڲ�ͬ��Ӱ�кͺܶ���Ļ���¹�������������Ϊ����ٺͰ�������֮������Ļ�ѧ��Ӧ���ɷ��ϣ�����������ô��������������ٵ��������ţ����ж��ص����ʡ��������Ǻܺõ���Ա������Խ�κε�Ӱ����Ϊ������������ڲ�ͬ��<br />
<br />
����BOMƱ�������ܲ���ΪӰƬ��ȫ��Χ�ڶ���õ�������ڵ�֧�֣�Ʊ���ᱬ���Ԥ���Ӱ��������Ʊ�����ܻ�ﵽ4500����Ԫ��������Խͬ����ӳ����ķ-��³˹����Ƭ�����ձ�Ե����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/xingyunlidecuo/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/xingyunlidecuo/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/xingyunlidecuo/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/xingyunlidecuo/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/xingyunlidecuo/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����Ӱ����Լ��������ͬ��С˵�ı࣬�������������а�֢����������йذ��飬�����������Ĺ��¡�16����Ů���軼�зΰ�����������ƺ��������⣬�������������漣����û�ие��ر���ˣ���Ϊ�����ǵò��Ͻ������ƣ�ÿ�ε����ƶ��·��ڿ�ӡ������������ƪ�£������޸��ǳ�Ϊ��ά�����������ɻ�ȱ����顣ֱ���������갩�ѻ�������ʶ��ͬ�����ǰ����к��¹�˹��˹�����������������µ���ҳ�����������л�ա������ Shailene Woodley �Σ���һ��ʮ�����������Ů�������ڻƽ�����������ú�����ͬ����һ�����������������ഺ�����Ŀ�����ϣ����������Ĳ�ħ�����˺����������һ���ΰ����ߡ������������������ת���������',N'����',N'����/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616088-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898632&amp;k=244d0ec2f6b0737a57516466e943267c&amp;t=1412261735&amp;sid=3303KEpARVYWDPmRWDVTzw6lvFTYijze1jimH%2BN34sjBtOw',N'2014/10/2 22:57:22',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 425,N'����14����������ѩ����ɱ���¼�����BluRay-720P.MKV�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/baixuegongzhu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/baixuegongzhu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������ѩ����ɱ���¼�<br />
Ƭ��������The Snow White Murder Case<br />
�ꡡ������2014<br />
�������ҡ��ձ�<br />
�ࡡ��������/����<br />
����ԡ�����<br />
�֡���Ļ�����ļ�<br />
�������֡�7.2/10 from 85 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3096712" target="_blank">http://www.imdb.com/title/tt3096712</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.04 GB<br />
Ƭ��������126 Min<br />
�������ݡ��д����� Yoshihiro Nakamura<br />
�������ݡ��������� Mao Inoue ....��Ұ����<br />
�����������Ұ�� Go Ayano ....��������<br />
����������������ɳ�� Misako Renbutsu ....��Ұ��ɳ��<br />
�����������˲��� Nanao ....��ľ����<br />
������������ع�ʫ���� Shihori Kanjiya ....�ȴ�Ϧ��<br />
��������������ͳ�� Nobuaki Kaneko ....��ɽ��ʷ<br />
����������СҰ������ Erena Ono ....��������<br />
�����������ȴ����� Mitsuki Tanimura ....ǰ�ȤߤΤ�<br />
����������Ⱦ�Ƚ�̫ Shota Sometani ....���ȴ�<br />
��������������ʤ�� Katsuhisa Namase ....ˮ��</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬ�����˻�ױƷ��˾��һ����ŮְԱ��ɱ����������ͬ�ڵ�ͬ�£���ͨ�����۵ĳ�Ұ����ͻȻʧ�٣����������ˡ�һʱ�䣬ҥ�����𣬸�·ý��ı�����ӵ������Ȼ������������Σ���Ұ�����������<br />
<br />
����������԰���������룬һλ����������ò�İ������˲���ɱ�����ҵ����µĴ��ڽ���ѩ�׵ĳ���Ⱦ�죬���ʬ��������ֵ�ȼ������̿�����������������ɵ�Ů�������������ĳ�ޣ�����ʲô����ԭ��������������˷��ľٶ���<br />
<br />
������������������²⣬���������ɻ��Ŀ��ȫ���۽���һλŮ�ӵ����ϣ��Ǿ����ܺ�����ľ���ӣ��˲��� �Σ�ͬ�������ͬ�³�Ұ�������������� �Σ������Ӻ�������ְ��֪����ҵ�ճ���ױƷ��˾����ǰ���γ������Աȵ��ǣ���������ƽƽ����������עĿ������̨�ۺ����ֽ�Ŀ��Wide Show�����ݳ������Σ��Ұ�� �Σ��������������Ķ����������ʣ�Ϊ��Ū����ʵ���࣬��ȫ���Ը����ߣ�ͨ��������ͬ�¡�ͬ��ͬѧ�����˺����ף����Ѽ��˿�����һ�Ĵ���֤�ԡ�<br />
<br />
�������ͬʱ������Ϣ��ը��ʱ������·С����Ϣ���²⡢ҥ��ͨ�����硢���ӵ�ý��Ѹ�ٴ��������粡����賤����������ǵ�Ϯ�����������ĵ����ˡ�����ߺ��Թ���Ī��һ�ǣ��ѱ��Ƿǡ����������������ڿ�����á���ħŮ�����ǡ���<br />
<br />
������Ƭ�����ձ���������С˵�Ҵռ�����2012���Ƴ���ͬ����ƪ����С˵�ı࣬������ĳ��ױƷ��˾��Ů��Ա��ľ���Ӳ���ɱ���������ͬ��һ�ҹ�˾�����������������Σ�����ʧ�٣���˱�ý����������������Ⱦ��������Χ�����Լ�ͬ�¶�����ɱ�����֡��ı�ǩ�������������ϡ����ൽ����ʲô�����������ɱ�˶�ħ�����������������ˣ�<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
������������С˵���Ҵռ������Ʒ����Щ��һֱ��Ӱ���˵���ͷ���á���2010��Ѯ��ʮ�Ѱ��ۡ���ס���������������ʵ������Ա����ݼ��ġ�������˿ȸ�����ӱ����������������ġ���������ִ��󶼻��ձ�����м��ҽ���ġ�ҹ��Ħ���֡�������ÿһ����Ʒ�������Ŷ��ߺ͹����ƿ�һ������Ե���ɴ��ֱ���������������ܡ�2014�꣬���������ݴռ�����Ʒ�ı�ĵ�Ӱ������Ļ�������������2012�����ġ���ѩ����ɱ���¼�����<br />
<br />
����ӰƬ�԰��������⵽�����ֶ�ɱ���Ķ��԰���Ϊ���ˣ�Χ����һ����������̨���ݶ���Ϊ�����˵�����ͬ�³�Ұ�������е��飬��ʱ�·��ٷ�չ�Ķ�ý���ֶ�ʹ���޴���ӵ�л���Ȩ����Ϊ�¼�ֱ�ӵĲ����ߺ������ߡ������˵�Ŀ��ע�Ӻʹֱ��ܲ��£���ʵ���������������˷���롣<br />
<br />
������Ƭ�������д������Σ�������������ʮ�������ҵ�ӡ����Ƶ����ͬ����һ��ĸ��ռ��硣��տ�ĵ�Ӱ���Ժ����¼��ɲ������ߺøУ��ռ��罫��������������ڴ��Ŀ��ˣ�����������ӰƬ���ǳ���Ȥ������Ϊԭ���ߵ������˰ܱ��С����д嵼��ִ����СƷ��Ѽ�Ӻ�ҰѼ�ӵ�Ͷ��ʽ�Զ���Ź񡷺͡��������˶������ˡ����³��ڣ����ġ���ɫ�ٹ�ϵ�С���֤��������Ϊ��ҵƬ���ݵĲ���ʵ����ֱ��2010�꼯��ɵ�Ⱥ��硶��ɫ���硷������������ܳ��Ľ�����������ʹ���������Ƭ��ɿ����д嵼������Ϊֹ���۷�֮�����ڴ�֮���д�������������С�ɱ�С�����Ʒ�Ĵ��죬��Ż��������꣬ȴ�Ѹ��˾���֮�С���ˣ��������ࡢ�������صġ���ѩ����ɱ���¼���ʵ��ν�д����������ڴ��Ѿõ���ҵ��Ƭ�Ļع�֮������緽�棬2013��Ϊ������֮�ܡ��͡���Զ��0����Ʊ��ը��ִ�ʵ��������ˣ���ԭ���͵������ʵ���൱������������ΪӰƬ��������һ��Ҫ��֤��<br />
<br />
������Ա���棬2012��ƾ�衶�ڰ��յĲ����¶��ձ���Ӱ�������Ů���ǵ�����Ů�Ǿ�����������Ů���ǳ�Ұ��������ԭ���������ɵ�������������ྶͥ��һ����ռ�����Ϊ���ǣ�������Ƭ��Ϊ�˽�ɫ���Ի����󡱺�ȫ��Ͷ��ľ�ͷ����Ӯ�������ҵ����Ρ�����������˵����һ��֤�ԣ�����ϱ��ֳ�������Ϊ��������Ƕ�����Ϊ�Ͼ��Ŀ��飬Ҳ�Ǳ�Ƭ�Ŀ���֮һ��׷�������Ų���������ĵ���̨���ݳ������Σ��ý�ɫ�ɽ�Щ����Ӱ�Ӿ緽��ƵƵ�����ĵ������������Ұ�յ��Ρ���ΪӰƬ���ߵ����ߡ�������������ľ���ӣ����������Ǻųƾ�ͷ����Ů�Ĳ˲����������ų��ǵĽŲ�������ͳ�ѡ�������ɳ�ӡ��ȴ����¡���ع�ʫ���桢�󶫿��顢����ʤ�á�Ⱦ�Ƚ�̫�Ƚ�����ʮ���ձ�֪������������ˣ�������˿�������ڵ���ġ���ɫ���硷��������Ϊ������ͬ�¡���������������ص��Թ��ߣ�ͨ��ֻ��Ƭ�������޶˲²⣬��ͬƴ�ճ�һ�����������²�͸�ķ�������������<br />
<br />
�����Ǻڣ��ǰף���ħŮ������ʹ���Ǽ��ʣ��ǳ�ޣ���ȷ�����£������޶˲²⣿һ��������Ŀ�������ˣ�1.3�ڹ����֤�ԣ���߳�����Ĺ��¾ʹ����ݣ�<br />
<br />
������Ƭ���ձ�����305����Ļ��ͬʱ��ӳ�����ܳ��ǳ������͹��������������λ�е���λ��<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
���д�����������ָ��ռ������Ƶ���Ұ�ղɷ�������ɳ�ӵ�һ��Ϸ����Ͼ��鸡�ֳ���������������������ͬ�˵��ݵ�ϸ�ģ�����ͬ����С˵�ĸı��󻮡�<br />
<br />
���������ʼ�ڡ���ס���Ӱ�����е�ʱ�ڣ��ռ�����Ƶ���Ĳɷ���ͻȻ�뵽���������ý��������Ĳ��Ǻ��¶���һ��ɱ�˰��������ǻ�˵Щʲô�أ����Լ����е��Լ����͡��������е��Լ�������������֮���ɴ˴ٳ����ⲿ�����ĵ�����<br />
<br />
����ӳʽ�ϣ��˲������ڷ�Ը�������ӰƬ���ܴ������Ҿ͹ر����أ���<br />
<br />
��̸������ҥ�ԣ���������͸¶��һ���������Լ����ϵ����¡����ϳ���ʱ��һ��Ϊ�˱�ս���ԣ�һ��ʱ��û�ڵ����ϳ��֣�����ʹ�����ȥ����ҥ�ԣ�����������ר�Ŵ����绰��ѯ��<br />
<br />
��ͷ������Ů�ŵĹ⻷����������Ҳ����Լ�ż����¶��������ƽ������ζ���е����⣬����ƽʱ���糵�������ᱻ���ϳ�����<br />
<br />
������������Լ������ۣ�������ʱ����ʹ�����������Ƕ�ħ����<br />
<br />
��2014��3��24�գ�����������ľ�������޶�Ů�������û��ļ���ᡣ˭֪������һ�ǳ����Ұ�վ����ȥ�������������غ󣬾������벻ʧʱ����٩�����ű�����Ի��ǡ��Ұ��GO������������Ŀ���е�һ�룬�д���������۰��հ��ݵĽ�ɫ��ʱ�����°�Ȼ�������֣������Ľ�ɫ�ܽӵ����������Բ��ᣬ��Ϊ����һ���ϲ������������̵����ˡ�������һ�������յĿ�Ц���ֳ��ı�Ц��ӳ��Ȥ��<br />
<br />
�������ϵ�����ԭ����û�������ģ�����������������Ҫ�ӽ����������Ե��ݽ�����Ա���������ݡ�����ְԱ�����ݷ����Լ��������붼������¼�����������������Գ��������Լ�����������������¼�ģ����ǵ�ζ�ÿ���~��<br />
<br />
����Ƭ�ǲ˲������ݵ��ײ���Ӱ������Ƭ��Ҳ���ݲ�ͬ�˵�֤�԰����������Ը�ͬ����ľ���ӡ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/baixuegongzhu/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/baixuegongzhu/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/baixuegongzhu/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/baixuegongzhu/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/baixuegongzhu/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬ�����˻�ױƷ��˾��һ����ŮְԱ��ɱ����������ͬ�ڵ�ͬ�£���ͨ�����۵ĳ�Ұ����ͻȻʧ�٣����������ˡ�һʱ�䣬ҥ�����𣬸�·ý��ı�����ӵ������Ȼ������������Σ���Ұ����������𣿹�����԰���������룬һλ����������ò�İ������˲���ɱ�����ҵ����µĴ��ڽ���ѩ�׵ĳ���Ⱦ�죬���ʬ��������ֵ�ȼ������̿�����������������ɵ�Ů�������������ĳ�ޣ�����ʲô����ԭ��������������˷��ľٶ�����������������²⣬���������ɻ��Ŀ��ȫ���۽���һλŮ�ӵ����ϣ��Ǿ����ܺ�����ľ���ӣ��˲��� �Σ�ͬ�������ͬ�³�Ұ�������������� �Σ������Ӻ�������ְ��֪����ҵ�ճ���ױƷ��˾����ǰ���γ������Աȵ��ǣ���������ƽƽ��',N'�ձ�',N'����/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616455-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899910&amp;k=d389362928d588a4c61dd67261b6b202&amp;t=1412261733&amp;sid=cbebpBPqLjn2QP2T33qw3OEd%2F2gEHwF2HOx5OnYubxujTDc',N'2014/10/2 22:57:23',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 426,N'����13�������ɷ�������������������BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/east/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/east/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������<br />
Ƭ��������The East<br />
�ꡡ������2013<br />
�������ҡ�����/Ӣ��<br />
�ࡡ���𡡶���/����/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.9/10 from 31,721 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1869716" target="_blank">http://www.imdb.com/title/tt1869716</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.87 GB<br />
Ƭ��������116 Min<br />
�������ݡ��������������� Zal Batmanglij<br />
�������ݡ������ء����� Brit Marling ....Sarah<br />
��������������ɽ��˹��˹�ӵ� Alexander Skarsg rd ....Benji<br />
�������������ס��弧 Ellen Page ....Izzy<br />
�������������������ƴĽ����� Wilbur Fitzgerald ....Robert McCabe<br />
�����������ɴ���櫡�������ɭ Patricia Clarkson ....Sharon<br />
�����������бȡ������� Toby Kebbell ....Doc<br />
��������������櫡����ɵ� Julia Ormond ....Paige<br />
����������������˹���� Billy Slaughter ....Trevor Landen<br />
����������Anthony Michael Frederick&nbsp;&nbsp;....Randy<br />
����������������˹������ Aldis Hodge<br />
����������Patricia French ....Fake Mom<br />
����������Pamela Roylance ....Diane Wisecarver<br />
����������ϣ�ޡ����ϵ��� Shiloh Fernandez</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ɯ����Ī˹��һ��ǰFBI��̽Ա����FBI����֮����������ϯ�ա���³�¹�˾����������һ��˽�˵İ�����˾�������˾���ڵ�Ŀ�ľ��Ǳ���һ�����ǵĿͻ���Ҫ��Ҫ�����Ķ��������еĳ�Ա���Ǹ��о�Ӣ�����������˾Ŀǰȴ��������ս����һ���ж�����������֯�������˾�ǳ����ա�ϯ�ա���³�¹�˾��ͷ��ɳ�����԰�Ī˹��Ա������ѡ�˳�����������͸���˶���֮�С�<br />
<br />
������������һȺ�������������Է���֯���ɵ�һ����֯�����ǵĴ��ڵ�Ŀ���Ǵ����˾�ķ��������Ұ����๫�����ڡ���Ϊ���ܹ�ѵ�������ҷ���Ҫ����������Ī˹�ܿ����͸���˶��������֯�����Һ����еĳ�Ա�����һƬ��Ӯ�������ǵ����Σ����������μ�������һ�ε��ж������ǺͶ����ĳ�Ա������һ��Ī˹���������Լ����еĵ��º���Ϊ׼�����˱仯��<br />
<br />
�����ڼ���������ͷĿ����֮��Ī˹���ֶ��������ڵ�������ʵ�����ǡ����������������ǡ��ٸ���ƶ����ô�򵥣���Ī˹��������˵��±�׼�������������֪�����˱仯����б����<br />
<br />
<font color="red"><strong><font size="3">һ�仰���ۣ�</font></strong></font><br />
<br />
ӰƬ���Ÿ�����Ƭ��˾�ļ����Ӱһ�������Ľ��࣬��Ϊһ���̼��������صľ��Ƭ���������ɹ��ˡ����յ����ⲻ��������ڹ��ڱ���������ĳЩϷ���Բ����߼���<br />
����indieWIRE<br />
<br />
����������һ������עĿ�Ļ��񣬽�����һ����ҵ���һ�ֳ��ԵĹ����е���������ʧ��<br />
�����������ܿ���<br />
<br />
���꡶����������᲻����֪���ĸ��࣬������ݲ����ء�����͵���������������������������Բ����ɣ��Թ��ڶ�������Ϊ���ܿɹ󣬱Ͼ����������˿���֮���ں��ĵ�Ӱ�����ˡ�<br />
��������ʯ��<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
���������Ӱ�ķ�˿<br />
<br />
������Ϊ���ϵĲ�Ů��ӰƬ�ı������ݲ����ء��������Ǳ�Ƭ��������2011����ǲ�����һ�����������߽��˹��ڵ����ߣ����ⲿ��Ӱ�ġ���ճ���������������һ�ξ�����ԭ������ϵ��Ů�ˣ�Ҳ������һ�����Ŷ���ƬԪ�صļ��Ƭ��<br />
<br />
����̸��ӰƬ�������ء�����˵�����Һ����������������Ǽ��Ƭ�ķ�˿���������Ǻ�������һ������Ů����Ĺ��¡������ͬʱ�����ǻ������ǲ����ܰѶ���Ƭ��Ԫ�ؼ��뵽����������֮�У�������ν�Ķ���Ƭ�����������»����ǲ�����Ӱ������ô�صĶ���Ԫ�أ��������赭д�ģ��Ѷ�����ǹս����һ��������ʹ�á�����˵�ⲿ��Ӱ�е�Ī˹�����ͻ�ʹ�����ֿɵõı�ֽ������������ͻ����Χ����������һ����˾�ɳ�ȥ�ļ�������������������ļ��Ƭ����û�м����ġ����ƺ��ڱ����������Ϊ�Ѿ���������ҵĹ����������ˡ���Ǳ�����֯����һ����������������ɵ���֯�������������������������У��������еĹ���õ��˵߸������ң�����Ҫ���ǣ������Լ�����֪�����˱仯����б�����ԣ�����˵������һ�����Ƭ��������˵������һ���˷������ҵ�ӰƬ�����Ƭ������һ�����Ͷ��ѡ����ң����ǻ���ӰƬ��̽���˺ܶ��˾�ĸ��ܣ�������Ա����ְ�ȵ����⡣��<br />
<br />
����ֻҪ�漰����������ӰƬ�����Ƕ�����Ϊ����һ�������а�ĵ�Ӱ����������������չʾ���������壭�����������壭�����Ǻ����ʵġ�ӰƬ������������������˵������������̸�۰������ʱ��������ʱ��̸�����ɣ����е�ʱ��Ҳ����̸�����ɡ���ʵ��̸�����β��������ǵı��⣬���ǵı����ǣ�չʾ������������ϵ����ǵ�������ǶԴ�˾��������ʧ�������������˰�������������Ϸ�绯�����ӣ���������ǵ�����ʧ���ʹ�ܡ���<br />
<br />
��������Ƭ�ں�<br />
<br />
������ʵ�����粼���ء�������˵�ģ����Ƭ��ֻ���ⲿ��Ӱ��һ����ǣ���ӰƬ���ںˣ��������յģ���Ϊ������µĺ������⣬��������Ī˹���˵ı仯�������ء�����˵�����Ҹо�������Ӱ�������Ǹı�ܶ࿴���͹۵㡣���ǵ�Ӱ���ý���һ������Ȥ�����á��Ҷ����Ҳ�ܺ��档���ⲿ��Ӱ�У�Ī˹�߽���һ��İ�������磬�����������������;��飬�ı����������ǣ���������һ������һ�������ı��˽�ɫ���������ǣ���ɫ�����ָı䣬��Ϊ��ɫ����˵���ڴ���ʲô�����ǽ�ɫ��������٣�Ҳ�������ڹ����ⲿ��Ӱ��ʱ�������������١�����Ҳ�������������ⲿ��Ӱ�Ĺؼ����ڣ�����Ϊ����֪���������ڿ����ⲿ��Ӱ֮�󣬻���ʲô�뷨�����Ǹı䡣��<br />
<br />
����������������������˵����ӰƬ��û��ʲô���࣬������������Լ�Ҳ��֪���Լ��ǲ�����Ҫ֪�����ࡣ�Ҳ�����Ϊ�������㡶���������Ըı����ǵĹ۵�ΪĿ�ĵġ���ʵ����Ҳ��֪����Ӱʷ���м�����Ӱ�Ǹı������ǵĹ۵�ġ���ֻ���ⲿ��Ӱ�������Ǿ��ѣ�����˼��һЩ���⡣���ְѾ��Ƭ�������Ǿ��ѵ��뷨�����һ�𣬾ͳ�Ϊ�ˡ��������ⲿ��Ӱ����������˷ܡ��Ͼ���Ҫ�ں���ҵԪ�غ�����Ƭ�ķ����һ����Ӱ����ǲ�����ġ�����̸�����ַ�񣬰��ס��弧���ʾ˵����ֻ��һ����Ӱ����˵����ӰƬ�Ĺ��º���Ȥ��Ҳ����Ϸ���ԡ����в���������ı�ۣ����������������Լ��������ȵ�Ԫ�ء������Ҹ��˲��������ⲿ��Ӱ��ʲôʵ�ʵĲο����������Ҿ��ã��ⲿ��Ӱ��Ĺ��£���������ʵ�����еĸ��ʣ�С�ڰٷ�֮һ��������������ϣ�������׫д��������ºܾ��ʣ�������ɫ����<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ƭ�����ݲ����ء������뵼���������������ﹲͬ��磬����֮ǰ�����ˡ������ҵ���������<br />
<br />
��ӰƬ��·��˹�������㣬����ʱ��ǰǰ���һ��ֻ���������¡�<br />
<br />
�����ס��弧�Ľ�ɫ������ȷ���ɷ���ϣ羡���˹���ݵġ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/east/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/east/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/east/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/east/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/east/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ɯ����Ī˹��һ��ǰFBI��̽Ա����FBI����֮����������ϯ�ա���³�¹�˾����������һ��˽�˵İ�����˾�������˾���ڵ�Ŀ�ľ��Ǳ���һ�����ǵĿͻ���Ҫ��Ҫ�����Ķ��������еĳ�Ա���Ǹ��о�Ӣ�����������˾Ŀǰȴ��������ս����һ���ж�����������֯�������˾�ǳ����ա�ϯ�ա���³�¹�˾��ͷ��ɳ�����԰�Ī˹��Ա������ѡ�˳�����������͸���˶���֮�С���������һȺ�������������Է���֯���ɵ�һ����֯�����ǵĴ��ڵ�Ŀ���Ǵ����˾�ķ��������Ұ����๫�����ڡ���Ϊ���ܹ�ѵ�������ҷ���Ҫ����������Ī˹�ܿ����͸���˶��������֯�����Һ����еĳ�Ա�����һƬ��Ӯ�������ǵ����Σ����������μ�������һ�ε��ж�������',N'����/Ӣ��',N'����/����/����',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-616081-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898609&amp;k=4f4db7967841deef89f196f98de22baf&amp;t=1412261736&amp;sid=d14azK1Mc4DNKGUhL0VHSXbrWmpuYnZ0hW%2FupjGdKEwbeHo',N'2014/10/2 22:57:23',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 427,N'����14Ʊ����㤴�Ƭ�����º�֮�ۡ���BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/aohezhiyan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/aohezhiyan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������º�֮��/������(̨)/Բ��/����/��/ǧ��ħ<br />
Ƭ��������Oculus<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡾��/�ֲ�/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.5/10 from 35,513 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2388715" target="_blank">http://www.imdb.com/title/tt2388715</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.57 GB<br />
Ƭ��������104 Min<br />
�������ݡ����ˡ������ɸ� Mike Flanagan<br />
�������ݡ���羡����˻��� Katee Sackhoff ....Marie Russell<br />
�������������ס����� Karen Gillan ....Kaylie Russell<br />
����������������������� Rory Cochrane ....Alan Russell<br />
����������ղķ˹��������� James Lafferty ....Michael<br />
���������������١�˼���� Brenton Thwaites ....Tim Russell<br />
�����������׸����ɣ���߶� Miguel Sandoval ....Dr. Graham<br />
����������������ɯ������ Annalise Basso ....Young Kaylie Russell<br />
����������Garrett Ryan ....Young Tim Russell<br />
����������Katie Parker ....Annie<br />
����������Courtney Bell ....Auctioneer<br />
����������Kate Siegel ....Marisol</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������ķ�Ϳ�����ʱĿ���˸�ĸ�����ı��磬����������飬���������ϼ��еĹŶ�������а�����䣬������ӵ���߶��������գ�Ҳ�ǵ������Ǽ���������ԭ���������ص��ϼ�Ѱ��֤�ݣ���ͼ�ݻٹŶ��������ϣ����ǵļ��俪ʼ���ݣ�����Ƕβ������׵����£���ʹ������������Ϣ����ʼ�޷��ֱ���ʵ�ͻþ��������䳾���вҰ���������һҹ��<br />
<br />
������ķ�������١�˼���� Brenton Thwaites �Σ��Ϳ��������ס����� Karen Gillan �Σ������ŻҰ����ֳ��صĹ�ȥ���������ؿ��Ÿ�ĸ����ǰ���ҵ���ȥ�����Ϊ���������˼������޷�Ȭ�����˺ۡ�ʱ��ɿ�������ţ�Ȼ����ʹȴû����˶���ȥ���ڴ��ڼ䣬��ķ�Ϳ���һֱ��û�з�����Ѱ������Ļ��ᡣ���ڣ����򲻸������ˣ����˷��֣�һ�вҾ��ʼ��ٸ�߾Ͳ��ڼ��еĹŶ�����֮�С�<br />
<br />
����Ϊ���սᱯ�磬��ķ�Ϳ��������ϼ���Ҫ�����Ӵݻ٣�������û���뵽���ǣ����ǵľٶ�ȴ������֮���Ϊ�˴򿪵������ŵ�Կ�ס���Ѫ���־塢��ŭ������������ɽ���������Ļ���֮�У����ǿ�ʼ�㲻���������ʲô����ã�ʲô����ʵ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/aohezhiyan/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/aohezhiyan/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/aohezhiyan/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/aohezhiyan/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/aohezhiyan/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����ķ�Ϳ�����ʱĿ���˸�ĸ�����ı��磬����������飬���������ϼ��еĹŶ�������а�����䣬������ӵ���߶��������գ�Ҳ�ǵ������Ǽ���������ԭ���������ص��ϼ�Ѱ��֤�ݣ���ͼ�ݻٹŶ��������ϣ����ǵļ��俪ʼ���ݣ�����Ƕβ������׵����£���ʹ������������Ϣ����ʼ�޷��ֱ���ʵ�ͻþ��������䳾���вҰ���������һҹ����ķ�������١�˼���� Brenton Thwaites �Σ��Ϳ��������ס����� Karen Gillan �Σ������ŻҰ����ֳ��صĹ�ȥ���������ؿ��Ÿ�ĸ����ǰ���ҵ���ȥ�����Ϊ���������˼������޷�Ȭ�����˺ۡ�ʱ��ɿ�������ţ�Ȼ����ʹȴû����˶���ȥ���ڴ��ڼ䣬��ķ�Ϳ���һֱ��û�з�����Ѱ����',N'����',N'���/�ֲ�/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616454-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899909&amp;k=5765be059f74f114551f8c6b0bd29f5c&amp;t=1412261737&amp;sid=35b2VlY9bsSotmUUggcZcfXSdmhAE%2F%2FGmEIrtpjVsUbv%2BTw',N'2014/10/2 22:57:24',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 428,N'��������������14��������������81�š���HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/jingcheng81hao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/jingcheng81hao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������81��/����81��<br />
Ƭ��������The House That Never Dies<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ���𡡾���/����/���<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�������֡�6.7/10 from 57 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3816526" target="_blank">http://www.imdb.com/title/tt3816526</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��894 MB<br />
Ƭ��������90 Min<br />
�������ݡ�Ҷΰ�� Wai Man Yip<br />
�������ݡ������� Francis Ng ....������<br />
���������������� Ruby Lin ....������/½����<br />
���������������� Tony Yang ....������<br />
����������ĪС�� Monica Mok ....����<br />
��������������ϫ Pat Ha ....��ɩ<br />
������������ݼ Jing Li ....����ƽ<br />
�����������غ�� Hailu Qin ....����ҽ��<br />
���������������� Elaine Jin<br />
����������Ԭ���� Cheung-Yan Yuen<br />
���������������� Xiaochuan Li<br />
������������־ Zhi Han</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����������꣬λ�ھ��ǰ˴��ͬ�ڵ���¥������ƽ������ͷ��½�����޾��������������˿�������������ľ��Ǵ󻧻�������ү���������ۣ�½���������ҡ������»�֮ҹ����ȴ��ɸոչ����Ļ��Ҷ���ү,ڤ��󲻾�½�������滳�У�һʱ��̥�������𣬼������²��������ñ�ټҲ������ţ�������լ�������񡭡�<br />
<br />
����һ�����81�Ź�լ�����������ط��ʾӣ�����ǰ����������ĲҰ�������Ŀ��ͬʱ�����ĳ���Ҳ���⻽���˹�լ�ڳ����ѾõĹ»���Թ����<br />
<br />
����̨��Ů���������䣨������ �Σ�Ϊ�������������ã������� �Σ�������һ���Ǩ���ڵأ�����ǰĸ�ף������� �Σ���������������������լԿ�ף������������Ů��С�Σ������� �Σ�ס���˴�˵�е���լ��������81�š����õ����ӣ�����ϫ �Σ�������飬������������������������ĪС�� �Σ���һ������������������ŵ���լ�ӳ���һ����Ӷ�ˣ�Ԭ���� �Σ��������ˣ�����С��ȴ˵�Լ�����һ������С�����ˣ���󵨵�������Ҫһ̽������ȴ���ⷢ����լ�ӵĳ������¡�ԭ����һ������լԭ�������˻������ֵ�ϢϢ��أ���������ү�����棨������ �Σ�һ����Ȣ��¥ͷ��½����Ϊ�ޣ�½����ȴ�������������ү����ݼ �Σ�������ڤ�飬��һ���־�ֱ�ӵ������պ���ҵ�ȫ��˥�ܡ�������ʵ�����������ظо�����լ�ӵĳ���Ȼ������<br />
<br />
������Ƭ�ı�����䴫˵���Ĵ���լ֮�ס�����81�š��Ĺ�����¡�<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
��������81�š��ǵ���Ҷΰ�񡢱�������̡����ڇ�;�������廨Ь��֮���ٶ�����֮�������˽⣬��Ƭ�Խ���Ԫ��Ͷ�ʣ���������ĳﱸ�ڣ�һ��������ڣ���Ϊ���˺��������ġ�����ֱʡ���<br />
<br />
��ӰƬ�ﱸ�ڼ����ʵ��̽�ó���81���ڲ��ռ���һ�����ϣ��زĶ��3ǧҳ������100���֡�ӰƬ�Ⱥ��ڱ����������ȵ�ȡʵ�����㣬���������ڳ���һ�ꡣ<br />
<br />
��������ʾ��ӰƬ�еĹ��¶���Դ�ڷǳ���ʵ�ĸ��ܡ�����˶���ʾ�ڴ��߽�����81�ź󣬶������һ��ʱ�մ�λ�У��·��������������������һ��ʱ�ա���������Ӧ�þ��ǳ���81�ŵ��������ڡ���<br />
<br />
��������81�š��������ǧ��1:1ʵ����ԭ&quot;��լ&quot;����81�š�<br />
<br />
��������81�š���8000��޶����������������Ӱ�۹���������ݣ��������˫�����ʹ�ʦ�����ܡ���ɫo�䡷����ָ�������˵�������Ļ���ʦΪӰƬ�������������Ӿ���Ч��<br />
<br />
��2014��5��16��ӰƬ�ɡ�����81�š���ʽ����Ϊ������81�š���<br />
<br />
��Ƭ��ʹ�ö��12900�����ߣ���񻨵��ſ��ݻ���ľ�ס����ӵİ��裬��Щ���ߺ��Ѹ㶨��������Щ�ǹŶ�����Ҫ����ȥ���ã�����Ҫע�ⲻ���������ܹ�<br />
<br />
����Ƭ�ǵ�һ���ԡ������Ĵ��լ֮�ס�Ϊ��������ľ��Ƭ����һ��3D���ֵľ��Ƭ���Լ���һ��רע������������㤡��ľ��Ƭ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/jingcheng81hao/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/jingcheng81hao/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/jingcheng81hao/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/jingcheng81hao/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/jingcheng81hao/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��������꣬λ�ھ��ǰ˴��ͬ�ڵ���¥������ƽ������ͷ��½�����޾��������������˿�������������ľ��Ǵ󻧻�������ү���������ۣ�½���������ҡ������»�֮ҹ����ȴ��ɸոչ����Ļ��Ҷ���ү,ڤ��󲻾�½�������滳�У�һʱ��̥�������𣬼������²��������ñ�ټҲ������ţ�������լ�������񡭡�һ�����81�Ź�լ�����������ط��ʾӣ�����ǰ����������ĲҰ�������Ŀ��ͬʱ�����ĳ���Ҳ���⻽���˹�լ�ڳ����ѾõĹ»���Թ����̨��Ů���������䣨������ �Σ�Ϊ�������������ã������� �Σ�������һ���Ǩ���ڵأ�����ǰĸ�ף������� �Σ���������������������լԿ�ף������������Ů��С�Σ������� �Σ�ס���˴�˵�е���լ����',N'�й�',N'����/����/���',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-616080-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898608&amp;k=ad3f045dfa3710cd66ed79d511b85940&amp;t=1412261737&amp;sid=375ad2XNlK4i5a8pukakV6nqaDencgsPbCyYWOqNfiRKofA',N'2014/10/2 22:57:24',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 429,N'����14���߷�Ʊ�������ָߴ��Ӱ����BluRay-720P.MKV�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/legao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/legao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������ָߴ��Ӱ/LEGOӢ�۴�(��)/�ָ����Ӱ(̨)<br />
Ƭ��������The Lego Movie<br />
�ꡡ������2014<br />
�������ҡ��Ĵ�����/����/����<br />
�ࡡ����ϲ��/����/����/ð��<br />
����ԡ�<font color="red"><font size="3">Ӣ���������������</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.9/10 from 142,504 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1490017" target="_blank">http://www.imdb.com/title/tt1490017</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.84 GB<br />
Ƭ��������100 Min<br />
�������ݡ�����˹������ Chris Miller<br />
�����������ƶ����޵� Phil Lord<br />
�������ݡ�����˹�������� Chris Pratt ....Emmet (voice)<br />
����������Ħ���������� Morgan Freeman ....Vitruvius (voice)<br />
��������������������� Will Ferrell ....President Business (voice)<br />
�����������̡ܱ�ʷĪ��˹ Cobie Smulders ....Wonder Woman (voice)<br />
������������������ͼķ Channing Tatum ....Superman (voice)<br />
�������������ɡ�ϣ�� Jonah Hill ....Green Lantern (voice)<br />
��������������ɯ�ס����˹ Elizabeth Banks ....Wyldstyle (voice)<br />
������������ķ����ɭ Liam Neeson ....Bad Cop / Good Cop (voice)<br />
��������������ɭ������ Alison Brie ....Uni-Kitty (voice)<br />
������������ˡ��¸��� Nick Offerman ....Craggy (voice)<br />
���������������� Charlie Day ....Spaceman Benny (voice)<br />
���������������������� Will Arnett ....Batman (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬ������һ����ͨ�ָ�С�˰����أ�����˹�������� �������������ˡ���ʦ�����ߡ��������һ֧�ֿ���֯����һλ������֪һ�������Ħ���������� ������һ����ͼ��ֹ�ָ�����а�񱩾�������������� �����������ռƻ���<br />
<br />
���������أ�����˹�������� Chris Pratt ���������ָ�������һ����ͨ��û���κδ��ڸеĽ���ʦ����ÿ�쾫�������ֹ����ϣ�����˵�����ָʾ����һ��Ļ��ĳ���չ������������һ������󱳻������ֵĶ��������ͱ�����ױ�����������ľ��죨����ķ����ɭ Liam Neeson �����������ʻ���ԭ��ͳ���ָ�������ܲã������������ Will Ferrell ����������Щ������������С�˼�Ϊ�����������᲻ͬϵ�е��ָ������໥���棬������������˵��������辶�ķ������졣����������������������������Щ�����ʦ�����߻���һ�����µ���ı��������Σ��ʱ�̱�¶��������ɯ�ס����˹ Elizabeth Banks ��������������֪ά��³ά˹��Ħ���������� Morgan Freeman �������϶�Ϊ��������<br />
<br />
�������������Ⱥ�Ϯ�����ʦ�ǣ�������ƶ���İ������ܷ񵣴����Σ�<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
������2008�꿪ʼ�����ɵ�Ӱ��˾���ڷ�չ���ָߴ��Ӱ������Ŀ��2010�꣬���콵��ʳ���ĵ��ݷƶ����޵ºͿ���˹�и�����������Ʒ�ܵ��϶��󣬱����ɿ�������׫д��ִ�����ָߴ��Ӱ����2011�꣬��Ӱ��˾ͨ�������ǵľ籾�����ö���Ƭ��2014��ȫ����ӳ���Ĵ����ǵĹ����ҡ������߼���ǩԼ������������80%��ӰƬ�����ڻ��ɻ�õİ�Ȩ��ɣ���Ӱ�������ָ���߶���������������Ȱ���Ӣ�۽�ɫ�ͳ����������������ء�ָ����������ɭ��������ꡢ���˺�������������˹������˵�����õ�����Ҫ��һ����ɣ�Ψһ����������������100�����ڽ�һ�����½���������ֹ�ɶֵ�Ц�ϺͿʹ������ڵ�ע������ɢ�������û��ɷ��˺ܶ���˼�ڰ�Ȩ���ɷ����̸�У��������ɽ����˸�·����Ӣ�۵����硣������Щ��δ�н�������������ײ��һ�𣬲�������Ҫ�ġ���Ϊ�����Ǻ�������ο����ָߵ����磬���Ǿ�����ô��ġ��Ҷ��ӳ����������ͳ��Ϳ�����ţ��һ��Ž�����������ݿ���˹������˵����˵����Ȼ�������ÿ�����Щ�Ƿ�����ƶ���ڵķ�չ�����ҡ��Ƿ������Ȥ����<br />
<br />
����ʣ�µľ����������������ЩС�����������С���ھ�ͷǰ�������������ƶ���¬���õ��Զ���ʦ������ÿ��С���飬Ȼ���ٰ����Ｏ����һ�����ǻ��Ƴ��ָ߽�����������ӡ���Ȼ����Ч��׿�������������̱��������Ҫ���ѡ���Ļ�ϵ��ָ������е㲻�������������û����ʵ�������гɹ��齨����һ���������������ָߵı����й���ֻ����һ�п������ܼ١����������ҵ�������߸�������ָߵķ�ʽ������ʵ��ɫ�ʺ�����ľżһ��ı����ڸ����ȱ����������⡣<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
��ӰƬ��Ȼÿһ֡�����õ���CGI��ɣ��������ȴ����ģ�¡����񶯻�����Ч����Ϊ������Ƭ�еĽ�ɫ��������������ָ���ߡ�<br />
<br />
����Ƭ��Ħ�������������������ĵ�һ��������Ӱ��<br />
<br />
�����ܳ�����Ƭ���У������ָ�(Lego)��������ڵ�Ӱ��һ��Ҳû�б��õ���<br />
<br />
���ڱ�Ƭ�пʹ����ֵ��ָ���߽�ɫ������Johnny Thunder��Johnny Thunder��Lloyd Garmadon����սϵ�е�C-3PO��Han Solo��Lando Calrissian��������ꡢ�˲����ࡢ�ʵ���NBA���ǰ�����ȵȡ�<br />
<br />
��ӰƬ�еġ��в����������硱(Middle Zealand world)��Ϊ����ħ�䡷ϵ���еġ��������¾�����Ӱ�桶ħ�䡷�����������ڵ��ݽܿ�ѷ�ļ����������ȡ���ġ�<br />
<br />
����Ƭ�ɻ������������в���������DC����Ӣ���еĽ�ɫ��ͬʱҲ������������ս�еĽ�ɫ����սϵ�а�ȨĿǰ���ʿ�ṫ˾���У�����ʿ��Ҳ��������ĸ��˾��������֪��DC��������һ�Ծ������֡�<br />
<br />
��ӰƬ���̵����������������һ�Դ����������ɫ�ֱ������ɡ�ϣ���Ͳ�������ͼķ���������������������ݵ�ӰƬ����������ӡ���Ҳ��һ�Դ��<br />
<br />
�����ꡤ˹ͨ(������֩������)��С�޲��ء�����(����������)һ��ʼ����ΪӰƬ�����������������ڳ�ͻ���˳���<br />
<br />
���̡ܱ�ʷĪ��˹�ڱ�Ƭ�пʹ�Ϊ������Ů�������������������硶��ܾ֡�������ϣ��̽Ա����������ɫ�ֱ����໥������DC���������������ָ�ͬʱӵ������������˾�����Ȩ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/legao/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/legao/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/legao/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/legao/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/legao/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬ������һ����ͨ�ָ�С�˰����أ�����˹�������� �������������ˡ���ʦ�����ߡ��������һ֧�ֿ���֯����һλ������֪һ�������Ħ���������� ������һ����ͼ��ֹ�ָ�����а�񱩾�������������� �����������ռƻ��������أ�����˹�������� Chris Pratt ���������ָ�������һ����ͨ��û���κδ��ڸеĽ���ʦ����ÿ�쾫�������ֹ����ϣ�����˵�����ָʾ����һ��Ļ��ĳ���չ������������һ������󱳻������ֵĶ��������ͱ�����ױ�����������ľ��죨����ķ����ɭ Liam Neeson �����������ʻ���ԭ��ͳ���ָ�������ܲã������������ Will Ferrell ����������Щ������������',N'�Ĵ�����/����/����',N'ϲ��/����/����/ð��',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616449-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899878&amp;k=8238526f7c087f5a3682dc2719d5e4fc&amp;t=1412261739&amp;sid=de47PrwEykIkRc5lGtJ3UUV4%2FmSHlAYDTHDek5KeC6A97HM',N'2014/10/2 22:57:24',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 430,N'����14�ĵ�ĩ������������ҹ�賿����BluRay-720P.MKV�������֡�',N'<font color="blue"><font size="5">��ƬƬ���ܳ�������Ų��£����Լ����ˣ�<br />
ȫ���ǣ�����ҹ�賿�������������ǿ������ҵĺ�VAN��</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/nayelingchen/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/nayelingchen/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������ҹ�賿�������������ǿ������ҵĺ�VAN<br />
Ƭ��������The Midnight After<br />
�ꡡ������2014<br />
�������ҡ��й����<br />
�ࡡ��������/���<br />
����ԡ�����<br />
�֡���Ļ�����ļ�<br />
�������֡�5.9/10 from 254 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3504824" target="_blank">http://www.imdb.com/title/tt3504824</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.73 GB<br />
Ƭ��������121 Min<br />
�������ݡ��¹� Fruit Chan<br />
�������ݡ��δﻪ Simon Yam<br />
���������������� You-Nam Wong<br />
���������������� Ting Yau Tsui<br />
����������Ѧ���� Fiona Sit<br />
������������ӽɺ Janice Man<br />
������������Ӣ�� Kara Hui<br />
�������������ɭ Sam Lee<br />
������������ѩ Suet Lam<br />
����������׿��֥ Goo-Bi GC<br />
������������ɲ� Shing-Cheung Lee<br />
������������׿�� Cherry Ngan</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬ���������������������賿ʱ�ֵĺ�ɫС�ͻش��ң���С�ʹ�Խʨ��ɽ������ݷ������һ�����磬���˳���ʮ�߸����⣬����������˺�����ʧ�ˣ��ɴ�Ϊ����չ����һ�������չ��¡�<br />
<br />
�������½������������أ����أ���ĳ�����Ϻ����ѡ���K���������賿ʱ�ݳ����ɾ�������ǰ���½���ҵĺ�ɫ����С�ͣ��׳ơ���van�����ؼң���С�;���ʨ��ɽ��������Ƿ��ֳ���������硢�����������˾���ʧ��ֻʣ��С�ͱ��������ڵ�17�ˣ�16���˿ͺ�1��˾�������·����������һ ��ʱ�ա����·�չ��һ�����������¼����˿Ϳ�ʼһ����һ�����޹�������������ͷ��������ߵ������˳���������������أ�������Ҫ�⿪һ�����ţ������������ػ�ԭ�������硣<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
������ӰƬ�ı�����������С˵�����δﻪ����ӽɺ����ѩ�������ϵ����ݣ�ȫƬ��۱�־Ԫ�عᴩʼ�գ��ڰ��ֵ�Ӱ�ڵ�ȫ����ӳ�ϱ��ܹ�ע��Ҳ����ǰ����Ƭ���˱�ʾ��ֵ���ڴ��Ļع�ĸ۲�Ƭ����<br />
<br />
�������š��ݸ����ݡ�֮�Ƶ���۳¹����³�Ƭ����ҹ�賿�������������ǿ������ҵĺ�van��������̨����Ӱ�ڱ�ĻƬƬ�����¼����Ƭ�ڰ���Ӱչ��ӳ�󣬻��ȫ�������������ֶ��ӵ�������������������������С˵��͸��һȺ���Ϻ�ɫ��������С��(�����׳ơ���van��)������ش���ʨ��ɽ��������˷��ֳ���������硢�����������˾���ʧ��ֻʣ��С�ͱ��������ڵ�ʮ���ˣ��ں����ɡ��ƻá���㤡������������������ɫ��Ĭ��Ƭ����Ա�д����ֿڣ��ְ�����ʬ���˱���������ģ����������Ӱ���������ܣ����ݳ¹�̹��ѹ���ܴ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/nayelingchen/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/nayelingchen/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/nayelingchen/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/nayelingchen/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/nayelingchen/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬ���������������������賿ʱ�ֵĺ�ɫС�ͻش��ң���С�ʹ�Խʨ��ɽ������ݷ������һ�����磬���˳���ʮ�߸����⣬����������˺�����ʧ�ˣ��ɴ�Ϊ����չ����һ�������չ��¡����½������������أ����أ���ĳ�����Ϻ����ѡ���K���������賿ʱ�ݳ����ɾ�������ǰ���½���ҵĺ�ɫ����С�ͣ��׳ơ���van�����ؼң���С�;���ʨ��ɽ��������Ƿ��ֳ���������硢�����������˾���ʧ��ֻʣ��С�ͱ��������ڵ�17�ˣ�16���˿ͺ�1��˾�������·����������һ ��ʱ�ա����·�չ��һ�����������¼����˿Ϳ�ʼһ����һ�����޹�������������ͷ��������ߵ������˳���������������أ�������Ҫ�⿪һ�����ţ������������ػ�ԭ����',N'�й����',N'����/���',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616018-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898542&amp;k=491d2484423a936b63a62b9b30f9b209&amp;t=1412261738&amp;sid=13c8h%2BqK6CihTGtTGbWv49qZIG5W4F14utcFm0jJX099x30',N'2014/10/2 22:57:24',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 431,N'��֣����������14��Ƭ��������˵���֡���HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/fenshou100ci/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/fenshou100ci/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������˵����/����100��<br />
Ƭ��������Break Up 100<br />
�ꡡ������2014<br />
�������ҡ��й����<br />
�ࡡ���𡡾���/����<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�������֡�7.2/10 from 15 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3898860" target="_blank">http://www.imdb.com/title/tt3898860</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��1.03 GB<br />
Ƭ��������105 Min<br />
�������ݡ�֣���� Lawrence Cheng<br />
�������ݡ�֣���� Ekin Cheng ....��ɭ<br />
���������������� Chrissie Chau ....С�<br />
��������������֮ Ivana Wong ....���<br />
�������������ȷ� Andy Leung<br />
��������������� King Wu<br />
�����������½��� On Chan<br />
�����������ν��� Jase Ho<br />
�������������� Swan ....����<br />
�����������κ��� Haopeng He ....����<br />
������������ǧ�� Miriam Yeung<br />
��������������� Eric Kot<br />
����������Ǯ���� Kar Lok Chin<br />
������������ӯӯ Tong Ying-Ying<br />
�����������ֺ��� Jan Lamb<br />
��������������ΰ Yiwei Lau</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������ɭ��֣���� �Σ���Сᰣ������� �Σ�����8�꣬����������άϵ����ķ���ֻ�������֡������֡�ÿ��С��Է�����Ҫвʱ����ɭ������һ������ȥ��ͣ���С᰸��ӵô���ߡ������Ǿ�����99�η��ֺ󣬶��������϶��˱˴ˣ�������²��������׷��ֵĳ�ŵ��������Ҫһ��Ϊδ����ƴ���Լ����ϰ壬������Ӫ���ȵꡣ<br />
<br />
����һ��������������̫��Ů��磨����֮ �Σ�����ɭ��Сѧͬѧ���ƣ��κ��� �Σ������ȵ�Ա4��Boy ��C All Star �Σ����˲�����֤�ſ��ȵ�ĳɳ���ͬʱ��Ŀ��Ӫ�˿��ȵ�԰�ɭ��С����С��������ɵĳ���������ǵ�����ƽƽ����Ŀ��ȵ����Ű�ɭ�����пյĹ����⡪������������֡���һ�����������а��鱩¶�����Ĵ��Լ��ķ����������ȫ������͵���ĵط����������ܻ�ӭ�󣬰�ɭ��ò���ֻ������Ϊ�ȣ���ʼ��ó��죬��δ��Ҳ�����뷨��<br />
<br />
�������ȵ�ĳɹ��ɭ��С�֮��ľ���������Զ����ʱ�򿧷ȵ��������������� �Σ�����ɭ�Ĺ�ϵ�ֱ���������壬��һ���ݷ����������ǵĵ�100�η��֡���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/fenshou100ci/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/fenshou100ci/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/fenshou100ci/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/fenshou100ci/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/fenshou100ci/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����ɭ��֣���� �Σ���Сᰣ������� �Σ�����8�꣬����������άϵ����ķ���ֻ�������֡������֡�ÿ��С��Է�����Ҫвʱ����ɭ������һ������ȥ��ͣ���С᰸��ӵô���ߡ������Ǿ�����99�η��ֺ󣬶��������϶��˱˴ˣ�������²��������׷��ֵĳ�ŵ��������Ҫһ��Ϊδ����ƴ���Լ����ϰ壬������Ӫ���ȵꡣһ��������������̫��Ů��磨����֮ �Σ�����ɭ��Сѧͬѧ���ƣ��κ��� �Σ������ȵ�Ա4��Boy ��C All Star �Σ����˲�����֤�ſ��ȵ�ĳɳ���ͬʱ��Ŀ��Ӫ�˿��ȵ�԰�ɭ��С����С��������ɵĳ���������ǵ�����ƽƽ����Ŀ��ȵ����Ű�ɭ�����пյĹ����⡪������������֡���һ�����������а��鱩¶',N'�й����',N'����/����',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-616448-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899877&amp;k=9be13ad44aa258159cd7a792d0fb8dd6&amp;t=1412261740&amp;sid=48af2LEZeTWCHLm8IwUCRmaAJXXOWM3hiHCMjC5K8PU2VFA',N'2014/10/2 22:57:25',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 432,N'��14Ʊ����Ц����������һ��˼��2����BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/sikao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/sikao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������������һ��˼��2/�����в���2(̨)<br />
Ƭ��������Think Like a Man Too<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ����ϲ��/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�5.6/10 from 3,606 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2239832" target="_blank">http://www.imdb.com/title/tt2239832</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.62 GB<br />
Ƭ��������106 Min<br />
�������ݡ���ķ��˹���� Tim Story<br />
�������ݡ����˶������� Michael Ealy ....Dominic<br />
�������������𡤷����� Jerry Ferrara ....Jeremy<br />
����������÷�����ŵ� Meagan Good ....Mya<br />
�����������׼��ȡ��ն� Regina Hall ....Candace<br />
������������������P����ɭ Taraji P. Henson ....Lauren<br />
�����������ǵ������޵� Adam Brody ....Isaac<br />
��������������˹����˹���� Dennis Haysbert ....Uncle Eddie<br />
����������Terrence Jenkins ....Michael<br />
����������ղ�ݸ���·��˹ Jenifer Lewis ....Loretta<br />
���������������ᡤ����� Romany Malco ....Zeke<br />
�����������µϡ�����׶�-��ޱ Wendi McLendon-Covey ....Tish</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������е����¶�Ϊ�˿���˹���׼���-�ն� ���ݣ������˶�������˹-ղ��˹ ���ݣ��Ļ���ۼ�����˹ά��˹��Ů���Ǻ��к��ǵĵ����ɶԶ������˴��鷳�������ƻ��õ�������ĩ��Ϊ�������²�ͬ���������ٱ����ı�Ե�������������¼��������������ǹ�ϵ���Ѻۣ����ţ�÷��-�ŵ� ���ݣ�����ˣ�������-����� ���ݣ�һֱ�ദ�ĺܺã�������˲������׵Ĺ�ȥһֱ��ͼ̧ͷ�ƻ���һ�С�������˺����׵Ĺ�ϵ�������ȶ��������Ƕ������ٸ��Ե���ս����Ϊ���ɵ�������˾�������һ����飬����Ҳ�����İ��ɣ�������в���˻�����������С������׺Ϳ���˿͡����ˣ����������������µ����⡭<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
�����ڵ�һ������̸��˵����ϲ�������ȫ�����˽���һ����Ԫ��Ʊ���������������ȫ�ɺ�����Ա�������ĵ�Ӱ��˵���������һ������ӡ����̵ĳɼ��������Ӱ�������Դ��ʷ�ٷ�-��ά�ĳ���С˵����Ů��һ�����ţ�������һ��˼�������������У�һ�������ֽ������˾ۼ�����ֽ����ԵĶĳǡ�����Χ���׼���-�������ݵĿ���˹չ��������˹��һ������ĸ�ף���һ�ж����׸�������Ķ��Ӷſˡ�֮�������������˶���������������һ�С�������˶���ĸ�׳�������������һ�����Ҫ���أ������˶����ϵ�ѡ���뿲��˹��һ����ɾ���������񼴽�����������õĹ�ϵ������������˶���ĸ���������������ǵĹ�ϵ����֦�ڣ������˶������ٴε�ѡ��<br />
<br />
�����������˶�������˹-ղ��˹��Ҫ��Ծ�ڵ�����Ļ�ϣ��ڽ�Щ���ڴ���Ļ������ͻ�ơ�����������㵱����һ�η��ɵĻ��ᡣ��˵���ⲿ��Ӱ�ʺ�ȫ��ȥ�ۿ�������Ҳ�������л���˺ܶ���Ȥ����ȻӰƬ�����ˡ��ڶĳǷ��¶����ܳ����ľ��񣬵���û�в��ܺͼ���һ�����Ķ�������Ȼ�ڹ������Ϊĸ�׵����ݸ�-����˹�����������˳��˲������⣬����Ƭ���У���ȴ������˹ѧ���˺ܶණ������������Ϣ�Ŀյ��������������Ա����������Ա�����ͼ�ɿ�-�Ŀ����Ȥ�£���������-ʷ��˹��22��ʱ������ӡ�����˹��̾����������һ�������������ŵļ�ǿŮ�ˡ��������е����ҵ��ǣ���Ա��֮���ദ��ʮ����Ǣ���ͺ�����ٻ����Ͽ�һ����Ȼ��Ϊ����˳�����㣬�����鲻�ò���ÿ���賿3�㵽4��֮��ĳ�Ъҵ��ʱ��Ϲ�����Ա���賿1���Ҫ��ױ�������ȴ��ݳ����ع��š���һ����������������ֲ���Ϸ�����ǲ��ò��ĵ����賿��㣬�콫��������Ա�ǿ���������������Ϊ���ĳ��ؿ���һ�ˣ��������һ�ζ���˹ά��˹������Ӵ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ���ۣ�</font></strong></font><br />
<br />
����������˹ά��˹Ϊ������ӰƬ������������������һ��˼��2��ͬ�������ĳ�����������ֲ��Լ���������������Ϸ���������ܻ�ӭ�Ļ��ǿ���-���ء�������Ƭ������ԶԶ��Խ�˰��õġ�����3����������͹�˾һֱ��������һ��˼������ôϵ�е������ɶ��������������������-�������ⲿӰƬ�к���ճ�ϼ�һ�㣬���ν������ɢ�����п��ֱܷ�������ӰƬ��£��ճ����һ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/sikao/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/sikao/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/sikao/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/sikao/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/sikao/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����е����¶�Ϊ�˿���˹���׼���-�ն� ���ݣ������˶�������˹-ղ��˹ ���ݣ��Ļ���ۼ�����˹ά��˹��Ů���Ǻ��к��ǵĵ����ɶԶ������˴��鷳�������ƻ��õ�������ĩ��Ϊ�������²�ͬ���������ٱ����ı�Ե�������������¼��������������ǹ�ϵ���Ѻۣ����ţ�÷��-�ŵ� ���ݣ�����ˣ�������-����� ���ݣ�һֱ�ദ�ĺܺã�������˲������׵Ĺ�ȥһֱ��ͼ̧ͷ�ƻ���һ�С�������˺����׵Ĺ�ϵ�������ȶ��������Ƕ������ٸ��Ե���ս����Ϊ���ɵ�������˾�������һ����飬����Ҳ�����İ��ɣ�������в���˻�����������С������׺Ϳ���˿͡����ˣ����������������µ����⡭Ļ���������ڵ�һ������̸��˵����ϲ�������ȫ���',N'����',N'ϲ��/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616003-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898540&amp;k=2b7a1522bd57bfa7555cf95c4b8af3b6&amp;t=1412261739&amp;sid=451eozUjxQNVPg7LWEvCAgST3undElSRtcRgHkcl%2BtB699c',N'2014/10/2 22:57:25',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 433,N'����ķ��³˹14�����ڴ��������ձ�Ե����HD-1024.MP4�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/mingribianyuan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/mingribianyuan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ձ�Ե/���սʿ(��)/���ձ߽�(̨)/ɱ¾�ֻ�<br />
Ƭ��������Edge of Tomorrow<br />
�ꡡ������2014<br />
�������ҡ�����/�Ĵ�����<br />
�ࡡ���𡡶���/�ƻ�<br />
����ԡ�Ӣ��<br />
�֡���Ļ��������Ļ<br />
�������֡�<font color="red">8.1/10 from 103,815 users</font><br />
�������ӡ�<a href="http://www.imdb.com/title/tt1631867" target="_blank">http://www.imdb.com/title/tt1631867</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��1.10 GB<br />
Ƭ��������113 Min<br />
�������ݡ��������� Doug Liman<br />
�������ݡ���ķ����³˹ Tom Cruise ....���������� Cage<br />
���������������򡤲����� Emily Blunt ....������������˹�� Rita<br />
�����������ȶ�������˹�� Bill Paxton ....ʿ�ٳ������ Master Sergeant Farell<br />
����������������������ɭ Brendan Gleeson ....�����ķ�Ͻ� General Brigham<br />
���������������ء����� Charlotte Riley ....��˹ Nance<br />
����������ŵ�ǡ�̩�� Noah Taylor ....���ز�ʿ Dr. Carter<br />
�������������������� Lara Pulver ....���ס��͵� Karen Lord<br />
����������Լ��˹����ķ˹���� Jonas Armstrong ....Skinner<br />
�������������ᡤκ Tony Way ....Kimmel<br />
������������ˡ����� Kick Gurry ....Griff<br />
���������������ȡ�����÷ Franz Drameh ....Ford<br />
�����������������׶�����ϣ�� Dragomir Mrsic ....Kuntz<br />
����������������� Masayoshi Haneda ....Takeda</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬ������һ���������˵�ս�������˹������δ���ܹ�����ѵ����ȴ���ɵ�ǰ����ս����������һ����ɱ�ж���������Ƶ������һ�̣�������ػ�ô�Խʱ�յ��������ܹ��������ϵ��ظ������ֻأ�һ�δ����»ص�ս������ÿ����һ�������������ս��������ǿһ�֡���<br />
<br />
����δ�������������������ֵĿֻ��У�������˵�ҿ�����У����ķ����³˹ Tom Cruise �Σ�η����ս��������û���������������������ɭ Brendan Gleeson �Σ�������ȥָ�Ӽ�����ʼ�ġ�ŵ����ս�ۡ����ܾ���������֮�󽫾���Ȼ�����������Ǿ��ǰ��������ӱ��ӽ��˾�Ӫ�С����汻������JС���н���ս����ս�۵ĵ�һ��Ͳ�����ս����û�뵽��һ������ӵ����ʱ��ѭ������������Ψһ���������˾��Ǳ���Ϊ��ȫ����սʿ����������������˹���������򡤲����� Emily Blunt �Σ������˿�ʼ��ʱ��ѭ����ս����ѵ�������ͬʱ���Ƿ����˿���ʱ��İ��أ����������ˡ����ԡ�ŷ�����йأ�����Ψһ��ȡ��ʤ���ķ��������ÿ��治����ȥ����������ʱ�䡣�ڲ����ظ���½�����ս����ͬʱ������Խ��Խ����ʧȥ��������<br />
<br />
������Ƭ�ı����ձ�����ӣ�������С˵��ɱ¾�ֻ� All you need is kill�������±����趨�ڽ�δ���ĵ�����һ��ȫ���Ե�������������ս���У����棨��ķ����³˹ �Σ����͵���½ս�ĺ�̲��ÿ�춼���ظ��űذܵ�������ս��������δ���ܹ��κξ���ѵ����ȴ���ɵ�ǰ���������ս����������һ����ɱ����ս�ж���������Ƶ������һ�̣�������ػ�ô�Խʱ�ջ��ȵ��������ܹ��������ϵ��ظ������ֻأ�һ����һ�ε����»ص�ս��������ÿһ���������ȶ���ս���ľ���͸���һ�㣬��Խ��Խ�˽���˵����㣬��ս���ϵĴ��ʱ��ҲԽ��Խ�á����ڡ�ս��Ů������������������������ �Σ���ħ��ѵ���£�ս������ͻ���ͽ�������һͬ������ս���������ⳡ����ϣ����ս��¶��һ��ʤ������⡣���ǿ���Ҳ����һ��ʹ��ľ��񡭡�<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ƭ�ı����ձ�����ӣ�������С˵��ɱ¾�ֻء�����һ��ʼ�������Ϊԭ���ı�����ڲпᣬ���Ӱ��ƫϲ������ղ�����֮��������ù������Ƕ��Ƿ��ˡ��ı��⣬���ո�Ϊ�����ձ�Ե����<br />
<br />
��ӰƬ�󲿷�Ϸ����Ӣ��ȡ���������Leavesden Studio�����ǹ���������ϵ��ӰƬ��Ƭ����<br />
<br />
��ӰƬ�бȶ���������ʿ�Ľ�ɫԭ���ɲ����¡�Ƥ�س��ݡ��������뵼��������������ʷ��˹�򸾡���<br />
<br />
����ķ����³˹�Դ�2012��7��20�ռ��뱾Ƭ�ľ��鿪ʼ�ﱸ�������Ǿ�������һ����Ӱ������ս�����ػ��в���һ��ʱ�䡣<br />
<br />
����ķ����³˹��������������10����ԪΪ����ٰ���һ��ʢ��Ĺػ��ɶԡ������������ڻ���Ϸ����Ҫ����δ��ǰ���μӡ�<br />
<br />
�������Ľ�ɫ�����������롶�����ҡ��ķ���Ů�Ǳ�����˿�����ǳ��ݡ�<br />
<br />
�����ɹ�˾Ϊ��Ƭ������һ��ʷ��ǰ���ġ�Ԥ���ؼ������ɡ�����ͬһ��֮�ڣ�������7֧�����ձ�Ե����ص�Ԥ�漰�����ؼ���<br />
<br />
�����㱾Ƭ�ڼ䣬Ů���ǰ����򡤲����ػ����ˣ���������ò��ܾ�����һЩ����Ϸ��������֪�����ܾ�������ԭ�����ֻ�а����硣<br />
<br />
��2013��8�£�ý�屨���ˡ����ǻ�顷���ǽ����ס�Ƥ�ļ��˱�Ƭ����Ϣ����������û�г�����ӰƬ����ӳ�浱�С�<br />
<br />
���Ⲣ���ǰ����򡤲��������ݵĵ�һ����ʱ�մ���Ϊ��ĵĿƻö���Ƭ����һ���ǡ�����ʹ�ߡ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/mingribianyuan/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/mingribianyuan/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/mingribianyuan/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/mingribianyuan/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/mingribianyuan/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬ������һ���������˵�ս�������˹������δ���ܹ�����ѵ����ȴ���ɵ�ǰ����ս����������һ����ɱ�ж���������Ƶ������һ�̣�������ػ�ô�Խʱ�յ��������ܹ��������ϵ��ظ������ֻأ�һ�δ����»ص�ս������ÿ����һ�������������ս��������ǿһ�֡���δ�������������������ֵĿֻ��У�������˵�ҿ�����У����ķ����³˹ Tom Cruise �Σ�η����ս��������û���������������������ɭ Brendan Gleeson �Σ�������ȥָ�Ӽ�����ʼ�ġ�ŵ����ս�ۡ����ܾ���������֮�󽫾���Ȼ�����������Ǿ��ǰ��������ӱ��ӽ��˾�Ӫ�С����汻������JС���н���ս����ս�۵ĵ�һ��Ͳ�����ս����û�뵽��һ������ӵ����ʱ��',N'����/�Ĵ�����',N'����/�ƻ�',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-616363-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899667&amp;k=ec64e4c6a73f5159adf468579ac08901&amp;t=1412261745&amp;sid=e3a4UMUS1WD%2Fzoj4gTHVLaVfhzPZDZmyQAN6jxvpT5WQG2E',N'2014/10/2 22:57:25',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 434,N'��14��ǿ����Ʊ�����ơ�����˹������BluRay-1080P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������˹��/�缪��(̨)<br />
Ƭ��������Godzilla<br />
�ꡡ������2014<br />
�������ҡ�����/�ձ�<br />
�ࡡ���𡡶���/�ƻ�/ð��/���<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.9/10 from 153,392 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt0831387" target="_blank">http://www.imdb.com/title/tt0831387</a><br />
�ļ���ʽ��x264 + 5.1 DTS @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1920 x 1080</font></font><br />
�ļ���С��8.38 GB<br />
Ƭ��������123 Min<br />
�������ݡ�����˹�����»�˹ Gareth Edwards<br />
�������ݡ����ס�̩��-Լ��ѷ Aaron Taylor-Johnson ....���ء����޵� Ford<br />
��������������ɯ�ס��¶�ɭ Elizabeth Olsen ....���������޵� Elle Brody<br />
�����������ɱ�ǫ Ken Watanabe ....������� Daisuke Serizawa<br />
����������������������˹�� Bryan Cranston ....�ǡ����޵� Joe Brody<br />
��������������Ҷ����ŵʲ Juliette Binoche ....Ford''s Mother / Stepmother<br />
����������������˹������� David Strathairn<br />
����������ɯ�򡤻���˹ Sally Hawkins<br />
����������ά�˶ࡤ������ Victor Rasuk ....Tre Morales<br />
����������C.J���ǵ�˹ C.J. Adams ....Ford''s Stepbrother<br />
�������������¡���˹ Richard T. Jones<br />
��������������������˽�ɭ Brian Markinson ....Whalen<br />
����������������˹������ Al Sapienza ....Huddleston</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬΧ��һλ������������չ���������˳�˯�ĹŴ����͹��ޱ��������⻽�ѣ�������Ĺ���չ�ֳ�ǿ����ƻ����������Ĵ���Ҳ�������硣ӰƬͬʱǿ����ԭ�ӵ������������ֱ��Ӱ�졣<br />
<br />
����ӵ���Ҹ���������Ĵ�����¡����޵ϣ����ס�̩��-Լ��ѷ Aaron Taylor-Johnson �Σ�������������һ����֮��ȥ����Ӱ��15��ǰ�����͸���������������������˹�� Bryan Cranston �Σ���ĸ��ɣ����������Ҷ����ŵʲ Juliette Binoche �Σ��������ձ�����ĸ��ְ��һ�����ͺ˵�վ�����ڸ������յ��죬һ��ͻ�����������Ѵݻ��˺˵�վ������ĸ����������ɥ�������ɲ���������������࣬�Է�ֹ�˷������������˸õ�������������ȴ��������״���쵽����֮����ʮ��������һֱ��ͼ�ҿ����������֮�գ����ڷ�����һ�ж�����һֻ��ɽһ��޴�Ĺ���������<br />
<br />
�������޸�˹���ӳ�˯�����ѣ���������Ԥ�������ϯ���������<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
����Ϊ�˴����˹�����Ͱ��������κ�ս�����������Ŷ�7�������飬շת6�����У��Ⱥ������98��������960����Ч��ͷ�����˽⣬������Ч�ŶӵĹ�����Ա���762λ������˹����Ƭ�����������ϸ���������ͻ���6���µ�ʱ�䡣�������1̨�������Ⱦ��˹������Ҫ445�ꣻ��ô��Чʦ����Ҫ��16����(1570��)�Ϳ�ʼ�����ˡ�Ϊ�˴���������Ч����Чʦ�������ܹ��ʴ�100000�ߡ���3.7�ס���5.5�׵�������Ŵ��˹�����������ֳ�¼�¡���ʵ���硱�ı�������<br />
<br />
�������ݰ��»�˹��Ϊ����˹��������Ϯ֮����һ�����������С�����˹��Ϯ���¼���ȫ�����½����������Ӱ�еĳ��������ձ������ɱ��������ġ������������Լ��ɽ�ɽ�ȶ�����Һ͵�����ֵ��һ�������ӰƬ��β��ʷʫ֮ս�У��ɽ�ɽ�б��ٻ��Ľ�����80��������Ч�ŶӶ�ǶȲ�׽�ľɽ�ɽ����ߵ�����Ƕȴﵽ��360�ȣ������Щ�زı��ڽ�ӰƬʷʫ�Խ�β��3D���б����С�<br />
<br />
�����°桶��˹�����ɴ������硶������ʦ����һ�š��ϰס�������������˹�١��������������ס�̩��-Լ��ѷ����˫����ɯ������ɯ�ס��¶�ɭ�������ݣ�����Ů������Ҷ����ŵʲ���ձ����Ƕɱ�ǫ�ȴ�ǿ�Ƽ��ˡ�<br />
<br />
������Ƭ���ɴ���Ӱҵ�ͻ����ֵܵ�Ӱ��˾���������ģ�ӵ��1.6����Ԫ�ĸ�Ԥ�㣬����75%���Դ���Ӱҵ��ʣ�µ��ɻ��ɳе������ǻ�����1959��ġ�������ޡ����ĵĵ�һ����˹��ϵ�е���Ʒ����2004�꡶��˹��������ս���������������Ŷ��ڸ�˹��רӪȨ��ʮ�������ף���ձ�����Ӱҵ������δ��ʮ�꽫���������κ����˹���йصĵ�Ӱ������֮�����ˮ����̨�ͺܶ�ר��Ϊ���㽨���ˮ�в�������1998���������˸�˹��ϵ�е����ǵ�Ӱ��˾ԭ����Ȩ����һ����������������2003�꣬���Ȩ��Ҳ�����ˡ�2004�ִ꣬����1971�꡶��˹����ս�ն������İ�Ұ��������ɶ�����Ȩ����������һ����˹��ϵ�е�3D IMAX��Ƭ���ᷭ��1971��Ĺ��¡�2005�꣬������Ӱʦ�˵�-����ɭ������Ŷ�����Ӱ����Ч�ܼ��������Ƭ�ˡ������������Ƭ�˲�����-�޽�˹Ҳ��ǩ����顣ͨ����������Ҳ�����Ƚ���3D���������������С�ͬһ�꣬��Ƭ������˶���Ӱҵ������Э�̣���ԭ�ȵĶ�Ƭ��չ���˿�����ӰԺ��ӳ��3D��Ƭ�����������ڲ������⣬������Ŀ���ƽ�������������Ƭ����<br />
<br />
����2010�꣬��Ƭ�������˵�һ���籾������-������˵������˹��������ӡ�����Ǿ��͹��ޣ����ǽ��и����ƻ����������˷ܵ��������������ִ�����Ľ��ܹ�ϵ��������֮���������α����о籾�ĸıֱ࣬��2013�꣬������-�������أ���������Ф��˵ľ��꡷�����뵽���Ĵ������������ؽ���˹������Ϊ����Ȼ�Ŀ�����������ӰƬ������һ���ǳ�������עĿ�ľ����ˡ�����˹��Ҳ��������һ����Ȼ��ͬ�ĵ��������У�����ֻ����ԭ���еĺ����顣����֮�⣬����Ϊ�����ϵע����������������ϵ�����粼�޵Ϸ򸾵���������<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
������˹������Ӱʷ�������Ĺ�������֮һ��Ҳ���ձ�ս�������Ļ��ı�־�Է���֮һ�������ձ���ŷ������������ƷӰ����Զ��<br />
<br />
��ӰƬ������1954����ձ�������Ӱ����˹�����ı������<br />
<br />
����ֹ��2004�꣬�ձ�������˾�������28������˹������Ӱ��<br />
<br />
���°桶��˹������ƾ��ͳɱ���Ƭ��Ů�������ޡ�ո¶ͷ�ǵ�Ӣ�����ݼ���˹�����»�˹ִ���������������ˡ���Ӱʦ����˹�����˼�ά�ƾ����Ⱥ������α���޸Ĺ��籾������ŵ�������ñ�������S����Ү��<br />
<br />
���°桶��˹�����������ϰ桶��˹���������������ǿ�����ȫ�¹��¡�ӰƬ������1954����ձ�������Ӱ����˹�����ı�����������ѳ����Ļ�ԭ�Ͻ�����3D�������������������侳֮�С�<br />
<br />
�����ڡ���˹������һ������·Ƭ����˵�������ݰ��»�˹�����������ڽ���������һ�����������С�����Ӱ�еĳ��������ձ������ɱ��������ġ������������Լ��ɽ�ɽ�ȶ�����Һ͵������������95����<br />
<br />
����Ӱ��ʱ���ϵĿ��Ҳ�ܴ󣬹��½���1954�꣨�¼�����Դ����1999�꣨�¼���������2014�꣨�ٴη�����������ʱ�����չ�����¡�<br />
<br />
��������������˹�ٺ����ס�̩��-Լ��ѷ������һ�Ը��ӣ��������ļ�ͥ��ϵҲ��ӰƬ���ص�֮һ��̸�������˵ĺ��������״����ϰ׷ǳ�רҵ���ҳ�������������ʱ���ܹ��׳��ܶ��Լ����µ��ӡ�<br />
<br />
��������������˹�ٱ��ϣ��Լ��������籾��ܶཨ�飬���ܵ�������Ƿ���ɡ�һ����д��һ���������������ӵ�����Ҷ����ŵʲ�Ĵ�Ϸ�ύ���������û�����ã��ϰ�ȴת��˵����������ʵ����һ���𣿡�<br />
<br />
�����ס�̩��-Լ��ѷ��Ƭ������һ��������ʿ��Ϊ����Ŭ�����о���ѵ���������Ρ�Ƭ������һ��������ʿ���ѿ���Ա�ǵı��֣� ��Ҳ���μӹ�����ӥ׹�䡷�ȵ�Ӱ������������˵�����ľ����������úܰ���<br />
<br />
����˹���ĺ�������Դ��Ƥ���׸�Ū�������٣���Ȼ�к��ڱ������������Ӱҵ�ܲ������͵��ݰ��»��Ƚ��ܲɷ�ʱ��ȷ������һ�㡣<br />
<br />
��Ƭ��¼����ʱ�����˸�4�׿�Լһ�����ܹ���10���ߵľ��ް��������С�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/gesila/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/gesila/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/gesila/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬΧ��һλ������������չ���������˳�˯�ĹŴ����͹��ޱ��������⻽�ѣ�������Ĺ���չ�ֳ�ǿ����ƻ����������Ĵ���Ҳ�������硣ӰƬͬʱǿ����ԭ�ӵ������������ֱ��Ӱ�졣ӵ���Ҹ���������Ĵ�����¡����޵ϣ����ס�̩��-Լ��ѷ Aaron Taylor-Johnson �Σ�������������һ����֮��ȥ����Ӱ��15��ǰ�����͸���������������������˹�� Bryan Cranston �Σ���ĸ��ɣ����������Ҷ����ŵʲ Juliette Binoche �Σ��������ձ�����ĸ��ְ��һ�����ͺ˵�վ�����ڸ������յ��죬һ��ͻ�����������Ѵݻ��˺˵�վ������ĸ����������ɥ�������ɲ���������������࣬�Է�ֹ�˷������',N'����/�ձ�',N'����/�ƻ�/ð��/���',N'1920 x 1080',N'2014',N'http://www.lwgod.com/thread-615950-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898451&amp;k=29b41ce2ff41bb816e29c995c0d07774&amp;t=1412261741&amp;sid=0effzSF8wzND0GIj9nm%2BIrvPbkyO6CmPvMYS3wh6GHS5rhY',N'2014/10/2 22:57:25',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 435,N'����14����������Ʊ���񻰡���Сʱ��3����HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/xiaoshidai3/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/xiaoshidai3/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������Сʱ��3���̽�ʱ��/Сʱ��3/Сʱ��3������ʱ��<br />
Ƭ��������Tiny Times 3.0<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ���𡡾���/����/ϲ��<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�������֡�2.9/10 from 172 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3861006" target="_blank">http://www.imdb.com/title/tt3861006</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��1.21 GB<br />
Ƭ��������125 Min<br />
�������ݡ������� Jingming Guo<br />
�������ݡ����� Mini Yang ....����<br />
�������������ɽ� Amber Kuo ....����<br />
���������������� Biting Guo ....����<br />
����������л���� Sie Yi-Lin ....������<br />
�������������� Vivian Dawson ....����<br />
�������������� Zhendong Ke ....��Դ<br />
������������ѧ�� Xuedong Chen ....�ܳ��<br />
���������������� Ming ....��׼<br />
���������������� Hyun-Jae Lee ....Neil<br />
�������������� Jo ....ϯ��<br />
��������������� Tianhao Du ....����<br />
�������������� Lin Wang ....Ҷ��Ƽ<br />
������������٩ Kan Shang ....Kitty</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������������� �Σ���������ɽ� �Σ������棨������ �Σ��������磨л���� �Σ��ĸ���Сһ�𳤴�ĺý��ô�ѧ��ҵ����ְ������ʼ���µ��ó̡�<br />
<br />
����ԭ���뿪�˽����ǣ�׼���Ͷ��������ϯ�ǣ����� �Σ��뿪�Ϻ����������»ع鵽��������ߡ������������˰�����µı�������Ҽ�����ͬһ�����µ����а����������������ͬ���������� �Σ��μ������ʱ�л��������������������磬�������������˹���Ļ�Ѫ���Neil�������� �Σ���Ȼ���������ص��Ϻ���ȴ�ӵ������ѳ�⣨��ѧ�� �Σ���֢��������ȥ����ج�ġ�<br />
<br />
���������º����������������¿�ʼ�����������ȴ������һ����������Ī������������ģ��½�գ���ѧ�� �Σ������ͬʱ�������δ������������ܹܵ�׼�������� �Σ�ͻȻ���֣����չ˼�20%�����عɷݣ������߹���M.E��һ���޴�Ĳ���©�����������������Ҫ��ر�M.E�չ���ʢ�Ź�˾������˵�������ǽ��Ź���������M.E������Ļ���ȥ������լ͵ȡ�ؼ��ļ���һ�л�������Ԥ�������˳����һ���������Ѱ���ҹ���ھ����ȴ������ǡ���<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
��Ƭ�������ݵİ���һ�������ߣ��������׷������Ϸ�ݡ����ⳡϷʱ���������������������ǰ��յ��ݵ�Ҫ��ҵ�Ĵ��Ÿ߸�Ь�������������׷���ӡ�<br />
<br />
����ѧ����ͻ����ս���ܳ�⡱����½�ա�������ɫ���������˱���ŷ���ˣ�Ҫ����7Сʱ�ڻ�ױ���棬����Ҳ�൱���ۡ�<br />
<br />
����Ƭ��װ�����ǧ���������������������¼䣬�������㡣<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/xiaoshidai3/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/xiaoshidai3/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/xiaoshidai3/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/xiaoshidai3/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/xiaoshidai3/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'������������ �Σ���������ɽ� �Σ������棨������ �Σ��������磨л���� �Σ��ĸ���Сһ�𳤴�ĺý��ô�ѧ��ҵ����ְ������ʼ���µ��ó̡�ԭ���뿪�˽����ǣ�׼���Ͷ��������ϯ�ǣ����� �Σ��뿪�Ϻ����������»ع鵽��������ߡ������������˰�����µı�������Ҽ�����ͬһ�����µ����а����������������ͬ���������� �Σ��μ������ʱ�л��������������������磬�������������˹���Ļ�Ѫ���Neil�������� �Σ���Ȼ���������ص��Ϻ���ȴ�ӵ������ѳ�⣨��ѧ�� �Σ���֢��������ȥ����ج�ġ������º����������������¿�ʼ�����������ȴ������һ����������Ī������������ģ��½�գ���ѧ�� �Σ������ͬʱ����',N'�й�',N'����/����/ϲ��',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-616362-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899668&amp;k=d355b2f5f5093e9be700f3353a18a2a3&amp;t=1412261746&amp;sid=7d2aJeKYc5QN81CYT%2Fj58v2u3TvbP4ZWBLIXOKQt1JUQTNU',N'2014/10/2 22:57:26',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 436,N'���մ�߶ȡ�������֮ҹ�Ӷ�񰮡���BluRay-720P.MKV�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/luoti/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/luoti/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������֮ҹ���Ӷ��<br />
Ƭ��������A Night in Nude Salvation<br />
�ꡡ������2010<br />
�������ҡ��ձ�<br />
�ࡡ���𡡾���/���/����<br />
����ԡ�����<br />
�֡���Ļ�����ļ�<br />
�������֡�6.6/10 from 95 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1653916" target="_blank">http://www.imdb.com/title/tt1653916</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��4.06 GB<br />
Ƭ��������145 Min<br />
�������ݡ�ʯ��¡ Takashi Ishii<br />
�������ݡ�����ֱ�� Naoto Takenaka<br />
�������������ٿ��� Hiroko Sato ....Nami<br />
������������������ Harumi Inoue<br />
�����������`���� Jo Shishido ....(as Jo Shishido)<br />
���������������� Shinobu Ootake<br />
��������������ͫ Hitomi Manaka</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����ڳ��е�ĳ�����䣬��������òĸŮ��Ӫ��һ��ưɡ� <br />
<br />
�������죬СŮ����������������ɵ����������������������æѰ��һ������ʿ�������Ǹ��׵���������ǻ�ʱ����ʧ�䡣 <br />
<br />
��������ɾ�������ί���е���֣�ȴ��ôҲ�Ų���������ʹ��׵�����������˲��¡������ײ���˰���ҵ�������ʿ��ͬʱ��������������ʬ������塣���������Ů���찲իǧѰ��������õ��Ľ��Ϊ�����⡣Ȼ�������ȷ�����⣬����ɲ���֪���Լ��Ѿ����˰�ի�ļ��Ӷ��� <br />
<br />
�������ܸ��˺���������������ί�����������顣�����أ�����ɾ���������Ů��Ϊ��������ʵʩ��������������������ſ��µĺڰ�������ɾ���Ҫ�����Ӻڰ������ȳ������ɴ˲�������������֡��� <br />
<br />
�����ڳ���������Ϣ�������������ס��һ��ƽ����������ӣ������к���ɣ�����ֱ�� �Σ������źų����˴�����������Ӫ����ĳ�죬�ԳƼ����������ٌ��� �Σ���Ů���ҵ�����ɣ���������æѰ���������׹ǻ�ʱ������ʧ������ʿ�ֱ�����ĸ�������������񤷤Τ� �Σ������С�ң��������� �Σ���Ӫ��һ������ҹ�꣬��ν�����ǻҲ�����һ�����ԣ�����ĸŮ���и��ű��ս�ɱ�˵Ĺ��������ã����ٴ��ҵ�����ɣ�������Ѱ�����ж���Ů�ˡ�Ϊ�����ʹ���Ů��������������ɲ�֪��������һ������Σ���ķۺ������С���<br />
<br />
������ƬΪ1993��ʯ��¡ִ����ͬ����Ʒ������֮ҹ������ƪ���ٻ�2010���ӰѮ��ʮ��ӰƬ��10������32�غ����Ӱ��ʮ��ӰƬ��8����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/luoti/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/luoti/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/luoti/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/luoti/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/luoti/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���ڳ��е�ĳ�����䣬��������òĸŮ��Ӫ��һ��ưɡ� ���죬СŮ����������������ɵ����������������������æѰ��һ������ʿ�������Ǹ��׵���������ǻ�ʱ����ʧ�䡣 ����ɾ�������ί���е���֣�ȴ��ôҲ�Ų���������ʹ��׵�����������˲��¡������ײ���˰���ҵ�������ʿ��ͬʱ��������������ʬ������塣���������Ů���찲իǧѰ��������õ��Ľ��Ϊ�����⡣Ȼ�������ȷ�����⣬����ɲ���֪���Լ��Ѿ����˰�ի�ļ��Ӷ��� ���ܸ��˺���������������ί�����������顣�����أ�����ɾ���������Ů��Ϊ��������ʵʩ��������������������ſ��µĺڰ�������ɾ���Ҫ�����Ӻڰ������ȳ������ɴ˲�������������֡���',N'�ձ�',N'����/���/����',N'1280 x 720',N'2010',N'http://www.lwgod.com/thread-615944-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898424&amp;k=618850149cfbc515e8587c83147e1e61&amp;t=1412261742&amp;sid=c6c1BMR3y1tdMBYbZX4hmeot4%2FFpY%2BSvwEW0ja%2BdZk0VM9Y',N'2014/10/2 22:57:26',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 437,N'��Ϊ��2��Ԥ�ȡ�����������1��ѹ����BluRay-720P.MKV����˫�',N'<font color="blue"><font size="5">����ԭ�̸�������ѹ�ƣ�<br />
��������ǰ�úܶ࣡�����������ղأ�</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������������/Գ������/���ŵ�����/Գ������ս�����׸���(��)<br />
Ƭ��������Rise of the Planet of the Apes<br />
�ꡡ������2011<br />
�������ҡ�����<br />
�ࡡ���𡡶���/����/�ƻ�/���<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.6/10 from 311,999 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1318514" target="_blank">http://www.imdb.com/title/tt1318514</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.36 GB<br />
Ƭ��������105 Min<br />
�������ݡ�³���ء���Ү�� Rupert Wyatt<br />
�������ݡ�ղķ˹�������� James Franco&nbsp;&nbsp;....Will Rodman<br />
����������ܽ�ٴƽ�� Freida Pinto&nbsp;&nbsp;....Caroline Aranha<br />
�������������ϡ�ɪ��˹ Andy Serkis&nbsp;&nbsp;....Caesar<br />
����������Լ�������ظ� John Lithgow&nbsp;&nbsp;....Charles Rodman<br />
����������������������˹ Brian Cox&nbsp;&nbsp;....John Landon<br />
������������ķ���Ѷ��� Tom Felton&nbsp;&nbsp;....Dodge Landon<br />
���������������������� David Oyelowo&nbsp;&nbsp;....Steven Jacobs<br />
����������̩�ա����� Tyler Labine&nbsp;&nbsp;....Robert Franklin<br />
�������������ס�����˹ Jamie Harris&nbsp;&nbsp;....Rodney<br />
���������������������� David Hewlett&nbsp;&nbsp;....Hunsiker<br />
����������̩���¶�ɭ Ty Olsson&nbsp;&nbsp;....Chief John Hamil<br />
�������������ѷ������ Madison Bell&nbsp;&nbsp;....Alice Hunsiker<br />
����������Makena Joy&nbsp;&nbsp;....Alice Hunsiker (Teen)<br />
����������Ф����̩ɭ Sean Tyson&nbsp;&nbsp;....Animal Control Officer #2<br />
�����������ܿˡ�����˹ Jack Kuris&nbsp;&nbsp;....Boy in Muir Woods</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����2011�꣬�ɽ�ɽ��<br />
<br />
����Ϊ���о������������մ�֢������֪���Ŀ�ѧ��������������ղķ˹���������Σ��Ѿ������о��˶��ꡣ����һֱû��ȡ��̫�����ɫ����Ȼ�����鳤��ѧ�ҿ����գ�ܽ�ٴƽ���Σ�һ��������һ����Ϊ��Cure������ҩ�����ҩ���ܸı���򣬵����ڼ���Σ�յĸ����ã�ʹ�����Ҳ������ʵ��ٴ������������֤Cure��ҩ�ԡ����ڣ��ڿ�������������������������˹�Σ�������֮�£�����ҩ������˴��������ϡ�<br />
<br />
����Cure���������޸����Ե����ã����ڴ��������ϵõ�����֤������Cure����Ч�������ɿ�ʼ��ó������ǻۣ����걻����Ű���Ķ����ǿ�ʼ�������࣬���Ȼָ������Ĵ����ɿ��������ϡ�ɪ��˹�Σ���ʼ�����������ɶ�������з������㣬���಻���ǵ���Ψһ��ͳ���ߣ�Գ�忪ʼ�����𡣴��´�������������������������Լ��ķ�ʽ��������һ�������Գ��֮���ս������<br />
<br />
<font color="red"><strong><font size="3">һ�仰���ۣ�</font></strong></font><br />
<br />
�Ȱ����˶�������������жԿƼ������ɣ���Գ��������ȫ���Ժ��ϰ�ġ���ա�����Ӱʷ��<br />
������ʱ����־��<br />
<br />
ǿ���Ķ���Ϸ����ɫ����Ч������Ϊֹ����ŵ���Գ�����ݡ�����Щ���ز��ѵĴ����ɻ���Ʊ���ġ�<br />
�����������뱨���ߡ�<br />
<br />
��Գ���������úܲ�����������Ȥ���ǳ����������ԡ���Ӧ�������ڴ�Ƭ��һ��ģ��֮������������������̵���Ϊ��<br />
��������ɼ�ʱ����<br />
<br />
��Գ����������ӡ����̣���������֪�����ǰ����չ������Գ����ϵ���������ʲô���ı����β��<br />
���������ա�<br />
<br />
��Գ�����������������ֵ�ù���ȥӰԺ�ۿ�����ѵ�Ӱ��<br />
������ŦԼÿ�����š�<br />
<br />
Գ����ֱײ�Ķ������󣬷ǳ������ģ����ƺ�����Ŀǰ���ˮƽ�ĵ�Ӱ������<br />
�����������ܿ���<br />
<br />
���¼����ˣ�����Աͨ��������׽��ɵ�Գ��ı��ݣ�������������ӡ����̣��ⲿ��Ӱ�����ù��ڲ���������<br />
�����������ʱ���<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
���������а����Գ��ս<br />
<br />
����ĩ�տƻ���ĵĵ�Ӱ�ܶ࣬������������ֵ�������ս�ĵ�ӰҲ��ʤö�٣����С����֡������Ρ����Ǻ�ս�ӡ���ӰƬ�������е�ٮٮ�ߡ������⵱�У�1999��ġ���Գ����Ҳ��ֵ��һ�����ɫ�������ⲿ�ı���1968��ͬ����Ʒ�ĵ�Ӱ������һλ̽��������Ա���ŷɴ�׹����Գ�������У������е�һϵ������ð�ա����µĺڰ����ֵ���ʹ���ⲿ��Ӱ��Ϊ�ƻ��Խ���ֵ��ĵ�Ӱ��ʮ����󣬡�Գ����������ǰ������̬��ʼ�Թ��½��������������������ĩ���黳�Ĺ��£��������ι������ۻ��ۡ������֡���Ƭ�ı����ˡ��ܷ�˵�������Һ�ϲ��1968��ġ���ս���򡷣����Ǹ�����������Ե÷ǳ�����������ͳ����������ᣬ�����෴ȴ��Ϊ�������ġ���չ����ϡ�������ӰҪ��̵Ķ��������ԣ����ǲ����ض������һ���Ƕȣ������ܵ����ǵ�ʹ�ࡣ���Ǹ����������ս���򡷵������Եúܳ�ǰ������ڡ�Գ����������Ǳ����ˡ���ս���򡷵�����ۣ�ͬʱ����������ķ��������ø���ϸ����һ��ڹ����￴���������ϵ�����������ڸ�����˽�����£�һ��һ����������������<br />
<br />
������Գ��������һ��ǰ�������·����ڡ���ս����֮ǰ�����ڹ�������֪����֣���ô��λ��û���񡶾�ս���򡷵Ľ����������������ô������أ��Դˣ������ˡ��ܷ�����˵�������ڽ���ϣ���Ȼ���������֡���ս�����������𺳡����һ���һ���Ƕȣ���Ȼ����Ѿ�������֪���β�����һ�ַ�ʽȥ�����أ���Ҷ�֪������ռ��������������ô���Ǿͻ����ⲿ��Ӱ���ʾ��Ϊʲô�ᱻ����ռ�죬���඼����Щʲô�����¡�����ս���򡷱�����һ�ָ߶ȵ���ʵ��̣���Գ������Ҳ�����⣬�����ⷽ��͡�12���ӡ��е����ƣ�������ὲ���˺�����֮��Ĺ�ϵ������������һ�����������潲����һЩ���л�����������һЩ�ǳ����˵���ʵ�飬���津Ŀ���ģ�����������˷ǳ���̵�ӡ���ڱ���ѧ������ʵ��̨�ϵ�ʱ������¶����һ�ַǳ�Թ�޵���������������һ��������������������������Һܳ�ʱ����������ӡ�󣬵��ҿ�ʼд��Գ�����𡷵�ʱ���Ҿ��Ѿ����������Ĺ���д����Ӱ���С���<br />
<br />
����ִ����Գ�����𡷵�³���ء���Ү������ʮ���꣬�����������࣬ǰ������2008��ġ�������������һ���ͳɱ���С���������ִ����Գ�����𡷣���������������������Ϊ���͵���Ŀ��̸��ִ����Գ�����𡷵ľ�����³���ء���Ү��˵������������֮ǰ�ԡ���ս�����˽�ò���������꿴�ⲿ��Ӱ��ʱ��ֻ�����������ˣ����ɵķ�װ���úܱ��档2001��İ汾������ҽ���֮ǰ���ص��о��������ⲿ��Ӱ���������һ���ʣ����Ǿ���������ս������һ�����˾����ĵ�Ӱ����Ϊ������Զû�г�·��һ�еĿ�������ͽ�͡�����ʵ�Ǻ����˾�ɥ��һ���£�����ȴ���˿�����ʵ���ù����ܹ��������������ȱ�㡣�ڡ�Գ��������ҳ��԰����־�����Ϊ���µ����յ㣬һ�еľ����̵涼Ϊ���Ľ���������Ǹ������������ı�����֡����ҿ�����Գ�����𡷵Ĺ��£��ұ�������Ӱ���Լ�����ȥ����ģ���Ϊ����Ȼ����һ��ƻõ�Ӱ����ǣ������ｲ�������ȴʮ�����أ��Ǿ�������Ӧ��ƽ�ȵĶԴ������ϵ���������������ǻ��ܵ��ǳ����صġ������ĳͷ��������ϣ�����һ�������а�ʽ�ĵ�Ӱ����<br />
<br />
������Ȼһ�µļ�������<br />
<br />
������Գ�������������עĿ����Ȼ���ڶ�����ɣ�����Щ���ɶ���CG���������죬�����μӹ����������������Ч�Ŷ�Ϊ��Ƭ��������ϰٸ���������ɡ����ڡ�Գ���������CG��Ч���棬����³���ء���Ү��˵���������ⲿ��Ӱ��ɰܵĹؼ������ڶ������ǵĿ̻����ڡ���ա���ƬΪ����������һ��ΰ��ĳ��Ժ�ͻ��֮�󣬡�Գ����������������һЩ������ڶ�Ŀһ�µļ��������������CG�����ǳ��ɹ��������2010���У��Һ����ǵ���Ч�Ŷ�һ�𣬿�ʼ�ԡ�Գ�����𡷵�CG��������̽�֡����������ⲿ��Ӱ�ﳢ�Ը���Ŀ����ԡ���������֮ǰ�����˴�����ȻҰ����¼��̽��Ƶ��������Ϊ�����ǵĺ�����飬��������������ǻ����˲��ٵľ��飬�����ð��ϡ�ɪ��˹��ĳ�Ϊ��һ�����˿־�Ĵ����ɡ���<br />
<br />
������ӰƬ������������쿭���İ��ϡ�ɪ��˹�������Ȼû�����Լ��������������Ļǰ��ȴ����˴����Ķ�����׽�������ڡ�Գ��������ı��ݣ�����oɪ��˹˵�����������Ҵ�Ӱ�����ĵú������һ����Ӱ����Ȼ��99����ʱ�䶼������Ч����������б��ݣ����������ѵ�����ȴҪ����ͨ��Ӱ��öࡣ����Ҫ������Ч�Ŷӵ�Ҫ���������ֶ��������Ұ��ղ�ͬ�Ĺ��»��벻ͬ�ĳ������Ͳ����ڵĽ�ɫ�ǽ��ж�Ϸ���⼸����һ������һ������ɵĻ��硣�������Ҹе������Ƶ�һ���ǣ����������Ķ���ͨ������Ч�Ŷ���������в�࣬����ұ����������ÿ��������ɵĹ�������з����Ĺ�ͨ������һ����������ĥ�˵Ĺ��̣����Ҽ������������������ҿ�����Ļ�Ͽ����Ķ�������֪����Щ������ֵ�õģ������ͺ�����һ���������һ�������ָо����˾������������<br />
<br />
�����ڡ�Գ����������������ǵ�ղķ˹�������ƣ��ǽ�������Ļ�ϵ���ĺ�����С������˹����Ӱ����������������ˮ��̸������ڡ�Գ��������ı��֣�ղķ˹��������˵����������һ�����Ҹо��ܹ��ĵ�Ӱ����Ϊ�Һ�ϲ����ȥ�ġ���ս���򡷡����ⲿ��Ӱ��Ұ��ݵĿ�ѧ�ҽ����Ϊ�����¼��ĺ���������ڻ���������˽��������µ���Դ���ڵ�Ӱ������ѧ����ʵ��ȫ�Ǳ�������������ĺ���ȥ����ҩ������ȴ������Ϊ��ݺ��������һ��������ص����ѣ�����ҲΪ�ⳡ���Ѹ����˴��ۡ����µĻ����ȽϺ�ɫ����Ҳ�����˻���һЦ�ĵط���������µ����ص㽫���ֳ�������δ��������Ƿ������ࡣ��<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ƭ����Ч����ֱ�������ԡ�������������Ƕ�����׽�����״����չ��½��С�<br />
<br />
�������ġ������Ը��кܴ�Ŀ�Խ�ԣ���һ���޹��ߵ�һ���������䣬���ϡ�ɪ��˹Ϊ����߱��ݼ��ɣ���Ħ�˺ܶ���޺����ɵĻ��<br />
<br />
�����ϡ�ɪ��˹��ΪӰƬ����Ч�������٣���Ҫ��ģ�º����ɵ�������<br />
<br />
�����ݿ�����ͬ��֮ǰ�ڡ���ա��С����ݡ������ɽ�գ���Ϊ�������Ը��ϸ��߿�ȡ�<br />
<br />
��ӰƬ�����˴�����Ч������������������ʵ����ȡ�������Բ������˸е���٣�������ʵ�С�<br />
<br />
��ӰƬ�ļ���ģ������Ч��Ӱ�Ͷ�����׽������Ӱ�Ľ��ޣ�����Գ�����𡷵ļ������Ա�����ΪһȺ��ʵ����Ա������ʵ��ʱ�䡢��ʵ�������У��Զ�����׽�ķ�ʽ������<br />
<br />
����Ƭ�������ɱ�ԼΪ9000����Ԫ��<br />
<br />
��2011�������Ʒ��20���͸�˹��˾����������Գ�����𡷵ĵ��ڴ�2011��6��24������11��23�գ�����3����Ѯ��20���͸�˹��˾�־�������Ƭ�Ĺ�ӳʱ����ǰ��8��3�գ�������Ƭ���ջ��ǳ�Ϊɱ�����ڵ���һ����Ƭ��<br />
<br />
����Գ�����𡷵�����ۺ͡���ս���򡷱���һ�£����ڵ�Ӱ��ķ���ʱ�������������µ���Դ��<br />
<br />
����Ƭ��Ҫ�ڼ��ô�������㡣<br />
<br />
����Ϊ��ƬҪ���ּ���ΪPG-13�����Ժܶ��漰�����ɺ������ս�ı�����ͷ��������ɾ����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��2011�꣬�ɽ�ɽ��Ϊ���о������������մ�֢������֪���Ŀ�ѧ��������������ղķ˹���������Σ��Ѿ������о��˶��ꡣ����һֱû��ȡ��̫�����ɫ����Ȼ�����鳤��ѧ�ҿ����գ�ܽ�ٴƽ���Σ�һ��������һ����Ϊ��Cure������ҩ�����ҩ���ܸı���򣬵����ڼ���Σ�յĸ����ã�ʹ�����Ҳ������ʵ��ٴ������������֤Cure��ҩ�ԡ����ڣ��ڿ�������������������������˹�Σ�������֮�£�����ҩ������˴��������ϡ�Cure���������޸����Ե����ã����ڴ��������ϵõ�����֤������Cure����Ч�������ɿ�ʼ��ó������ǻۣ����걻����Ű���Ķ����ǿ�ʼ�������࣬���Ȼָ������Ĵ����ɿ��������ϡ�ɪ��˹�Σ���ʼ�����������ɶ�',N'����',N'����/����/�ƻ�/���',N'1280 x 720',N'2011',N'http://www.lwgod.com/thread-615888-1-2.html',N'http://www.lwgod.com/attachment.php?aid=898348&amp;k=d859ad98c39e464e2883e7a6cafd0bc7&amp;t=1412261748&amp;sid=176e2djf7Zl6RjQ0QtX8U8CmzPLBdcZoe%2B9ypu3tHerK0mQ',N'2014/10/2 22:57:27',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 438,N'������Ч��ء�������֩����1+2����BluRay-1080P.MKV����˫�',N'<font color="blue"><font size="5">������ʼѹ��1080pȫ���壡<br />
����߲Σ�DTS���죡�����ѡ��<br />
��������Դ���ޣ�ֻ�г�����Ƭ�Ż�ѹ��1080p</font></font><br />
<br />
<br />
<br />
<font color="red"><font size="6">֩����1</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img.lwgod.com/-5-/10.28/chaofanzhizhuxia/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img.lwgod.com/-5-/10.21/spiderman/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������֩����/3D֩��������������(��)/֩���ˣ���������(̨)/����֩����/֩����4/��֩����/֩����ǰ��<br />
Ƭ��������The Amazing Spiderman<br />
�ꡡ������2012<br />
�������ҡ�����<br />
�ࡡ���𡡶���/ð��/����<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.1/10 from 310,711 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt0948470" target="_blank">http://www.imdb.com/title/tt0948470</a><br />
�ļ���ʽ��x264 + 5.1 DTS @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1920 x 1080</font></font><br />
�ļ���С��8.71 GB<br />
Ƭ��������136 Min<br />
�������ݡ���ˡ�Τ�� Marc Webb<br />
�������ݡ�����³���ӷƶ��� Andrew Garfield&nbsp;&nbsp;....Peter Parker / Spider-Man<br />
�������������ꡤ˹ͨ Emma Stone&nbsp;&nbsp;....Gwen Stacy<br />
������������˹������˹ Rhys Ifans&nbsp;&nbsp;....Dr. Curt Connors / The Lizard<br />
���������������� Martin Sheen&nbsp;&nbsp;....Ben Parker<br />
��������������˿����ά�� Embeth Davidtz&nbsp;&nbsp;....Mary Parker<br />
����������ɯ�򡤷ƶ��� Sally Field&nbsp;&nbsp;....May Parker<br />
��������������˹������� Chris Zylka&nbsp;&nbsp;....Flash Thompson<br />
��������������˹������ Denis Leary&nbsp;&nbsp;....George Stacy<br />
����������C������˹�������� C. Thomas Howell&nbsp;&nbsp;....Ray<br />
�������������ݡ������� Annie Parisse&nbsp;&nbsp;....Mrs. Van Adder<br />
������������������˹���� Campbell Scott&nbsp;&nbsp;....Richard Parker<br />
��������������������&nbsp;&nbsp;Kelsey Chow&nbsp;&nbsp;....Sally Avril</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����������֩�������Ĺ��·����ڱ˵á���������е�ʱ������С��ʱ��ͱ��Լ����������׺�ĸ�������ˡ���С���󣬶����������屾�͹ù�÷�ڸ��������������Լ���Ҳ�����β����Ѱ���ź��Լ�������ص�������<br />
<br />
�������ڣ����˷�����һ�����׵�һ�����İ���������İ���������ƺ����������˵������ĸ�ĸ�����Լ������ɡ����չ��İ���Ķ�������ʾ�������ҵ��˰�˹�����Ϳ��ء�����˹��ʿ��ʵ���ҡ��������˹��ʿ�������׵�ǰ������飬�������˸�ĸ��ʧ������ǧ˿���Ƶ���ϵ��<br />
<br />
�������ǣ���ȴ�����ż�Ҫ�������˹�������ĸ�����飬����Ҫ���˱����֩�����������Լ�������������--��Ҫ�����Լ���Ѱ�����ࡣ������ʹ����������������������ʹ�£������Լ���õ������������һ������Ӣ�ۡ�<br />
<br />
&nbsp; &nbsp;&nbsp;&nbsp;��ͬ�ڴ�ǰɽķ������ִ���ġ�֩��������������������֩���������ӽ����ص��˵á����˵ĸ���ʱ�����������һ����Ҫͬ�Լ��ĳ������¹�ͬ�����������ŵ�Ŀ��飬��һ���滹Ҫ�ҿ�˫������ʧ�ٵ����࣬������������ս����ɴӳ��˵�Ӣ�۵��������ɱ䡣<br />
<br />
�� ������֩��������������һ����С����ĸ�������ľ��ڱ��壨�������Σ���÷�̣�ɯ�򡤷ƶ����Σ����еĹ¶��������˵á����ˣ��ӷƶ����Σ��Ĺ��¡���ͬ������������꣬�˵���֪������˭��������γ�Ϊ����������˵��ڸ����ҵ������Ĵ������������¡�ʷ���������ꡤ˹ͨ�Σ�������һͬΪ���ܶ����໥��ŵ���������ܡ����˵÷������������µ�һ�����صĹ��İ�������ʼѰ�ҵ���˫������ʧ�ٵ���������������������׵����ʵ���һ����ء�����˹��ʿ����˹������˹�Σ�����Ϊ֩����������Ҫͬ����˹�Ļ���������ڽ���ǿ���ĶԾ����˵ý������������������ı����˵ľ��������һ��Ӣ�۵����ˡ�<br />
<br />
�� ͯ���һ��ͻ���¼�����˵á����ˣ�����³���ӷƶ��� Andrew Garfield �Σ��͸�ĸ��������ת�۱˵ó�Ϊһ������������żȻ���ָ��׵Ĺ��İ��������常���������� Martin Sheen �Σ����õ���������������ǰ����˹�⹫˾�ݷø��׵���ĺ�����顪�����ء�����˹��ʿ����˹������˹ Rhys Ifans �Σ����ڹ�˾���Ĵ�Ѱ�������ı˵����ⱻ֩��ҧ��һ�ڣ��س�;���������巢������ı仯���ڿ���˹��ʿ�������£��˵ò����˽Ⲣ���������ų���Ѱ����������ϲŭ���֣��������벻��������Ѹ������Ϯ����ֱ��ĳ�գ��������Ӱ����Զ�ĳ���սʿ֩������<br />
<br />
�� ��������Ҳ�������׶�������ˣ��˵ò�ƽ���������ʹ�չ������ <br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/zhizhuxia/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/zhizhuxia/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />
<br />
<font color="red"><font size="6">֩����2</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������֩����2/֩���˾�������2�����֮ս(̨)/֩����2 : ��ս��ħ(��)/����֩����2�����������<br />
Ƭ��������The Amazing Spider-Man 2<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡶���/�ƻ�/���/ð��<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.1/10 from 158,732 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1872181" target="_blank">http://www.imdb.com/title/tt1872181</a><br />
�ļ���ʽ��x264 + 5.1 DTS @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1920 x 1080</font></font><br />
�ļ���С��9.05 GB<br />
Ƭ��������142 Min<br />
�������ݡ���ˡ�Τ�� Marc Webb<br />
�������ݡ�����³���ӷƶ��� Andrew Garfield ....�˵á�����/֩���� Peter Parker/Spider-Man<br />
�������������ꡤ˹ͨ Emma Stone ....���¡�˹���� Gwen Stacy<br />
�������������ס�����˹ Jamie Foxx ....����˹������/�����<br />
�����������������¹��� Dane DeHaan ....��������˹��/С��ħ<br />
�������������ޡ��������� Paul Giamatti ....���п�л����˹��ά��/Ϭţ��<br />
����������ɯ�򡤷ƶ��� Sally Field ....÷��ĸ Aunt May<br />
��������������˹����� Chris Cooper ....ŵ������˹��/��ħ Norman Osborn<br />
������������������˹���� Campbell Scott ....���¡����� Richard Parker<br />
��������������˿����ά�� Embeth Davidtz ....���������� Mary Parker<br />
�������������˹�����˹ Max Charles ....ͯ��˵á����� Young Peter Parker<br />
��������������˹������ Denis Leary ....���¸��� Captain Stacy (uncredited)<br />
������������³ķ���Ѱ��� Colm Feore ....���ɵ¡�÷�� Donald Menken</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����˵á����ˣ�����³���ӷƶ����Σ���Ȼ��æ�������£����ꡤ˹ͨ�Σ���ҵ����ȥţ���ѧ�������졣������ˡ������ס�����˹�Σ����ֺ���������ð����������ѹ�������˹�����������¹����Σ��ع飬���˷����˹����Լ���������������<br />
<br />
��������Խ������Խ��֩�����˵á����ˣ�����³���ӷƶ��� Andrew Garfield �Σ���ȫ���ͷ��������������ͬʱ������ӭ���˱�ҵ��ʱ�̡�����������һ���Ľᣬ������Ů�Ѹ��¡�˹̹�������ꡤ˹ͨ Emma Stone �Σ��Ĺ�ϵ�������㡣����ӦƸ��Ϊȫ���ṩ������ ��˹�����Ź�˾��ͬһ�ڼ䷢���������£����ɵ�������ҹ�˾�ͱ˵õ��˵����ˡ���˹���������˲��ʣ����Ķ��ӹ������������¹��� Dane DeHaan �Σ���20���������������ֵ2000����Ԫ�ľ��ްԡ���һ���棬���ȳ��֩�����ĵ�������ʦ���˹�����������ף����ס�����˹ Jamie Foxx �Σ���ά�޻���ʱ���������������ٶ�����ʱ�����Լ������ȫ��������ܵĳ����ࡣ<br />
<br />
�����е�������ƭ�����˹��֩������ʱ���㳡չ���Ծ������˵ú͹���������Ҳ���⵽���˵�ϷŪ����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/zhizhuxia/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/zhizhuxia/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��������֩�������Ĺ��·����ڱ˵á���������е�ʱ������С��ʱ��ͱ��Լ����������׺�ĸ�������ˡ���С���󣬶����������屾�͹ù�÷�ڸ��������������Լ���Ҳ�����β����Ѱ���ź��Լ�������ص����������ڣ����˷�����һ�����׵�һ�����İ���������İ���������ƺ����������˵������ĸ�ĸ�����Լ������ɡ����չ��İ���Ķ�������ʾ�������ҵ��˰�˹�����Ϳ��ء�����˹��ʿ��ʵ���ҡ��������˹��ʿ�������׵�ǰ������飬�������˸�ĸ��ʧ������ǧ˿���Ƶ���ϵ�����ǣ���ȴ�����ż�Ҫ�������˹�������ĸ�����飬����Ҫ���˱����֩�����������Լ�������������--��Ҫ�����Լ���Ѱ�����ࡣ������ʹ����������������������ʹ�£�������',N'����',N'����/ð��/����',N'1920 x 1080',N'2012',N'http://www.lwgod.com/thread-615206-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896296&amp;k=565678308712ac2e4e295b1b25b4bcdc&amp;t=1412261748&amp;sid=5ddae2XUwMqsibiA4%2F3tS2cRhqFLue1gGGN9Ek3GF1Qzexg',N'2014/10/2 22:57:27',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 439,N'�������ֿ�14���𱬶�������������������HD-1024.MP4�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/baolijiequ/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/baolijiequ/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������������/��������(̨)/��������(��)/��Ԣ׷��<br />
Ƭ��������Brick Mansions<br />
�ꡡ������2014<br />
�������ҡ�����/���ô�<br />
�ࡡ���𡡶���/����/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��������Ļ<br />
�������֡�5.8/10 from 9,586 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1430612" target="_blank">http://www.imdb.com/title/tt1430612</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��863 MB<br />
Ƭ��������87 Min<br />
�������ݡ������ա��������� Camille Delamarre<br />
�������ݡ����ޡ��ֿ� Paul Walker ....Damien<br />
�������������������� David Belle ....Lino<br />
�����������޲��ء��ƴĽ����¡��ϸ�˹ RZA ....Tremaine<br />
�����������������ȡ�����˹ Catalina Denis ....Lola<br />
����������Gouchy Boy ....K2<br />
����������Ayisha Issa ....Rayzah<br />
���������������塤���� Carlo Rota ....George the Greek<br />
����������Andreas Apergis ....Berringer<br />
����������Richard Zeman ....Major Reno<br />
�����������޲��ء�÷Ү Robert Maillet ....Yeti<br />
������������³˹����ķ�� Bruce Ramsay ....Mayor</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������Ƭ�ǹ��������������ˡ�������ָ���ľ��䶯����Ӱ����������13����������ǿ�棬������֥�Ӹ�һ�����ģɱ����������һ��ƶ��ߵĶ���͵�ԣ������ɱ��ޡ��ֿ����ݵľ�̽���Եף�����������������ƶ��ߵ��飬���ս�¶��һ������������ľ������ı��<br />
<br />
�������������������У�Ϊ�˱�������ȫ�����ֽ�������Σ�յ��ﷸ���룬���������������ŷ�ɥ��������������ש��������Brick Mansions����<br />
<br />
����������ǿʳ�ġ���ש�������ڣ��б����Ĵ�������÷��RZA �Σ�Ϊа����ģ��Ե�̽Ա���װ������ޡ��ֿ� Paul Walker �Σ�һֱϣ��������֮�ڷ�����һ���棬ϣ���뿪�����ع����������ŵ������������ David Belle �Σ�����ΪŮ������������÷��°�߶��ļ���١�ӵ�й�ͬ���ˣ����Բ�ͬ���磬��������Ĵ��װ�����ŵ�������ֶԸ�����÷�򡭡�<br />
<br />
������Ƭ������2004��ͬ������������Ӱ����������13����Ҳ�Ǳ��ޡ��ֿ�����������Ʒ��<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
������������Ӣ�۾���������Ϧ&nbsp;&nbsp;Ʊ���ڱ�˫����<br />
<br />
�����ɻ���Ӱҵ�뷨��ŷ�ް����ϳ�Ʒ�����������������ˡ����ɵ��ټ��ơ���Ƭ�����Ķ�����Ӱ��������������8��1����Ϧ��ǰϦ��½ȫ��Ժ�ߡ�����ӳ֮���𣬸�Ƭ�����������ڱ�������������ʾ�Ϊȫ����һ��Ʊ����5000�򣬵߸��˺ܶ�������Ϧ��ֻ������Ƭ�Ĵ�ͳ��������ʷ������ż������Ϧ���ڣ�<br />
<br />
������Ϊ���ޡ��ֿ���ǰ���һ��������Ʒ����Ӱ�����˷ɳ����ܿᡢǹս�������ȶ���Ԫ�أ�Ƭ�б����롰�ܿ�֮����������������Ĭ����ϳ�Ϊ��Ƭ��󿴵㣬����Ӣ�۾��������Ҳ�ø�Ƭ��Ϊ��Ϧ��������֮ѡ��<br />
<br />
��Ϧ��ȫ�������ʵ�һ&nbsp;&nbsp;Ʊ����ڱ����<br />
<br />
��������������������Ʊ���ߴ�1100��Ԫ��30������ǰȥ��Ӱ��һ�߳��г����˴γ���Сʱ��3�������ۡ��͡���֮�ȣ������������һ����ӳӰƬ��8��2�յڶ��죬�����������������ʸߴ�84.34%��λ��ȫ����һ����ν�����������ܶ�Ӱ�Է�ӳ��Ʊ������һ�����úܶ�ӰԺ��ʼ��δ�������������շ׷ױ�������2014Ϊ�������������Ӵ���Ƭ��������Ƭ�����ӵ�����£�����������������������Ȼ�Ⱦӵ�һ������Ʊ����5000��Ԥ��Ժ����Ƭ���һ�����ӡ���������ѡ��ۿ���Ƭ���ڣ�������Ϧ�����Ӱ�ȳ���<br />
<br />
������Ƭ�ڶ�����������Ϊ7.1��ͬ���ڵġ����ۡ�����ֻ��5.9�֣����׷�ħŮ��֮�������������4.1�֣������ڵ������ĵġ����ִ�ʦ��Ҳֻ��5.6�֡�<br />
<br />
�����ӹ��ڵķ�����Կ������ⲿӰƬ�ڱ��൱����������֮��Ŀڱ���ӰƬ�Ժ��Ʊ������������Ҫ������˸ߵ����ֺ͸������������ϣ�����Ԥ�Ƹ�Ƭ��Ʊ�������������<br />
<br />
��ȹ������Ů�ⲫ&nbsp;&nbsp;Ӣ�۾���������Ϧ<br />
<br />
����������������֮����������Ϧ����Ʊ���漣������ӰƬ����������Ӳ�⡢��г��հ��⣬Ӣ�۾��������Ҳ�Ƿǳ���Ҫ�ļӷ����Ƭ����ӵ����Ѫ��ȭ��Ӳ�������⣬������Ӣ�۾������������顣<br />
<br />
����Ϊ���ù���һ���۸�������Ƭ���ع�һ��Ӣ�۾�����Ƶ�ؼ���Ϊ����ȱ��ڰ��ϴ�ץ�ߵĴ�����������ǰŮ�ѣ����ޡ��ֿ˺ʹ���������˫����赣����뻢Ѩ��һ·����ն�������ʱ�̣��������������˵�������Ů�ѵ����������������������˼��ҵ�˼�붷����������֮ǰ�ĺô���ޡ��ֿ˷�Ŀ���������뱻��ƺõ���ı�У�һ����Ů�ѣ�һ����ǧ������������β��Ƽ��գ����ֵ����塢�ҹ���Թ����Ӣ�۾���������У��ù��¸��ӱ��������մ������������������ȡ�����˹���ݵġ�Ů�ѡ���������Ե�Ȼء���Ȼ���ֶ��꣬�����������������������Ȼ�Կ���������������ؼ�ʱ��������ȣ�����Ϧ�Ľ������ⲻı���ϡ���������������ǻ��úܶ��ڵ�ӰԺ�й�Ӱ��С�����ǣ�����һЦ����ָ���ϡ�<br />
<br />
������������ů�ĵ�Ӣ�۾�����ڣ��ⲿ���Ժɶ���ʮ��ĵ�Ӱ�У���λŮ��Ա�Ĵ�ϷҲ�ǳ����ʡ���λŮ��Ա����������ü��ҡ��һ��ɡ��������ޡ����������������ⲫ�����˶�������ϧ��֮�ġ�����λ������Σ�ղ����Ů�����Ǿ������㣬�������ȡ�����˹����ʢ����Ů�ĸ��ױ��ǣ�����Ա��ģ�أ����Ϊ182cm��һϮƮ�ݺڷ�+��ȹ���ȳɾ���һ�󿴵㣻��һλ�Ǽ��ô����Ů�ǰ���ɯ�������������ǰ�߲������£���Ļ�����<br />
<br />
�������������ĳ�����Ů��Σ��ʱ�̵�Ӣ�۾�������������Թ��ں�Ů�Թ��ڵĲ�ͬ�Ĺ�Ӱ���󣬽�Ȱ���ʹ�������ճɾ������ⲻǡ���Ǻ���Ϧ�ڵ�������<br />
<br />
�ɳ��ܿ�ǹս�ⲫ&nbsp;&nbsp;�����Ƭ����ڵ��հ�<br />
<br />
������Ϊһ����׼ʱ����ӰƬ��������������ǡ���ô��������ˣ������ܿᡢ�����񶷡�׷��ǹս�ȡ���Ƭ���󡱣��������С��Ѫ˫�ۡ��㲻����ʶ�Ļ��ֻ���ȣ��޲���������ذ����ڽ��յ�Ϸ���ͻ�ṹ֮�С�����Ҫ���ǣ���ЩԪ�ػ��֮����һ�ִ���B��cult��Ӱ��Ȥζ�����ʳ��ֳ���������Ӯȡ��������2014������Ӱ�̶���˿���ģ�������Ϊ���ɵ������������ڵĵ��̡����⣬���ޡ��ֿ�˹�����ţ��������ڣ�Ϊ��Ӱ����һ����ů�����ɵ����ù⻷��<br />
<br />
�����ݹ��������ڵ���Ӱ�г����ѷ��֣�2014������Ĺ���Ӱ����Ȼ�Ѿ��������ڶ�ġ��漣���͡���¼������ӰƬͬ�ʻ�Ҳʮ�����ԣ��硶���ִ�ʦ���������ۡ�����������ڡ�����Сʱ������ӰƬ���Ͷ����ഺ��������ĵ���С�ɱ�ӰƬ��ӰƬ���ͽ�Ϊ��һ��������һ֦����ġ����ν��4�������ٺ����Ƭ��Ӱ���������г������£����������������ּ�쭳����ܿᡢǹս���ⲫ��������������Ԫ��Ϊһ��Ķ�����Ƭ�ؽ����ή�Ҳ���ĵ�Ӱ�г�ע��һ��ǿ�ļ��������Ӱ�е�һ��հף�������ǰ���졶������������ȡ�������������ϲ�ĳɼ����������ʱػ����Ժ�ߵ���Ƭ���ӣ�����Ʊ���������������������ù����������ܵ����ջ𱬴�Ƭ�����ĺ������졣<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/baolijiequ/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/baolijiequ/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/baolijiequ/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/baolijiequ/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/baolijiequ/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����Ƭ�ǹ��������������ˡ�������ָ���ľ��䶯����Ӱ����������13����������ǿ�棬������֥�Ӹ�һ�����ģɱ����������һ��ƶ��ߵĶ���͵�ԣ������ɱ��ޡ��ֿ����ݵľ�̽���Եף�����������������ƶ��ߵ��飬���ս�¶��һ������������ľ������ı�����������������У�Ϊ�˱�������ȫ�����ֽ�������Σ�յ��ﷸ���룬���������������ŷ�ɥ��������������ש��������Brick Mansions����������ǿʳ�ġ���ש�������ڣ��б����Ĵ�������÷��RZA �Σ�Ϊа����ģ��Ե�̽Ա���װ������ޡ��ֿ� Paul Walker �Σ�һֱϣ��������֮�ڷ�����һ���棬ϣ���뿪�����ع����������ŵ������������ David',N'����/���ô�',N'����/����/����',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-614767-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895181&amp;k=f593bc21a46559f7069ebb29485ccae1&amp;t=1412261748&amp;sid=c4a9si0uIepDOxlrkYx4h0ab4KrotHbYSRYL9bVZnVPaueQ',N'2014/10/2 22:57:27',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 440,N'����14��ЦƱ���������ھӴ�ս����BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/linjudazhan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/linjudazhan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������ھӴ�ս/����50(��)/���ڲ���(̨)/���ھ�/��С���е㻵<br />
Ƭ��������Neighbors<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ����ϲ��<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.7/10 from 75,330 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2004420" target="_blank">http://www.imdb.com/title/tt2004420</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.59 GB<br />
Ƭ��������97 Min<br />
�������ݡ������˹��˹���� Nicholas Stoller<br />
�������ݡ���˹���޸� Seth Rogen ....Mac Radner<br />
������������˿���ݶ� Rose Byrne ....Kelly Radner<br />
�������������ˡ�����¡ Zac Efron ....Teddy Sanders<br />
�������������򡤸����� Dave Franco ....Pete<br />
�������������塤�����˶� Jerrod Carmichael ....Garf<br />
������������ɯ����׿ Lisa Kudrow ....Dean Carol Gladstone<br />
��������������˹�з�÷��-����ɪ Christopher Mintz-Plasse ....Scoonie<br />
�����������ܿˡ�M��Լ��ɭ Jake M. Johnson ....Sebastian Cremmington<br />
����������Elise Vargas ....Stella<br />
����������Zoey Vargas ....Stella<br />
��������������������˹�� Brian Huskey ....Bill Wazowkowski</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬ������һ����Ѫ�ַŵ���������ڼ����ɺ�֮��������Ӱ�����ھ�һ������Ĺ��¡���˹���޸�����˿���ݶ���Ƭ�������������������򸾣������ˡ�����¡���ݵĹ��Ӹ�������Ľ��ཫ����޸����ǲ����鷳��<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
��������ں����룬�����ֶ�����˹���޸����˵�ϲ��Ƭ����Ȼ�Ǹ�Ʊ���Ĵ����ʡ��ټ��ϵ���ż���������ˡ�����¡�ġ���̬�����ݣ����ⲿ�߾١������ϵ������Ķ��ϲ��Ƭ������ʮ�㡣���������˹��˹���գ���λ��Ӣ�׳�����������������Ӱ�ˣ���ǰ�ڡ�ǰ��ϣ����Ժ����������Ǯ���ޡ��Լ�������ɯ������Ъ������Ƭ�и�Ц�Ż����ԡ��������ڡ�ǰ��ϣ����Ժ���У���Ӣ����Ц���Ĵ���ײ������ڶ�Ŀһ�¡�����������ϵ�Ĵ󱳾��£���һ����ܰ������֮����һ�����޶������Ļ�С���ڼ���������ͬһ���Ƥ��������һĻĻ�����ս���������ˡ�����¡Ϊ�׵�һȺ���󹷵��ǣ����������ԭ�������Ľ�������׳�һ����������Ц�Է�����Ż�д��ֵı�Ц������<br />
<br />
������˵���ݣ���Ϊ�����а�����������˹���޸��ĺ��������ݼ��Բ���׸����������ż�񼶴��������ˡ�����¡�Ĵ˷�ȴ��������У԰С˧��ĸ߸�˧������ȫ�ǲ�ѧ�������о�Ʀ�ӵ�ģ����������ʱ��չ�ֳ�һ����2�������Եľ�ͷ���������ھ��Ǻ͹����Ǽ������Խ��ܣ�һ���������˹���޸���һ����ж�³��ϵ�����װ����˹���޸��İ칫�����������죬һ����COSPLAY�����⳵˾�����еĵ����޵�Ī����������������˹���޸��ҵ�С������Ҫ����һ�£���ֱ�Ǳ�Ц����޵��ޡ����⣬�����Ѽǡ��еġ��Ʊȡ���ɯ����׿�͡����������л�С�ӿ���˹�з�÷��-����ɪ������Ҳ�����ڱ�Ƭ���о������࣬�����ڴ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ���ۣ�</font></strong></font><br />
<br />
����ý������68�֣��÷��ѷ������ʶ�74%��130��Ͷ�����ʷ�45���ҳ��÷��ѣ�CinemaScore����B���������ϵ��ջ������<br />
<br />
�������С�The Wrap������HitFix������ý��������֣������ھӴ�ս�����˱����ڴ��Ĳ�������Ϊ���ж�ΰ�󣬶�����Ϊ����һ������ʵʵ�Ĺ�����ʽRϲ�硱�������������ֵض��Ϳ��ŵ�dirty�����ھӴ�ս���ľ籾ˮ׼֮����Ȼ�Ѿ�������ӰƬԭ�еĶ�λ���������ҵ�ӡ���У����ھӴ�ս���ǽ��������۸�Ц�̶Ȼ��ǿ��ӿ������ɫ��ӰƬ֮һ�������籾������趨�ֲ���ӰƬ�ͼ�Ȥζ�����׸У����й��ڶ����ڿ�����Ц�и��ܵ���һ�����������������Ƭ����������Ҫ�����ַ���ɶԣ���Ȼ���˼�к�Ż��Ҳ������˼������������³-�ƶ��Ͳ�����-�²�������ɫ������˾籾��ּ�����������ӱ�Ц��ӰƬ���˵���ɫ��е��Ƚ������������˱����˵���ܿɹ󡱣�����λ���ݱȽ�˳������˸���������˹-�޸���Ȼ��ƴ�ڻ������-����¡�ճ�����ˣ˧��֮ǰΪʲô��û���뵽�����˻�����ˡ��л����ؽ����һ���أ�������ӰƬ�뾭�仹��Զ(�����ǵ���ϲ��ľ���)���������ǻ����ܴ�ӰƬ����ᵽ��λ������Ա��Ŭ���������ʱ�䱾Ƭ�������ž���Ц�ϣ�ֻ����Ƭ�ε��νӲ���Ԥ�ڵ��ǰ�������ˮ����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/linjudazhan/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/linjudazhan/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/linjudazhan/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/linjudazhan/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/linjudazhan/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬ������һ����Ѫ�ַŵ���������ڼ����ɺ�֮��������Ӱ�����ھ�һ������Ĺ��¡���˹���޸�����˿���ݶ���Ƭ�������������������򸾣������ˡ�����¡���ݵĹ��Ӹ�������Ľ��ཫ����޸����ǲ����鷳��Ļ������������ں����룬�����ֶ�����˹���޸����˵�ϲ��Ƭ����Ȼ�Ǹ�Ʊ���Ĵ����ʡ��ټ��ϵ���ż���������ˡ�����¡�ġ���̬�����ݣ����ⲿ�߾١������ϵ������Ķ��ϲ��Ƭ������ʮ�㡣���������˹��˹���գ���λ��Ӣ�׳�����������������Ӱ�ˣ���ǰ�ڡ�ǰ��ϣ����Ժ����������Ǯ���ޡ��Լ�������ɯ������Ъ������Ƭ�и�Ц�Ż����ԡ��������ڡ�ǰ��ϣ����Ժ���У���Ӣ����Ц���Ĵ���ײ������ڶ�Ŀһ�¡�����������ϵ��',N'����',N'ϲ��',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-615853-1-2.html',N'http://www.lwgod.com/attachment.php?aid=898254&amp;k=7760a7940bae8fa176341c8c21f94905&amp;t=1412261749&amp;sid=a72c4w4q5%2FJ7nnJKp3iI56cHaJpI5FJNRa8aDbQ49W4QAwY',N'2014/10/2 22:57:28',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 441,N'��14�����ڴ����ơ�������֩����2����BluRay-720P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������֩����2/֩���˾�������2�����֮ս(̨)/֩����2 : ��ս��ħ(��)/����֩����2�����������<br />
Ƭ��������The Amazing Spider-Man 2<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡶���/�ƻ�/���/ð��<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.1/10 from 158,732 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1872181" target="_blank">http://www.imdb.com/title/tt1872181</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.85 GB<br />
Ƭ��������142 Min<br />
�������ݡ���ˡ�Τ�� Marc Webb<br />
�������ݡ�����³���ӷƶ��� Andrew Garfield ....�˵á�����/֩���� Peter Parker/Spider-Man<br />
�������������ꡤ˹ͨ Emma Stone ....���¡�˹���� Gwen Stacy<br />
�������������ס�����˹ Jamie Foxx ....����˹������/�����<br />
�����������������¹��� Dane DeHaan ....��������˹��/С��ħ<br />
�������������ޡ��������� Paul Giamatti ....���п�л����˹��ά��/Ϭţ��<br />
����������ɯ�򡤷ƶ��� Sally Field ....÷��ĸ Aunt May<br />
��������������˹����� Chris Cooper ....ŵ������˹��/��ħ Norman Osborn<br />
������������������˹���� Campbell Scott ....���¡����� Richard Parker<br />
��������������˿����ά�� Embeth Davidtz ....���������� Mary Parker<br />
�������������˹�����˹ Max Charles ....ͯ��˵á����� Young Peter Parker<br />
��������������˹������ Denis Leary ....���¸��� Captain Stacy (uncredited)<br />
������������³ķ���Ѱ��� Colm Feore ....���ɵ¡�÷�� Donald Menken</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����˵á����ˣ�����³���ӷƶ����Σ���Ȼ��æ�������£����ꡤ˹ͨ�Σ���ҵ����ȥţ���ѧ�������졣������ˡ������ס�����˹�Σ����ֺ���������ð����������ѹ�������˹�����������¹����Σ��ع飬���˷����˹����Լ���������������<br />
<br />
��������Խ������Խ��֩�����˵á����ˣ�����³���ӷƶ��� Andrew Garfield �Σ���ȫ���ͷ��������������ͬʱ������ӭ���˱�ҵ��ʱ�̡�����������һ���Ľᣬ������Ů�Ѹ��¡�˹̹�������ꡤ˹ͨ Emma Stone �Σ��Ĺ�ϵ�������㡣����ӦƸ��Ϊȫ���ṩ������ ��˹�����Ź�˾��ͬһ�ڼ䷢���������£����ɵ�������ҹ�˾�ͱ˵õ��˵����ˡ���˹���������˲��ʣ����Ķ��ӹ������������¹��� Dane DeHaan �Σ���20���������������ֵ2000����Ԫ�ľ��ްԡ���һ���棬���ȳ��֩�����ĵ�������ʦ���˹�����������ף����ס�����˹ Jamie Foxx �Σ���ά�޻���ʱ���������������ٶ�����ʱ�����Լ������ȫ��������ܵĳ����ࡣ<br />
<br />
�����е�������ƭ�����˹��֩������ʱ���㳡չ���Ծ������˵ú͹���������Ҳ���⵽���˵�ϷŪ����<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ƭ���ײ���ȫ��ŦԼ����ġ�֩��������Ӱ��Ҳ����ŦԼ��������Ԥ���ӰƬ��<br />
<br />
�������������ɴ�ʦ��˹����Ĭ������������˵�����ַ����������ķ˹���ִ��졣<br />
<br />
����˹��Ӱ�۽��ס�����˹��Ƭ�а��ݵ��ǵ���ˣ���˹���������ǿ���˹��������ݵ��ǰ�˹�������ǰ�˹������Ա��һ�ΰ���֩����������ͷ��<br />
<br />
�������У����±�����ħ��ŵ����˹�������²�³���ִ��š�С֩�뷢����˿һ������ס������׹�ĳ��������ľ�׵��Ӳ�������ϡ����´Ӵ��������ǡ���Ӱ�����´��˺���������������һģһ�����·���<br />
<br />
��л�ա������ԭ����Ƭ�а�������������Ľ�ɫ�����һ�������һЩ��ͷ�������ڼ�����ʱ������Ϸ��ȫ�������е��ˡ�ԭ���ǵ���ϣ��֩�����͸��¡�˹����֮��İ����ܱ��������<br />
<br />
����ˡ�Τ���ڸ���˹̽�յ�Ӱҵ����ƬԼδ��ɡ�̽�յ�ͬ����ˡ�Τ��ִ������ġ�֩������������������Ҫ�Xս��������һ�£����Ծ����˽��꡶Xս����������ʵ������ڰ��޸�Ƭβ�ʵ���<br />
<br />
���ڵ���ǰ֧��Maxȥ�޵�·������OscorpԱ����Max�����С�˹��˼����Smythe����������Smythe�ǡ�֩��ɱ�֡��Ĵ����ߣ������������Լ������壬��Ϊ�ˡ��ռ�֩��ɱ�֡���<br />
<br />
��Oscorp�����͵�������Felicia���������еĺ�è��һ���Ȼ��������а�Ľ�ɫ��Peter����Ϊ֩����ʱ����������<br />
<br />
��Oscorp�ĵ��²ֿ����С��ħ��Ϭţ�˵Ŀ��׻���ͺ�պ����㲩ʿ��װ�������㲩ʿ��ͺ�ա�����ˡ����˿����ġ��»ÿ���ɳ���������кϳơ�Sinister Six����а�������飩��<br />
<br />
��Peter���ֻ��������ϰ�֩������һ�����ڵ���վ���ż������յ��Ǹ��Ƕ����ĸ衰Spiderman���� �������������Ϊ1967�궯����֩��������������<br />
<br />
��������֩��������һ�������������ӰƬ��������ѡ����ʹ��35mm��Ƭ��������������֩����2���������������֮������ʹ�����ּ�������Ƭת��������Ӱ�񣬲��ú���ת�Ƶķ�����ӰƬ���3D��ʽ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���˵á����ˣ�����³���ӷƶ����Σ���Ȼ��æ�������£����ꡤ˹ͨ�Σ���ҵ����ȥţ���ѧ�������졣������ˡ������ס�����˹�Σ����ֺ���������ð����������ѹ�������˹�����������¹����Σ��ع飬���˷����˹����Լ�������������������Խ������Խ��֩�����˵á����ˣ�����³���ӷƶ��� Andrew Garfield �Σ���ȫ���ͷ��������������ͬʱ������ӭ���˱�ҵ��ʱ�̡�����������һ���Ľᣬ������Ů�Ѹ��¡�˹̹�������ꡤ˹ͨ Emma Stone �Σ��Ĺ�ϵ�������㡣����ӦƸ��Ϊȫ���ṩ������ ��˹�����Ź�˾��ͬһ�ڼ䷢���������£����ɵ�������ҹ�˾�ͱ˵õ��˵����ˡ���˹���������˲��ʣ����Ķ��ӹ���',N'����',N'����/�ƻ�/���/ð��',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-614673-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895004&amp;k=3cf050f3264c13a02dcc03fe4cf993bb&amp;t=1412261750&amp;sid=701cUHDClBV%2FLS3oty6KWw8YepyMZ2s9iW6rjjBeojVxgk4',N'2014/10/2 22:57:28',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 442,N'��14�»𱬡���ƻ����ս�ǰ���������BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/aerfa/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/aerfa/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������ƻ����ս�ǣ�������<br />
Ƭ��������Appleseed Alpha<br />
�ꡡ������2014<br />
�������ҡ��ձ�/����<br />
�ࡡ���𡡶���/�ƻ�/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.6/10 from 1,737 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3638012" target="_blank">http://www.imdb.com/title/tt3638012</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.44 GB<br />
Ƭ��������93 Min<br />
�������ݡ�������־ Shinji Aramaki<br />
�������ݡ�Luci Christian ��Deunan Knute<br />
����������David Matranga ��Briareos Hecatonchires<br />
����������Brina Palencia ��Iris (voice)<br />
����������Elizabeth Bunch ��Nyx (voice)<br />
����������Wendel Calvert ��Two Horns (voice)<br />
����������Adam Gibbs ��Olson (voice)<br />
����������Chris Hutchinson ��Matthews (voice)<br />
����������Josh Sheltz ��Talos (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������Ԫ2131�꣬һ���Ǻ˴�ս�õ����ΪһƬ���档��Ӷ��սʿ�������ϡ����ȣ�Deunan Knute����ǰ���Ѽ����ﰬŵ˹��Briareos����Ϊս���Ҵ��ߣ�����������ս������ĳǽ���ִ�ڹ����У��������������������������а������ƥ˹�ľ��񡪡�����˹��Iris�� �� �¶�ɭ��Olson����<br />
<br />
��������˹��Iris�� �� �¶�ɭ��Olson�������а취�������磬�����������˹�͹�ƶ�˵ľ����������������Լ��ļƻ������ϡ����ȣ�Deunan Knute���Ͳ��ﰬŵ˹��Briareos�������ػ������ǵ������ѣ��Ա�����������ϣ��...<br />
<br />
�����ڲ���ңԶ��δ�����޴������෢�����ģս��������������������ɷ��档���յĹ��ʴ󶼻�ŦԼ���������õĽ��������˶��ϡ����ȣ�Luci Christian ������������е�����Ѳ��ﰬŵ˹��David Matranga �����������Ǹոո���̰������˫�ǣ�Wendel Calvert ������������ֻ���ٶ��Ӻ�ǰ��������˹�����ڡ�˫�ǳ�ŵ�����������һ������˭֪��������ȴ��������˱�������ս������׷ɱ�İ���˿��Brina Palencia ������ �� �¶�ɭ��Adam Gibbs ���������������԰�����˹���������Ǽ縺�˹�ϵȫ�������˵ľ���ʹ����˭֪ս����������˹��Josh Sheltz �������������¾�������β���������ͼ���հ���˿���ǵ����ܡ����ϡ���������˫�Ƕ��������ⳡ����Ԥ�ϵ�ս����ȥ����<br />
<br />
������Ƭ����ʿ�����ڵľ��������ıࡣ<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/aerfa/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/aerfa/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/aerfa/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/aerfa/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/aerfa/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����Ԫ2131�꣬һ���Ǻ˴�ս�õ����ΪһƬ���档��Ӷ��սʿ�������ϡ����ȣ�Deunan Knute����ǰ���Ѽ����ﰬŵ˹��Briareos����Ϊս���Ҵ��ߣ�����������ս������ĳǽ���ִ�ڹ����У��������������������������а������ƥ˹�ľ��񡪡�����˹��Iris�� �� �¶�ɭ��Olson��������˹��Iris�� �� �¶�ɭ��Olson�������а취�������磬�����������˹�͹�ƶ�˵ľ����������������Լ��ļƻ������ϡ����ȣ�Deunan Knute���Ͳ��ﰬŵ˹��Briareos�������ػ������ǵ������ѣ��Ա�����������ϣ��...�ڲ���ңԶ��δ�����޴������෢�����ģս��������������������ɷ�',N'�ձ�/����',N'����/�ƻ�/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-615190-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896265&amp;k=7189396e1ad54648e1b8bd3022b05f75&amp;t=1412261749&amp;sid=56bdSoFqvqJ0Db82a3zdforH6vZ7qiOqDsTkJ6Qn9AOmVfI',N'2014/10/2 22:57:28',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 443,N'����14���µ�ս�������ɡ���һ��Ŀ�꡿��HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/yihaomubiao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/yihaomubiao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������һ��Ŀ��/÷԰����<br />
Ƭ��������Who is Undercover<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ���𡡾���/����/����<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��0.99 GB<br />
Ƭ��������102 Min<br />
�������ݡ��Կ��� Junjie Zhai<br />
������������С�� Xiaoxing Zhai<br />
�������ݡ������� Qinqin Jiang ....��һȻ<br />
������������С�� Xiaofeng Liu ....������<br />
�������������� Qian Sun ....�κ���<br />
�������������׿� Murray Clive ....���͵�<br />
�������������� Yao Zhang&nbsp;&nbsp;....���㻪<br />
������������ޱ Wei Huang ....��ӱ��<br />
�����������ֶ��� Dongfu Lin ....����ʯ<br />
���������������� Fanxiang Qin ....������<br />
�������������� Yong Hou<br />
�����������ߴ�� Dahong Ni<br />
�����������ų��� Chenguang Zhang<br />
���������������� Jinglin Guo<br />
�������������� Xin Liu<br />
�������������� Wanchen Zhai<br />
����������Ѧɽ Shan Xue</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������Ӱ�����趨�ڽ��ս��������ڷ�����ܵĶ��������£�������������ӿ�����Ͻ��棬��ӰƬ���ɽ����ڵ���ɵ��ع��Ŷ��������޵�����������߾�ΪѰ�ҡ�һ��Ŀ�ꡱ����˿����<br />
<br />
����1946�꣬���ھ��Ʊ�ö�������սһ��������һ��38 �˵Ķ�����¾�Ӣ������������Ȼ��һ��������ʧ�ıʼǣ���¶����������д����Եס����ع��鲼���Ͼ������������й��ᣬ�ƻ����������е��Ե� ��һ��Ŀ�ꡱ������Χ�ơ�˭���Եס�������һ�����Ķ��ǵĲ��ġ�Ǳ�������ġ�һ��Ŀ�ꡱ��ʱ�����ܷ�Ťת��սǬ�����������صİ�ս������������Ϣ����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/yihaomubiao/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/yihaomubiao/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/yihaomubiao/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/yihaomubiao/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/yihaomubiao/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����Ӱ�����趨�ڽ��ս��������ڷ�����ܵĶ��������£�������������ӿ�����Ͻ��棬��ӰƬ���ɽ����ڵ���ɵ��ع��Ŷ��������޵�����������߾�ΪѰ�ҡ�һ��Ŀ�ꡱ����˿����1946�꣬���ھ��Ʊ�ö�������սһ��������һ��38 �˵Ķ�����¾�Ӣ������������Ȼ��һ��������ʧ�ıʼǣ���¶����������д����Եס����ع��鲼���Ͼ������������й��ᣬ�ƻ����������е��Ե� ��һ��Ŀ�ꡱ������Χ�ơ�˭���Եס�������һ�����Ķ��ǵĲ��ġ�Ǳ�������ġ�һ��Ŀ�ꡱ��ʱ�����ܷ�Ťת��սǬ�����������صİ�ս������������Ϣ����ӰƬ',N'�й�',N'����/����/����',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-615848-1-2.html',N'http://www.lwgod.com/attachment.php?aid=898252&amp;k=953b6b7381e741b71c68529893d7c47e&amp;t=1412261750&amp;sid=6983FSgCooqWDo9pUKYA47GUw4BWJgBOUgALnvaY2XNYt%2Fw',N'2014/10/2 22:57:28',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 444,N'��13�������߷���������Ψ����������BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/weiaiyongsheng/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/weiaiyongsheng/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������Ψ������/��������(��)/��Ѫ����(̨)/Ϊ������/Ψ����������<br />
Ƭ��������Only Lovers Left Alive<br />
�ꡡ������2013<br />
�������ҡ��¹�/����/Ӣ��/����/����·˹<br />
�ࡡ���𡡾���/����/���<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.5/10 from 23,550 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1714915" target="_blank">http://www.imdb.com/title/tt1714915</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.96 GB<br />
Ƭ��������123 Min<br />
�������ݡ���ķ����ľ�� Jim Jarmusch<br />
�������ݡ���ķ��ϣ����˹�� Tom Hiddleston ....Adam<br />
�����������ٶ��˹�Ķ� Tilda Swinton ....Eve<br />
������������櫡���ϣ����˹�� Mia Wasikowska ....Ava<br />
����������Լ�������� John Hurt ....Marlowe<br />
�����������������Ƚ� Anton Yelchin ....Ian<br />
����������Slimane Dazi ....Bilal<br />
����������Aurelie Thepaut ....Flight Attendant<br />
�����������ܸ������ Jeffrey Wright ....Dr. Watson<br />
����������Carter Logan ....Scott<br />
����������Ali Amine ....Taxi Driver</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������Ӱ������һ���మ�����˽��ǵ������ޣ��������������ϲų����������������ǵ��������ˣ���ʵ��������Ѫ����Ҫ�ɿ����ȶ���ѪԴ����ά����������������������У������Ѿ�ѧ���˺ܶ���������淽ʽ����Ҳ���ɱ������Լ��Ķ����Ա��ܡ�ֱ����һ�����޵����ó��֣�����һ�ж���ʼ�����ı䡣<br />
<br />
�����ǵ�����ķ��ϣ����˹�� Tom Hiddleston �Σ������ޣ��ٶ��˹�Ķ� Tilda Swinton �Σ���һ��Я�ֹ�ͬ��Խ��������ʱ�����Ѫ�����ˣ����й��ߵ��ִ������˾����������������ȴ�����䣬Ŀǰ�־ӵ����ɺ�̹�������ء�<br />
<br />
�����ǵ���һ�����������ˣ�����������ֲб������࣬�����ǳ�������ʬ�����������������������޷��԰ε��ǵ�����������ľ���ӵ��������������˶ϵ���ͷ����֪�����˵����״̬������ǧ�������ϵ����ǵ�����ߡ����ݵ��ط�Ϊ�ǵ��������µ�ϣ�����������е�������ǣ������ǳ������������ð��ޣ���櫡���ϣ����˹�� Mia Wasikowska �Σ��ള�������ǵ�����֮�С����޵ĵ��������������Ѻ����䣬������ɱ�����ǵ�Ψһ�����������������������Ƚ� Anton Yelchin �Σ����������ͽ�����˵��������һ���㡣<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
�����ٶ��˹�Ķ١�����ɭ����ķ��ϣ����˹����λ���������ʷ��������Ѫ�����������˼������ͣ��������ط꣬����Ŀ���������˥�˺��������ǵ����������������������������������Ƭ���洦�ɼ���ѧ�����֡���Ȼ��ѧ�ȵ�ʣ����������̨�ʻ�ζ��������пյ�δ�����������ۻ����ң�ҡ�������ٴ���ʾ����ľ��Ķ�������Ʒλ��<br />
<br />
<font color="red"><strong><font size="3">����������</font></strong></font><br />
<br />
������Ψ����������һ������һ�������ǵ������˺�һ���������޵�Ů��֮��ķǳ���ͳ�İ�����µĵ�Ӱ���ҵľ籾����ĳ�̶ֳ��ϣ��õ�����ˡ���������������һ���顶�ǵ������ռǡ���������д�����ġ�����Ȼ�����ﲢû��ֱ�������Ȿ�������ں͹��£�ֻ�ǰѽ�ɫ�����ְ��ų��˺������һ�����ѡ������������ԭ��һ��ľ����ˣ��Ǿ���Ĳ��������ˣ��Ƿǳ������;þ����ʵ��ˡ������ң����ǻ����Լ��Ķ����Եı�������ʹ���������߱���ȫ�򣬾����˼�������ֵ�þ��������������������Ἣ�˵ı�Ե�ͻ�ɫ�ش������档�����ǵİ���һ�������Ǿ����˼������͵ı�Ǩ����������������Լ��Ĺ۵�Ϳ�������Ϊ�������ˣ���������Ѫ��<br />
<br />
�������ǣ��ⲿ��Ӱ��������������Ϥ��������Ѫ���Ӱ��ӰƬ�Ĺ��±�������������Ȼ��ͬ�ĳ���������ɺ�̷������ӰƬ�Ĺ������Ƿ�����ҹ���ǵ���������Ҫ�����ѪҺ���ܴ����ȥ�����ǣ��ڶ�ʮһ���͵����������ҧ���˵Ĳ��ӿ���һ�����������飻���ң�������Ѫ����˵��������·������ѪҺ������Σ�ա����ԣ�Ϊ�����棬����ֻ�ܾ����ܵر�֤�Լ���ѪҺ��Դ�Ǵ����ģ���û�в����Ͳ����ġ��ͺܶ������ں�ɫ���������һ�����������Ǻ��м��ɵ������ڳ��е����Ե������������Ϣ���������𵱾ֵ�ע�⡣<br />
<br />
�������ҵ�ӰƬ�У���Ѫ����ʵ���Ǻ����Ե�����������������������ȥ׷Ѱ���¸�������ͼ��һ��·����ӰƬ������һ�������Ӱ�������һ��������������Ե�˵�ӰƬ����������ӵ���������ݡ����滷�����⡢����ᷢչ��������ʷ�����൱�Ĺ۵�;��顣���ң������ǵ���������У����ǻ����������ֱ��硢�ɹ���ʧ�ܡ��ǵ��������������ˣ������ֽ���������������������������Ǵ�������˼������Σ�յ����֮�£�����Ȼ��������֪�Ϳ־壬����Ŀ���ǳ�����������������������ʽ�͹��ɡ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/weiaiyongsheng/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/weiaiyongsheng/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/weiaiyongsheng/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/weiaiyongsheng/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/weiaiyongsheng/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����Ӱ������һ���మ�����˽��ǵ������ޣ��������������ϲų����������������ǵ��������ˣ���ʵ��������Ѫ����Ҫ�ɿ����ȶ���ѪԴ����ά����������������������У������Ѿ�ѧ���˺ܶ���������淽ʽ����Ҳ���ɱ������Լ��Ķ����Ա��ܡ�ֱ����һ�����޵����ó��֣�����һ�ж���ʼ�����ı䡣�ǵ�����ķ��ϣ����˹�� Tom Hiddleston �Σ������ޣ��ٶ��˹�Ķ� Tilda Swinton �Σ���һ��Я�ֹ�ͬ��Խ��������ʱ�����Ѫ�����ˣ����й��ߵ��ִ������˾����������������ȴ�����䣬Ŀǰ�־ӵ����ɺ�̹�������ء��ǵ���һ�����������ˣ�����������ֲб������࣬�����ǳ�������ʬ�����������������������޷��԰�',N'�¹�/����/Ӣ��/����/����·˹',N'����/����/���',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-614668-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895003&amp;k=b2329ea01f82d90df6336deef09e2d94&amp;t=1412261751&amp;sid=d037Qlt31vd%2BlgqX%2BnpUmX7rpI4jVUrV%2B3twrMpTJXQR%2FQQ',N'2014/10/2 22:57:29',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 445,N'����14����Ʊ�����ɾ�㤴�Ƭ��������3����HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/bixian/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/bixian/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/bixian/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������3/����III<br />
Ƭ��������Bunshinsaba 3<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ���𡡾��/����/�ֲ�<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��0.99 GB<br />
Ƭ��������102 Min<br />
�������ݡ������� Byeong-ki Ahn<br />
�������ݡ���һ�� Yiyan Jiang ....����<br />
���������������� Junyan Jiao ....����<br />
�������������ӽ� ZiJian Dong ....�Ӽ�<br />
���������������� Longhua Wang ....����ҽ��<br />
�����������찺 Ang Xu ....������ʦ<br />
���������������� Zixuan Zhao<br />
�������������� Yi Rong</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����������Ժ��������Ϊ�����Լ���Ů��С����ҽԺ�ӳ����ص���������ļ��������Ů��һͬ���үү����������С����;��������ȥ��������ĸŮ���үү���µ���լ��ȴ������һ׮׮�ֲ��¼����ھ���Ҳ������������<br />
<br />
�����ɽ�һ�����ݵ����Ȼ�����ҽԺ����ʱ�������ǵ������Լ�����һ������С����Ů����Ϊȥ����Ů��������ҽԺ�ӳ����ص���������ļ�����Ҫ���Ů��һͬ���үү����������С����·;����������ȥ��������ĸŮ�����үү���µ���լ��ÿ��������������СŮ�������͵����ٵ�������¥�������һ���������˵�СŮ���Ļ���������һ�пֲ���Դ����������������뷨���������������ȴ������һϵ�и��ֲ����¼�����<br />
<br />
������������סԺ���Ƶ����ȣ���һ�� �Σ���ʧ�˲��ּ��䣬����Ȼû�н�飬ȴ������һ����̥ʮ�����µ�Ů��С�������� �Σ������ȵĻָ�������ã�ֻ����Ϊҽѧ̩����үү�춫���ܹ�ǩ�־Ϳ��Գ�Ժ�����������������Ҳ�޷����ܶ�Ů����˼����뷽�跨��ҽԺ���˳�ȥ���ص����С�Ȼ�����̿ڿ�����˵����δ�������ӣ�����ȴĿ��үү�����̴���Ů���������ߵ�һĻ��˭֪;�������������س�������λ���˵���������С�������������������Ը������Ů�������Ҽ̳���үү���µķ��������<br />
<br />
����������С������Զ����������ı���������ֵ�ʱ�Ⲣδ����̫�ã�����Ԥ�ϵĿֲ���ϯ���������<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
��������3���ٶȹ�����Ͷ����ǰ������1500��2000��������3000��<br />
<br />
��������һ��������Ϸ��ͨ��������һ�ֳ�֮Ϊ���ɵ����ｻ������ʵ���ϣ����ɿ��й��֮˵��������Ϊ���أ��������Ƕ��кù�������ı��ԣ�����Ĺ���������һ�˻�ʹ������ȥ�ƶ���ĳ���ط����ﵽĳ��Ŀ�ġ�<br />
<br />
��2014��5��5�գ�������3���ٷ�΢�������ԡ�������������Ϊ�ɽ�������Ӫ�����ġ����ɾ���3�����Ϸ�ͥ��2014��7��1�գ������е������м�����Ժ���С�����3��Ƭ��ʤ�ߣ��о������ɾ���3��Ƭ����Ǯ50��Ԫ֮�࣬��ý���Ϲ�����Ǹ���òþ�һ������ζ�ų�������ġ���ٱ��ɡ�֮���ԡ������ɡ�ϵ�С���ʤ���ա�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/bixian/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/bixian/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/bixian/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/bixian/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/bixian/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��������Ժ��������Ϊ�����Լ���Ů��С����ҽԺ�ӳ����ص���������ļ��������Ů��һͬ���үү����������С����;��������ȥ��������ĸŮ���үү���µ���լ��ȴ������һ׮׮�ֲ��¼����ھ���Ҳ�������������ɽ�һ�����ݵ����Ȼ�����ҽԺ����ʱ�������ǵ������Լ�����һ������С����Ů����Ϊȥ����Ů��������ҽԺ�ӳ����ص���������ļ�����Ҫ���Ů��һͬ���үү����������С����·;����������ȥ��������ĸŮ�����үү���µ���լ��ÿ��������������СŮ�������͵����ٵ�������¥�������һ���������˵�СŮ���Ļ���������һ�пֲ���Դ����������������뷨���������������ȴ������һϵ�и��ֲ����¼�������������סԺ���Ƶ�����',N'�й�',N'���/����/�ֲ�',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-615188-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896264&amp;k=13c7608b2d6cbc915c7bbc81cafc5cc1&amp;t=1412261750&amp;sid=5a99%2ByhJc1q%2FZ8ugPc7R%2Fl5RPhEm5KEQWWFo4yktNrzARVY',N'2014/10/2 22:57:29',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 446,N'��14��ǿ����Ʊ�����ơ�����˹������BluRay-720P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������˹��/�缪��(̨)<br />
Ƭ��������Godzilla<br />
�ꡡ������2014<br />
�������ҡ�����/�ձ�<br />
�ࡡ���𡡶���/�ƻ�/ð��/���<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.9/10 from 153,392 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt0831387" target="_blank">http://www.imdb.com/title/tt0831387</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.69 GB<br />
Ƭ��������123 Min<br />
�������ݡ�����˹�����»�˹ Gareth Edwards<br />
�������ݡ����ס�̩��-Լ��ѷ Aaron Taylor-Johnson ....���ء����޵� Ford<br />
��������������ɯ�ס��¶�ɭ Elizabeth Olsen ....���������޵� Elle Brody<br />
�����������ɱ�ǫ Ken Watanabe ....������� Daisuke Serizawa<br />
����������������������˹�� Bryan Cranston ....�ǡ����޵� Joe Brody<br />
��������������Ҷ����ŵʲ Juliette Binoche ....Ford''s Mother / Stepmother<br />
����������������˹������� David Strathairn<br />
����������ɯ�򡤻���˹ Sally Hawkins<br />
����������ά�˶ࡤ������ Victor Rasuk ....Tre Morales<br />
����������C.J���ǵ�˹ C.J. Adams ....Ford''s Stepbrother<br />
�������������¡���˹ Richard T. Jones<br />
��������������������˽�ɭ Brian Markinson ....Whalen<br />
����������������˹������ Al Sapienza ....Huddleston</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬΧ��һλ������������չ���������˳�˯�ĹŴ����͹��ޱ��������⻽�ѣ�������Ĺ���չ�ֳ�ǿ����ƻ����������Ĵ���Ҳ�������硣ӰƬͬʱǿ����ԭ�ӵ������������ֱ��Ӱ�졣<br />
<br />
����ӵ���Ҹ���������Ĵ�����¡����޵ϣ����ס�̩��-Լ��ѷ Aaron Taylor-Johnson �Σ�������������һ����֮��ȥ����Ӱ��15��ǰ�����͸���������������������˹�� Bryan Cranston �Σ���ĸ��ɣ����������Ҷ����ŵʲ Juliette Binoche �Σ��������ձ�����ĸ��ְ��һ�����ͺ˵�վ�����ڸ������յ��죬һ��ͻ�����������Ѵݻ��˺˵�վ������ĸ����������ɥ�������ɲ���������������࣬�Է�ֹ�˷������������˸õ�������������ȴ��������״���쵽����֮����ʮ��������һֱ��ͼ�ҿ����������֮�գ����ڷ�����һ�ж�����һֻ��ɽһ��޴�Ĺ���������<br />
<br />
�������޸�˹���ӳ�˯�����ѣ���������Ԥ�������ϯ���������<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
����Ϊ�˴����˹�����Ͱ��������κ�ս�����������Ŷ�7�������飬շת6�����У��Ⱥ������98��������960����Ч��ͷ�����˽⣬������Ч�ŶӵĹ�����Ա���762λ������˹����Ƭ�����������ϸ���������ͻ���6���µ�ʱ�䡣�������1̨�������Ⱦ��˹������Ҫ445�ꣻ��ô��Чʦ����Ҫ��16����(1570��)�Ϳ�ʼ�����ˡ�Ϊ�˴���������Ч����Чʦ�������ܹ��ʴ�100000�ߡ���3.7�ס���5.5�׵�������Ŵ��˹�����������ֳ�¼�¡���ʵ���硱�ı�������<br />
<br />
�������ݰ��»�˹��Ϊ����˹��������Ϯ֮����һ�����������С�����˹��Ϯ���¼���ȫ�����½����������Ӱ�еĳ��������ձ������ɱ��������ġ������������Լ��ɽ�ɽ�ȶ�����Һ͵�����ֵ��һ�������ӰƬ��β��ʷʫ֮ս�У��ɽ�ɽ�б��ٻ��Ľ�����80��������Ч�ŶӶ�ǶȲ�׽�ľɽ�ɽ����ߵ�����Ƕȴﵽ��360�ȣ������Щ�زı��ڽ�ӰƬʷʫ�Խ�β��3D���б����С�<br />
<br />
�����°桶��˹�����ɴ������硶������ʦ����һ�š��ϰס�������������˹�١��������������ס�̩��-Լ��ѷ����˫����ɯ������ɯ�ס��¶�ɭ�������ݣ�����Ů������Ҷ����ŵʲ���ձ����Ƕɱ�ǫ�ȴ�ǿ�Ƽ��ˡ�<br />
<br />
������Ƭ���ɴ���Ӱҵ�ͻ����ֵܵ�Ӱ��˾���������ģ�ӵ��1.6����Ԫ�ĸ�Ԥ�㣬����75%���Դ���Ӱҵ��ʣ�µ��ɻ��ɳе������ǻ�����1959��ġ�������ޡ����ĵĵ�һ����˹��ϵ�е���Ʒ����2004�꡶��˹��������ս���������������Ŷ��ڸ�˹��רӪȨ��ʮ�������ף���ձ�����Ӱҵ������δ��ʮ�꽫���������κ����˹���йصĵ�Ӱ������֮�����ˮ����̨�ͺܶ�ר��Ϊ���㽨���ˮ�в�������1998���������˸�˹��ϵ�е����ǵ�Ӱ��˾ԭ����Ȩ����һ����������������2003�꣬���Ȩ��Ҳ�����ˡ�2004�ִ꣬����1971�꡶��˹����ս�ն������İ�Ұ��������ɶ�����Ȩ����������һ����˹��ϵ�е�3D IMAX��Ƭ���ᷭ��1971��Ĺ��¡�2005�꣬������Ӱʦ�˵�-����ɭ������Ŷ�����Ӱ����Ч�ܼ��������Ƭ�ˡ������������Ƭ�˲�����-�޽�˹Ҳ��ǩ����顣ͨ����������Ҳ�����Ƚ���3D���������������С�ͬһ�꣬��Ƭ������˶���Ӱҵ������Э�̣���ԭ�ȵĶ�Ƭ��չ���˿�����ӰԺ��ӳ��3D��Ƭ�����������ڲ������⣬������Ŀ���ƽ�������������Ƭ����<br />
<br />
����2010�꣬��Ƭ�������˵�һ���籾������-������˵������˹��������ӡ�����Ǿ��͹��ޣ����ǽ��и����ƻ����������˷ܵ��������������ִ�����Ľ��ܹ�ϵ��������֮���������α����о籾�ĸıֱ࣬��2013�꣬������-�������أ���������Ф��˵ľ��꡷�����뵽���Ĵ������������ؽ���˹������Ϊ����Ȼ�Ŀ�����������ӰƬ������һ���ǳ�������עĿ�ľ����ˡ�����˹��Ҳ��������һ����Ȼ��ͬ�ĵ��������У�����ֻ����ԭ���еĺ����顣����֮�⣬����Ϊ�����ϵע����������������ϵ�����粼�޵Ϸ򸾵���������<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
������˹������Ӱʷ�������Ĺ�������֮һ��Ҳ���ձ�ս�������Ļ��ı�־�Է���֮һ�������ձ���ŷ������������ƷӰ����Զ��<br />
<br />
��ӰƬ������1954����ձ�������Ӱ����˹�����ı������<br />
<br />
����ֹ��2004�꣬�ձ�������˾�������28������˹������Ӱ��<br />
<br />
���°桶��˹������ƾ��ͳɱ���Ƭ��Ů�������ޡ�ո¶ͷ�ǵ�Ӣ�����ݼ���˹�����»�˹ִ���������������ˡ���Ӱʦ����˹�����˼�ά�ƾ����Ⱥ������α���޸Ĺ��籾������ŵ�������ñ�������S����Ү��<br />
<br />
���°桶��˹�����������ϰ桶��˹���������������ǿ�����ȫ�¹��¡�ӰƬ������1954����ձ�������Ӱ����˹�����ı�����������ѳ����Ļ�ԭ�Ͻ�����3D�������������������侳֮�С�<br />
<br />
�����ڡ���˹������һ������·Ƭ����˵�������ݰ��»�˹�����������ڽ���������һ�����������С�����Ӱ�еĳ��������ձ������ɱ��������ġ������������Լ��ɽ�ɽ�ȶ�����Һ͵������������95����<br />
<br />
����Ӱ��ʱ���ϵĿ��Ҳ�ܴ󣬹��½���1954�꣨�¼�����Դ����1999�꣨�¼���������2014�꣨�ٴη�����������ʱ�����չ�����¡�<br />
<br />
��������������˹�ٺ����ס�̩��-Լ��ѷ������һ�Ը��ӣ��������ļ�ͥ��ϵҲ��ӰƬ���ص�֮һ��̸�������˵ĺ��������״����ϰ׷ǳ�רҵ���ҳ�������������ʱ���ܹ��׳��ܶ��Լ����µ��ӡ�<br />
<br />
��������������˹�ٱ��ϣ��Լ��������籾��ܶཨ�飬���ܵ�������Ƿ���ɡ�һ����д��һ���������������ӵ�����Ҷ����ŵʲ�Ĵ�Ϸ�ύ���������û�����ã��ϰ�ȴת��˵����������ʵ����һ���𣿡�<br />
<br />
�����ס�̩��-Լ��ѷ��Ƭ������һ��������ʿ��Ϊ����Ŭ�����о���ѵ���������Ρ�Ƭ������һ��������ʿ���ѿ���Ա�ǵı��֣� ��Ҳ���μӹ�����ӥ׹�䡷�ȵ�Ӱ������������˵�����ľ����������úܰ���<br />
<br />
����˹���ĺ�������Դ��Ƥ���׸�Ū�������٣���Ȼ�к��ڱ������������Ӱҵ�ܲ������͵��ݰ��»��Ƚ��ܲɷ�ʱ��ȷ������һ�㡣<br />
<br />
��Ƭ��¼����ʱ�����˸�4�׿�Լһ�����ܹ���10���ߵľ��ް��������С�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬΧ��һλ������������չ���������˳�˯�ĹŴ����͹��ޱ��������⻽�ѣ�������Ĺ���չ�ֳ�ǿ����ƻ����������Ĵ���Ҳ�������硣ӰƬͬʱǿ����ԭ�ӵ������������ֱ��Ӱ�졣ӵ���Ҹ���������Ĵ�����¡����޵ϣ����ס�̩��-Լ��ѷ Aaron Taylor-Johnson �Σ�������������һ����֮��ȥ����Ӱ��15��ǰ�����͸���������������������˹�� Bryan Cranston �Σ���ĸ��ɣ����������Ҷ����ŵʲ Juliette Binoche �Σ��������ձ�����ĸ��ְ��һ�����ͺ˵�վ�����ڸ������յ��죬һ��ͻ�����������Ѵݻ��˺˵�վ������ĸ����������ɥ�������ɲ���������������࣬�Է�ֹ�˷������',N'����/�ձ�',N'����/�ƻ�/ð��/���',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-615799-1-2.html',N'http://www.lwgod.com/attachment.php?aid=898242&amp;k=6f1c938a11f6bef3b7045abcdbc78aba&amp;t=1412261751&amp;sid=43fdOFfS1Q1GmmASYj6TeLaL0RDC1TVF2PXMsHII8ADmbcs',N'2014/10/2 22:57:29',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 447,N'�����Ī��ε14�����ڴ��������ߴ�ʦ����HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/cuimiandashi/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/cuimiandashi/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/cuimiandashi/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ߴ�ʦ/���ߵ���֮��ҹδ��<br />
Ƭ��������The Great Hypnotist<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ���𡡾���/����/���<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�������֡�6.9/10 from 141 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3720058" target="_blank">http://www.imdb.com/title/tt3720058</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��0.99 GB<br />
Ƭ��������102 Min<br />
�������ݡ������� Zhengdao Chen<br />
�������ݡ���� Zheng Xu ....������ <br />
����������Ī��ε Karen Mok ....��С��<br />
�������������� Zhong Lv ....������<br />
������������ҫ�� Yaoqing Wang ....������<br />
�������������� Jing Hu ....����<br />
�������������� Yue Guan ....����<br />
������������� Kai Di Yang ....Amy<br />
������������� Fangcong Li ....��С������<br />
����������������ͮ Jiayutong Jiang ....һ��������<br />
�������������� Ming Dai ....�츸<br />
�����������δ� Ci Song ....��ĸ</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����֪����������ʦ��������ֵ��ҵ����ˮ��֮ʱ���������ֵ�Ů������С��������ҽ���Ͳ��˵Ľ�����û����������ô�򵥣����������������С���������������ԡ����������սҿ���С������ʵ��ݣ��Լ�Ҳ�򰮶��õ����ꡣ<br />
<br />
������������������ʦ����������� �Σ��ó��������ƣ����ҵ�����������ĸ���������ȴ������ְҵ��������ֵİ������Ǿ��Ƕ�ʦ�����ڣ����� �Σ��Ƽ�������Ů������С����Ī��ε �Σ���һ�����ϣ�Ů����Amy����� �Σ�����������С�����������Ů�����ƺ�һֱ����̫��ϣ��Դ�ҽ��̬��ǿӲ�����Ҽ����Լ����г���Ȼ������������������û��˵�����࣬���ǿ�ʼ�˴����Ʒ������벻��������С�������ƿ��˾��棬�������Ȼ�����������ӣ����� �Σ��Լ���������ڡ����ҫ�� �Σ��йأ���С�������������ʲô�������ƺ�������һ����ƺõ��������<br />
<br />
������Ƭ�ǳ����������ԡ�101����顷֮���һ����������῵����˱�Ƭ���Ƽ����ݡ�<br />
<br />
���������ó������Ʒ���֪����������ʦ����������� �Σ���ֵ��ҵ����ˮ��֮ʱ���������ƹ��Ĳ���ȫ��Ȭ����Ժ����Ҳʹ�����������ı�����ֱ�������Դ󡣾����Լ���ѧ���ڿ����϶������۵����ɣ������������Ļػ���ȥ����Щ�����������Ĵ�ѧ��ʦ�����ڿ��������������һ�ν��κ󣬷������ܵ���ѧ�������������������һλ����Ĳ�����С����Ī��ε �Σ���������������������������λ���˵�ʮ�ֹ��죬������������ҽʦû��һ���ܹ��������Ĳ��飬��С��������ʵ�ѱ���Ҷ�����λػ�����ʦ�������ڿ�����˵���������ˣ������������������˼������Ȥ�������Դ����Ϊû���β��õĲ��ˡ�<br />
<br />
��������С��������������������ʱ��������������λ����ȷʵ��ͬ��������˵���йŹ֡���С�������Լ��ܹ������Ѿ���ȥ���ˣ�����Ѱ�����İ��������ǰû���������£�������������ΪȻ������С�������Լ�������û�������������������Ķ�����ʵ���ڵġ�����������С��һ��&quot;����&quot;���󣬾������ô����Ʒ��������ơ�������С���ɹ��������״̬����������Ҫ�ҳ���С����������Ӱ���ڣ�ȴ�������Լ���������һ�����µ����塣�ⳡҽ���Ͳ��˵Ľ����ƺ�û���������������ô�򵥣����������������С���������������ԡ���ʲô����С�������������ͯ��ʹ��Ļ��䣿������ָ����Ȼ�ɼ��Ľ�ۣ�һ�о������ߴ�ʦ�����վ֡���<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
��������ʮ��ǰ�ɳ�����ִ���ġ�լ�䡷������̨�崴��1800���Ʊ���Ѽ�������ڽ��ܼ��߲ɷ�ʱҲ��ʾ�������ߴ�ʦ��������ĵĵ�Ӱ��ʵ���ǳ������Ĳˡ�������Ҳ��ʾ�������Լ���Ӱ10�����ʱ�̣��ع�һ���Լ��Ӱ��������Ʒ�����������������ù��ڼ�֤���Լ���10�����ĳɳ�����<br />
<br />
������������ʾ������ʵ�Ҿ��ã���ֹ���ξ����磬��Ӱ�е���������������ʵ������һשһ��һ��С��ϸ�ڹ��������ģ����������������͵��������ú�ϸ�¡��������ÿһ��ذ����·��ǽ��ÿһ�Ż��İڷţ����ϵ�ÿһ�����ߣ�����ͨ������ϸ��ȥ��Ӧ������һ�ε�Ӱ֮��һ����һ�����������<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
������ʱ����Ὼ�Ī��εÿ�������һ��̨�ʣ����Ƴ��ϾͿ�����ȫ��ҹϷ���������Ҳ��٩������������Ī��ε���ȹ���һҹ��һҹ����<br />
<br />
��ӰƬ�����ɳ�����ԭ�����������������ҵ����������������˹�ͬ׫д����д7����γ����վ籾��ֻ�Ǳ������Կ�����̬�����籾�ĸ�����ΰ�û�뵽��ῲ�����Ӧ���ݣ����һ���Ȼ�����˼��ơ�<br />
<br />
�����͸¶��ˮ��Ϸ���ⲿӰƬ������ս����������ǰ������Ӿ�˶�Ա�պ���̣��պ罨����ῴ��ǼУ�������ȴ�Ժ����޷�����ܾ�����῵����飬������������ĵ����ӽ�ˮ�ˡ�������Գ�����<br />
<br />
�����ݳ��������ܣ���Ӱ�еĴ���������ʵ������һשһ�ߵ�ϸ�ڹ��������ģ����������͵��������ú�ϸ�¡�������ĵذ����·��ǽ�ϻ��İڷţ����ϵĵ��ߵ�ϸ��ȥ��Ӧ��Ӱ��һ����һ���������<br />
<br />
�������ߴ�ʦ���ĳ������࣬��Ҫ�������Ǽ临�������������������С������СС�Ŀռ�������˳���1000������߼�ϸ�ڵ���ơ�<br />
<br />
��Ϊ���������ϵ��ת����Ա�����ֳ���λ�ġ�·��ͼ����Ϊ��֤������ϵ���ܣ���¼���ʵ�λ�ã����ӵ�ת�򣬳��Ǻ͵���ʦ������������գ������뾵����ֳ��������ӱ�ض���Ӧ���鷢��ʱ�䡣<br />
<br />
�����ݽ���˵��Ƭ�еĵ���ɳ©�Ƕ�ʱ��İ�ʾ�������İ칫������Ȩ�������غ�ѹ�֣����������İ칫�þ�(��ߡ����ŵ�)����һ���Բ�Σ�յ�״̬��ŷ���������������޷�������������״̬�������ظС�<br />
<br />
��Ī��ε������׹��һ��ʼ�ǵ�����״����������˵���������<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/cuimiandashi/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/cuimiandashi/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/cuimiandashi/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/cuimiandashi/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/cuimiandashi/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��֪����������ʦ��������ֵ��ҵ����ˮ��֮ʱ���������ֵ�Ů������С��������ҽ���Ͳ��˵Ľ�����û����������ô�򵥣����������������С���������������ԡ����������սҿ���С������ʵ��ݣ��Լ�Ҳ�򰮶��õ����ꡣ��������������ʦ����������� �Σ��ó��������ƣ����ҵ�����������ĸ���������ȴ������ְҵ��������ֵİ������Ǿ��Ƕ�ʦ�����ڣ����� �Σ��Ƽ�������Ů������С����Ī��ε �Σ���һ�����ϣ�Ů����Amy����� �Σ�����������С�����������Ů�����ƺ�һֱ����̫��ϣ��Դ�ҽ��̬��ǿӲ�����Ҽ����Լ����г���Ȼ������������������û��˵�����࣬���ǿ�ʼ�˴����Ʒ������벻��������С�������ƿ��˾��棬�������',N'�й�',N'����/����/���',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-614663-1-2.html',N'http://www.lwgod.com/attachment.php?aid=894997&amp;k=06a831bbc4c78633756ce6061f8655df&amp;t=1412261752&amp;sid=bdcdGZtiVIltfZlUP%2BKO8Xq5RsIG3t7A%2F8Zvo4pV65uVFZ0',N'2014/10/2 22:57:29',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 448,N'����ء���ѱ������1+��Ƭ+����ƪ����BluRay-720P.MKV�������',N'<font color="blue"><font size="5">ԭ�̸�������ѹ�ƣ�Ч���ȼ���ǰ�汾��̫�࣡<br />
���������ղأ������ڰ�����������ƪ��һ����Ƭ<br />
�ֱ��ǡ�ѱ�����ֶ�Ƭ����������˵��<br />
��ѱ�����ַ���ƪ����������͡�ѱ�����ַ���ƪ��ѱ�����䡷</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/xunlonggaoshou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/xunlonggaoshou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/xunlonggaoshou/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������ѱ������/ѱ����/ѱ��<br />
Ƭ��������How To Train Your Dragon<br />
�ꡡ������2010<br />
�������ҡ�����<br />
�ࡡ�������/��ͥ/ð��/ϲ��/����<br />
����ԡ�<font color="red"><font size="3">Ӣ��/��½����/̨�����/����������</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�<font color="red">8.2/10 from 320,224 users&nbsp;&nbsp;Top 250 #152</font><br />
�������ӡ�<a href="http://www.imdb.com/title/tt0892769" target="_blank">http://www.imdb.com/title/tt0892769</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��4.65 GB<br />
Ƭ��������98 Min<br />
�������ݡ��϶����²���˹ Dean DeBlois<br />
��������������˹��ɣ��˹ Chris Sanders<br />
�������ݡ���������³�ж� Jay Baruchel&nbsp;&nbsp;....Hiccup (voice)<br />
���������������¡������� Gerard Butler&nbsp;&nbsp;....Stoick (voice)<br />
���������������򿨡������� America Ferrera&nbsp;&nbsp;....Astrid (voice)<br />
�������������׸񡤷Ѹ�ɭ Craig Ferguson&nbsp;&nbsp;....Gobber (voice)<br />
�������������ɡ�ϣ�� Jonah Hill&nbsp;&nbsp;....Snotlout (voice)<br />
��������������˹�з�÷��-����ɪ Christopher Mintz-Plasse&nbsp;&nbsp;....Fishlegs (voice)<br />
��������������˹͡��Τ�� Kristen Wiig&nbsp;&nbsp;....Ruffnut (voice)<br />
����������T��J������ T.J. Miller&nbsp;&nbsp;....Tuffnut (voice)<br />
����������Kieron Elliott&nbsp;&nbsp;....Viking (uncredited)<br />
����������Robin Atkin Downes&nbsp;&nbsp;....Ack<br />
����������Philip McGrade&nbsp;&nbsp;....Starkard (voice)<br />
������������ʲ����ղɭ Ashley Jensen&nbsp;&nbsp;....Phlegma the Fierce (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ά������С����ס�ڲ��˵�������Կ������ǳ��¡�Ϊ��֤���Լ���С���ú���������һ��μ�����ѵ��Ӫ�����ǵ�������һֻ���˵���������������ȫ�ı䣬��ԭ����С����֤���Լ��Ļ��ᣬȴ��Ϊ�ı����������δ���Ļ��ᡣ<br />
<br />
����ά������������С���ã���������³�ж� Jay Baruchel �������ǲ���ͳ��ΰ���˹����ˣ������¡������� Gerard Butler �������Ķ��ӣ����ǳ������Լ��ĸ���һ����������������Щ�����ǵ���ά���˷�����Ⱥ����Ҫ��С�������ÿ�γ����ڲ���������ս���ж�ֻ�����ͽ�����ա���һ�ζԿ�������ս���У�ϣ����͵͵��������������һֻ�����صġ�ҹ֮ŭ���������������˷���������������ѱ������ֻ������������������������ϣ���յ������о�������һͬѵ���������ɵ�Ů����˹�����£������򿨡������� America Ferrera �������Ļ��ɡ���˹�����·�����ϣ���յ����ܣ�ȴͬʱ�����������������ɵ������������𺳡����׾�������������������Զ��������˹����˺����˽������࣬˵����ҷ���������ȴƫƫŪ�ɳ�׾�����á�������������һ����������Ѿ�����ǰ����<br />
<br />
<font color="red"><strong><font size="3">һ�仰���ۣ�</font></strong></font><br />
<br />
���������ǳ������������������ڵ����Ǿ��ʵĹ��£�<br />
���������ա�<br />
<br />
�ǳ�Ư�����µ�һ������Ƭ�������൱�����ں���<br />
������֥�Ӹ�̫��ʱ����<br />
<br />
һ���й����ĵ�Ӱ��ӵ�зǳ��������̵ľ籾������Ч����������Ա����Щ�ñ�Ƭ�ǳ�����<br />
������������<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
һ��һ�ȵ��ι���<br />
<br />
�����ι����Ķ������������Ի������ڵ�ϲ�����Ϊ���Ĺǣ����硶����ʷ���ˡ����ߡ�������è�����������������ѵ���������Ƭ����ȥ��ġ���ս�����ˡ������������˽���������������Ⱦ���ƻ����֮�󣬽����ι����Ƴ������ⲿ�ı��Գ�����ѧ��Ʒ�ġ�ѱ���ǡ��������ⲿ����Ƭ������Ե�𣬼��ư��ᡤ��ŵ��˵��������������µļƻ�����һ�����ߺܶ��С˵��Ϊԭ������д������ʱ���ǲο������������Ķ�ͯ��ѧ�����о����ⲿ��ѱ���ǡ���������һ��ͼ���﷢���������ܿ�͸е������м�ǿ��Ӱ�񻯣�������Ӧ�û�е�������Ȥ����Ϊ��ѱ���ǡ������������߸��˹�ȥ���ǳ�����������Щ����������ʵ��������һͷ��û��ս��������������С�������ڿ�������ӰƬһ���֤���ĳɳ������ĳɳ����̣����ǵ�ӰҪ�����ص㡣������ںܻ�ϲ������������ģ���ѱ���ǡ���һ�����͵�ð�չ��£�Ҳ�����ι���һ��Ķ�������������Ǻܿ�Ϳ�ʼ��ԭ����Ǣ̸�����붯���ĳﱸ�׶Ρ���<br />
<br />
�������Ρ�ѱ���ǡ�����һְ�ģ��ǵ϶����²���˹�����˹��ɣ��˹�������������2002��ĵ�˹�ᶯ��Ƭ���Ǽʱ��������������ʶ�������ⲿ����������˹��ɣ��˹˵������ѱ���ǡ���һ����֮�ι�����ȥ����Ʒ��һЩ�������ĵ�Ӱ�������������Ĺ�����ο�����������͵��鼮�͵�Ӱ������ⲿ��Ӱ�����ɫ�����ò���ô��ͨ����Ҳ����˵����Ҳ���е�����ѱ���ǡ���Щ�񡶼��ձȺ��������ߡ�ָ���������������񡶹���ʷ���ˡ������ǰ�������һ��������õ�Ӱ����̬�������ⲿ��ѱ���ǡ�����Ȼϲ��ɫ�ʲ�δ˥�ˣ��籾��Ȼ�кܶ����˴�Ц���ѵ��ŶΣ�ֻ�������������ı������ϱ�ø�����ʵ���ѡ���<br />
<br />
����Ϊʲô���ԡ���ʵ����ΪӰƬ��������׼�أ�������һ�㣬����˹��ɣ��˹˵��������һ���������ả��С���������һ�������Ĺ��£����Ǵ����ڸ����񻰹������������Ĵ���ɫ�ʺ�Ũ���෴����ȴ�Ժ����е������У���������֮�⣬������ѱ���ǡ��Ĺ��¶��Ǻ���ʵ����ʷ��Ϊ�ӽ��ģ����������ڴ�����ʱ��ȷ������ôһ�㣬Ҫ�ù��ھ��ù��º���ʵ�����ĳ����ǹ�������ʵ������е�һ�������������ܹ��ù��ھ��ã����ǵ���ʷ��Ҳ������������ôһ���յ㣬����ܴﵽ���Ч����˵�����ǵ���ͷ���ɹ��ˡ�������ѱ���ǡ���ʱ��������Ա�����˴���������ʱ�ں��������ϣ���������������ǽ������Щ���⣬ÿ�������߽������ҵ�ʱ���Ҷ�����ʶ�����������ڽ�����ʷ���������ö����ķ�ʽ�������ѡ��ƣ������Լ������Լ�����ס�ˡ���<br />
<br />
������Ƭ���ڶ��»��ڼ��ر��������߶κͰ��˻��йصĶ�Ƭ�����������Ƭ�����������ݿ���˹��ɣ��˹˵����һ��ʼ���Ǿ�������һЩ��Ȥ�Ķ�Ƭ�����ô�����ױ�Ƭ����������������˶��»���⼸��Ƭ�Ρ����ǵ������Դ�ڱ��춬�»�ı�ŷԪ�أ��ⲿ��Ӱ��������Ҳ�Ǳ�ŷ�Ĺ��£���Ƭ�и��˶��йص��ز�Ҳ�ܶ࣬���ԾͲ�������������11���͵ġ�ά�����»ᡯ��Ƭ����<br />
<br />
��С��һ��ɳ�<br />
<br />
�����ι��������Ķ�����һ����ɫ���ǣ��Դ�����Ա�����ţ���Ρ�ѱ���ǡ��뵽�˽�������³�ж��������¡������պ͡���Ů���١������򿨡������������ǡ�Ϊ��Ƭ�����Ǻ������������ǽ�������³�ж�����λ���Լ��ô��������Ա��·��˳���ڶಿӰƬ��չ�����䲻�׵�ϲ�繦����ǰ���û������ˡ����䲻������������׶�Ϊ������������������³�ж�˵�����ұ��ⲿ�����������Ľ�ɫҪ��ʮ�꣬������ȴ�����ú����д����������ɫ��ʵ������������ʱ���һ��ͶӰ�����������ĸ��ף��ж��ԣ������������κ�Σ����ʱ�����Ż������ĳɳ������������Ͽ���ѱ���ǡ��������Ǻ����յ�С���ɳ��Ĺ��̣���ʵ��Ҳ�Ǻ������Լ��ĳɳ���������Щ���˶������������Ĺ��£��������ҵĹ����ɡ���<br />
<br />
������Ƭ�ﵱ�ʲ��õ����ǽ�ɫ����Ȼ��������������û�����С���ˣ���������������Ƶ��ι�����������Ѻ������С������Ȼ������ʮ�㣬���������ɫ�Ŀ̻������ݿ���˹��ɣ��˹˵�����ⲿ��Ӱ�����Ĳ���һ��Ӣ������������磬����һ����ͨ����α��������ı䡣ӰƬ�����ٽ����һЩ��������è���ĸ����������è�����ڿ��Ժ����׵ĸ��ܵ�ӰƬ����ֻ��è����γɳ��ģ�ͬ�����ڡ�ѱ���ǡ������Ҳ���������Ǻ�����һ���֤���ĳɳ��������������μ����˴�ҵ��ǻۣ���Ҫ�㹻�ɰ���Ҫ�ù��ھ������У�С���ӿ���Ҳ����ȥ��һ���������񡶹�����è���İ���һ������<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
��ӰƬ�ı��Կ��������ά����ͬ����ͯͼ�顣<br />
<br />
����Ƭ���ݿ���˹��ɣ��˹��2006��ĩ��Ϊ�ڡ����繷���������롶���繷���ļ���Լ���������ز���������뿪��ʿ�ᶯ������������Ͷ�ι�������Ƭ�������ι����ĵ�һ��������Ʒ��<br />
<br />
��ӰƬ����޳����Ľ�ɫ�趨�����������Դ��2002��ġ��Ǽʱ����������ⲿ����Ƭ�ĵ������ǡ�ѱ���ǡ��ĵ��ݿ���˹��ɣ��˹��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/xunlonggaoshou/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/xunlonggaoshou/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/xunlonggaoshou/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/xunlonggaoshou/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/xunlonggaoshou/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ά������С����ס�ڲ��˵�������Կ������ǳ��¡�Ϊ��֤���Լ���С���ú���������һ��μ�����ѵ��Ӫ�����ǵ�������һֻ���˵���������������ȫ�ı䣬��ԭ����С����֤���Լ��Ļ��ᣬȴ��Ϊ�ı����������δ���Ļ��ᡣά������������С���ã���������³�ж� Jay Baruchel �������ǲ���ͳ��ΰ���˹����ˣ������¡������� Gerard Butler �������Ķ��ӣ����ǳ������Լ��ĸ���һ����������������Щ�����ǵ���ά���˷�����Ⱥ����Ҫ��С�������ÿ�γ����ڲ���������ս���ж�ֻ�����ͽ�����ա���һ�ζԿ�������ս���У�ϣ����͵͵��������������һֻ�����صġ�ҹ֮ŭ���������������˷���������������ѱ������ֻ��',N'����',N'���/��ͥ/ð��/ϲ��/����',N'1280 x 720',N'2010',N'http://www.lwgod.com/thread-614955-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895676&amp;k=fa8bf92eea137e73ffc823ee922a56ac&amp;t=1412261751&amp;sid=16acTAPR9APYAQiZe%2FsokyfRURMTI7EHHwEUQIZMo9FcgmY',N'2014/10/2 22:57:29',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 449,N'��������14��᷸�����̰�籩����BluRay-720P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/fantanfengbao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/fantanfengbao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������̰�籩/Z�籩/Z����/��̰�籩2014<br />
Ƭ��������Z Storm<br />
�ꡡ������2014<br />
�������ҡ��й����<br />
�ࡡ���𡡾���/����/����<br />
����ԡ�<font color="red"><font size="3">��������˫����</font></font><br />
�֡���Ļ�����ļ�<br />
�������֡�5.2/10 from 120 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3469440" target="_blank">http://www.imdb.com/title/tt3469440</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.43 GB<br />
Ƭ��������92 Min<br />
�������ݡ��ֵ�» David Lam<br />
�������ݡ������� Louis Koo ....½־��<br />
�����������ּҶ� Ka Tung Lam ....���ı�<br />
�����������¾� Dada Chan ....����Ө<br />
���������������� Michael Wong ....��־��<br />
����������¬���� Hoi-Pang Lo ....�޵���<br />
������������Ӧ�� Felix Lok ....�컳��<br />
���������������� Kwok Cheung Tsang ....��ҫ��<br />
�������������׻� Siu-Fai Cheung ....���ʢ<br />
����������ʢ�� Jun Sheng ....̷����<br />
��������������� Patrick Keung ....����<br />
���������������� Kai Chi Liu ....��ǿ<br />
����������ŷ���� Stephen Au ....����</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������Z�籩����������������̰��Ϊ���⣬�����ɹ��������ε������������Ա������ŷ���ġ������顢����֦��ʢ������ѧά��Я�ֽ��ﷸ��֮�Է������ּҶ�����ľ����Ŷ�������а�������½���ĵȣ������ڹ��������ﷸ֮�䡣<br />
<br />
����ӰƬ���ݸ۵���ʵ�ش�̰�������ı࣬��ICAC����ﷸΪ�����ںˣ���������½־���������� �Σ��쵼��������������ڽӵ��Ի��ı򾯹٣��ּҶ� �Σ���̰��ָ�غ�չ�����飬��һ����˿��������֮�󣬷���һ�������̰�����飬����������ܼ�ʱ��������һ�������Եġ����ڷ籩�����ʹˣ�һ���縺�������ش�ʹ������ǰ�ġ���̰�籩��������Ϯ��<br />
<br />
����һ�գ��۲����˵�Ů��ͻȻ���������������ܲ�������Ҫ�ظ���ҵ�ﰸ����ƾ�˾���ı��ּҶ� �Σ�̰�ۣ���������ִ�д���ϯ��������½־���������� �Σ����Ա���ֵ��飬��׷������У�½־���������鲢���򵥣���Ϊ��Ϊ��˾�Ļ��ı���ִ��ְ��ʱ����ֹû����ֹ�ﰸ������������ְȨ���뷸�<br />
<br />
�����������齥����ͷ��ʱ����Ҫ֤��һ��һ����ɱ�������޵�����¬���� �Σ������������Լ�֤�����ʧȥ����������ı��½־����δ����������������ŮAngel���¾� �Σ��ĳ��֣���������ʦ��־�£������� �Σ��롰�ػ�������ϯ�컳������Ӧ�� �Σ��в��ɸ��˵����ܡ�<br />
<br />
����½־����ν�Ҫ���һ���Ӵ��̰�ۼ��ţ����а��������ݸ߹١����Ӹ߲㡢�̽縻����������ʦ�����ʦ�ȣ��¼���ǣ�浽�������������ƶ��150�ڡ��ػ����𡱡���<br />
<br />
������ҵ�����Ѳ�ƾ�˾���ı��ּҶ� �Σ�������ǰ����������ٱ��ɷ�޶��Ƚ���·������������ϯ��������½־���������� �Σ����������Ƶ����ʻ���Ȼ�������ϼ�޻������ϰ���һ����·������ƽ�����ա���ǰ���ã���������������ۻ�ƽ�̸�֮�Ƶ��޵�����¬���� �Σ�δ������Ƶ�ж��˵ķ�����ֹ����½�Ļ��ɡ����ͬʱ������ѱ��Z�����ڵ�ò��Ȼ����ʦ��־�£������� �Σ����ƶ��¼������У��û�����ŷ�ƶ��ţ����������۸�150�ڵ�ר��ػ�����Ͷ�����С�½���в�����е����Σ�����ͬ���������޵�ʱ��չ��ȫ����顣<br />
<br />
������Ǯ�޴���ջ�֮�£�̰��֮ͽ�������գ�����ϧΪ��ɱ����Ѫ����ɨ�ۻ��Z�籩��������������ѹ�ǳ����ݡ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/fantanfengbao/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/fantanfengbao/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/fantanfengbao/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/fantanfengbao/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/fantanfengbao/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����Z�籩����������������̰��Ϊ���⣬�����ɹ��������ε������������Ա������ŷ���ġ������顢����֦��ʢ������ѧά��Я�ֽ��ﷸ��֮�Է������ּҶ�����ľ����Ŷ�������а�������½���ĵȣ������ڹ��������ﷸ֮�䡣ӰƬ���ݸ۵���ʵ�ش�̰�������ı࣬��ICAC����ﷸΪ�����ںˣ���������½־���������� �Σ��쵼��������������ڽӵ��Ի��ı򾯹٣��ּҶ� �Σ���̰��ָ�غ�չ�����飬��һ����˿��������֮�󣬷���һ�������̰�����飬����������ܼ�ʱ��������һ�������Եġ����ڷ籩�����ʹˣ�һ���縺�������ش�ʹ������ǰ�ġ���̰�籩��������Ϯ��һ�գ��۲����˵�Ů��ͻȻ���������������ܲ�������Ҫ�ظ���ҵ�ﰸ����',N'�й����',N'����/����/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-615798-1-2.html',N'http://www.lwgod.com/attachment.php?aid=898241&amp;k=4031298fafd82bdae3bd706602f50ac8&amp;t=1412261752&amp;sid=3ef7crUbBYqiQkwIXUGcIk1q5eRruehVym22ieEN0AUq8Hc',N'2014/10/2 22:57:29',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 450,N'��14�߷�Ʊ���ƻö������������ߡ���BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/fenqizhe/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/fenqizhe/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�����������ߣ��������/�����ߣ���������(��)/������(̨)<br />
Ƭ��������Divergent<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡶���/�ƻ�/ð��/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.2/10 from 82,236 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1840309" target="_blank">http://www.imdb.com/title/tt1840309</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.36 GB<br />
Ƭ��������139 Min<br />
�������ݡ���������� Neil Burger<br />
�������ݡ�л�ա������ Shailene Woodley ....Beatrice ''Tris'' Prior<br />
������������¡�ղķ˹ Theo James ....Four<br />
�������������ء���˿���� Kate Winslet ....Jeanine Matthews<br />
��������������˹������ Miles Teller ....Peter<br />
�������������������������� Ansel Elgort ....Caleb Prior<br />
��������������������ά�� Zoe Kravitz ....Christina<br />
�����������ס�ʷ����ɭ Ray Stevenson ....Marcus Eaton<br />
�������������ᡤ����� Tony Goldwy ....Andrew Prior<br />
���������������� Maggie Q ....Tori<br />
������������ʲ�򡤼ֵ� Ashley Judd ....Natalie Prior<br />
�����������ܡ������� Jai Courtney ....Eric<br />
����������÷�桤�ѷ� Mekhi Phifer ....Max<br />
��������������˹�ٰ������ɭ Christian Madsen ....Al</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����δ���������౻��Ϊ�����ϵ�����Ǳ����������Լ���������ϵ������˿ȴ���ȵط������ǡ������ߡ����������κ���ϵ��������������������Ҳ���⵽ɱ������˿�������ֶ�����Σ�Ѳ��⵹а��������<br />
<br />
�������µ�Ů�������б̴�˿�������ڷ����а���µ�֥�Ӹ磬��ʱ������Ѿ����ֳ��������ϵ��ÿ����ϵ���Ǵ�������£�ÿ���˶�������һ����ϵ���������������ϵ�ǣ���ʵ����˽���¸ҡ�ƽ�͡�������ÿ�궼��һ���̶������ڣ�����16����˱�������һ��ѡ������������Ҫ���׸����ɱ𡣶��ڱ̴�˿���������������һ��������������һ���������ˣ��������Լ����ڣ����ȵ�ѡ�񡭡�<br />
<br />
������Ƭ����ά���Ῠ����˹��Veronica Roth��ͬ��С˵�ı࣬���½�������δ����֥�Ӹ磬���Ǳ��ֳ�����ɱ𣬷ֱ��ǣ���ʵ��Candor�����ǻۣ�Erudite������ƽ��Amity������η��Dauntless������˽��Abnegation����ÿһ��������16���ʱ��Ҫѡ��һ���ɱ���룬�����ܿ��顣Ů���ǱȰ�����˹��Beatrice ��Tris�� Prior��������������ѡ��Ȼ��������˲�ͬ����ͬʱ�߱���η����˽���ǻ��������ʣ�����һ���������ߡ�����<br />
<br />
��������δ����֥�Ӹ��Ϊһ�����������ĳ��У���������а��������������ϵ�������й���16���ʱ�����Ƕ�Ҫ����ѡ�񣬾������������Լ�����ʱ���ڵ���ϵ����������ѡ���µ���ϵ�������ϵ�����˲�ͬ�����£��ֱ��ǣ���˽�ɣ�Abnegation������ʵ�ɣ�Candor������η�ɣ�Dauntless�����Ѻ��ɣ�Amity���Ͳ�ѧ�ɣ�Erudite����<br />
<br />
����ÿ���˶�������ϵ�е�һ��������ƥ�䣬��һ����ѡ���뿪�����ڵ���ϵ���Ҳ�������ѡ�����ϵ����ʱ�����ͻ��Ϊ�����ߣ��ȹ�ƶ����ҵ�һ����<br />
<br />
����Ů���Ǳ̴�˿��л�ա������ Shailene Woodley �Σ���С�ܵ��ϸ�ġ���˽���ɼҽ̵Ľ��������ĸ�����һ���ر��ҳϵġ���˽����֧���ߣ���ϣ����ŮҲ����һ�����������𾪵��ǣ��̴�˿���ֵ�ѡ���ˡ���ѧ���ɣ��̴�˿���ѡ���ˡ���η���ɡ�<br />
<br />
���������Ǳ����䵽�Լ�ѡ�����ϵ�����͵����Ե�ѵ�����ġ��̴�˿����Ϊ��˿������ͬ�ɵĳ�ԱҪͨ��һϵ���������صľ�������֤�������ʺ����������ϵ�У��������䵽��������³�����Щ�����˶�����ͨ����ǿ�ȵ����ܺ���������������ϵ��ת�������Ǵ�˿�и����ɸ��˵����ܣ��������һ��й¶�����������ɱ��֮����<br />
<br />
�������ž���ķ�չ��������ܱ�й¶�Ŀ�����Ҳ���Խ��Խ�󣬿������������Ҳ�����ű����׵߸���Σ������������п��ܿ��������������ˣ���Ҳ���Ի�������<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
���ڡ�������Ĵ��У�л�պͰ���������һ�����£����ڸ�Ƭ�У����ǰ������á�<br />
<br />
�����ء���˿�����������ڼ仳��������ˡ���������Ƭ����ʱ��������ܣ������ǵ������������ϣ�������ͷ�У������ļ��С��ļ���ipad��ס��¡��Ķ��ӡ�<br />
<br />
���������Ӱ�еĹ�������ʱ���������˼�Ƭ����Catbird����<br />
<br />
��¬��˹��������ܿˡ���ŵ�������ס����ġ�������˹�����ٸ��������١�˼���ȡ�����ɽ��·��Τ���¬�ˡ�������������������ѡ��<br />
<br />
������˹����������Ծ�����Four�����ɫ��������֪û�еõ��ý�ɫ�������º���Ƭ�˿������ݵġ����õ����ڡ������򶯣�����������FourΪ�е�Eric�����ܾ��ˡ������ͬ�����Peter��<br />
<br />
�������ס�����������Four����ѡ�������ܾ��ˣ���Ϊ�����뱻������������ż��<br />
<br />
��л�պ�����˹�Ǻ����ѣ�������Ĵ�Ϸʱ��л�ղ��ҳ���̫�أ�����˹���ò������е�һ��̸��̸�����������Լ����ָ���Щ��<br />
<br />
��Tris��л�գ���Peter������˹������ʱ��Peter��������������ġ�л�ղ����˺�����˹��������η��η�ŵġ���������Ľ��У����˴��Խ��Խ���ң���һ�������У�л����Ĵ���������˹�Ĳ��ӡ�<br />
<br />
������ǰ��ȫ����Ա�μ��������µ��±�ѵ��Ӫ��<br />
<br />
�����ס����˹���ԭ����Andrew Prior�İ����ߣ�������ǰ���˳��ˡ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/fenqizhe/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/fenqizhe/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/fenqizhe/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/fenqizhe/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/fenqizhe/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��δ���������౻��Ϊ�����ϵ�����Ǳ����������Լ���������ϵ������˿ȴ���ȵط������ǡ������ߡ����������κ���ϵ��������������������Ҳ���⵽ɱ������˿�������ֶ�����Σ�Ѳ��⵹а�����������µ�Ů�������б̴�˿�������ڷ����а���µ�֥�Ӹ磬��ʱ������Ѿ����ֳ��������ϵ��ÿ����ϵ���Ǵ�������£�ÿ���˶�������һ����ϵ���������������ϵ�ǣ���ʵ����˽���¸ҡ�ƽ�͡�������ÿ�궼��һ���̶������ڣ�����16����˱�������һ��ѡ������������Ҫ���׸����ɱ𡣶��ڱ̴�˿���������������һ��������������һ���������ˣ��������Լ����ڣ����ȵ�ѡ�񡭡���Ƭ����ά���Ῠ����˹��Veronica Roth��ͬ��С˵��',N'����',N'����/�ƻ�/ð��/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-613131-1-2.html',N'http://www.lwgod.com/attachment.php?aid=891348&amp;k=5057d42b18ef4b2113f9d93a7cb2df2c&amp;t=1412261756&amp;sid=2bccrljabmOqlQ9WKP5R0PJ17wLl%2F5ATDISbyY9vNdIenyE',N'2014/10/2 22:57:30',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 451,N'�����14�����±�ϼ���ݡ���΢����Ů����HD-1024.MP4�������',N'<font color="blue"><font size="5">������һ�㣬����Ӧ����ɾ���棬����������أ�</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/weijiaoshaonv/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/weijiaoshaonv/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/weijiaoshaonv/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������΢����Ů<br />
Ƭ��������Shall We Chat?<br />
�ꡡ������2014<br />
�������ҡ��й����<br />
�ࡡ���𡡾���<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��828 MB<br />
Ƭ��������83 Min<br />
�������ݡ����ӹ�<br />
�������ݡ��±�ϼ<br />
����������������<br />
����������ε��о<br />
�����������κ���<br />
������������º�<br />
������������ʩǧ<br />
�������������ӽ�<br />
������������־ǿ<br />
��������������<br />
�������������<br />
��������������</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������ʮ��ǰ���������С���ݷ�ӳ��ʱ����δ������Ůʵ����ʱ�����գ�ʱ����Ǩ��2013���δ������Ů�������������䱾�������ɡ��㵰�������������á������ڵġ�Ԯ���á�����Part-time girlfriend���������Ѳ��ǹ�ȥ�ġ�����Ϊ潡�����Ϊ�����ȡ������Ǹ��ӡ��������ء�����û�а�������������ʧ�ء���<br />
<br />
��������1982��������Ӱ�������С��漣���ɡ�����ʱ�⡷��۵�Ӱ��������½������������ӹ�ർ������ˮΧ������ҹ����۵�Ӱ������ѱ�����㻪��硢�������ϲ��ҹ�ѡ�ϵ���齡�ۼ��ƣ����������ί����ò����ʧ��Ů�������ഺ����һ����ʵ���֡�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/weijiaoshaonv/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/weijiaoshaonv/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/weijiaoshaonv/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/weijiaoshaonv/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/weijiaoshaonv/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����ʮ��ǰ���������С���ݷ�ӳ��ʱ����δ������Ůʵ����ʱ�����գ�ʱ����Ǩ��2013���δ������Ů�������������䱾�������ɡ��㵰�������������á������ڵġ�Ԯ���á�����Part-time girlfriend���������Ѳ��ǹ�ȥ�ġ�����Ϊ潡�����Ϊ�����ȡ������Ǹ��ӡ��������ء�����û�а�������������ʧ�ء�������1982��������Ӱ�������С��漣���ɡ�����ʱ�⡷��۵�Ӱ��������½������������ӹ�ർ������ˮΧ������ҹ����۵�Ӱ������ѱ�����㻪��硢�������ϲ��ҹ�ѡ�ϵ���齡�ۼ��ƣ����������ί����ò����ʧ��Ů�������ഺ����һ����ʵ���֡�ӰƬ',N'�й����',N'����',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-614953-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895675&amp;k=4c226031e3d661bbca0886a40e80521c&amp;t=1412261752&amp;sid=674aHGAExJjEGwf2zaesuI5E4gMfRoVPItQDcg%2FO62p%2B%2BcA',N'2014/10/2 22:57:30',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 452,N'�������ڴ����ơ��������ӳ�1+2����BluRay-1080P.MKV����˫�',N'<font color="blue"><font size="5">����1080p�ڶ�����</font></font><br />
<br />
<br />
<br />
<font color="red"><font size="6">�����ӳ�1</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/04.12/meiguoduizhang1/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/04.12/meiguoduizhang1/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�����������ӳ�/�����ӳ����������ȷ�(��)/�������ȷ�<br />
Ƭ��������Captain America The First Avenger<br />
�ꡡ������2011<br />
�������ҡ�����<br />
�ࡡ���𡡶���/�ƻ�/ð��<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.8/10 from 287,283 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt0458339" target="_blank">http://www.imdb.com/title/tt0458339</a><br />
�ļ���ʽ��x264 + 5.1 DTS @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1920 x 1080</font></font><br />
�ļ���С��8.03 GB<br />
Ƭ��������124 Mins<br />
�������ݡ��ǡ�ׯ˹�� Joe Johnston<br />
�������ݡ�����˹������˹ Chris Evans&nbsp;&nbsp;....Captain America / Steve Rogers<br />
�������������򡤰���ά�� Hayley Atwell&nbsp;&nbsp;....Peggy Carter<br />
���������������ά�� Hugo Weaving&nbsp;&nbsp;....Johann Schmidt / Red Skull<br />
��������������˹�ٰ���˹̹ Sebastian Stan&nbsp;&nbsp;....James Buchanan ''Bucky'' Barnes<br />
�������������ס����˹ Tommy Lee Jones&nbsp;&nbsp;....Colonel Chester Phillips<br />
����������������ˡ����� Dominic Cooper&nbsp;&nbsp;....Howard Stark<br />
�������������¡��������� Richard Armitage&nbsp;&nbsp;....Heinz Kruger<br />
����������ʷ̹����ͼ�� Stanley Tucci&nbsp;&nbsp;....Dr. Abraham Erskine<br />
�������������Ѷ����ܿ�ѷ Samuel L. Jackson&nbsp;&nbsp;....Nick Fury<br />
�����������бȡ���˹ Toby Jones&nbsp;&nbsp;....Dr. Arnim Zola<br />
���������������������� Neal McDonough&nbsp;&nbsp;....Timothy ''Dum Dum'' Dugan<br />
��������������ˡ�¬�� Derek Luke&nbsp;&nbsp;....Gabe Jones<br />
��������������˹���� Kenneth Choi&nbsp;&nbsp;....Jim Morita</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������Ƭ�������ı���ɡ��ڶ�սʱ�ڣ���������Ϊ�˶Ը��ɴ�¹����ر����Ƴ�һ����Ϊ������ʿ������Ѫ�塣����Ѫ���ܹ�����ʿ�����������ٶȡ���������־��������������������Ѱ����Ϊ�������ѡʱ��һλ����˹�ٷҵ���������Ȼ��־Ͷ����ӣ���ϧȴ������������������ܾ����顣����������˵˹�ٷҲμӡ�����ʿ������ʵ��ƻ�����Ȼ֪������ʵ��ǳ�Σ�գ�������Ψһ�ܹ�Ϊ����Ч���Ļ��ᣬ���˹�ٷҾ��Ľ��ܳ�Ϊ��ƻ���ʵ��Ʒ��ʵ��Ч���ǳ����룬˹�ٷ���һλ�������������˱���˻��������ĳ���ʿ����������ʵ��ɹ��󲻾ã�һ�к�ʵ���йص��˺����϶���һ���ɴ�¹��ļ�����ݻ٣�ֻ��˹�ٷ��ӳ����죬���ԡ�����ʿ�����ƻ��Ժ�Ҳ������ʵ�С���������������ʽΪ˹�ٷ���λΨһ�ĳ���ʿ������ΪCaptain America�������ӳ�����˹�ٷҾʹ˿�ʼ�����ƳͶ�����̡�<br />
<br />
����˹�ٷ��޽�˹�ǳ����ھ��ô�����ʱ�ڵ�һ���Ҿ�ƶ���Ĵ������ꡣ��Ϊ�����ɴ���ŷ����Ű���Ե����Ŷ�������ξ�������Ϊ�����ಡ���ܾ��ˡ������е�֪��˹�ٷ��޽�˹����Ը������˹�ء�������˹������������һ�����ᣬ�����μӡ������ƻ����������������ڵĲ��ԣ�˹�ٷ��޽�˹��ע���˳���ʿ����Ѫ�岢����������������������ӵ�����������ӵ�е����������塣�����������������ս���ϵ�ѵ���������º����õ�����Ϊ�������ӳ����ĵ�һ�����񣬴��ż᲻�ɴݵĶ��ƺ�����ս����ͷ�ԣ���Ͷ������а�������Ķ������������ɣ�����Ϊ�˳���Ӣ�����塰�����ߡ����쵼�ߡ�<br />
<br />
�������δ�ս�ڼ䣬˹�ٷ��޽�˹��ξ����������ɴ�¾���������δ��ͨ�����ܼ�飬�������μ��˾���һ������ʵ��ƻ��������ƻ���Rebirth�����μ��߻ᱻ�����Ϊ����սʿ��˹�ٷ򱻸�����Ϊ��Ψһ�ɹ���ʵ��Ʒ���Դ�֮�������졢�ס�����ɫս����Ϊ��Ч������Ϊ�������ӳ���<br />
<br />
����1941�꣬ȫ���綼����ڶ��������ս��ս��һ�����Բ�³���ֵ�����С��˹�ٷң�����˹������˹�Σ�Ҳ��Ҫ�Ӿ�������ȴ��Ϊ�����ಡ�����ܵ������ܾ�����������żȻ��������ܵ����٣��μ�����������һ�����ܼƻ������������С�ӱ��һ������սʿ�������ӳ��������ӳ������Ķ���ղķ˹�Ͷ�˹��ʿ������˹�ٰ���˹̹�Σ��Լ��弧�����򡤰���ά���Σ��ڷ�����˹���������ס����˹�Σ���ָ��֮����а��ľ�ͷ�߾�����ս����ͷ�߾������ɴ⵳��һ�����ؿ�ѧ��֯����������а��ĺ����ã������ά���Σ��� <br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.27/meiguoduizhang/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.27/meiguoduizhang/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />
<br />
<font color="red"><font size="6">�����ӳ�2</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�����������ӳ�2/�����ӳ�2������սʿ/�����ӳ�2���Ắսʿ(̨)/�����ӳ�2������սʿ/�����ӳ�������<br />
Ƭ��������Captain America: The Winter Soldier<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡶���/�ƻ�/ð��<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�<font color="red">8.0/10 from 202,807 users</font><br />
�������ӡ�<a href="http://www.imdb.com/title/tt1843866" target="_blank">http://www.imdb.com/title/tt1843866</a><br />
�ļ���ʽ��x264 + 5.1 DTS @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1920 x 1080</font></font><br />
�ļ���С��8.68 GB<br />
Ƭ��������136 Min<br />
�������ݡ������ᡤ���� Anthony Russo<br />
�����������ǡ����� Joe Russo<br />
�������ݡ�����˹������˹ Chris Evans ....�����ӳ�/ʷ�ٷ��޽�˹<br />
����������˹������Լ��ѷ Scarlett Johansson ....����ɯ������ŵ��/�ڹѸ�<br />
��������������˹�ٰ���˹̹ Sebastian Stan ....���桤�Ͷ�˹/����սʿ<br />
���������������ᡤ�� Anthony Mackie ....��ӥ/ɽķ������ѷ Sam Wilson/The Falcon<br />
�������������Ѷ����ܿ�ѷ Samuel L. Jackson ....��ˡ����� Nick Fury<br />
�����������޲��ء��׵¸� Robert Redford ....����ɽ��Ƥ��˹&nbsp;&nbsp;Alexander Pierce<br />
�����������̡ܱ�ʷĪ��˹ Cobie Smulders ....������-ϣ�� Maria Hill<br />
���������������������� Emily VanCamp ....ɯ�ʡ����� Sharon Carter<br />
�������������򡤰���ά�� Hayley Atwel ....�弪������ Peggy Carter<br />
���������������ˡ������� Frank Grillo ....�����-��ķ��/��� Brock Rumlow/Crossbones<br />
�������������˹������ŵ���� Maximiliano Herna ....����ά���ع� Jasper Sitwell</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������·����ڡ����������ˡ������ʷ�ٷ��Ѷ��ӻ�ʢ�٣�Ŭ����Ӧ�ִ��������Ȼ����һ������Ϯ���¼��˺�����ֵܾ���Ҫ����ʱ�������ӳ��������³������ϺڹѸ�����ǰ����ɱ���Ĵ̿ͣ��ҳ�Ļ�����ס�<br />
<br />
�����ھ����ˡ����������ˡ���ŦԼ��ս�������ӳ�ʷ�ٷ��޽�˹����ڻ�ʢ�ٹ����񵭵����Ŭ�������������ִ���ᡣȻ����һ����ܾ�ͬ������Ϯ����ʷ�ٷ��Ⱦ�����һ����вȫ��Σ����ı������ڹѸ�Я�ֳ�����һ�߷��������Լ���ڵ�ɱ�֣�һ��Ŭ����¶����޴���ı������Ŀ���������˵�а��ƻ�ȫ���ع�������ӳ��ͺڹѸ��õ���һλ��ͬ�ˡ���ӥ����Э����Ȼ������Ҳ�����Լ���Ҫ���ٵģ���ǰ��δ�����������ϵĺڰ����С���������<br />
<br />
��������ϰ�����ִ�����������ӳ�ʷ�ٷ��޽�˹������˹������˹ Chris Evans �Σ�����һ���ж��������ᵽ��ܾ��ڲ�������������������ζ��������֪��ܾ������ܽ��еġ�����ƻ���������Ϊ�˸е���ŭ��ĳ�죬��ܾ�ָ�ӹ����-�������Ѷ����ܿ�ѷ Samuel L. Jackson �Σ��⵽һȺ��װ����Ϯ������ƴ��ȫ����һ֧U�̽��������ӳ����У���������Ÿþֶ�ս��������Ҫ������µ����ܡ��ڴ�֮�������ӳ�������ɱ����˶��⵽ǰ�ֳ�����ɽ��Ƥ��˹���޲��ء��׵¸�/Robert Redford �Σ���ͨ����׷ɱ�����������õ��ڹѸ���˹������Լ��ѷ Scarlett Johansson �Σ��������ϱ�����ӥ���������ᡤ�� Anthony Mackie �Σ��İ�����<br />
<br />
�������Ǳ������ֶ���⿪��ֵܾ����ܣ���ֹ������ƻ�����ʩ�С���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.27/meiguoduizhang/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.27/meiguoduizhang/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����Ƭ�������ı���ɡ��ڶ�սʱ�ڣ���������Ϊ�˶Ը��ɴ�¹����ر����Ƴ�һ����Ϊ������ʿ������Ѫ�塣����Ѫ���ܹ�����ʿ�����������ٶȡ���������־��������������������Ѱ����Ϊ�������ѡʱ��һλ����˹�ٷҵ���������Ȼ��־Ͷ����ӣ���ϧȴ������������������ܾ����顣����������˵˹�ٷҲμӡ�����ʿ������ʵ��ƻ�����Ȼ֪������ʵ��ǳ�Σ�գ�������Ψһ�ܹ�Ϊ����Ч���Ļ��ᣬ���˹�ٷҾ��Ľ��ܳ�Ϊ��ƻ���ʵ��Ʒ��ʵ��Ч���ǳ����룬˹�ٷ���һλ�������������˱���˻��������ĳ���ʿ����������ʵ��ɹ��󲻾ã�һ�к�ʵ���йص��˺����϶���һ���ɴ�¹��ļ�����ݻ٣�ֻ��˹�ٷ��ӳ����죬���ԡ�����ʿ�����ƻ��Ժ�Ҳ������',N'����',N'����/�ƻ�/ð��',N'1920 x 1080',N'2011',N'http://www.lwgod.com/thread-615702-1-2.html',N'http://www.lwgod.com/attachment.php?aid=898082&amp;k=e03960908c216fd8c260e3098ac79efc&amp;t=1412261753&amp;sid=8440uwxUQu1LkQmmiFcKq5chSNfaBrLbVBvB%2BPwC4uilO2c',N'2014/10/2 22:57:30',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 453,N'����ʿ��14�����ǡ�����ż���Ӱ2����BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/buou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/buou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������ż���Ӱ֮���ͨ��/��ż���Ӱ2/��ż���ռǣ�ȫ��׷��<br />
Ƭ��������Muppets Most Wanted<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ����ϲ��/����/����/ð��<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.7/10 from 10,061 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2281587" target="_blank">http://www.imdb.com/title/tt2281587</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.58 GB<br />
Ƭ��������107 Min<br />
�������ݡ�ղķ˹������ James Bobin<br />
�������ݡ����桤��ά˹ Ricky Gervais ....Dominic<br />
����������̩�������� Ty Burrell ....Jean Pierre Napoleon<br />
�������������ȡ��� Tina Fey ....Nadya<br />
����������˹�ٷ򡤻������� Steve Whitmire ....Kermit/Beaker/Statler/Rizzo/Newsman/Foo-Foo(voice)<br />
��������������˹�и����߶��� Christoph Waltz<br />
������������ķ��ϣ����˹�� Tom Hiddleston ....Great Escapo<br />
����������Ů�񿨿� Lady GaGa<br />
���������������ꡤ��Ү�� Salma Hayek<br />
������������ȡ����� Debby Ryan<br />
����������˹̹����ͼ�� Stanley Tucci<br />
�������������ᡤ���� Danny Trejo<br />
�������������ˡ������Ѱ��ɻ�˹ Zach Galifianakis ....Hobo Joe<br />
�����������ס������� Ray Liotta<br />
������������˹������ Ross Lynch<br />
������������÷���������� Jemaine Clement<br />
����������ϯ�ա����� C��line Dion<br />
������������ţ�ϵ� Sean ''P. Diddy'' Combs</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
���������ܽ����������ս����ż�����ڽ���ŷ��Ѳ�ݣ������˰��֡������׶ص������˷ܵĳ��С����ܿ�һ���Ϳ����ܳ��ü���һģһ����ȴ����һ�ڴ���Ũ�ض������Ӣ������ܴ����˹̹����ҡ��һ�䣬�����Ĵ�������(���桤��ά˹����)�����˲�ż�ţ��������Ŀ������򱻵��ȡ������ݵ������ȼѴ�����Σ��������������⣬��Ħ�Ǽ�ͥ������̩�������������ݹ����̾���������׮��ֵİ�����<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
������ǰһ������ż���Ӱ�������ҵ�Ϳڱ���˫���պ󣬵�ʿ�ṫ˾���뵼��ղķ˹-��������������˹-˹����Э������������2012�꣬��ʿ��Ϊ�����Ŀ���̵ƣ��ܿ�ȷ����Ӣ��ϲ����Ա����-��ά˹�ļ��ˣ������Ǻ�����ϲ�����ǵ���-�ƺ�̩-��������ղķ˹-��������̫���̫�ྭ�䲼ż���Ԫ�����뵽�����У�����Ϊ���ϵ��ע����µĴ��⡣��Ȼ����������Ѳ�ż����������Ŀȫ�ǣ����ɻ�����Ӱ���ǿ�����Ϥ����Ӱ����˵�������������������Щ�ϵ�Ӱ������������һ������˿��֡���������ĵ�Ӱ������������ʮ��������ɷ���Ƭ��ֻ�������������ܡ��ܺ����벼ż������ͬ�����Ǹ����ڴ������ֺͻ�Ц�����ͬʱ����Ӱ���������Լ�ͥΪ�ں˵����Ϸ�����õ�Ӱ������֮��õ�ƽ�⣬�����һ����������λ���ǵİ���Ϊ����һ������<br />
<br />
����Ϊ��Ӱ���ֵ���������ϲ����Ա�������˲�����-����룬���������������֡��Źֵķ���벼ż���ص�ʮ�ִ��䡣��Ϊǰһ����ż��Ӱ�������������õ��˰�˹��������������룬�����ڶ���������ʹ���ֻΪ�������ܺ���С�����������а�����ţ�ϵ���ϯ��-���̣�Ladygaga��ղķ˹-�������ȵȡ��������ݲ�����˵������Ա����û��ͨ���ߺ�����ӰƬ�г��֣�����ÿ���˶�������ϵ�Ӱ�ķ�Χ������Ӱ��û���κγ�����Ϊ�ʹ����ǵ�������ģ����Ǳ���������ǵĴ������ұ����ζ�����Ҿ��ÿʹ�����Ȥ���ǣ����ڸ�����֪��˭�ں�ʱ����֣�ͻȻ����һ���ǳ���Ϥ����������������������ݵĽ�ɫȴ�����Ԥ����ԯ���ޡ����������������������ߺͰ�˹���������Ա�������ǽ����˱���Ĳõ���ϡ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/buou/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/buou/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/buou/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/buou/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/buou/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�������ܽ����������ս����ż�����ڽ���ŷ��Ѳ�ݣ������˰��֡������׶ص������˷ܵĳ��С����ܿ�һ���Ϳ����ܳ��ü���һģһ����ȴ����һ�ڴ���Ũ�ض������Ӣ������ܴ����˹̹����ҡ��һ�䣬�����Ĵ�������(���桤��ά˹����)�����˲�ż�ţ��������Ŀ������򱻵��ȡ������ݵ������ȼѴ�����Σ��������������⣬��Ħ�Ǽ�ͥ������̩�������������ݹ����̾���������׮��ֵİ�����Ļ����������ǰһ������ż���Ӱ�������ҵ�Ϳڱ���˫���պ󣬵�ʿ�ṫ˾���뵼��ղķ˹-��������������˹-˹����Э������������2012�꣬��ʿ��Ϊ�����Ŀ���̵ƣ��ܿ�ȷ����Ӣ��ϲ����Ա����-��ά˹�ļ��ˣ������Ǻ�����ϲ�����ǵ���-��',N'����',N'ϲ��/����/����/ð��',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-613128-1-2.html',N'http://www.lwgod.com/attachment.php?aid=891346&amp;k=7d38224792f110c9cecb680d627a5ec5&amp;t=1412261757&amp;sid=d011ZdAvocBFYNfibv1pf7%2B2bT3cOfbQliP8tFWAr2yzzuo',N'2014/10/2 22:57:30',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 454,N'����14����ս��������������ͷ2����BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/guogaitou2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������ͷ2/����ͷ2��ս��֮��/����ͷ2��������Ԯ<br />
Ƭ��������Jarhead 2: Field of Fire<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ����ս��/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�5.6/10 from 246 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3699508" target="_blank">http://www.imdb.com/title/tt3699508</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.47 GB<br />
Ƭ��������103 Min<br />
�������ݡ��ơ����˶������� Don Michael Paul<br />
�������ݡ�Jason Wong ....Justin Li<br />
����������Asen Asenov ....Policman<br />
����������Daniel Coetzer ....One of the Marines<br />
����������Amr El-Bayoumi ....Police Captain<br />
���������������������� Jess Garcia ....Rafael Soto<br />
�����������ƶ�����ɪ Cole Hauser ....Fox<br />
����������Ronny Jhutti ....Khalid<br />
������������ʲ������ Josh Kelly ....Merrimette<br />
����������Alexander Krustev ....Another Marine<br />
����������ʷ�ٷҡ��� Stephen Lang ....Major Gavins</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����þ�ɳ�����Ͻ�Chris Merriman��ʿ�쵼��һ֧С�ֶ�ִ��һ��Ϊһ�������������������Ʒ�Χ��ǰ��վ�ṩ�����������ھ����ն�����ʡ�ж�����ռ������ʱ�򣬳��ӱ�һλ����ͻ����Ա��������������������ľ����һ�������Ծ�Ԯ�ж��У�����һλ����������֯����ҪŮ�Գ�Ա�ӳ�����������û��̹�˺����ͻ���֧Ԯ�������£����ǽ��߾����ܴ������ս������Ĺ������ӳ����졣<br />
<br />
��������ս�Ŀ���˹��ʿ��Josh Kelly �Σ�����ΪС�ӵ�ָ�ӹ٣���С�ӵ���һ�������Ǹ�λ����������Ʊ�Ե������ǰ�������ṩ�������������о��жԵĺն�����ʡʱ������������Ѱ������ĺ���ͻ���ӣ�˫�����������һ����Ҫ���񡪡�����һ���򷴿�������������ĸ�Ů����ù�����<br />
<br />
����û��̹��װ�׳��Ϳ���֧Ԯ������˹��ʿ�������Ŷӱ������ȫ��������ƴ�����е�ҩ���ᴩ�����ս������Ĺ��ң�ֱ�����͸ø�Ů����ȫ�ص㡭��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/guogaitou2/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/guogaitou2/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/guogaitou2/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/guogaitou2/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/guogaitou2/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���þ�ɳ�����Ͻ�Chris Merriman��ʿ�쵼��һ֧С�ֶ�ִ��һ��Ϊһ�������������������Ʒ�Χ��ǰ��վ�ṩ�����������ھ����ն�����ʡ�ж�����ռ������ʱ�򣬳��ӱ�һλ����ͻ����Ա��������������������ľ����һ�������Ծ�Ԯ�ж��У�����һλ����������֯����ҪŮ�Գ�Ա�ӳ�����������û��̹�˺����ͻ���֧Ԯ�������£����ǽ��߾����ܴ������ս������Ĺ������ӳ����졣����ս�Ŀ���˹��ʿ��Josh Kelly �Σ�����ΪС�ӵ�ָ�ӹ٣���С�ӵ���һ�������Ǹ�λ����������Ʊ�Ե������ǰ�������ṩ�������������о��жԵĺն�����ʡʱ������������Ѱ������ĺ���ͻ���ӣ�˫�����������һ����Ҫ���񡪡�����һ���򷴿�',N'����',N'ս��/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-614877-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895434&amp;k=f6ff616dc001948cece4c133a84277ca&amp;t=1412261754&amp;sid=6da9atYfmVdCXedf3pTMGncakvRzFq6AQ3FARaVdI7KhUgM',N'2014/10/2 22:57:30',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 455,N'�������ֿ�14���𱬡���������������BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/baolijiequ/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/baolijiequ/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������������/��������(̨)/��������(��)/��Ԣ׷��<br />
Ƭ��������Brick Mansions<br />
�ꡡ������2014<br />
�������ҡ�����/���ô�<br />
�ࡡ���𡡶���/����/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�5.7/10 from 11,206 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1430612" target="_blank">http://www.imdb.com/title/tt1430612</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.48 GB<br />
Ƭ��������90 Min<br />
�������ݡ������ա��������� Camille Delamarre<br />
�������ݡ����ޡ��ֿ� Paul Walker ....Damien<br />
�������������������� David Belle ....Lino<br />
�����������޲��ء��ƴĽ����¡��ϸ�˹ RZA ....Tremaine<br />
�����������������ȡ�����˹ Catalina Denis ....Lola<br />
����������Gouchy Boy ....K2<br />
����������Ayisha Issa ....Rayzah<br />
���������������塤���� Carlo Rota ....George the Greek<br />
����������Andreas Apergis ....Berringer<br />
����������Richard Zeman ....Major Reno<br />
�����������޲��ء�÷Ү Robert Maillet ....Yeti<br />
������������³˹����ķ�� Bruce Ramsay ....Mayor</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������Ƭ�ǹ��������������ˡ�������ָ���ľ��䶯����Ӱ����������13����������ǿ�棬������֥�Ӹ�һ�����ģɱ����������һ��ƶ��ߵĶ���͵�ԣ������ɱ��ޡ��ֿ����ݵľ�̽���Եף�����������������ƶ��ߵ��飬���ս�¶��һ������������ľ������ı��<br />
<br />
�������������������У�Ϊ�˱�������ȫ�����ֽ�������Σ�յ��ﷸ���룬���������������ŷ�ɥ��������������ש��������Brick Mansions����<br />
<br />
����������ǿʳ�ġ���ש�������ڣ��б����Ĵ�������÷��RZA �Σ�Ϊа����ģ��Ե�̽Ա���װ������ޡ��ֿ� Paul Walker �Σ�һֱϣ��������֮�ڷ�����һ���棬ϣ���뿪�����ع����������ŵ������������ David Belle �Σ�����ΪŮ������������÷��°�߶��ļ���١�ӵ�й�ͬ���ˣ����Բ�ͬ���磬��������Ĵ��װ�����ŵ�������ֶԸ�����÷�򡭡�<br />
<br />
������Ƭ������2004��ͬ������������Ӱ����������13����Ҳ�Ǳ��ޡ��ֿ�����������Ʒ��<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
������������Ӣ�۾���������Ϧ&nbsp;&nbsp;Ʊ���ڱ�˫����<br />
<br />
�����ɻ���Ӱҵ�뷨��ŷ�ް����ϳ�Ʒ�����������������ˡ����ɵ��ټ��ơ���Ƭ�����Ķ�����Ӱ��������������8��1����Ϧ��ǰϦ��½ȫ��Ժ�ߡ�����ӳ֮���𣬸�Ƭ�����������ڱ�������������ʾ�Ϊȫ����һ��Ʊ����5000�򣬵߸��˺ܶ�������Ϧ��ֻ������Ƭ�Ĵ�ͳ��������ʷ������ż������Ϧ���ڣ�<br />
<br />
������Ϊ���ޡ��ֿ���ǰ���һ��������Ʒ����Ӱ�����˷ɳ����ܿᡢǹս�������ȶ���Ԫ�أ�Ƭ�б����롰�ܿ�֮����������������Ĭ����ϳ�Ϊ��Ƭ��󿴵㣬����Ӣ�۾��������Ҳ�ø�Ƭ��Ϊ��Ϧ��������֮ѡ��<br />
<br />
��Ϧ��ȫ�������ʵ�һ&nbsp;&nbsp;Ʊ����ڱ����<br />
<br />
��������������������Ʊ���ߴ�1100��Ԫ��30������ǰȥ��Ӱ��һ�߳��г����˴γ���Сʱ��3�������ۡ��͡���֮�ȣ������������һ����ӳӰƬ��8��2�յڶ��죬�����������������ʸߴ�84.34%��λ��ȫ����һ����ν�����������ܶ�Ӱ�Է�ӳ��Ʊ������һ�����úܶ�ӰԺ��ʼ��δ�������������շ׷ױ�������2014Ϊ�������������Ӵ���Ƭ��������Ƭ�����ӵ�����£�����������������������Ȼ�Ⱦӵ�һ������Ʊ����5000��Ԥ��Ժ����Ƭ���һ�����ӡ���������ѡ��ۿ���Ƭ���ڣ�������Ϧ�����Ӱ�ȳ���<br />
<br />
������Ƭ�ڶ�����������Ϊ7.1��ͬ���ڵġ����ۡ�����ֻ��5.9�֣����׷�ħŮ��֮�������������4.1�֣������ڵ������ĵġ����ִ�ʦ��Ҳֻ��5.6�֡�<br />
<br />
�����ӹ��ڵķ�����Կ������ⲿӰƬ�ڱ��൱����������֮��Ŀڱ���ӰƬ�Ժ��Ʊ������������Ҫ������˸ߵ����ֺ͸������������ϣ�����Ԥ�Ƹ�Ƭ��Ʊ�������������<br />
<br />
��ȹ������Ů�ⲫ&nbsp;&nbsp;Ӣ�۾���������Ϧ<br />
<br />
����������������֮����������Ϧ����Ʊ���漣������ӰƬ����������Ӳ�⡢��г��հ��⣬Ӣ�۾��������Ҳ�Ƿǳ���Ҫ�ļӷ����Ƭ����ӵ����Ѫ��ȭ��Ӳ�������⣬������Ӣ�۾������������顣<br />
<br />
����Ϊ���ù���һ���۸�������Ƭ���ع�һ��Ӣ�۾�����Ƶ�ؼ���Ϊ����ȱ��ڰ��ϴ�ץ�ߵĴ�����������ǰŮ�ѣ����ޡ��ֿ˺ʹ���������˫����赣����뻢Ѩ��һ·����ն�������ʱ�̣��������������˵�������Ů�ѵ����������������������˼��ҵ�˼�붷����������֮ǰ�ĺô���ޡ��ֿ˷�Ŀ���������뱻��ƺõ���ı�У�һ����Ů�ѣ�һ����ǧ������������β��Ƽ��գ����ֵ����塢�ҹ���Թ����Ӣ�۾���������У��ù��¸��ӱ��������մ������������������ȡ�����˹���ݵġ�Ů�ѡ���������Ե�Ȼء���Ȼ���ֶ��꣬�����������������������Ȼ�Կ���������������ؼ�ʱ��������ȣ�����Ϧ�Ľ������ⲻı���ϡ���������������ǻ��úܶ��ڵ�ӰԺ�й�Ӱ��С�����ǣ�����һЦ����ָ���ϡ�<br />
<br />
������������ů�ĵ�Ӣ�۾�����ڣ��ⲿ���Ժɶ���ʮ��ĵ�Ӱ�У���λŮ��Ա�Ĵ�ϷҲ�ǳ����ʡ���λŮ��Ա����������ü��ҡ��һ��ɡ��������ޡ����������������ⲫ�����˶�������ϧ��֮�ġ�����λ������Σ�ղ����Ů�����Ǿ������㣬�������ȡ�����˹����ʢ����Ů�ĸ��ױ��ǣ�����Ա��ģ�أ����Ϊ182cm��һϮƮ�ݺڷ�+��ȹ���ȳɾ���һ�󿴵㣻��һλ�Ǽ��ô����Ů�ǰ���ɯ�������������ǰ�߲������£���Ļ�����<br />
<br />
�������������ĳ�����Ů��Σ��ʱ�̵�Ӣ�۾�������������Թ��ں�Ů�Թ��ڵĲ�ͬ�Ĺ�Ӱ���󣬽�Ȱ���ʹ�������ճɾ������ⲻǡ���Ǻ���Ϧ�ڵ�������<br />
<br />
�ɳ��ܿ�ǹս�ⲫ&nbsp;&nbsp;�����Ƭ����ڵ��հ�<br />
<br />
������Ϊһ����׼ʱ����ӰƬ��������������ǡ���ô��������ˣ������ܿᡢ�����񶷡�׷��ǹս�ȡ���Ƭ���󡱣��������С��Ѫ˫�ۡ��㲻����ʶ�Ļ��ֻ���ȣ��޲���������ذ����ڽ��յ�Ϸ���ͻ�ṹ֮�С�����Ҫ���ǣ���ЩԪ�ػ��֮����һ�ִ���B��cult��Ӱ��Ȥζ�����ʳ��ֳ���������Ӯȡ��������2014������Ӱ�̶���˿���ģ�������Ϊ���ɵ������������ڵĵ��̡����⣬���ޡ��ֿ�˹�����ţ��������ڣ�Ϊ��Ӱ����һ����ů�����ɵ����ù⻷��<br />
<br />
�����ݹ��������ڵ���Ӱ�г����ѷ��֣�2014������Ĺ���Ӱ����Ȼ�Ѿ��������ڶ�ġ��漣���͡���¼������ӰƬͬ�ʻ�Ҳʮ�����ԣ��硶���ִ�ʦ���������ۡ�����������ڡ�����Сʱ������ӰƬ���Ͷ����ഺ��������ĵ���С�ɱ�ӰƬ��ӰƬ���ͽ�Ϊ��һ��������һ֦����ġ����ν��4�������ٺ����Ƭ��Ӱ���������г������£����������������ּ�쭳����ܿᡢǹս���ⲫ��������������Ԫ��Ϊһ��Ķ�����Ƭ�ؽ����ή�Ҳ���ĵ�Ӱ�г�ע��һ��ǿ�ļ��������Ӱ�е�һ��հף�������ǰ���졶������������ȡ�������������ϲ�ĳɼ����������ʱػ����Ժ�ߵ���Ƭ���ӣ�����Ʊ���������������������ù����������ܵ����ջ𱬴�Ƭ�����ĺ������졣<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/baolijiequ/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/baolijiequ/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/baolijiequ/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/baolijiequ/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/baolijiequ/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����Ƭ�ǹ��������������ˡ�������ָ���ľ��䶯����Ӱ����������13����������ǿ�棬������֥�Ӹ�һ�����ģɱ����������һ��ƶ��ߵĶ���͵�ԣ������ɱ��ޡ��ֿ����ݵľ�̽���Եף�����������������ƶ��ߵ��飬���ս�¶��һ������������ľ������ı�����������������У�Ϊ�˱�������ȫ�����ֽ�������Σ�յ��ﷸ���룬���������������ŷ�ɥ��������������ש��������Brick Mansions����������ǿʳ�ġ���ש�������ڣ��б����Ĵ�������÷��RZA �Σ�Ϊа����ģ��Ե�̽Ա���װ������ޡ��ֿ� Paul Walker �Σ�һֱϣ��������֮�ڷ�����һ���棬ϣ���뿪�����ع����������ŵ������������ David',N'����/���ô�',N'����/����/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-615334-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896716&amp;k=f86024a628e8c841fbdda699ac23e6cd&amp;t=1412261754&amp;sid=fc3fMlBz55pz27qSVDeeF0durqrs3CgLVh8EbwwzFLDPSwM',N'2014/10/2 22:57:31',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 456,N'��14�����ڴ�Ʊ�����ơ�������֩����2����HD-1024.MP4�������֡�',N'<font color="blue"><font size="5">��Ļ����һ�㣬�������ֵ�������ȴ������棡</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/zhizhuxia2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/zhizhuxia2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������֩����2/֩���˾�������2�����֮ս(̨)/֩����2 : ��ս��ħ(��)/����֩����2�����������<br />
Ƭ��������The Amazing Spider-Man 2<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡶���/�ƻ�/���/ð��<br />
����ԡ�Ӣ��<br />
�֡���Ļ��������Ļ<br />
�������֡�7.3/10 from 130,760 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1872181" target="_blank">http://www.imdb.com/title/tt1872181</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��1.38 GB<br />
Ƭ��������142 Min<br />
�������ݡ���ˡ�Τ�� Marc Webb<br />
�������ݡ�����³���ӷƶ��� Andrew Garfield ....�˵á�����/֩���� Peter Parker/Spider-Man<br />
�������������ꡤ˹ͨ Emma Stone ....���¡�˹���� Gwen Stacy<br />
�������������ס�����˹ Jamie Foxx ....����˹������/�����<br />
�����������������¹��� Dane DeHaan ....��������˹��/С��ħ<br />
�������������ޡ��������� Paul Giamatti ....���п�л����˹��ά��/Ϭţ��<br />
����������ɯ�򡤷ƶ��� Sally Field ....÷��ĸ Aunt May<br />
��������������˹����� Chris Cooper ....ŵ������˹��/��ħ Norman Osborn<br />
������������������˹���� Campbell Scott ....���¡����� Richard Parker<br />
��������������˿����ά�� Embeth Davidtz ....���������� Mary Parker<br />
�������������˹�����˹ Max Charles ....ͯ��˵á����� Young Peter Parker<br />
��������������˹������ Denis Leary ....���¸��� Captain Stacy (uncredited)<br />
������������³ķ���Ѱ��� Colm Feore ....���ɵ¡�÷�� Donald Menken</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����˵á����ˣ�����³���ӷƶ����Σ���Ȼ��æ�������£����ꡤ˹ͨ�Σ���ҵ����ȥţ���ѧ�������졣������ˡ������ס�����˹�Σ����ֺ���������ð����������ѹ�������˹�����������¹����Σ��ع飬���˷����˹����Լ���������������<br />
<br />
��������Խ������Խ��֩�����˵á����ˣ�����³���ӷƶ��� Andrew Garfield �Σ���ȫ���ͷ��������������ͬʱ������ӭ���˱�ҵ��ʱ�̡�����������һ���Ľᣬ������Ů�Ѹ��¡�˹̹�������ꡤ˹ͨ Emma Stone �Σ��Ĺ�ϵ�������㡣����ӦƸ��Ϊȫ���ṩ������ ��˹�����Ź�˾��ͬһ�ڼ䷢���������£����ɵ�������ҹ�˾�ͱ˵õ��˵����ˡ���˹���������˲��ʣ����Ķ��ӹ������������¹��� Dane DeHaan �Σ���20���������������ֵ2000����Ԫ�ľ��ްԡ���һ���棬���ȳ��֩�����ĵ�������ʦ���˹�����������ף����ס�����˹ Jamie Foxx �Σ���ά�޻���ʱ���������������ٶ�����ʱ�����Լ������ȫ��������ܵĳ����ࡣ<br />
<br />
�����е�������ƭ�����˹��֩������ʱ���㳡չ���Ծ������˵ú͹���������Ҳ���⵽���˵�ϷŪ����<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ƭ���ײ���ȫ��ŦԼ����ġ�֩��������Ӱ��Ҳ����ŦԼ��������Ԥ���ӰƬ��<br />
<br />
�������������ɴ�ʦ��˹����Ĭ������������˵�����ַ����������ķ˹���ִ��졣<br />
<br />
����˹��Ӱ�۽��ס�����˹��Ƭ�а��ݵ��ǵ���ˣ���˹���������ǿ���˹��������ݵ��ǰ�˹�������ǰ�˹������Ա��һ�ΰ���֩����������ͷ��<br />
<br />
�������У����±�����ħ��ŵ����˹�������²�³���ִ��š�С֩�뷢����˿һ������ס������׹�ĳ��������ľ�׵��Ӳ�������ϡ����´Ӵ��������ǡ���Ӱ�����´��˺���������������һģһ�����·���<br />
<br />
��л�ա������ԭ����Ƭ�а�������������Ľ�ɫ�����һ�������һЩ��ͷ�������ڼ�����ʱ������Ϸ��ȫ�������е��ˡ�ԭ���ǵ���ϣ��֩�����͸��¡�˹����֮��İ����ܱ��������<br />
<br />
����ˡ�Τ���ڸ���˹̽�յ�Ӱҵ����ƬԼδ��ɡ�̽�յ�ͬ����ˡ�Τ��ִ������ġ�֩������������������Ҫ�Xս��������һ�£����Ծ����˽��꡶Xս����������ʵ������ڰ��޸�Ƭβ�ʵ���<br />
<br />
���ڵ���ǰ֧��Maxȥ�޵�·������OscorpԱ����Max�����С�˹��˼����Smythe����������Smythe�ǡ�֩��ɱ�֡��Ĵ����ߣ������������Լ������壬��Ϊ�ˡ��ռ�֩��ɱ�֡���<br />
<br />
��Oscorp�����͵�������Felicia���������еĺ�è��һ���Ȼ��������а�Ľ�ɫ��Peter����Ϊ֩����ʱ����������<br />
<br />
��Oscorp�ĵ��²ֿ����С��ħ��Ϭţ�˵Ŀ��׻���ͺ�պ����㲩ʿ��װ�������㲩ʿ��ͺ�ա�����ˡ����˿����ġ��»ÿ���ɳ���������кϳơ�Sinister Six����а�������飩��<br />
<br />
��Peter���ֻ��������ϰ�֩������һ�����ڵ���վ���ż������յ��Ǹ��Ƕ����ĸ衰Spiderman���� �������������Ϊ1967�궯����֩��������������<br />
<br />
��������֩��������һ�������������ӰƬ��������ѡ����ʹ��35mm��Ƭ��������������֩����2���������������֮������ʹ�����ּ�������Ƭת��������Ӱ�񣬲��ú���ת�Ƶķ�����ӰƬ���3D��ʽ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/zhizhuxia2/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/zhizhuxia2/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/zhizhuxia2/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/zhizhuxia2/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/zhizhuxia2/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���˵á����ˣ�����³���ӷƶ����Σ���Ȼ��æ�������£����ꡤ˹ͨ�Σ���ҵ����ȥţ���ѧ�������졣������ˡ������ס�����˹�Σ����ֺ���������ð����������ѹ�������˹�����������¹����Σ��ع飬���˷����˹����Լ�������������������Խ������Խ��֩�����˵á����ˣ�����³���ӷƶ��� Andrew Garfield �Σ���ȫ���ͷ��������������ͬʱ������ӭ���˱�ҵ��ʱ�̡�����������һ���Ľᣬ������Ů�Ѹ��¡�˹̹�������ꡤ˹ͨ Emma Stone �Σ��Ĺ�ϵ�������㡣����ӦƸ��Ϊȫ���ṩ������ ��˹�����Ź�˾��ͬһ�ڼ䷢���������£����ɵ�������ҹ�˾�ͱ˵õ��˵����ˡ���˹���������˲��ʣ����Ķ��ӹ���',N'����',N'����/�ƻ�/���/ð��',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-613126-1-2.html',N'http://www.lwgod.com/attachment.php?aid=891343&amp;k=4e3b7541eb61c267623ef74e5886c563&amp;t=1412261758&amp;sid=da06m3nlq7fu0zqyEkMUogGHoR2a%2F1e1vqHpcnVaGY%2BPx0I',N'2014/10/2 22:57:31',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 457,N'����14����߶�����������֮���С���BluRay-720P.MKV�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/aizhixuanwo/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/aizhixuanwo/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������֮����/�ۤη��}(��)<br />
Ƭ��������Love''s Whirlpool<br />
�ꡡ������2014<br />
�������ҡ��ձ�<br />
�ࡡ���𡡾���<br />
����ԡ�����<br />
�֡���Ļ�����ļ�<br />
�������֡�6.9/10 from 28 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3108170" target="_blank">http://www.imdb.com/title/tt3108170</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.29 GB<br />
Ƭ��������123 Min<br />
�������ݡ����ִ��o Daisuke Miura<br />
�������ݡ�����׳�� Sosuke Ikematsu<br />
������������в�� Mugi Kadowaki<br />
�����������¾����� Hirofumi Arai<br />
����������������һ Kenichi Takito<br />
��������������ʱ�� Tokio Emoto<br />
���������������Ҷ�� Yoko Mitsuya<br />
�����������д�ӳ���� Eriko Nakamura<br />
����������������˾ Tetsushi Tanaka<br />
������������ڣ��� Yosuke Kubozuka</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������·���������ľ��һ�����ϣ����������ߵ���ͷ������һ��סլ�ڣ�Ŀ���Ǹ�һ����δı�����Ů����һ��Ԥ���������ϵĻ����Ѱ���ʺϵ����ԣ�����/�������Թ�ϵ����������֮��OL��Ů���׶�԰Ů��ʦ��˾���ȵȣ����и���һλһֱ�������Ե�Ůѧ��������һֱ�����Ż��������Է���֮���������������������Լ����԰��ĺ�����������������¶֮ǰ����ҳ�����Ļ�����ԣ��Գ��Լ�����������һ�桭��<br />
<br />
<font color="red"><strong><font size="3">���㻨����</font></strong></font><br />
<br />
�������ִ󸨱�����һλ��̨�絼�ݣ�Ҳ��һλ���ң���磬�Լ���Ӱ���ݵȵȣ���˵��һλ�෽������������ߡ�2005�꣬���ִ󸨷�������̨����Ʒ�������С����ⲿ��Ʒ��õ���ʮ�찶���Ϸ���ͣ�������2009���ٴι��ݡ�������Ҳ��Ϊ��Ӱ�����ִ�������ִ󸨣���ı�������һ����Ʒ���Բ�ͬ�Ĵ����ַ����������롶�����Ĺ��¡�<br />
<br />
�����ձ��������������ִ󸨴��������ٻ�2006���50�찶���ʿϷ�����ľ����������֮���С��������ĵ�Ӱ�棬���������ֱ������Բٵ����ⲿ������������ʵ������д�Ļ��������Զ�������ľ��һ�乫ԢΪ��̨���״����������ŮŮ����Խ���µ��߽��С��ް��������顱�����������������ǳ���׳�����ݣ�Ů��������������Ů�����|�󵣵���<br />
<br />
������Ƭ���˹���ÿ���賿0��-5��ۼ������η��׵���PARTY������ŮŮ��ͨ���������ֵľ�ͷ����չ�ֳ������ڵġ��ۻᡱ�龳���Լ����ڲ�����Ŀ����һ�档�������ֱ�ʾͨ����Ƭ��Ҫ��������ʵ�˲�䳹��չ¶������<br />
<br />
����ӰƬ���Ľ���2��ʱ�䣬����Ƭ���漰�����԰�����������123���ӵĵ�Ӱ����Ա�������·���Ϸ��ֻ��18��30�롣���������ǵĳ���̹�ԡ����Ҷ���籾֮������û�оܾ������ɡ���Ŀǰ��ӰƬ�Ѿ�ɱ�࣬�뵼�����ֳ�Ϊ�������ѵĳ��ɱ�ʾ�����������Ǹ�����Ա������Ʒ����ע��Ѫ�Ͱ��ĺõ��ݣ�ͬʱҲ�Ǹ��¶��ĵ��ݣ�����ֱ�ԡ��Ҿ��������κ��˶����ֵ��ݽ��ж��Թ��������������ɶԵ������ֵĴ���֧�֡�<br />
<br />
������Ƭ���趨ΪR-18+���𡣳�����Ů���ǳ���׳�������|�����⣬�п������¾����ġ�������һ����ľ��¡�顢����ʱ�����ݣ�Ů�����������Ҷ�ӡ��д�ӳ���ӡ���ܥ���ӡ��Ž������ݡ����⣬���׵�곤��������˾���ݣ���Ա����ڣ�����ݡ�ӰƬ����֮���С�����2014��3�����ձ�ȫ����ӳ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/aizhixuanwo/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/aizhixuanwo/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/aizhixuanwo/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/aizhixuanwo/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/aizhixuanwo/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����·���������ľ��һ�����ϣ����������ߵ���ͷ������һ��סլ�ڣ�Ŀ���Ǹ�һ����δı�����Ů����һ��Ԥ���������ϵĻ����Ѱ���ʺϵ����ԣ�����/�������Թ�ϵ����������֮��OL��Ů���׶�԰Ů��ʦ��˾���ȵȣ����и���һλһֱ�������Ե�Ůѧ��������һֱ�����Ż��������Է���֮���������������������Լ����԰��ĺ�����������������¶֮ǰ����ҳ�����Ļ�����ԣ��Գ��Լ�����������һ�桭�����㻨�������ִ󸨱�����һλ��̨�絼�ݣ�Ҳ��һλ���ң���磬�Լ���Ӱ���ݵȵȣ���˵��һλ�෽������������ߡ�2005�꣬���ִ󸨷�������̨����Ʒ�������С����ⲿ��Ʒ��õ���ʮ�찶���Ϸ���ͣ�������2009���ٴι��ݡ�����',N'�ձ�',N'����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-614865-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895401&amp;k=c3cc9c46c1bc9b19dd91918f1e840612&amp;t=1412261755&amp;sid=80190QjOQpYHiF7GbL7S2xpNx1WRkktsWTXC0uFd5EzL3OY',N'2014/10/2 22:57:31',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 458,N'��14Ʊ�������ڴ�����Xս������תδ������HD-1024.MP4�������֡�',N'<font color="blue"><font size="5">��Ƭ������Ӳ��Ļ���޷�ȥ����������Ҳһ��<br />
�������ֵ�������ȴ������棡</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/Xman/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/Xman/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������Xս������תδ��/�����ع���δ��ͬ��ս(��)/Xս����δ������(̨)/Xս��ǰ��2��δ����ȥ������<br />
Ƭ��������X-Men: Days of Future Past<br />
�ꡡ������2014<br />
�������ҡ�����/Ӣ��<br />
�ࡡ���𡡶���/�ƻ�/���/ð��<br />
����ԡ�Ӣ��<br />
�֡���Ļ��������Ļ<br />
�������֡�<font color="red">8.4/10 from 198,102 users&nbsp;&nbsp;Top 250 #114</font><br />
�������ӡ�<a href="http://www.imdb.com/title/tt1877832" target="_blank">http://www.imdb.com/title/tt1877832</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��1.28 GB<br />
Ƭ��������131 Min<br />
�������ݡ������������� Bryan Singer<br />
�������ݡ��ݡ��ܿ��� Hugh Jackman ....������޸� Logan / Wolverine<br />
����������ղķ˹�������� James McAvoy ....���˹����ά�� Charles Xavier<br />
�������������˶�����˹���� Michael Fassbender ....����ˡ���л�� Erik Lehnsherr / Magneto<br />
����������ղ�ݸ�������˹ Jennifer Lawrence ....ħ��Ů���� Raven / Mystique<br />
�������������ء������� Peter Dinklage ....�����߶�������˹�� Bolivar Trask<br />
���������������˹�������� Nicholas Hoult ....Ұ�޺��ˡ����� Hank McCoy / Beast<br />
�������������򡤱˵�˹ Evan Peters ....���� Pietro Maximoff / Quicksilver<br />
����������������ˡ�˹ͼ���� Patrick Stewart ....X���� Professor Charles Xavier<br />
����������������������� Ian McKellen ....����� Erik Lehnsherr / Magneto - older<br />
�������������򡤱��� Halle Berry ....����Ů Ororo Munroe / Storm<br />
�������������ס��弧 Ellen Page ....��Ӱè���� Kitty Pryde / Shadowcat<br />
������������ʲ���ն��� Josh Helman ....������˹����� William Stryker<br />
���������������� Bingbing Fan ....��˸ Clarice Ferguson / Blink</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
���������˱���������ս�������ˡ��ڱ�������ɱ�����������Σ�ա�����Ǳ��봩Խʱ���ҵ�X���ں���������ı���ʷ���ڹ�ȥ��δ������ʱ���Xս��ͬ�ڱ������˵Ĵ��ս����չ������<br />
<br />
�������·����ڲ���ңԶ��δ����Xս��������ʷ����������Σ�������Ǳ���ص���ȥ�����Լ������ˡ�Xս��Ҳ�����������ʱ�������������Ƚ������������ڲ��õ�δ�������Ƕ���������˹�˹�ҵ����ʼ�˲����߶�������˹�������첢ָ�ӵ���������ս�������ˡ��ڱ�������ɱ�������ű������Σ�ա�<br />
<br />
�����ڱ������˿��Լ����κ���ʽ�ı������ͣ������ǵĻ������ܹ�������˲��任�͸��������Ӷ�����Xս������ʹ��Xս����Ψһϣ�������ǻص���ȥ��������˹�˵��о����յ������ǵ����֮ǰ���ı���ʷ��<br />
<br />
�������û�Ӱè���ٵ�������������޸���Խʱ�տ�ʼ������������ó̡���һ�Σ���������������ı���������X���ڣ��Լ���һ���Ķ����������ȥ�ҵ�ħ��Ů������ֹ����˹�ˡ�ʱ���Ѿ�����ü�ޣ��ڹ�ȥ������δ����Xս��ͬ�ڱ������˵Ĵ��ս����չ������<br />
<br />
�������µ��趨�����ڵ��£���������Ⱥ�⵽��ǰ��δ�еĻ����Դ��������һ�еĸ�Դ�ǡ�ħ��Ů�����ģ�ղ�ݸ�������˹ Jennifer Lawrence �Σ���1973���ɱ�˲����߶�������˹�ˣ����ء������� Peter Dinklage �Σ����ڵ�֪����Ӱè�������ס��弪 E llen Page �Σ����ô�Խʱ�յ���������Blink�������� �Σ���ս�����Ѿ��ͻ����ˡ��ڱ�����׷ɱ��X���ڣ�������ˡ�˹ͼ���� Patrick Stewart �Σ����������������������� Ian McKellen �Σ������ͬ�������ý���ǣ��ݡ��ܿ��� Hugh Jackman �Σ���Խ��1973�꣬�ҵ������X���ڣ�ղķ˹�������� James McAvoy �Σ������������������˶�����˹���� Michael Fassbender �Σ���˵������һ����ֹħ��Ů���ж������ǣ������̤���˻ص���ȥ���ọ́��������˻᲻�ᷢ����ת���κ��˶��޴�֪����<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
��������������͡�ʱ�����С����������ղķ˹����÷¡չ����������Сʱ�����ۡ���÷¡�����ݡ��ս��ߡ�1��2������һ������������в����˽⡣<br />
<br />
����������������������ˡ�˹ͼ�������������������Ѳ���ݳ���̨��ʱ�ҵ����ǣ��������ǳ���ӰƬ�����˶��ܳԾ���������Ϊ��˹�������������Ѿ��̳������ǵ��²������˶��ٴλع��ʾϲ�á�<br />
<br />
������ħ��Ů��ղ�ݸ�������˹�Ļ�ױ׼��ʱ�����һ����Xս������һ�Ρ���8��Сʱ�����3-4��Сʱ������˹��ʾ�˴ε�����Ҳ��Ϊ�ºͣ�����Ҫ�����񡶰����һ������������Ӧ��͸����ˣ�<br />
<br />
�����˶�����˹����Ϊ�����Լ��������������ӽ�������������������ⷴ����Ħ��������Ƶ��ѧϰ����˵����ʽ�붯����<br />
<br />
�����ݷ�������˹�˵ı��ء�������˵�����ݲ�����������֮����ѡ��������Ϊ���Ǹ����ˣ������Ǹ����ˣ��е��������һ��������Ϊ����˹������������Լ��ǰ�����һ��ʵ�ǳ����С���<br />
<br />
����ʲ���ն������Ҫ���ݵĽ�ɫ�Ƿ��ɺ�̹�ˣ��������վ籾ɾ���������ɫ���ն�����˳�Ϊ�������������˹����ˡ�������ǵ����С�<br />
<br />
��������ɡ��𲮸�˵����Xս������תδ�����ܵ��˴�Խ��Ӱ��ʱ�մ�Ų�ơ������ս��ߡ������ص�δ�����͡�����ʹ�ߡ���Ӱ�졣<br />
<br />
���ڡ�Xս��2��������ҹ���ߵİ��ס������ܾ��ع飬��Ϊҹ���ߵ���ױ׼������̫�����ˡ�<br />
<br />
�������ϰ��������X���ڵ����������������������ˡ�˹ͼ�����Լ�����������������X���ڵ����˶�����˹������ղķ˹��������������̨�ϻ��ߵ�Ӱ�г��ݹ�ɯʿ���ǵľ����ɫ������˰ס�<br />
<br />
����ղķ˹��������Ϊ�׵���������Ա���������϶����չ��BBǹ��ս�����˶�����˹���¡�ղ�ݸ�������˹���˶�����Ϸ�Ŀ��Ȳ����ߣ���������ݡ��ܿ������ʾ�Լ���������������ô�衣<br />
<br />
������ӰƬ��ӳǰ����ɲŮϷ�ݱ�����Ĵ��ԣ�������ӳ�汾����ɲŮ���Ƕ��ݳ�����һ�¡�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/Xman/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/Xman/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/Xman/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/Xman/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/Xman/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�������˱���������ս�������ˡ��ڱ�������ɱ�����������Σ�ա�����Ǳ��봩Խʱ���ҵ�X���ں���������ı���ʷ���ڹ�ȥ��δ������ʱ���Xս��ͬ�ڱ������˵Ĵ��ս����չ���������·����ڲ���ңԶ��δ����Xս��������ʷ����������Σ�������Ǳ���ص���ȥ�����Լ������ˡ�Xս��Ҳ�����������ʱ�������������Ƚ������������ڲ��õ�δ�������Ƕ���������˹�˹�ҵ����ʼ�˲����߶�������˹�������첢ָ�ӵ���������ս�������ˡ��ڱ�������ɱ�������ű������Σ�ա��ڱ������˿��Լ����κ���ʽ�ı������ͣ������ǵĻ������ܹ�������˲��任�͸��������Ӷ�����Xս������ʹ��Xս����Ψһϣ�������ǻص���ȥ��������˹�˵��о�����',N'����/Ӣ��',N'����/�ƻ�/���/ð��',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-615333-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896715&amp;k=da4113537d6de5fb25ad047d8af59f27&amp;t=1412261755&amp;sid=07e9cqXAIkchiGLoahjnUr3yGh9uYJlt2lZNP15EaCTj5HM',N'2014/10/2 22:57:31',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 459,N'����14��Ʊ����Ц�������������ˡ���BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/fuchou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/fuchou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/fuchou/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������и���ս/����������(̨)/С��������(��)<br />
Ƭ��������The Other Woman<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ����ϲ��/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.2/10 from 29,182 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2203939" target="_blank">http://www.imdb.com/title/tt2203939</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.78 GB<br />
Ƭ��������109 Min<br />
�������ݡ���ˡ�����ά�� Nick Cassavetes<br />
�������ݡ���÷¡�����Ǵ� Cameron Diaz ....Carly Whitten<br />
������������˹�������� Leslie Mann ....Kate King<br />
�������������ء����ն� Kate Upton ....Amber<br />
�������������������˹��-�߶��� Nikolaj Coster-Waldau ....Mark King<br />
�����������ơ�Լ��ѷ Don Johnson ....Frank<br />
����������̩�ա����� Taylor Kinney ....Phil<br />
�����������ἧ������ʲ Nicki Minaj ....Lydia<br />
����������Kenneth Maharaj ....Busboy<br />
����������Alyshia Ochse ....Cece<br />
����������Victor Cruz ....Fernando<br />
����������Madison McKinley ....Waitress<br />
�����������������ɶ� David Thornton ....Nick</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������÷¡�����Ǵ����ݵ�Ů���ǣ������Ȼ�����������Ѿ�Ȼ���ѻ���ʿ��ͬʱ��ҲżȻ�����������Ǳ����ڹ�������ӣ���˹�������� �Σ�������Ů��һ��ʼ������ӣ���������ʶ������֮������๲֮ͬ�������Ǵ����б���˹��ۡ�֮�������ַ�����һ���������ѵ������ܺ��ߣ����ء����ն� �Σ���������Ů�˾������Ž��б����ж���<br />
<br />
�������򣨿�÷¡�����Ǵ� Cameron Diaz �Σ���һλ����ǿ�ɵ���ʦ�����۶�����������ˣ�����Ҫ������ɶ�����ú��������ġ�һ��żȻ�У������ʶ��������ˣ����������˹��-�߶��� Nikolaj Coster-Waldau �Σ������ӣ����ߵ�Ӣ�����������̾������˿����ע�⣬û����ã����˾�׹���˰��ӡ�<br />
<br />
����Ϊ�˸����һ����ϲ���������������������ļ��磬�ÿ���û���뵽���ǣ�������ӭ�����ģ���Ȼ��һ���Գ���������ӵ�Ů�˿��أ���˹�������� Leslie Mann �Σ��������ض��ڿ���Ĵ�������һ����֪��ֱ����ʱ������ſ�ʼ����������˵���ʵ��Ŀ�����Ϳ��ؾ������֣�����Ҵ���֮��һ����Ϊ���������ء����ն� Kate Upton �Σ���Ů�˼��������ǣ�����Ů��������һ�𣬺�Ϸ�������ݡ�<br />
<br />
��������ݶ٣���÷¡�����Ǵ� �Σ���λ������ŦԼ��ʦ���Ը�������˶���Ϊ���������ޡ�����������˽����������˹��-�߶��� �Σ�ʱ��ȴж���˶����˵ķ����������������������������λ�ڿ��˵ҿ��ݵļң����������ϲ��û�ϵ�ȴ������������˸����ſ��أ���˹�������� �Σ������������Ĺ˼ҵļ�ͥ���������Ϲ���˵ĳ����Ϊ�𾪣���������������ѻ����ʵ����󡣲��������˲�û����˽��񣬷����𽥽�Ϊ���ѣ�����������˵�С�İ��꣨���ء����ն��Σ�����������Ů�����ַ������û��ĵ���˳������ȵĿ�������ǵĲ�����������׼��Ч������Ҳ��ø��Ӽ�ǿ��<br />
<br />
������Ƭ�ɡ��梵��ػ��ߡ�������˿���ά��ִ����������û�м��ڡ������ص��ǡ����������¡��������˹���߶����������ݡ�<br />
<br />
�������Ի�����Ů��ʦ�����򣨿����ص��� �Σ��������ٵ��鳡��������һ��һ��Դ����������ѡ���ˣ��������˹���߶� �Σ�����������û�뵽һɽ����һɽ�ߣ��Լ����ϵľ���һ�������У�<br />
<br />
����������Ϊ����˾�ϲ��ͻϮ����ס����ȴ���ⷢ�������ѽ�飬��ԭ�䡪���أ���˿������ �Σ�����������ߡ�������Ů�˲��ʱ���Ū���������ַ������Ĵ��٣���û�ϵ�����Խ��Խ�ң����Ƿ�������ò���Ĵ����é����꣨���ذ��ն� �Σ���Ҳ��С��֮һ�������š�С����С��������ɸ��������ˣ�ƾ����ʦ�����ż�����������չ����ǿ��ĸ���ơ����������л���ʲô���������������������ֻ���γ��У�<br />
<br />
����������λŮ���ǵ��Ը����죬�����ر�������Ϊ���������С���������Prada�Ķ�ħ����Ʒ�װ�����ʦ���Բٵ���Ϊ������Ƴ����ַ���൱�����ķ�װ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/fuchou/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/fuchou/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/fuchou/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/fuchou/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/fuchou/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����÷¡�����Ǵ����ݵ�Ů���ǣ������Ȼ�����������Ѿ�Ȼ���ѻ���ʿ��ͬʱ��ҲżȻ�����������Ǳ����ڹ�������ӣ���˹�������� �Σ�������Ů��һ��ʼ������ӣ���������ʶ������֮������๲֮ͬ�������Ǵ����б���˹��ۡ�֮�������ַ�����һ���������ѵ������ܺ��ߣ����ء����ն� �Σ���������Ů�˾������Ž��б����ж������򣨿�÷¡�����Ǵ� Cameron Diaz �Σ���һλ����ǿ�ɵ���ʦ�����۶�����������ˣ�����Ҫ������ɶ�����ú��������ġ�һ��żȻ�У������ʶ��������ˣ����������˹��-�߶��� Nikolaj Coster-Waldau �Σ������ӣ����ߵ�Ӣ�����������̾������˿����ע�⣬û����ã�',N'����',N'ϲ��/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-613029-1-2.html',N'http://www.lwgod.com/attachment.php?aid=891087&amp;k=19c499ae8178109b80b76d0e16c71e78&amp;t=1412261760&amp;sid=7b41FKiKIJZJ4%2BcjV4oI%2BqHpwi97q%2FEZNQuyphNLAQ9EHi8',N'2014/10/2 22:57:31',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 460,N'����14��Ⱥ�Ǳ�Цϲ�硿�����72Сʱ����HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/ye/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/ye/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������72Сʱ/ҹҹҹ<br />
Ƭ��������Night of Adventure<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ����ϲ��/����<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��997 MB<br />
Ƭ��������99 Min<br />
�������ݡ������ Jixian Li<br />
�������ݡ����� Ni Yan ....������<br />
�������������� Le Geng ....��͵�������鲨<br />
�����������۱� Bing Shao ....���ռ��������׸�<br />
������������ݼ Jing Li ....����ͷ���������<br />
���������������� Beier Bao ....��αװ����С��<br />
���������������� Kimi ....���ɻ���������<br />
�������������� Jiaxuan Li ....����<br />
������������ܰ�� Xin-yao Feng ....ĬĬ</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����ӰƬ��һ����ֵ3000��Ĵ��ұ��������������ϵ���������������ݵġ�Ů�񾭡��������빢�֡��۱�������������ݼ�����������ݵ���λ����Ŀ������˼�ı�������ǣ���������ҹ�ܼ����ŵ�ʱ�������Կ��������ܾ��˵Ĺ��¡�<br />
<br />
��������ǰ���鲨���ӻ�����ɣ������ǻ������䵥����������鲨������壬ʵ�������ȸ�������������һ�����е���С�ӡ���<br />
<br />
���������ԩ��·խ����·��꣬���˾��ȵط��ֳ����ھӣ�ס��ֻ��һǽ֮�������׹�Ԣ������ǡ�����ԩ�Ҳ���ͷ�������귢��Ҫ����Ǯ��������Ҹɳ�һ����ҵ����Ȣ���ȵ��鲨������ծ���ۣ�����׼���������������귢��Ҫ�޸����鲨��ɫһ���Ϲ������ȣ�����Ҳ�Դ��ֹ��г���ʣŮһ������<br />
<br />
��������δ��������������˼������������ƫƫ˭Ҳ����˵����ʵ�������ڴ����������ӣ��鲨����������γɹ�������������׷���Լ���С˧�������������鲨�����⼤���鲨�ļ��ʣ������ǽӽ����ȵ�Ŀ�ģ���Դ�����ȸ�����ǰ�ղصĹŶ�����<br />
<br />
��������ǰ�Ļ����ϣ������ȣ����� �Σ��ĸ��ף��鲨������ �Σ���׼����ʵ�ڿ����Ͻ�����Ů������һ��һ�Ĳ�������⵰����鵱���鲨��Ķ��ӣ������ֳ�������Ŀ�ɿڴ��������ɵ��������ӻ���鲨���º�Ը��һ���ڶ�ʱ���ڴ�ҵ�ɹ�������Ǯס��լ����������Լ����˿����������̳���ս���������ƴ������Ǯû׬��������ծ���ۣ��ߵ��˱�����ɱ�ĵز����ع�ͷ�������ȣ������鲨�ӻ��������ߣ�������һ��Ҫ������ţ���������󣬸߲��ɵͲ��͵������Դ��ڹ��У�����������Ѯ��ʣŮ��<br />
<br />
��������󣬵�����ԩ�Ҿ�Ī�������ھӡ���<br />
<br />
<font color="red"><strong><font size="3">���㻨����</font></strong></font><br />
<br />
����ǰ�����빢����Ů�Ӿ��꡷��Ե�����ԡ����硱�͡����á��ƺ��˴ˡ���Ƭ�ж����ٴ�Я�֣����������ݴٳɵġ��������ڶ������ǵ�ʱ�����ݾ������������ֳ��ݡ��鲨��һ�ǡ�<br />
<br />
����Ӱԭ����ҹҹҹ��������3��ҹ���з����ķ����£�ʱ��������72Сʱ�������������һ����У��������72Сʱ��������ָ�׼ȷ��ֱ�ۣ�Ҳ������ӰƬ�ķ��ϲ����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/ye/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/ye/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/ye/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/ye/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/ye/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��ӰƬ��һ����ֵ3000��Ĵ��ұ��������������ϵ���������������ݵġ�Ů�񾭡��������빢�֡��۱�������������ݼ�����������ݵ���λ����Ŀ������˼�ı�������ǣ���������ҹ�ܼ����ŵ�ʱ�������Կ��������ܾ��˵Ĺ��¡�����ǰ���鲨���ӻ�����ɣ������ǻ������䵥����������鲨������壬ʵ�������ȸ�������������һ�����е���С�ӡ��������ԩ��·խ����·��꣬���˾��ȵط��ֳ����ھӣ�ס��ֻ��һǽ֮�������׹�Ԣ������ǡ�����ԩ�Ҳ���ͷ�������귢��Ҫ����Ǯ��������Ҹɳ�һ����ҵ����Ȣ���ȵ��鲨������ծ���ۣ�����׼���������������귢��Ҫ�޸����鲨��ɫһ���Ϲ������ȣ�����Ҳ�Դ��ֹ��г���ʣŮһ��������',N'�й�',N'ϲ��/����',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-614862-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895399&amp;k=b0a97885d185aa7432ac6070a9f9404e&amp;t=1412261756&amp;sid=eeb7%2BIVyDHny2hzVZweI6m9fy6opki3f9TZB023p3jjXMug',N'2014/10/2 22:57:31',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 461,N'��Ӣ14�¸�������������˫���˸񡿡�BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/tishen/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/tishen/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������˫���˸�/����רʦ(��)/����<br />
Ƭ��������The Double<br />
�ꡡ������2013<br />
�������ҡ�Ӣ��<br />
�ࡡ���𡡾���/���<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.7/10 from 11,484 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1825157" target="_blank">http://www.imdb.com/title/tt1825157</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.57 GB<br />
Ƭ��������93 Min<br />
�������ݡ����¡����Ȱ��� Richard Ayoade<br />
�������ݡ���������ɭ���� Jesse Eisenberg ....Simon / James<br />
������������櫡���ϣ����˹�� Mia Wasikowska ....Hannah<br />
����������ɯ�򡤻���˹ Sally Hawkins ....Receptionist at Ball<br />
��������������˹���¶�� Chris O''Dowd ....Nurse<br />
�������������׸��޲��� Craig Roberts ....Young Detective<br />
����������ŵ�ǡ�̩�� Noah Taylor ....Harris<br />
�������������ꡤ�� Gemma Chan<br />
��������������ʿ��Ф�� Wallace Shawn ....Mr. Papadopoulos<br />
�������������ϡ���˹���� ....Paddy Considine<br />
����������������Ī���� Cathy Moriarty ....Kiki<br />
����������ղķ˹������˹ James Fox ....The Colonel</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������˫���˸���֪��Ӣ�硶IT���ˡ��������¡����Ȱ���ִ������磬��Ϊ���ԡ�Ǳˮͧ����ĵڶ���������Ʒ��ӰƬ����19���Ͷ��������˼��Ү��˹��������ͬ��С˵�ı࣬����Χ��һ��СְԱ����ɭ���� �Σ�չ����ĬĬ���ŵ���ͻȻ���������д�����һ�����Լ�����һģһ���ļһ��Լ��������������һ�У������������˷��...<br />
<br />
����SIMON��һ������ֻ֪���ϰ���ҵ�С�����ˣ����˱��Լ�������ͷ������Ҫ�������������Լ�������������ȫ���ӡ�JAMES��������ͬ��һ��������SIMONһģһ���Ը���ȫ�෴����������Ҫ����SIMONʹ��������������ƽ������������������SIMON�е��־����JAMES��ʼ��ȡ������ʵ�е��Լ�...<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/tishen/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/tishen/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/tishen/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/tishen/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/tishen/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����˫���˸���֪��Ӣ�硶IT���ˡ��������¡����Ȱ���ִ������磬��Ϊ���ԡ�Ǳˮͧ����ĵڶ���������Ʒ��ӰƬ����19���Ͷ��������˼��Ү��˹��������ͬ��С˵�ı࣬����Χ��һ��СְԱ����ɭ���� �Σ�չ����ĬĬ���ŵ���ͻȻ���������д�����һ�����Լ�����һģһ���ļһ��Լ��������������һ�У������������˷��...SIMON��һ������ֻ֪���ϰ���ҵ�С�����ˣ����˱��Լ�������ͷ������Ҫ�������������Լ�������������ȫ���ӡ�JAMES��������ͬ��һ��������SIMONһģһ���Ը���ȫ�෴����������Ҫ����SIMONʹ��������������ƽ������������������SIMON�е��־����JAMES��ʼ��ȡ������',N'Ӣ��',N'����/���',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-615270-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896639&amp;k=c5b4d64ccfd0d4ca923549963a9825be&amp;t=1412261757&amp;sid=831bXLqp7NzQoA49ieCrXHmFJ3tRpJ3F%2BxZKLHuvPn8jll0',N'2014/10/2 22:57:32',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 462,N'����������ӽ��14Ⱥ�ǡ�������С���BluRay-720P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.03/xiaotuanyuan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.03/xiaotuanyuan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.03/xiaotuanyuan/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������˼䡤С��Բ/�˼�С��Բ/�����/����ɳ��<br />
Ƭ��������Aberdeen<br />
�ꡡ������2014<br />
�������ҡ��й����<br />
�ࡡ���𡡾���<br />
����ԡ�<font color="red"><font size="3">��������˫����</font></font><br />
�֡���Ļ�����ļ�<br />
�������֡�6.1/10 from 218 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3429014" target="_blank">http://www.imdb.com/title/tt3429014</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.49 GB<br />
Ƭ��������97 Min<br />
�������ݡ������ Ho-Cheung Pang<br />
�������ݡ������� Louis Koo ....֣ΰ��<br />
������������ӽ�� Gigi Leung ....������<br />
������������־ΰ Eric Tsang ....����<br />
������������ǧ�� Miriam Yeung ....֣����<br />
�������������ϴ� Man Tat Ng ....֣��<br />
��������������� Carrie Ng ....TA��<br />
��������������� Man-Kwai Lee ....֣���������У�<br />
�����������̽� Jacky Cai ....������<br />
��������������� Ho-Cheung Pang ....����Greenie<br />
���������������� Shawn Yue<br />
�����������¾� Dada Chan<br />
����������֣ϣ�� Hei-Yi Cheng</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����֣���壨��ǧ�� �Σ�����ʱ�򲻶��£�����һ��ʹĸ�״�Ϊ�����¡�ĸ��ȥ�������Ի������µ���Ӱ�С����ܵ�֣ΰ�ϣ������� �Σ���һ�����������ļ�ͥ��������ȴһֱ����Ů�����Լ����������ĳ������ա�������˶����ײ�����Զ������ħ�С�<br />
<br />
����֣���壨��ǧ�� �Σ���һ��רְ���Σ������ɷ����£���־ΰ �Σ���һ����������ҽʦ����������ò�����룬�������˵����ߣ��¾� �Σ�������ܵ�֣ΰ�ϣ������� �Σ��������Ĳ�ϰ��ʦ�����Ӷ�������ӽ�� �Σ���һ����ҵ����ƿ����ģ�أ����ǵĺ��ӡ�С����Ȼ�������ɣ�������ò�����򸾶�����ȫ��ͬ������ΰ��ʮ�����ơ��ϸ���֣�������ϴ� �Σ������ӹ�������ҹ�ܻ�����ɣTA�㣨����� �Σ��������������ΰ��������������ӹ�ϵ����֮���������нⲻ�����Ľᣬһ���˵Ĺ�ϵ�����Զ��һ�ξ����ǳ�¼�������һ�����ܹ���̹ͬȻ��������������<br />
<br />
����������ʼ�����������ں������һ������һ��һ���䣬�����ߵ������Ʒζ������ϡ�����ֻ���ν��ߣ���ס��ȥ������·�����˼�С��Բ��͸��֣������ò�Ʒ�ƽ�˾��İ�������������˳ɳ������ص��˺�����Ӱ���������Ը��Գɳ����ͻ��͸���<br />
<br />
����֣���壨��ǧ�� �Σ���ְ����ݵ���Ա�����ɷ����£���־ΰ �Σ������ꡣ���ɷ�Ļ����鼰��ĸ�Ĺ�ϵ���룬�����������᣻����ܵ�֣ΰ�ϣ������� �Σ���һ���˲ŵġ���ϰ�����������ӹ���������ӽ�� �Σ�Ϊ��ģ������ȴһֱ�黳Ů����ò�����������������˵������������ҵ����̭֮Σ���������Ķ�ҡ��֣�������ϴ� �Σ��ڷ��޹������ҹ�ܻṤ����TA�㣨����� �Σ�Ϊ�飬�����ĭ��ȴ������ΰ�����ۿ��������ӹ�ϵ���ӣ���ͥ����Σ�������˷��������ͻ������ձ˴�͸��������ǿ��Ϣ�ľ��񣬽�������¡��������һ���ĺ�����<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
������Ӱ2014��2��10�շ�������Ԥ��Ƭ���ⲿ�������ִ������Ƭ��ǰ�ع�����ŵ�Ӱ��������۶��ص��ܼ�ʽ��¥Ӱ��Ϊ���ǣ�͸¶�������黳������Ա�������й����֡���ӽ������־ΰ����ǧ�á����ϴＰ������������ˣ���ν����������������Ϸ�ǣ������Ǿ������������ĸ���źʹ������������£����кεȱ��֡�<br />
<br />
�����˴��ع���׿�Ԥ�棬Ҳ�ľ��������û��һ��԰ף����ظ�ʮ�㡣һ����The Decemberists�����ġ�Rox In The Box����Ϊ�������֣����������౥��Ԣ�⣬ȡ����1917��������Montana��ButteС���Ϸ����Ĳɿ������¼��������͡�֮����ѡ����裬�������黳�������Ϲ���֮������̬�͵��µ���۴���������֧Ԥ����˷ḻ��Ѥ�õĻ��棬��ʾ��ǧ˿���Ƶ������ϵ֮�⣬���в���������õĳ�����֣�����ӽ������Ѫ��װ�磬���ϴ�ķ�ʦ���࣬���Ժ�̲�ľ޴��㣬����ߴ�¥���߹��Ĺ��ޣ���ҹ���е�ֽ�����⳵����������Ȥ������ʤ������Ц˵,����һֱ���������Ʒ�ڵ���Щ���������пչ����⣬�����з����ⲿ��Ӱ�ڡ���<br />
<br />
������������������ĥһ�����������������Ϸ�ǵ��������֮�⣬���Ƴ¹��������򣬺ͻ����ֵܵļӳ֣���Ϊ���˼�С��Բ��ע�����µĳ��롣Ϊ��Ƭ���ݻ����ļ��Ƴ¹���������ҷ����������˵�ԭ�򣬡�������Ѿ��������˺ü����кý����ĵ�Ӱ�����Ҿ�����Ӧ����һ������ͼ�ֺ��κ��˵���Ʒ��һ������¶���汾ɫ����Ʒ��ÿ���õ��ݶ�Ӧ�ý�������һ�������Ŀ��顣���������ڴ˴κ����ĺ����������ֵ��ܲ������ڱ�ʾ����������Ʒ���ż�ǿ�ĸ��˷�񣬾������г�����������ЧӦ���˴εġ��˼�С��Բ����Ϊ����Ǳ��ĥ��֮������ʮ�ֿ����ⲿ��Ӱ��δ�������������Ϊһƥ����������һƥ����������ǧ������<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
�����˼�С��Բ������Ϊ�������2014���ת��֮������������Ʒ��������Ϊ���ࡢ����ͱ��˵�һ����ӰƬ�ӳﱸ�����ѳ�������ʱ�䣬���µ�ȡ���������漰���Լ��Ĺ��¼���·���̡�<br />
<br />
����Ƭ�����Ƭ��Դ��Ƭ������Ҫ�ĳ������롰����С���������ϢϢ��ء�<br />
<br />
����ǧ�ñ��ϳ�����賣�����賿�����ӷ����Ž�����Ҫ˯��������ɷ��Ӹ������ɹ���ΪϷ��������Ҫ��ױ���ݣ���Ϊһ����Թ�����������㲵�ʱ�����������ױʦ��������è�ۡ�<br />
<br />
��Ϸ����ӽ��Ů���ĳ����Ǳ�ɫ�������ǵ��ݵ��ر��趨��С������������������������Լ���������������ŷǱ�Ѱ�������塣<br />
<br />
�����ھ�����Ҫ�����ݹ����������ɫ����Աһ����û�������ݡ������������ӽ����������ʱ����ӽ��������ԥ�ͽ����������ɫ�������Ц���ɴ˿�֪Gigi�϶�û���ݡ�<br />
<br />
�����˼䡤С��Բ����������ˡ������ս���ı���սʿ�ͺ���ʿģ�ͣ��������ֱ�������Ρ�¬��˹Ҫ����Ȩ���������Է�����Ӣ�ľ籾��¬��˹����һ��˵����������á�<br />
<br />
����ǧ���ڲɷ�����˵�������ġ�־���봺����ǰ�����������š��˼�С��Բ����������С����ľ籾��������ֱ����ǧ��ƾ��������־�������Ӱ�󣬡��˼�С��Բ���������١�<br />
<br />
������贩�ŵ��߷�������Ƭ�еı�ɫ����������Գ���Ϊ�����ܹ��޵�Ӱ��Ѭ�գ��������ⲿӰƬ��Բ���Լ��Ĺ����Ρ�<br />
<br />
����ǧ�õĽ�ɫ�������ͯ���Ӱ�ӣ����������������н�ü���Ĳ�ϰ����Ϊԭ�ͣ���ӽ���Ľ�ɫ����Ϊ����迴�������кܶ����ݵĹ�棬���뵽���ǵĺ��Ҫ����ȥ��Գ��ò�Ư������¡�<br />
<br />
��ӰƬ����200�򣬽��˳�20�ס���9�ף���60�����õ�ֽ�����С���Ƭ������80���汾�����ӳ���150����ֱ��95���ӡ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/xiaotuanyuan/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/xiaotuanyuan/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/xiaotuanyuan/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/xiaotuanyuan/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/xiaotuanyuan/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��֣���壨��ǧ�� �Σ�����ʱ�򲻶��£�����һ��ʹĸ�״�Ϊ�����¡�ĸ��ȥ�������Ի������µ���Ӱ�С����ܵ�֣ΰ�ϣ������� �Σ���һ�����������ļ�ͥ��������ȴһֱ����Ů�����Լ����������ĳ������ա�������˶����ײ�����Զ������ħ�С�֣���壨��ǧ�� �Σ���һ��רְ���Σ������ɷ����£���־ΰ �Σ���һ����������ҽʦ����������ò�����룬�������˵����ߣ��¾� �Σ�������ܵ�֣ΰ�ϣ������� �Σ��������Ĳ�ϰ��ʦ�����Ӷ�������ӽ�� �Σ���һ����ҵ����ƿ����ģ�أ����ǵĺ��ӡ�С����Ȼ�������ɣ�������ò�����򸾶�����ȫ��ͬ������ΰ��ʮ�����ơ��ϸ���֣�������ϴ� �Σ������ӹ�������ҹ�ܻ�����ɣTA�㣨�����',N'�й����',N'����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-613019-1-2.html',N'http://www.lwgod.com/attachment.php?aid=891085&amp;k=dffc312095e132c24051030f43264817&amp;t=1412261762&amp;sid=2f42HUhFYRsOSBl9JjsaiaXi1O2H2VrkhUzO4UR944vr3XY',N'2014/10/2 22:57:32',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 463,N'����14�����ڴ�Ʊ�����������ӳ�2����BluRay-720P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�����������ӳ�2/�����ӳ�2������սʿ/�����ӳ�2���Ắսʿ(̨)/�����ӳ�2������սʿ/�����ӳ�������<br />
Ƭ��������Captain America: The Winter Soldier<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡶���/�ƻ�/ð��<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�<font color="red">8.0/10 from 202,807 users</font><br />
�������ӡ�<a href="http://www.imdb.com/title/tt1843866" target="_blank">http://www.imdb.com/title/tt1843866</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.70 GB<br />
Ƭ��������136 Min<br />
�������ݡ������ᡤ���� Anthony Russo<br />
�����������ǡ����� Joe Russo<br />
�������ݡ�����˹������˹ Chris Evans ....�����ӳ�/ʷ�ٷ��޽�˹<br />
����������˹������Լ��ѷ Scarlett Johansson ....����ɯ������ŵ��/�ڹѸ�<br />
��������������˹�ٰ���˹̹ Sebastian Stan ....���桤�Ͷ�˹/����սʿ<br />
���������������ᡤ�� Anthony Mackie ....��ӥ/ɽķ������ѷ Sam Wilson/The Falcon<br />
�������������Ѷ����ܿ�ѷ Samuel L. Jackson ....��ˡ����� Nick Fury<br />
�����������޲��ء��׵¸� Robert Redford ....����ɽ��Ƥ��˹&nbsp;&nbsp;Alexander Pierce<br />
�����������̡ܱ�ʷĪ��˹ Cobie Smulders ....������-ϣ�� Maria Hill<br />
���������������������� Emily VanCamp ....ɯ�ʡ����� Sharon Carter<br />
�������������򡤰���ά�� Hayley Atwel ....�弪������ Peggy Carter<br />
���������������ˡ������� Frank Grillo ....�����-��ķ��/��� Brock Rumlow/Crossbones<br />
�������������˹������ŵ���� Maximiliano Herna ....����ά���ع� Jasper Sitwell</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������·����ڡ����������ˡ������ʷ�ٷ��Ѷ��ӻ�ʢ�٣�Ŭ����Ӧ�ִ��������Ȼ����һ������Ϯ���¼��˺�����ֵܾ���Ҫ����ʱ�������ӳ��������³������ϺڹѸ�����ǰ����ɱ���Ĵ̿ͣ��ҳ�Ļ�����ס�<br />
<br />
�����ھ����ˡ����������ˡ���ŦԼ��ս�������ӳ�ʷ�ٷ��޽�˹����ڻ�ʢ�ٹ����񵭵����Ŭ�������������ִ���ᡣȻ����һ����ܾ�ͬ������Ϯ����ʷ�ٷ��Ⱦ�����һ����вȫ��Σ����ı������ڹѸ�Я�ֳ�����һ�߷��������Լ���ڵ�ɱ�֣�һ��Ŭ����¶����޴���ı������Ŀ���������˵�а��ƻ�ȫ���ع�������ӳ��ͺڹѸ��õ���һλ��ͬ�ˡ���ӥ����Э����Ȼ������Ҳ�����Լ���Ҫ���ٵģ���ǰ��δ�����������ϵĺڰ����С���������<br />
<br />
��������ϰ�����ִ�����������ӳ�ʷ�ٷ��޽�˹������˹������˹ Chris Evans �Σ�����һ���ж��������ᵽ��ܾ��ڲ�������������������ζ��������֪��ܾ������ܽ��еġ�����ƻ���������Ϊ�˸е���ŭ��ĳ�죬��ܾ�ָ�ӹ����-�������Ѷ����ܿ�ѷ Samuel L. Jackson �Σ��⵽һȺ��װ����Ϯ������ƴ��ȫ����һ֧U�̽��������ӳ����У���������Ÿþֶ�ս��������Ҫ������µ����ܡ��ڴ�֮�������ӳ�������ɱ����˶��⵽ǰ�ֳ�����ɽ��Ƥ��˹���޲��ء��׵¸�/Robert Redford �Σ���ͨ����׷ɱ�����������õ��ڹѸ���˹������Լ��ѷ Scarlett Johansson �Σ��������ϱ�����ӥ���������ᡤ�� Anthony Mackie �Σ��İ�����<br />
<br />
�������Ǳ������ֶ���⿪��ֵܾ����ܣ���ֹ������ƻ�����ʩ�С���<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
������˹������˹Ϊ�������ӳ�2�������˶�������ѵ�������а����ܿᡢ�������������ֵ���ȭ���ȵȡ�������Ϊ�����ִ���ʷ�ٷ��޽�˹��Ҫѧϰ������һЩ�ִ��򶷼��ɡ�<br />
<br />
�����ݶ���������˹�ٰ���˹̹�������ϸ�Ĵ򶷺�����ѵ����Ϊ�����Լ��Ķ����Եø���Ȼ������������������С����ϰ��Ϊ�˻��⵽����������ĳ�Ц��<br />
<br />
����Ӱ����ӥ���Ʒ��������и�������ս���У���װ��Ʋ����˴���֯��������ͳ��֡������ᡤ��Ҫ��25���Ӳ��ܴ��������Ʒ���<br />
<br />
�����������ֵܳ�1970������侪�Ƭ�����������������������ӳ�2�������ܶ���к�������Ƭ���ǳ���������׷��Ϸ�����¾����������������е�׷��Ƭ�Ρ�<br />
<br />
�����������ֵ��Ӱ�1970�������Ƭ����ˡ������ӳ�2��������ӰƬ�������ͺӥ72Сʱ���������꡷����ɱʮ���С���70���ӰƬ�¾���������70�����������֮һ�޲��ء��׵¸����ݱ�Ƭ��Ҫ��ɫ��<br />
<br />
��ӰƬ�ڻ�ʢ��ȡ����һЩȫ�������ĵر�������ѷ�����á��ֿϼ����á�����ɽ�ȶ�������ӰƬ�У�������Ϊ�����㽫��˹��������ʱ��գ���Ҳ����ʷ������һ��Ϊ���ĵ�Ӱ����մ��š�<br />
<br />
��Ϊ�������Ӱ�з�������Ī����֮�Ǻ��ϵ�Ϸ�ݣ������Ŷ�ʹ����ͣ���ڼ��ݳ�̲�ĺ�����ָ�����ġ������ڴ������޵Ŀռ��ﰲ�Ÿ��Ӽ��ҵĶ���Ϸ������ս�������Ŷӻ��Ǻܸ����ܹ����洬�����㡣<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����·����ڡ����������ˡ������ʷ�ٷ��Ѷ��ӻ�ʢ�٣�Ŭ����Ӧ�ִ��������Ȼ����һ������Ϯ���¼��˺�����ֵܾ���Ҫ����ʱ�������ӳ��������³������ϺڹѸ�����ǰ����ɱ���Ĵ̿ͣ��ҳ�Ļ�����ס��ھ����ˡ����������ˡ���ŦԼ��ս�������ӳ�ʷ�ٷ��޽�˹����ڻ�ʢ�ٹ����񵭵����Ŭ�������������ִ���ᡣȻ����һ����ܾ�ͬ������Ϯ����ʷ�ٷ��Ⱦ�����һ����вȫ��Σ����ı������ڹѸ�Я�ֳ�����һ�߷��������Լ���ڵ�ɱ�֣�һ��Ŭ����¶����޴���ı������Ŀ���������˵�а��ƻ�ȫ���ع�������ӳ��ͺڹѸ��õ���һλ��ͬ�ˡ���ӥ����Э����Ȼ������Ҳ�����Լ���Ҫ���ٵģ���ǰ��δ�����������ϵĺڰ����С���',N'����',N'����/�ƻ�/ð��',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-614780-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895187&amp;k=e5109f9bd05168290c738a77e8aee40d&amp;t=1412261757&amp;sid=aa7c44rtbGdr7xDoTEciayanXlGTl%2FaHIHDX2kmwZWz%2F8iA',N'2014/10/2 22:57:32',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 464,N'���˳�����14��Ʊ���漣�������ִ�ʦ����HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/fenshoudashi/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/fenshoudashi/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ִ�ʦ<br />
Ƭ��������The Breakup Guru<br />
�ꡡ������2014<br />
�������ҡ��й�<br />
�ࡡ����ϲ��/����/����<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�������֡�5.1/10 from 93 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3667798" target="_blank">http://www.imdb.com/title/tt3667798</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��1.11 GB<br />
Ƭ��������114 Min<br />
�������ݡ��˳� Chao Deng<br />
�������������ü Baimei Yu<br />
�������ݡ��˳� Chao Deng ....÷Զ��<br />
�������������� Mini Yang ....ҶС��<br />
������������ٳ Betty Sun ....��ٳ���ʹ���<br />
�������������� Chao Liang ....�ƴ�ʦ<br />
�������������� Yan Liu<br />
�������������� Na Zha<br />
�����������⾩ Jacky Wu ....�⾩���ʹ���<br />
����������л� Nan Xie ....л骣��ʹ���<br />
������������Ԫ�� Yuan Hui Luan<br />
������������԰԰ Yuanyuan Liu<br />
�������������˺� Zi Han Ji ....ҶС����ͯ�꣩<br />
���������������� Manzu Zhao<br />
������������Խ Yue Qin<br />
�������������� HanHan ....�������ʹ���<br />
�������������� Jin Xing ....���ǣ��ʹ���<br />
�����������ܿɷ� Kefan Cao ....�ܿɷ����ʹ���</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����÷Զ�󣨵˳� �Σ���һ����о�����Ϊ�ḻ�����ˣ���Ȼ�й�����������ʧ�����飬ȴҲ�����̾���һ��ͨ���ٻ�����Ŀ�ׯ�����������÷Զ���������׶����������侫Ӣ�ŶӲٰ�����˷��ֵ�����ҵ�����������������ĸ�������ֻҪƱ�Ӹ��㣬���ܻ��Ч�ʵ�������񡣰�����ô��õĶ���̫���ɿ�������Ǯ���������ġ���һ�죬÷��������һ�����⣬�Ǿ��ǰ�ͻ�˦������Ů��ҶС�������� �Σ���С����һ����ǿ��Ϣ�ı�Ư���������������֮������Ϣ�ĸ��壬ͬʱҲΪ�����õ����������ƴ��ԭ�������־��÷Զ�󣬴Ӻ�С���Ӵ��ĵ�һ�������Ǳ˴˵������ͷ����˸ı䡭��<br />
<br />
������Ƭ����ͬ����������ıࡣ<br />
<br />
����ãã�˺�������Ʈҡ�����Ҹ���ֵ�ƽ�����������ͨ��Է������ʮ����ÿһ������ÿһ�������ﶼ��������ŮΪ�˸�����֣���������ɱ���ϵ��������������⣬���������Ƿ��ա��۳�������ĩ�վ�Ҫ������˭�ܾ���ǧ����ԹŮ��ˮ��<br />
<br />
����һ����ãã�˺�һ������һ���ǹ��̷���һ֧������Ե������Գ���Ϊ����÷Զ�󣬺�����쳾���Գɹ�ѧ����Ϊҵ��ҶС����һ�δ��������Ӣ�۾������Ӵ˷�Ŀ�ɳ��Ʋ�������������������������ײ����Ůһ��꣬��ʤȴ�����˼������������������һ����ʷ������İ��顱����<br />
<br />
������������Ͷ��·��ù���������񾭽ٷˣ�������ޡ���Ȥ��Ȼ�ĳɹ�ѧ��ʦ���ŷ�ѡ��Գ����Ĳ�����ȥ��������ѧ��ʦ���Լ�����һƳ��������ķ�ˮ��ʦ��������ʦ�������ʦ�ȸ�ɫ��ͷ��������������ͬ���ݱ���������Цͬʱ����������˵���̨ϲ�硣<br />
<br />
��������ν�������ڼ���Ψ������־�������أ�һ�����أ�<br />
<br />
��������������ʦ��أ���˭Ƥ������пգ��ҳƳɹ���<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ӱ�桶���ִ�ʦ���ı������ü���Ʊ�硢�˳����γ�Ʒ�˵�ͬ����Ц���硣�������ݹ�����汾�������֡���ӱ�����ݹ���ҶС������<br />
<br />
����Ȼ�ı���ͬ�����磬����Ӱ�桶���ִ�ʦ��ֻ�����˽�ɫ���������뻰�����൱��ĸĶ������ֻ��10%�����ݺͻ���һ����<br />
<br />
���˳���ϣ�������ڰ��ݡ�ҶС����ʱ������Ϊ������������ֹ����ȥ�������ִ�ʦ���Ļ���档<br />
<br />
���������ݵ�һ�γ���ȫƬ�����ա��������������ߡ���ë��üë��û���κε����Ρ����ճ����ǽ�ɫ����ҶС���ǵ��͵ġ���˿Ů�������ݵ˳������üϣ����ɫ״̬������ȷ����ʵ�ġ�<br />
<br />
���ԡ����ִ�ʦ���ﱸ��ʼ�����������ݡ��������ڵľ����Ա��������8��С������Ů�������ݺ��ر��ݳ�����ٳ�������ֶ����ű����ԡ�׼���衱����ݲ����˵�Ӱ����Ҷ�Ϸ�����ǡ������ʦ���ľ��顣<br />
<br />
�������ִ�ʦ���е˳������������Ǵ������Ժڡ����磬����Ϊ�˶�ܹ��е�ë����˹���֣��������Լ������Լ��ط��ڹ��ࡱ���̣���ٳ���ݳ��˱������ǡ�׽���ڴ��������º͵˳����ķ��ִ�Ϸ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/fenshoudashi/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/fenshoudashi/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/fenshoudashi/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/fenshoudashi/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/fenshoudashi/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��÷Զ�󣨵˳� �Σ���һ����о�����Ϊ�ḻ�����ˣ���Ȼ�й�����������ʧ�����飬ȴҲ�����̾���һ��ͨ���ٻ�����Ŀ�ׯ�����������÷Զ���������׶����������侫Ӣ�ŶӲٰ�����˷��ֵ�����ҵ�����������������ĸ�������ֻҪƱ�Ӹ��㣬���ܻ��Ч�ʵ�������񡣰�����ô��õĶ���̫���ɿ�������Ǯ���������ġ���һ�죬÷��������һ�����⣬�Ǿ��ǰ�ͻ�˦������Ů��ҶС�������� �Σ���С����һ����ǿ��Ϣ�ı�Ư���������������֮������Ϣ�ĸ��壬ͬʱҲΪ�����õ����������ƴ��ԭ�������־��÷Զ�󣬴Ӻ�С���Ӵ��ĵ�һ�������Ǳ˴˵������ͷ����˸ı䡭����Ƭ����ͬ����������ıࡣãã�˺�������Ʈҡ�����Ҹ���ֵ�ƽ��',N'�й�',N'ϲ��/����/����',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-615268-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896638&amp;k=f4dffb7024f795833d762bf40d7ad309&amp;t=1412261758&amp;sid=6f618vCeBiZdNXGH8URdax7an0LpKy9x6X4RfuQs5TkRvx8',N'2014/10/2 22:57:32',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 465,N'��ʩ������14�𱬶��������ƻ��ߡ���BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/pohuaizhe/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/pohuaizhe/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/pohuaizhe/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������ƻ���/��ɱ¾(̨)/����׷��(��)/ʮ<br />
Ƭ��������Sabotage<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡶���/����/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�5.8/10 from 15,393 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1742334" target="_blank">http://www.imdb.com/title/tt1742334</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.02 GB<br />
Ƭ��������109 Min<br />
�������ݡ���������Ү David Ayer<br />
�������ݡ���ŵ��ʩ������ Arnold Schwarzeneg ....John ''Breacher'' Wharton<br />
������������ķ�������� Sam Worthington ....Monster<br />
����������������ŵ˿ Mireille Enos ....Lizzy<br />
�������������˹������� Max Martini ....Pyro<br />
������������ʲ�������� Josh Holloway ....Neck<br />
����������̩��˹�������� Terrence Dashon Ho ....Sugar<br />
��������������ά�ǡ�����ķ˹ Olivia Williams ....Investigator Caroline Brentwood<br />
�������������ޡ�����Ŧ Harold Perrineau Jr.<br />
���������������������տ��� Angela Kerecz ....Stripper<br />
����������������Ī�� Ralf Moeller<br />
������������������ Martin Donovan ....Floyd Morgan (rumored)</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������½���һ֧��Ӣ������ȥ�Ը�ȫ������߶˵ķ�����֯����Ҫͨ�������ս���Զ����Ĳ���֮������ͻϮ����������ţ���������Ϊ���ǵļƻ�����һʧ��ֱ����Աһ����һ������ɱ��<br />
<br />
��������С�ӡ��ƻ��ߡ��ڶӳ�Լ�����ֶ٣���ŵ��ʩ������ Arnold Schwarzenegger �Σ��������´�����������ķ����Ż�¼Ӷ������˵ľݵ㣬����һ�ּ��ҵĽ��棬С��һ����Աս�������ֳ���ʧ��һǧ����Ԫ�ֽ�Ҳ�á��ƻ��ߡ������г�Ա�⵽���ϲ���֯�ĵ��顣δ����ã��߲�ָʾԼ���ͳ�Ա�Ǹ��͸�λ�����¿�ʼ�ж���˭֪δ����ã�С�ӳ�Ա�Ӷ��������ڷ������ƺ��¼Ӷ���Ϊ�˶�ʧ�ľ޿����߳�ŭ����չ�����ı�����<br />
<br />
��������̽Ա�����գ�����ά�ǡ�����ķ˹ Olivia Williams �Σ����������ʱ������Լ������չ���ж������ȴ����ǰ���ĵ�·�������գ������������ŵĺ�Ļ����������ǰ����<br />
<br />
����Լ�����ֶ�ɭ����ŵ�¡�ʩ�������Σ������������־�Ӣ�Ŷӵ��쵼���Ŷӳ�Ա��ղķ˹�����ף���ķ���������Σ����������ȡ����ף�������ŵ˹�Σ����ǡ������֣��ǡ����������Σ�������Ҷ˹���������ȣ�����˹���������Σ������ϡ��ǵ�����ʲ���������Σ�����ķ���޲��ȣ����˼�������Σ������������������ᣨ���ġ���˹�Σ���ղ��˹����ˡ�ʩ������Σ���<br />
<br />
�����ڶ�ĳ�������زֿ����ͻ�����ʱ��ղ��˹���������Ŷ��ڲֿ����ѵ���1000����Ԫ�����ǽ�Ǯ������ˮ�ܵ���ƽ�֡�Ϊ���ڸ��ټ������ǰѲֿ�ը�١������߿���ʧ�����Ŷӵ��ϼ��������¡���÷����������ŵ���Σ����Ǿ��쵽���ף������Ŷӽ���һ�ι��ڵ��Եĵ����ڼ䱻ְͣ���¡�����ȱ����ֵ�֤�ݣ���÷���ָ��ŶӵĹ���������ʱ�ֶ�ɭ�������ȸ����׷��ֺ�Ⱦ�϶�񫡣<br />
<br />
�������ú��޲���������ʶ״̬�±������������ϣ����𳵻��ײ�������Ա�����ա���������£�����ά�ǡ�����ķ˹�Σ��ʹ���ʿ���ܿ�ѷ�����ޡ�����ť�Σ�������ȥ���鰸����������Ѷ�޲��ȵĶ��ѡ���Ѷ�ڼ䣬���������ָ���ǵ������˱��ʻ���<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
��������Ե��<br />
<br />
�������ھ��졢����������ж���ĵ��ݴ������ǣ����Ա��Ե�����һ����Ӱ�����߳����顷��End Of Watch��ʱ���ο������š���̽С˵֮�󡹰���ɯ����˿�ٵ���Ʒ��һ������������Then There Were None/Ten Little Niggers���������ⲿ��Ӱ�ĳ��Σ����Ҿ���������ŵʷ�����񵣸��ݳ����������ˡ�������Ը�������ɽķ�����٣��������ˡ�Ӳ������Ա̩��˹���������ڡ�ĩ��֮ս��������ӡ����̵�������ŵ˹�������ݣ�������������һ�����������ķ��ﾪ㤶���Ƭ��<br />
<br />
�ﰢŵʷ���������¶���ˬƬ�������䳡��ս�й��۷�֮����<br />
��𺳽���������ά���Ǽ̡����߳����顷����һ�Ա��Ե���������<br />
���˹����Χ̩��˹����X�����Ը�����ɽķ���������ִ���֮��㤶���Ƭ<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/pohuaizhe/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/pohuaizhe/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/pohuaizhe/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/pohuaizhe/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/pohuaizhe/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����½���һ֧��Ӣ������ȥ�Ը�ȫ������߶˵ķ�����֯����Ҫͨ�������ս���Զ����Ĳ���֮������ͻϮ����������ţ���������Ϊ���ǵļƻ�����һʧ��ֱ����Աһ����һ������ɱ������С�ӡ��ƻ��ߡ��ڶӳ�Լ�����ֶ٣���ŵ��ʩ������ Arnold Schwarzenegger �Σ��������´�����������ķ����Ż�¼Ӷ������˵ľݵ㣬����һ�ּ��ҵĽ��棬С��һ����Աս�������ֳ���ʧ��һǧ����Ԫ�ֽ�Ҳ�á��ƻ��ߡ������г�Ա�⵽���ϲ���֯�ĵ��顣δ����ã��߲�ָʾԼ���ͳ�Ա�Ǹ��͸�λ�����¿�ʼ�ж���˭֪δ����ã�С�ӳ�Ա�Ӷ��������ڷ������ƺ��¼Ӷ���Ϊ�˶�ʧ�ľ޿����߳�ŭ����չ�����ı���������̽Ա�����գ�����ά��',N'����',N'����/����/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-612931-1-2.html',N'http://www.lwgod.com/attachment.php?aid=890642&amp;k=aea8b024bd1e5b06de24896e7f8065c1&amp;t=1412261765&amp;sid=b397RcZGZwgNTv2QHDMjcsuEKweHPVzM%2FMSXGYaOGQhHFlg',N'2014/10/2 22:57:32',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 466,N'����14������Ů�����ԸС�����X�ۡ���BluRay-720P.MKV�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/hongfen/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/hongfen/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������X��/��۽��<br />
Ƭ��������Aka X Pinku<br />
�ꡡ������2014<br />
�������ҡ��ձ�<br />
�ࡡ���𡡶���/����<br />
����ԡ�����<br />
�֡���Ļ�����ļ�<br />
�������֡�6.4/10 from 31 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3456784" target="_blank">http://www.imdb.com/title/tt3456784</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.35 GB<br />
Ƭ��������128 Min<br />
�������ݡ��౾��һ Koichi Sakamoto<br />
�������ݡ����������� Yuria Haga<br />
����������Sanae Hitomi<br />
����������С������ Rina Koike<br />
����������Takahisa Maeyama<br />
����������ˮ���Ů Ayame Misaki<br />
����������Misaki Momose<br />
����������Sho Nishino<br />
����������Haruka Ohshima<br />
����������Hideo Sakaki<br />
����������Rina Sakuragi<br />
����������Hiroshi Shinagawa</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������Ӱ����x�ۡ��ı���ֱľ������ӣͥһ����ͬ��С˵����ÿ�������ڷ�����Сѧչ���ķǷ�Ů�Ӹ񶷻Ϊ������������Ů����ʹ��ĥ���гɳ��Ĺ��¡�<br />
<br />
��������ľ��һ������У԰�ڣ�ÿ�������ŷǷ��񶷼����ݡ�Girl��s Blood����������ŮͶ���ڴˣ��������������ݳ����������������ײ�������ݡ�������ʿ555����������ʿKiva���ķ��������ǣ���Ƭ�д���սȫ�����������һ������Ů�ԣ����С��Ա���ͬ�ϰ����Ŀ��ֵ��ҡ����w�¡����⣬�����������ݴӼұ��ɷ������ӳ��������޸񶷼ҡ���ǧ�ģ�ˮ���Ů����SMŮ������������,С�����ΰ��ݳ���������������OL�������ɡ�<br />
<br />
������Ƭ��һ��Girls Action��ԭ��Ϊֱľ������ӣͥһ����С˵�����ó����㶯��Ƭ���౾��һ����ִ����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/hongfen/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/hongfen/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/hongfen/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/hongfen/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/hongfen/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����Ӱ����x�ۡ��ı���ֱľ������ӣͥһ����ͬ��С˵����ÿ�������ڷ�����Сѧչ���ķǷ�Ů�Ӹ񶷻Ϊ������������Ů����ʹ��ĥ���гɳ��Ĺ��¡�����ľ��һ������У԰�ڣ�ÿ�������ŷǷ��񶷼����ݡ�Girl��s Blood����������ŮͶ���ڴˣ��������������ݳ����������������ײ�������ݡ�������ʿ555����������ʿKiva���ķ��������ǣ���Ƭ�д���սȫ�����������һ������Ů�ԣ����С��Ա���ͬ�ϰ����Ŀ��ֵ��ҡ����w�¡����⣬�����������ݴӼұ��ɷ������ӳ��������޸񶷼ҡ���ǧ�ģ�ˮ���Ů����SMŮ������������,С�����ΰ��ݳ���������������OL�������ɡ���Ƭ��һ��Girls Action��ԭ��Ϊֱľ������ӣ',N'�ձ�',N'����/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-614772-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895183&amp;k=067918e5704038aff08ed13cf8518f68&amp;t=1412261758&amp;sid=3146kbUmu%2B9KUbEEgFa3P8NzhXaMLK9JAunemyXV7y96oDM',N'2014/10/2 22:57:33',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 467,N'��̩14Ʊ���ھ������ˡ���������2����BluRay-720P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/3dian/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/3dian/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������3���ա��ٹ���/������2/�鳿����2/�������賿����<br />
Ƭ��������3 AM Part2<br />
�ꡡ������2014<br />
�������ҡ�̩��<br />
�ࡡ���𡡿ֲ�<br />
����ԡ�<font color="red"><font size="3">̩������˫����</font></font><br />
�֡���Ļ�����ļ�<br />
�������֡�6.0/10 from 38 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3345466" target="_blank">http://www.imdb.com/title/tt3345466</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.68 GB<br />
Ƭ��������104 Min<br />
�������ݡ�Isara Nadee<br />
����������Kirati Nakintanon<br />
����������Putipong Saisikaew<br />
�������ݡ������ء������Ȳ����� Thawat Pornrattanaprasert<br />
������������������������ Sinjai Plengpanit<br />
�����������ס�������� Ray MacDonald<br />
�������������ȡ��������� Tina Jittaleela<br />
����������Supanart Jittaleela<br />
����������Apapattra Meesang</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����賿��������������ʢ��ʱ�䣬����Ҳ�������й��׼�������3���ա��������賿������Ϊ��������ӳ�������¶����ܻ�ӭ��������3���ա�Ļ������3���գ��ٹ��꡷����ȫ��3����������ë���Ȼ�Ŀֲ����¡����ǰ���������������������ϻص�����ġ� ����ĵ���ҹ�������Ű�ҹ�ﴫ����ͷ��Ů������ٵġ���ԺѧУ̽��ҹ�����Լ�������Ц�ġ�ֽ���̵Ŀֲ�ҹ������<br />
<br />
������ʬ���꡷Ѫ�����Ӱ�������Ů�ѹ������һ�����˲��ո���һ�𣬷�ŭ�İ�����ʻ����׷�ϣ����������������������ĵ����죬ƽ�յĺ�����Ϥ��������������Ͳ���Ҳ�������㣬�������¼�ҲͻȻ�������ڴ�֮������Ѱ�Ұ�����ʧ���ֻ��������Ĺ�Ӱȴ�������֣��������١�ĳŮ�ӽ̻�ѧУ����˵����һ��Ϊ���������Ů������������ͷŮ����ҹ���Ŷ����ĸ��١�������ϵ�������Ը���ܿ�ͻ�������档������Ҳ�����ſ��µ�Σ�ա��������ʺͰ�����Ů����Ϊ�������յأ�����ֽ����ֽ�����ϰ�����������������������Ϲ��������ڡ������۸���С��ư�Ĭ�պô����Ϸ���һ�򳵻���Ϣ���������Ϣ������Ϊ�𾪣��ֲ�����ҹ���������ࡣ<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/3dian/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/3dian/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/3dian/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/3dian/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/3dian/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���賿��������������ʢ��ʱ�䣬����Ҳ�������й��׼�������3���ա��������賿������Ϊ��������ӳ�������¶����ܻ�ӭ��������3���ա�Ļ������3���գ��ٹ��꡷����ȫ��3����������ë���Ȼ�Ŀֲ����¡����ǰ���������������������ϻص�����ġ� ����ĵ���ҹ�������Ű�ҹ�ﴫ����ͷ��Ů������ٵġ���ԺѧУ̽��ҹ�����Լ�������Ц�ġ�ֽ���̵Ŀֲ�ҹ��������ʬ���꡷Ѫ�����Ӱ�������Ů�ѹ������һ�����˲��ո���һ�𣬷�ŭ�İ�����ʻ����׷�ϣ����������������������ĵ����죬ƽ�յĺ�����Ϥ��������������Ͳ���Ҳ�������㣬�������¼�ҲͻȻ�������ڴ�֮������Ѱ�Ұ�����ʧ���ֻ��������Ĺ�Ӱȴ�������֣��������١�ĳŮ�ӽ�',N'̩��',N'�ֲ�',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-612928-1-2.html',N'http://www.lwgod.com/attachment.php?aid=890639&amp;k=b09c7a6696840ffde56fcc718e94551d&amp;t=1412261759&amp;sid=5cbdppNkuAbSRe%2BJg4eTy0hxV2s1TD9aAz9GAHa1GthfqwY',N'2014/10/2 22:57:33',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 468,N'���װٺ�֣�л�14��Ʊ�����������ռǡ���HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/zhengrong/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/zhengrong/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�����������ռ�<br />
Ƭ��������The Truth About Beauty<br />
�ꡡ������2014<br />
�������ҡ��й�/�й����<br />
�ࡡ����ϲ��/����/����<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�������֡�5.8/10 from 19 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3644610" target="_blank">http://www.imdb.com/title/tt3644610</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��832 MB<br />
Ƭ��������84 Min<br />
�������ݡ��ְ��� Oi Wah Lam<br />
�������ݡ��װٺ� Baihe Bai<br />
����������֣�л� Ronald Cheng<br />
�������������� Yao Zhang<br />
���������������� Jingfei Guo<br />
�����������Ŵ��� Dali Zhang</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������ҵ�ڼ������ƴ�ѧ��������Ϊ��ò���ѱ����ѽ���Ϊ�����ѡ����Ŵα�ӦƸ��λ����͸����ʹ��˼ʹ������̤���ˡ����ݲ���·���������ġ���������������500��ǿ���������˰������ͷ��ֱ����һ�챻���ع⡱�������࡭��<br />
<br />
�����������ռǡ������˱�ҵ�ڼ������ƴ�ѧ���������װٺ����ݣ�һҹ֮����Ϊ��˫ʧ���ꡱ����Ϊ��ò�񡰳����ֳ��������������������ֱ�Ӵӡ�Ů�ѡ�����Ϊ�����ѡ�����Ϊ����ȱ�������ڸС����Ŵα�ӦƸ��λ����͸����ʹ��˼ʹ���������շ��ַ�ȥ����˫��Ƥ��̤���ˡ����ݲ���·����Խ��Խ�����ġ�����������������500��ǿ���������˰������ͷ�������޷�����ǰ�壬һ·�߸��ͽ���ֱ����һ�챻С�ˡ��ع⡱�������࣬�������漣˲����������Ц��������ֻ����Ķ��ӡ���ҵ�Ͱ��齫���������Ŀ��飿<br />
<br />
������ѧ���������װٺ� �Σ�������������ѣ������� �Σ�����Ӳ�����������飬��ҵʱ����Ϊ������̫���������֡����ܴ���Ĺ������޵�ʱ�䶼û�о����ϼ������ҹ����Ĵ������Ϊ��ò��ƽӹ���������ҹ����������������ڣ���ȴ������һ�������б��߹����ɣ�֣�л� �Σ��������ĲŻ�����ù�����<br />
<br />
���������ǹ�˾�ﾫӢ�����������˾����Ů�Ƿ�Ϊ���񣬶�����߲�����·��Ů��顣���߸����ϵ���ȴһֱ��ƽ���Ĺ��������࿴������Ϊ�����ɾ�������һ������Ǯ���ݡ����򲻸������ˣ������˴�ѵĽ�Ǯ�󣬹������ձ����������Ľ����Ů�����ҹ�˾Ҳû�˷��������������ܡ�������Ը�Գ��غ������ߵ���һ�𣬵������֪������ʵ������������Ů�����в�����ƣ��������ݵ�����˲���ڹ�˾�ع⣬�������ɵ����齫Ҫ��������顭��<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
�����������ռǡ��ǵ�һ�������������ϲ�磬���Ƴ¿�����ʾ���������ǰ̸�����ݶ�������Ǹ��棬����������ߵ��������Ѷ����ݵ�̬���Ѿ���ȫ��ͬ�����һ��Խ��Խ��ͨ�����飬�ְ��������ָ�������һ���ܺú���Ȥ�Ĺ��£�����֮�����Ҫ�Ļ��ǽ���Ů�ĸ��飬����Ҫ���ݣ���Ҫ�����ġ����� ��Ƭ�����ְ����ǳ¿������ꡰ���ñ�硱���ӡ�Ͷ��״������ʮ��Χ�ǡ������й��ϻ��ˡ��������Ĳ��룬֮ǰҲ�����ݹ���ʮ��ҹ������۵�Ӱ���˷������ڵ��г����ְ�����ʾ�������������ģ�֮ǰ������д�������������Ⱥ��Խ��Խ�����ǵĹ�����ʵ�����п�ͷ���Һ��ڴ��ڵع��ڶ��ⲿϷ�ķ�Ӧ����<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
��רҵ��Ч��ױʦ���ݰװٺε����ͣ����������ƹ轺���ķ�һ��ʱ���������°͡��Ѽ��°��������ϣ��������������ڸǹ轺��Ƥ�������Ӵ�������Ҫ4��Сʱ�ľ�ϸ��ױ������ױ�ݲ�©������<br />
<br />
���װٺΰѡ������ռǡ��е����������������Ϲ�����֮�󣬳���ȴ�ظ��������㶼�������ˣ��ҾͲ���̽���˰ɡ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/zhengrong/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/zhengrong/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/zhengrong/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/zhengrong/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/zhengrong/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����ҵ�ڼ������ƴ�ѧ��������Ϊ��ò���ѱ����ѽ���Ϊ�����ѡ����Ŵα�ӦƸ��λ����͸����ʹ��˼ʹ������̤���ˡ����ݲ���·���������ġ���������������500��ǿ���������˰������ͷ��ֱ����һ�챻���ع⡱�������࡭���������ռǡ������˱�ҵ�ڼ������ƴ�ѧ���������װٺ����ݣ�һҹ֮����Ϊ��˫ʧ���ꡱ����Ϊ��ò�񡰳����ֳ��������������������ֱ�Ӵӡ�Ů�ѡ�����Ϊ�����ѡ�����Ϊ����ȱ�������ڸС����Ŵα�ӦƸ��λ����͸����ʹ��˼ʹ���������շ��ַ�ȥ����˫��Ƥ��̤���ˡ����ݲ���·����Խ��Խ�����ġ�����������������500��ǿ���������˰������ͷ�������޷�����ǰ�壬һ·�߸��ͽ���ֱ����һ�챻С�ˡ��ع⡱�������࣬������',N'�й�/�й����',N'ϲ��/����/����',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-612926-1-2.html',N'http://www.lwgod.com/attachment.php?aid=890638&amp;k=def7f70d6651a000b50c69c58cf79159&amp;t=1412261760&amp;sid=a4ees6yE8Gy6hyWpgWYdRHdh3Pj5vp7IDi4VlRygIpt%2BGmA',N'2014/10/2 22:57:33',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 469,N'����14���������ڴ�Ʊ��������������3����HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/qieting3/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/qieting3/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������������3<br />
Ƭ��������Overheard 3<br />
�ꡡ������2014<br />
�������ҡ��й�/�й����<br />
�ࡡ���𡡶���/����/���/����<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�������֡�6.1/10 from 142 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3121442" target="_blank">http://www.imdb.com/title/tt3121442</a><br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��1.27 GB<br />
Ƭ��������131 Min<br />
�������ݡ����׻� Siu Fai Mak<br />
����������ׯ��ǿ Felix Chong<br />
�������ݡ������� Louis Koo ....������<br />
���������������� Daniel Wu ....����<br />
���������������� Ching Wan Lau ....½��ǿ<br />
������������Ѹ Xun Zhou ....�»�<br />
����������Ҷ� Michelle Ye ....½���<br />
�������������� Kenneth Tsang ....½���<br />
���������������� Alex Fong ....½����<br />
�������������� Lei Huang ....������<br />
�����������ּҶ� Ka Tung Lam ....½����<br />
�������������ϴ� Man Tat Ng ....˾ͽ��<br />
����������ŷ���� Stephen<br />
�����������ּλ� Dominic Lam ....½��Ȫ<br />
�������������� Yi Huang ....½��������<br />
����������Ǯ���� Kar Lok Chin ....½��Զ<br />
�������������� Fung Kwok<br />
�������������� Lan Law ....����<br />
������������Ӧ�� Felix Lok ....������</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
��������½�½�ϼ����ڴ���ب���꣬ĳ�գ�ͬ��������ͣ��������Σ����ײ���������ֵ�½��Զ���Ӵ���½��Զ֮���»�����Ѹ�Σ����²���֮��5��������ͳ���������½�ҷ��Ʊ�ã�½�ϼ����ҳ�½��Σ������Σ�����Ů½��褣�Ҷ��Σ��Ѿ���ӵ�½���󷿲���˾������ʼ�ύ�ڵ����̣�½���ֵ�½��ǿ���������Σ��������½����չ������������������ڴ�ʱ����۷����������������͡����̴��¡���ͬʱ�������˰��棨�������Σ�͸¶���»������ɷ������½�ҵ����ؽ��׺�Ļ�йأ��������ڶ෽��������׼���»��ʹ����Ǽ��صİ�Ķ���Ҫ�����ⳡ������ı�и��𣬾ͱ��밴������ָʾȥ������һ�����޽�֯��ǮȨ��ı�ı������½ҿ���Ļ��<br />
<br />
������۵����˶࣬��ͳ���Ŵ�ԭ����ķ����������𼫴����顣��ˣ����������޸�ԭ�е����ߡ������漰�Ӵ����棬ƽ���������֮������ӿ�������ʿ�����������ֶ�չ�����������������м�֤��һ������������˥������<br />
<br />
������Ƭ����������½�Χ��½�ϼ����ڷ����������׺�Ļ��Ĺ��¡����¿�ʼ�ڴ��������ͣ������� �Σ����ײ���������ֵ�½��Զ��Ǯ���� �Σ���½��Զ֮���»�����Ѹ �Σ��Ӵ������Ʋ�������������5������������½�ϼ����ҳ�½��Σ����� �Σ�����Ů½��褣�Ҷ� �Σ����Լ�Ů�������� �Σ��Ѿ���ӵ�½���󷿲���˾����½���ֵ�½��ǿ�������� �Σ���½������������ �Σ�������������������������۷����������������͡����̴��¡���ͬʱ�������˰��棨������ �Σ�͸¶���»�һ��ͨ�������õ���������Ϣ���������»�Ҫ�����ⳡ������ı�и��𣬾ͱ��밴������ָʾȥ������ ���Ǽ�����������ʼ�����ж���<br />
<br />
������Ƭ�ǡ��������ơ�ϵ�еĵ����������ǳ��ˡ���������һ���Ĵ����⣬����������ǰ�����޹ء�<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ѹ���Ľ�ɫ���ڶ����������д������ߣ�������Ҫ��ͷ�����Ҵ�֣��ǵ�������һ���ؼ������<br />
<br />
��ӰƬ�����Ǽ򵥵�����������ֱ�������ɼ�˵��ƶ���Ƶ��أ�ÿ���˵�һ��һ������������һ�����š�<br />
<br />
������������3����ǰ�����Ľ�¶֤ȯ���Ʊ��Ļ������תս�����ز����ס�<br />
<br />
������ׯ��ǿ��ʾ�����������ơ�ϵ�е��˵��������ռ�֮��������Ӱ��������ͷ������ֶζ��Ѿ������뻯�����ҡ���������3����������ǰ�ص�4G���ŵ�Ԫ�ء���<br />
<br />
��Ϊ���ݺ��Լ��Ľ�ɫ�������ơ������ŵ����˽߾�ȫ��ѧϰ������Ϊһ���ϸ�ġ������������˻�������Ƭ��������һ���������߶���ѵ�ࡱ�������Ƴơ���������3����һ����׼�ġ��������ɼǡ���<br />
<br />
�������������������Ƕ�κ�����������˵����������Ļ��������������Լ�ƽʱ��ȫ�͹�����û����ϵ�����Һ���ƽʱ���Է��ģ��Һ�����Ϸ��ô���꣬���ܺ���������绰����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/qieting3/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/qieting3/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/qieting3/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/qieting3/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/qieting3/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'������½�½�ϼ����ڴ���ب���꣬ĳ�գ�ͬ��������ͣ��������Σ����ײ���������ֵ�½��Զ���Ӵ���½��Զ֮���»�����Ѹ�Σ����²���֮��5��������ͳ���������½�ҷ��Ʊ�ã�½�ϼ����ҳ�½��Σ������Σ�����Ů½��褣�Ҷ��Σ��Ѿ���ӵ�½���󷿲���˾������ʼ�ύ�ڵ����̣�½���ֵ�½��ǿ���������Σ��������½����չ������������������ڴ�ʱ����۷����������������͡����̴��¡���ͬʱ�������˰��棨�������Σ�͸¶���»������ɷ������½�ҵ����ؽ��׺�Ļ�йأ��������ڶ෽��������׼���»��ʹ����Ǽ��صİ�Ķ���Ҫ�����ⳡ������ı�и��𣬾ͱ��밴������ָʾȥ������һ�����޽�֯��ǮȨ��ı�ı������½ҿ���Ļ����۵�',N'�й�/�й����',N'����/����/���/����',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-611929-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888084&amp;k=5e2dd1cdca964b21c2ef3096ddf85cc6&amp;t=1412261760&amp;sid=378cqYAn8id0Iso%2F%2FUxgaCnnXzZmKmnNGCS6tw86JaLWKC0',N'2014/10/2 22:57:33',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 470,N'����14Ʊ�������ڴ�������Ʒ�ɳ�����BluRay-720P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/jipinfeiche/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/jipinfeiche/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������Ʒ�ɳ�/���ټ�ս(��)/���ٿ��(̨)<br />
Ƭ��������Need for Speed<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡶���/����/���/����<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.0/10 from 45,377 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2369135" target="_blank">http://www.imdb.com/title/tt2369135</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.23 GB<br />
Ƭ��������131 Min<br />
�������ݡ�˹���ء��ַ� Scott Waugh<br />
�������ݡ����ס����� Aaron Paul ....�бȡ���Ъ�� Tobey Marshall<br />
����������������ˡ����� Dominic Cooper ....��ŵ����³˹�� Dino Brewster<br />
������������Ī�䡤���� Imogen Poots ....�����ǡ���� Julia Maddon<br />
�������������˶������� Michael Keaton ....���ɿ� Monarch<br />
�����������������Լ��ѷ Dakota Johnson ....������ Anita<br />
��������������С�� Kid Cudi ....���� Benny<br />
�������������ɡ��޵������ Ramon Rodriguez ....�ǡ��ɿ� Joe Peck<br />
��������������ɭ����������ɭ Harrison Gilbertson ....���С����� Little Pete<br />
�������������ס����׿� Rami Malek ....�ƶ� Finn<br />
������������ˡ������� Nick Chinlund ....Officer Lejeune<br />
����������Sir Maejor ....Leigh Dennis - Inmate<br />
������������÷������ķ�Ͷ� Carmela Zumbado ....Jeny B</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������������յ���Ϸ��˾ͬ����Ϸ�ıࡣ<br />
<br />
�����бȡ���Ъ�������ס����� Aaron Paul �Σ�����һ��������޹���ż���μӵ���������Ϊ��ҵ��ȴ��һ�α���ʱ���ݺ��������������Ҳ���¹���ɥ�����������бȾ�������ѩ�ޣ�Ωһ�ܴ�ɴ�Ŀ��Ļ�����ǲμ�һ�����������������ĵ����������ȴ�������һϵ�������������ٵķɳ����飻��ʼ�ڸ��������Ҳ�����ݱ��һ������֮�á��бȰ⵹���ֵľ��ľ�����ҡ����������Ҫ�������Ĵ��ۡ�<br />
<br />
�����бȡ���Ъ�������ס����� �Σ���һ�ε�������ʱ���ݺ�����������Ҳ���¹���ɥ�����������бȾ�������ѩ�ޣ�Ωһ�ܴ�ɴ�Ŀ��Ļ�����ǲμ�һ�����������������ĵ����������ȴ�������һϵ�������������ٵķɳ����顣<br />
<br />
��������ȫ��֪��������Ϸ�ı࣬��������ʦ�����ס��������ݵ����˹��бȡ���Ъ����һ��������޹���Ҳ�Ǹ��������������֡���һ�ε�������Ѳ�����У������⸻�������ɣ�������ˡ��������ݣ��ݺ���ʹʧֿ�ѵ���������������бȳ���������������������ݺ����ļ��˸������ۡ���Ωһ�ܴ�ɴ�Ŀ��Ļ�����ǲμ�һ��ᴩȫ���ĵ����������ȴ��бȵĽ���һϵ�������������ٵķɳ����飻��ʼ�ڸ��������Ҳ�����ݱ��һ������֮�á�<br />
<br />
<font color="red"><strong><font size="3">�������ͣ�</font></strong></font><br />
<br />
��������Ұ��<br />
��������Ʒ�ɳ���ϵ�еľ��䳵�ͣ�Ҳ�����Ǽ�ʻ����������Ұ��ShelbyGT500 2010���ó�����5.4��V8���棬��������ɴ�540bhp�����Ť�ؿɴ�510lb-ft���������������һ��˫�����6���ֶ�����ϵͳ��������ӵ�и���ƽ���Ļ������ܡ�����ϵͳ�Ĵ������־���������������ó�����ʱ����̣����ҿ��Ի�ø��õĸ���·��ʡ�����ܡ�<br />
<br />
������������Agera R<br />
������������Agera R�ĵ�����̽���70���������Ϊ1330����ڳ����ܳ���������������ġ���ʹ�õ�5.0��V8����������˫������ѹ����ʹ��E85��ȼ���������������ﵽ1115ƥ�����ܵ��ۼ�Ϊ140����Ԫ���ң��ۺ������860��Ԫ����<br />
<br />
������������Sesto Elemento<br />
����Sesto Elemento������������2010����賵չ���Ƴ���һ�����ͣ������˴�����̼��ά�Ƽ���ʹ������ܼ��ѵ��ܳ�������2200�����ڣ��������Ǿ��˵ĵͣ�ȫ�򲻳���10�������������ò��죬�������Ὣ��۸���190~250��ŷԪ���ȣ��ۺ������1623~2135��Ԫ����<br />
<br />
�������ӵ�����Super Sport<br />
��������ȫ���ٶ����ĳ����ܳ����ǲ��ӵ�����Ī����431km/h�ı�̬��ֵ�����ڼ���˹��¼��������Ŀ�����ڼ۸��4.8������Ҿ��������ˡ�<br />
<br />
����������P1<br />
����������P1�����ܳ��Ѿ���2012��9��ĩ�İ��賵չȫ���׷����ó�ӵ�нӽ�1000ƥ�������ٹ�����ٽ���ʱ2.8�롣�ó�������3.8L V8˫������ѹ�������������814�������۸��ۺ������800��Ԫ��<br />
<br />
����GTA˹��ŵ<br />
����GTA˹��ŵ��һ���������桢���������������������ܳ������䱸��һ̨8.3������е��ѹ��V10�����7ǰ�ٵ��ֶ����䣬0��100����/ʱֻ��2.9�룬�ۼ۴�Լ60��ŷԪ���ۺ������513��Ԫ����<br />
<br />
��������S7<br />
������Ϊ���������ĵ�һ�������ܳ�������S7���е���۰��������̼��ά�Ƴɵģ����������Ҽ�̡�������ۿɲ�ֻ�ÿ����ѣ��ڿ��������ϵı���Ҳ�൱���졣���������ܳ��۸�ȷ�Ǿ��˵ĵͣ�ֻҪ55����Ԫ���ۺ������338��Ԫ�������S7Ҳ��Ϊ�ˡ���Ʒ�ɳ���������ˡ����ܳ���<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
��ӰƬ���ݸ���ʷ����ɹ���������1��4ǧ���ͬ��������Ϸ�ıࡣ�ÿ���Ϸ��ֹ2012���Ѿ���Ʒ��13����17����Ʒ�����������22����������60������ҡ�2014�걾Ƭ��ӳ֮��������Ϸ������ʮ���ꡣ<br />
<br />
�������׸�ȭ�����Լ�����ֶ�˹�����ĸ�����Ρ��ֶ�˹��ͬ����˹��±�д���ֶ�˹�ֵ�Ҳ������ԣ��������Լҵĳ������޸����־���������Լ�����ֶ�˹ӵ�еĵ�һ��������1966��ĸ���Ұ��<br />
<br />
��Ƭ��ʹ���˴�����ʵ���ܳ�����ʵ�ġ����а���һ������������Agera R��һ����������Sesto Elemento��һ��GTA ˹��ŵ��һ�����ӵ�������һ���������P1���Լ�һ������������S7��<br />
<br />
���ڿ�ʼ����ǰ�����ס������Ͷ����׿ˡ�������ǰ������ɳĮ�е���Ȫ����ѧϰ���������ļ�ʻ���ɡ�<br />
<br />
����Ů�����бȺ������Ǽ�ʻ��Խ���������ǳ��ǻ���2013 GT500�͸�װ�ĸ���Ұ��ʷ�ٷ������ǵ���˹���ء��ַ���Ŀ�������ǵ�����ο�����Ů������Ī�١��մ����Ծ�����Ʒ�ɳ���֮ǰ�����Ὺ����<br />
<br />
���ڵ�Ӱ�б�����ʻ��Ұ����Ϊ���硣���ר����װ��2013����GT500�������Գ�������˼ӿ���������20Ӣ��ĺϽ�����Լ�һ��V8���棬���ʱ�ٿɴ�190Ӣ�������׼�����߲���ͬ��Ұ���Թ����㡣<br />
<br />
����������̹�ɡ���˹�غ���˹�����׷ֱ�Ϊ���ס������Ͷ�����ˡ�������ݡ��������𾴵ĳ������桤³ɪ���¡����ᡤ�������������������ء��������Լ����ޡ����װͺ�������һ�����ﰺ��������ʻ�˳��ܡ�<br />
<br />
������˹���ء��ַ���������Ա��˹�����������Ǵ�Сһ�𳤴����飬��Ϊ���ǵĸ��׶��Ǻ�����������������Ա��<br />
<br />
��Ϊ���ܹ��ĵ������˹���ء���˹��ϼ�ʻֱ���ɻ��Ľ�������д��������Ա����ĵ���˹���ء��ַ����Բ����𽵰���̽�����ӵ�ֱ��������о��մ̼������㹤����<br />
<br />
��ӰƬ����������ȡ�������а����˼��ݵ��Ŷ���ŵ�غ;ɽ�ɽ���������ݵ�÷���غ�ʯͷɽ���Լ������Ǣ��������ϡ������������ݸ��ײ��кͰ��������ݷ�˳ǵĵ�13�Žִ��ŵȡ�<br />
<br />
����������ʹ���˶��Գ�����һ�������������ⲿ�ļ�ʻ���ա�ʵ�ʼ�ʻ�������ؼ���������λ����Ա���Ϸ��Ķ������ʻ���Գ�����Ҫ���бȺ͵�ŵ������<br />
<br />
��ӰƬ�ı༭�ֶ�˹�ֵ�������ĳ��ԣ����Լҵĳ������޸����־���������Լ�����ֶ�˹ӵ�еĵ�һ��������1966��ĸ���Ұ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/jipinfeiche/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/jipinfeiche/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/jipinfeiche/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/jipinfeiche/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/jipinfeiche/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����������յ���Ϸ��˾ͬ����Ϸ�ıࡣ�бȡ���Ъ�������ס����� Aaron Paul �Σ�����һ��������޹���ż���μӵ���������Ϊ��ҵ��ȴ��һ�α���ʱ���ݺ��������������Ҳ���¹���ɥ�����������бȾ�������ѩ�ޣ�Ωһ�ܴ�ɴ�Ŀ��Ļ�����ǲμ�һ�����������������ĵ����������ȴ�������һϵ�������������ٵķɳ����飻��ʼ�ڸ��������Ҳ�����ݱ��һ������֮�á��бȰ⵹���ֵľ��ľ�����ҡ����������Ҫ�������Ĵ��ۡ��бȡ���Ъ�������ס����� �Σ���һ�ε�������ʱ���ݺ�����������Ҳ���¹���ɥ�����������бȾ�������ѩ�ޣ�Ωһ�ܴ�ɴ�Ŀ��Ļ�����ǲμ�һ�����������������ĵ����������ȴ�������һϵ����������',N'����',N'����/����/���/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-612216-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888756&amp;k=55038d91682f62ff76349eccbc9ee629&amp;t=1412261762&amp;sid=d2bc8LRdlvCIPbPnRU4gg5MrMeG6OPlB5aCwwn07nFtjg%2Fc',N'2014/10/2 22:57:34',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 471,N'��Լ�������14�ƻá������麧�͡���BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.11/chaoyanhaike/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/chaoyanhaike/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������麧��/��ԽǱ��(��)/ȫ�����(̨)/��Խ<br />
Ƭ��������Transcendence<br />
�ꡡ������2014<br />
�������ҡ�����/�й�/Ӣ��<br />
�ࡡ���𡡶���/����/�ƻ�/���<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.4/10 from 37,881 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2209764" target="_blank">http://www.imdb.com/title/tt2209764</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.62 GB<br />
Ƭ��������119 Min<br />
�������ݡ���������˹�� Wally Pfister<br />
�������ݡ�Լ���ᡤ���� Johnny Depp ....���� Will<br />
���������������������� Rebecca Hall ....��ܽ�֡���˹�� Evelyn<br />
�������������ޡ���̹�� Paul Bettany ....���˼�������� Max<br />
�������������ء����� Kate Mara ....���� Bree<br />
����������Ħ���������� Morgan Freeman ....Լɪ��̩��ʿ Morgan<br />
����������ϣ�ﰲ��ī�� Cillian Murphy ....�������ع� Cillian<br />
����������С������١�����˹ Clifton Collins Jr<br />
�����������ƶ�����ɪ Cole Hauser<br />
������������ʲ��˹ͼ���� Josh Stewart<br />
�������������������� Cory Hardrict ....Joel Edmond</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������ѧ��������Լ���ᡤ���� �Σ��⵽һȺ����ѧ�ֲ����Ӱ�ɱ�����Ӱ�ܽ�֣������������� �Σ������ľ���ת�볬�����Ե�ԭ�ͻ������������Լ������̬��Ӧ����...����ѧ�ֲ���֯������һ�У�������ͼ͵����̨�������Բ��ݻ�����<br />
<br />
����������˹�ز�ʿ��Լ���ᡤ���� Johnny Depp �Σ����˹�������������һָ���о��ߣ��������ڿ�����ʷ���������Ի����и�֪�Ļ����ˣ�ȫ��λ�����������к��ǻۡ���Ȼ�������������ʵ������һ�ٳ�������ͬʱҲ������Ϊ���Ƽ����˷��ӵ����ж�����Щ���˷��ӿ�ʼ����һ����ֹ����Ȼ��û�뵽���ǣ����Ƕ������Ĵݻ��ж���ȴ�ڲ�������Ϊ�������˹�������ʵ��ɹ��Ĵ߻���������Ϊ���������顱�Ĳ����ߡ�������������ܽ�գ������������� Rebecca Hall �Σ�������õ��������˹�����ޡ���̹�� Paul Bettany �Σ�ͬ�����ʵ����о�Ա�������ⲻ���������ܲ��ܡ�����������Ӧ��Ӧ�ü����������о�����ܽ�պ����˹��ĵ��ǣ������𽥲�����������Ѿ������ǵ����Ľ���̽���о����������ݱ��׷��һ��Ȩ�������������ڣ������޷�Ԥ���������ƿ���δ���Ľ����ʲô��ΨһԽ��Խ�����Ŀ���������û�����ܹ���ֹ����<br />
<br />
������δ������ſ�ѧ����������˹�أ�Լ���ᡤ���� Johnny Depp �Σ���������ӽ�������˹����ܻ����ˡ�Ʒ��Pin�����������ջ����Կ�ѧ�������ͬʱ��Ҳ�⵽���������ߵ�ڸ�����������ĳ�λ���֮�������⵽������֯��Ա��ǹ������Ȼ��ʱ������������ͿĨ�˷��������ʵ��ӵ�����������ʴ�����������������������Ӽ��о������ܽ�գ������������� Rebecca Hall �Σ���Ȼʹ������������ȴ���ɷ�ĺ������˹�����ޡ���̹�� Paul Bettany �Σ��跨������������ʶ���ݻ��ϴ������ܵ����С���������˵��ǣ������ɹ������������и�����<br />
<br />
�����������ͷ�Ժ��Ƚ��Ƽ������ںϣ�ֻ��û���ܹ��뵽�����־����������˵���������˻������ѡ���<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
�����������˵����ܴ��������ܣ���ӰƬ�������Դ�ڿ��µĳ������壬��Ƭ�������麧�͡�Ҳ���ɴ˶�������<br />
<br />
�������±���<br />
<br />
������ʵ�У����ơ����麧�͡��ļ���ȷʵ���о��У��������顣������¡�����˹���ڱ��ǡ��˹�������в���ࡱ�۵��ӵ���ߣ�������Ԥ���˹����ܵġ����ѡ�Ҳ������ʮ���ͻή�١���δ��ѧ���ס�����Τ������Ϊ�˹����ܻ���2045��ﵽ���������麧�͡������������˹����ܻ�á�����������Ƭ�ĵ�����������˹�����ǿ������������ۣ������������ⲿӰƬ���뷨��<br />
<br />
������������<br />
<br />
������Ӱ�����麧�͡��������Ŷӿ�ν�ǹ���ã�������һ�߾���Լ���ᡤ���գ������ձȺ��������������ְ��»���������˿�����ɾ�����������Ϸ��Ħ��������������Ф��˵ľ��꡷�������������ڰ���ʿ���𡷣���Ӣ��õ������������������������3���������д��������ʵ��ż���ޡ������ᣨ���������顷����ŭ�����桷��������Ů�ǿ��ء���������ֽ���ݡ�����127Сʱ�������������ݡ���Ƭ�ĵ�����������˹�أ���Ȼ���״ζ���ִ��ӰƬ������Ϊ��˹�������Ӱ���Ļ���ߣ����������������⣬���й���ʢ������DMG���ִ�ý������Ϊ��������3��������ʹ�ߡ�����Ƭ��˾���й�Ӱ���Ƕ��������˾��ѡ��Ҳ�ǳ��������ġ�<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
����Ӱ��ԭʼ������ŵ������ġ��������˵����ܴ��������ܣ���ӰƬ�������Դ�ڿ��µĳ������壬��Ƭ�������麧�͡�Ҳ���ɴ˶�������<br />
<br />
��δ��ѧ���ס�����Τ������Ϊ�˹����ܻ���2045��ﵽ���������麧�͡��������������˹����ܻ�á�������������Ƭ�ĵ�����������˹�����ǿ������������ۣ������������ⲿӰƬ���뷨��<br />
<br />
����ƾ�衶���οռ䡷���ù���˹��С���˵�ŵ��������Ӱָ������Ϊ��Ƭ�ƾ�����Ƭ�ǵ�����������˹�صĴ�Ů�����ⲿ��ӰҲ��������ʦ����˹�и�ŵ�����ٴκ�����<br />
<br />
��ӰƬ�������ˡ����οռ䡷������������������ԭ�������Ŷӣ��ǡ��ڿ͵۹����͡��˹���δ�ˡ��ĺϼ���<br />
<br />
�������麧�͡���IMAX 3D�汾�Ǿ���IMAX DMR������ԭ�׷��漼����ת�ƶ����ġ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.11/chaoyanhaike/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.11/chaoyanhaike/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.11/chaoyanhaike/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.11/chaoyanhaike/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.11/chaoyanhaike/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����ѧ��������Լ���ᡤ���� �Σ��⵽һȺ����ѧ�ֲ����Ӱ�ɱ�����Ӱ�ܽ�֣������������� �Σ������ľ���ת�볬�����Ե�ԭ�ͻ������������Լ������̬��Ӧ����...����ѧ�ֲ���֯������һ�У�������ͼ͵����̨�������Բ��ݻ�����������˹�ز�ʿ��Լ���ᡤ���� Johnny Depp �Σ����˹�������������һָ���о��ߣ��������ڿ�����ʷ���������Ի����и�֪�Ļ����ˣ�ȫ��λ�����������к��ǻۡ���Ȼ�������������ʵ������һ�ٳ�������ͬʱҲ������Ϊ���Ƽ����˷��ӵ����ж�����Щ���˷��ӿ�ʼ����һ����ֹ����Ȼ��û�뵽���ǣ����Ƕ������Ĵݻ��ж���ȴ�ڲ�������Ϊ�������˹�������ʵ��ɹ��Ĵ߻���������Ϊ���������顱�Ĳ���',N'����/�й�/Ӣ��',N'����/����/�ƻ�/���',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-611766-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887808&amp;k=d3a4f0d392973945afb8164a579b612a&amp;t=1412261761&amp;sid=8aebeih7xd0cyfh0io2fHgoV9oJkGhU1VD1fQ%2FUbV7G77Qc',N'2014/10/2 22:57:34',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 472,N'������ؿ�����������������2��ѹ����BluRay-720P.MKV����˫�',N'<font color="blue"><font size="5">����ԭ�̸�����������ѹ�ƣ�<br />
�����ȼ���ǰ�汾��̫�࣬���������ղأ�</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/qieting2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/qieting2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������������2/���̷���2<br />
Ƭ��������Overheard 2<br />
�ꡡ������2011<br />
�������ҡ��й����/�й�<br />
�ࡡ���𡡾���/����/���<br />
����ԡ�<font color="red"><font size="3">��������˫����</font></font><br />
�֡���Ļ�����ļ�<br />
�������֡�6.8/10 from 871 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1852904" target="_blank">http://www.imdb.com/title/tt1852904</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.24 GB<br />
Ƭ��������120 Mins<br />
�������ݡ����׻� Siu Fai Mak<br />
����������ׯ��ǿ Felix Chong<br />
�������ݡ������� Daniel Wu<br />
���������������� Louis Koo<br />
���������������� Ching Wan Lau<br />
����������Ҷ� Michelle Ye<br />
�������������� Yi Huang<br />
�������������� Kenneth Tsang<br />
�������������� Fung Woo<br />
������������Ӧ�� Felix Lok<br />
�������������� Kiang Nge<br />
���������������� Wilfred Lau<br />
�����������޿��� Matt Chow<br />
�������������� Fung Kwok<br />
������������� Chiao Chiao<br />
���������������� Alex Fong<br />
�����������ֵϰ� Dion Lam</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
��������������2��Ե��һ��ƽ���Ľ�ͨ�¹ʣ����֪��֤ȯ���������������� �Σ������ݱ��������������������������ã���������������;�������ƽ��밸�������ܶ������ǿ�������� �Σ������������Ϊһ���������˾�����棨������ �Σ�������˫��չ��������׷�𣬶�ʱ�������𡣺���ǿ����Ϊֻ��һ�ڵ���������������û�뵽������׷��֮�£���������һ����Ϊ�������ᡱ��������֯����˵�⡰�����ᡱ��ʮ���������˾�����ϵ����˥�ɰܣ�����������˾��������롰�����ᡱ���ŵ����ѷֵĹ�ϵ������ǿ���������У�������������˾���������ֲ߶�һ�����Ķ��ǵķ籩��<br />
<br />
�������֤ȯ������������������ �Σ������ϰ�;������������������ƽƽ�����ĳ���ȴ�������ֶӵĹ�ע��ԭ���������޵ĳ��ڷ��־��������������ֶӳ�����ǿ�������� �Σ������������ڲ߻��ֲ�Ϯ�������źεĵ��飬ʼ�ղ��ڰ��������������������˾�����棨������ �Σ�Ҳ��������ˮ�档���ͬʱ���޽�����������Ϣ�����ˡ������ᡱ��Ԫ���ǣ�����һȺ��70�����������۽��ڵ�ҵ�羫Ӣ��������Ϊֻ���������Ǯ��ࡣ��������������������Ԥʾ�����ǵĸ��ֺ�Ļ����������¡�<br />
<br />
����ԭ��Ϊֻ������ͨ����������ȴ���ޡ��Ρ�˾����˾�������ٲ���������֮�С��� <br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
��������<br />
<br />
�������׻ԡ�ׯ��ǿ����ʾ������д���������ơ���ʱ�����Ǿ��п��ǹ������Ŀ����ԣ�������ϣ��������ѡ��һ�����ʵĹ��¡�����������2�����̽��ʱ�����ƶ�����͸¶��������ׯ�ڡ���������2���Ĺ����������в�ͬ����������ѡ��������ׯ����ơ����׻Ա�ʾ�����������ơ�������桰���������������������¡�ͬ���ھ����������ơ���������������ˡ�����һ���Ρ���ǿ�к����е���ǿ��ǰ��Ҳ���ǹ�����������ȥ�����û��������½�һ�����£����õ�һ�������ݺ͡��������񡱣������ǲ��������������˸��Ҳ��̫��ȥ��������������ǰ������һ��֮�����Ǿ��úܶ�ط��ĵû�������񫣬����ϣ����ȫ�µĹ��¡�ȫ�µĽ�ɫ���������������ľ�����һ�����ÿ��ĵ�Ӱ�����ڡ��� <br />
<br />
�������������ơ��У������ơ������֡��������������ݵ����������ҵ�ﰸ����ƹ�ְ��ͬ�£�����һ�Σ����ǡ����㡱��ϵ�����ֵܣ������������ѵĶ��֡����У����������ݵ���һ�����־��죬���������ݽ��ڲſ�����������������Ϊ���صġ������ߡ����������ݵı仯Ҳ���൱���ԡ������������˺���Ⱦ��ͷ����������ࣻ�����ư����᣻���������ʡ��� <br />
<br />
����ׯ��ǿ���ܣ����������ơ���Ů�Խ�ɫ��Ա������ڡ���������2���������ֲ����������������������ŵĻ��ȡ����ݹ��������ŵ�Ҷ�����Ů�Խ�ɫ������Ů�Խ�ɫ����Ϊڹ�͡��������񡱵�һ���֣������൱������ã������ڶԡ��������ơ���ͷ�����������������豸������Ȥ������������2����Ȼ��������һ�㡣�������豸�ϣ������кܴ���������кܶ����ʵĶ������ù��ڿ��˹�񫡣��������Ƕ���Ϸ�����ӣ������޼�����͡��������ơ�ʱ�кܶ���Ͷ�ߣ�˵�����ĵĶ���Ϸ��ʵ���٣����������ǲ�����񫣬��������ڡ���������2���У������ر�ӽ��˺ܶ࣬����ǹս����ը����·׷��Ⱥܴ̼��Ķ���Ϸ�ݣ�����������Ϸ��Ʒ�ʡ���<br />
<br />
�����֡�Ҷ����������鰮��<br />
<br />
�����������׻Ա�ʾ��������һ�������桰���������������������¡�ͬ���ھ����������ơ���������������������λ��Ա�Ľ�ɫ����ȫ�µģ�����Ҳ��ǰ�������Ϲ�ϵ����ˣ�����������2���ڱ���ԭ�������������������ͬʱ�����ر�����ᴩ��������Ҷ������Ļ���޵�����ߡ�<br />
<br />
������ȥ���ɶ�������Ƶĵ�Ӱ�����⡷�У���������Ҷ诳��κ���������һ�������������ھ�̾�ڶ�����Ļ�����������ϵ�ͬʱ��Ҷ诶԰�����������ľ����ݳ�ҲΪ�����һ����۵�Ӱ���񽱵ġ�С���ˡ������˴ι�������Ҷ��ڡ���������2���н������ݸ���ĸ���Ϸ��ӰƬ�籾ҲΪ�����ṩ�˸�Ϊ�����������������������Ϊ�ִ�������������ʵд�ա�̸�����������д�������Ļ��Ե��Ҷ诱�ʾ������������׷�������������޷����⣬������ʹ�����Σ�����������2���������������ǽ���С�����������������̽�������氮���˵�����Ҫ�����������������ٿ��飬���ܽ�������ص��ס�<br />
<br />
�����桢�����֡���������2�����ֵܷ�Ŀ��<br />
<br />
����2009������֡������ơ����������ݡ��������ơ����ڵش��¾���ƬƱ����¼������ԭ��������ƶ��������������׻ԡ�ׯ��ǿ�������������ٴκ���������������2���Ѿ��ڸ�������ա�ӰƬ�������ڸ��ٿ������ᣬ��λ����͸¶����Ƭ���˶��ԡ�������Ϊ���⼰ԭ�������⣬���Ｐ���¶���������ƣ��������еĹ�ϵ�Ӻ�����ɻ�Ϊǣ�ƣ�������������ִ��ֵܱ���˵��ˡ�ׯ��ǿ͸¶����ε������豸����ϲ�Ҳ��������������ʵ�ܶණ�����ܳ�Ϊ�������ߣ�����Ů���ǣ�һ�����Եġ�����Ƭ�����������ƺͻ��ȵĴ�Ϸ��ͷ��ׯ��ǿ��٩������һ��Ҫ���������š���һ�����¡���<br />
��<br />
�����ƣ��Ӵ�Ϸƴ�������š�<br />
<br />
�������׼���ȣ������ƵĽ�ɫ�ɾ�������������ڲſ����������˲����޸����롰���ӡ�������Ƭ���м��鴲Ϸ�������ƽ��ͣ������Ȱ����ҵ�̫̫��������Ƭ��ֻ�����ܹ�ϵ������Ϊ4�����������Ƭ�������š�Ҳ�кܶ໰�⣬������Ҳ�̲�ס ��֣�ء���Ҫ�Ա�һ�£��������ⲿϷ���͡�ʲô�š������𣬾���������3D����<br />
<br />
�����棺�����سɾ�׳��<br />
<br />
�����������ڡ��������ơ�����Ȣ�˸���Ů�ľ��죬������װ���ģ����շ���������һ���е�����Ī����ͷ�ľ����������࣬��˵��һ����ɫת������Ҫ���Լ������ϴ��Һ����Ƕ����ֵܣ���α���˵��ˡ�����ҵĽ�ɫ��һ��ǰ���ˣ���������������Ϥ����Ƭ��͵�������������Ǹ��ֲ����ӡ�����Ϊ���ݵĽ�ɫҪ���ֳ�ǿ����һ�棬����������Ҫ���������������22������163��ľ�׳�С�<br />
<br />
�����֣����ɣ�������<br />
<br />
��������������2���У���������Ҫװ���ᣬ�������־�Ҫ�����ϣ����Ľ�ɫ���ɴ�������һ����ͬ��Ҳ��ִ��������Ա��ֻ������λ��Ϊ������֯��ְλҲ�������ܡ������ֵ����ͳ��˼���ͷ�����ף���Ҫ�����������ׯ��ǿ͸¶������������2���мӽ���ǹս����ը����·׷��ȴ̼��Ķ���Ϸ�ݣ������ֵĶ���Ϸ���൱�أ�����ǰ��ʱ�����������ˣ�Ŀǰ���ڿ����У���˵���ڡ��ܲ���Ϸ�������ġ��������Լ��ֲ������������Ի�Ҫ����������������ô�����<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
������������2�����̽��ʱ�����ƶ�����͸¶��������ׯ�ڡ���������2���Ĺ����������в�ͬ����������ѡ��������ׯ����ơ�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/qieting2/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/qieting2/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/qieting2/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/qieting2/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/qieting2/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'������������2��Ե��һ��ƽ���Ľ�ͨ�¹ʣ����֪��֤ȯ���������������� �Σ������ݱ��������������������������ã���������������;�������ƽ��밸�������ܶ������ǿ�������� �Σ������������Ϊһ���������˾�����棨������ �Σ�������˫��չ��������׷�𣬶�ʱ�������𡣺���ǿ����Ϊֻ��һ�ڵ���������������û�뵽������׷��֮�£���������һ����Ϊ�������ᡱ��������֯����˵�⡰�����ᡱ��ʮ���������˾�����ϵ����˥�ɰܣ�����������˾��������롰�����ᡱ���ŵ����ѷֵĹ�ϵ������ǿ���������У�������������˾���������ֲ߶�һ�����Ķ��ǵķ籩�����֤ȯ������������������ �Σ������ϰ�;������������������ƽƽ�����ĳ���',N'�й����/�й�',N'����/����/���',N'1280 x 720',N'2011',N'http://www.lwgod.com/thread-612211-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888754&amp;k=0f5a3bc029174885bc8e51c80a3527b0&amp;t=1412261763&amp;sid=91c0mDHZdMueVBqBgO1mMwmo3HJw5YT8Bugh4LRwoDsmb9E',N'2014/10/2 22:57:34',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 473,N'������л����14�¡������ŷ��ơ���BluRay-720P.MKV����˫�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/04.19/aomenfengyun/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/04.19/aomenfengyun/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ŷ���/����4֮�ĳǷ���/����4/�ĳǷ���/����4��˭������<br />
Ƭ��������The Man From Macau<br />
�ꡡ������2014<br />
�������ҡ��й�/�й����<br />
�ࡡ����ϲ��/����<br />
����ԡ�<font color="red"><font size="3">��������˫����</font></font><br />
�֡���Ļ�����ļ�<br />
�������֡�5.2/10 from 321 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3444184" target="_blank">http://www.imdb.com/title/tt3444184</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.80 GB<br />
Ƭ��������93 Min<br />
�������ݡ����� Jing Wong<br />
���������������� Siu Hubtvbtng Cheung<br />
�������ݡ����� Yun-Fat Chow&nbsp;&nbsp;....ʯһ��<br />
����������л���� Nicholas Tse&nbsp;&nbsp;....ɹ��<br />
�������������� Tian Jinbtvbtg&nbsp;&nbsp;....����<br />
���������������� Chapman To&nbsp;&nbsp;....ţ��ʤ<br />
���������������� Shiu btvbtHung Hui&nbsp;&nbsp;....Benz��<br />
���������������� Michael Wong<br />
�����������߻� Hu Gao<br />
�����������⳽�� Annie Wu<br />
���������������� Sammy Sum<br />
�����������Ž� Max Zhang<br />
����������ͯ�� Fei Tong<br />
���������������� Philip Ng<br />
�������������� Yao Meng<br />
������������Ȼ Michebtvbtlle Hu<br />
�����������λ��� Tony Ho<br />
�������������Ļ� Man-Wai Wong<br />
���������������� Winnie Leung</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�������½���������л������������ѵ�ʦͽ����л����ѧ�յ��ֺ�Ȼ�������뷢��Ծ�����Ϸ�г��ֵĶĳ���ľֻ�������ţ������Խ�����Ϊ��������ֻ������˶�Ǯ�����к��³���<br />
<br />
�����������⣬�����������ĳ������ܹ��ʵ�ħ����ʯһ�ᣨ���� �Σ����ջ����������ݣ�������������ѵ�����ף�����硣���к���Benz�磨������ �Σ������Ķ���ɹ�䣨л���� �Σ��Լ�����ţ��ʤ�������� �Σ������ر�������������ŵ��ء�<br />
<br />
�������գ��й�������Լ��������ؾ�����������Լ��ͬ����ʯһ�ᣬϣ�����ܹ��س�������æ�Ը�DOA��֯���ŵĸ��������߻� �Σ�������ȴ������Ϊ��������¡�<br />
<br />
������һ���ᣬ�侹��ţ��ʤһ�������ţ�ϣ����������Ϊ��ܣ����������С�䣬���κξ������ݣ�ֻ�þܾ���������Benz����ϣ����д���һҹ��˭��֪������������ɱ�֣��Ž� �Σ���ɱ���ǲ���ԭ��ֱ��׷��С���Լ���簮Ů���ʣ�ͯ�� �Σ����ڼ������й��������������� �Σ���ȣ�������������һ�٣�������ʧ�䡣<br />
<br />
�������鰵���²�֪����Ļ��ĺ��־��Ǹ��������������������Ե�޹ʷ���������С��������֣�����Ů�����������ˣ�������ı��ƶԸ������������Ƕ�������Ҫ���ˮ��ʯ����������֮�ڷ�����<br />
<br />
<font color="red"><strong><font size="3">Ļ������</font></strong></font><br />
<br />
��������˵�����ⲿϷ����ǰ�Ķ���һ�����ⲿϷ���ĸ����ڹ��꿴�ģ���һ����һ�����ٻ��ֵ�Ϸ����ʮ��ǰ������������ź����е�ƫ�ţ��������������˵�����ʤ�ء���<br />
<br />
����˵��л���桢������Щ������Ա�����󷢳ƣ�������ÿ�춼���Һܶ���֣������ҹ�����Ц���������Ƕ�˵���Һ���ѹ������ʵ���ǲŸ���ѹ��������Ϸ֮ǰ180����һֱ���ʣ������������ڼ���150��������ǰ����������۽��񽱰佱��������л����˵������۵�Ӱδ����ʮ�꿴���ˡ�������˵����л�������ᡢ�����������ݼ�����������Ŭ������۵�Ӱδ����ʮ�꣬����ѹ������ͦ��ġ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.11/aomenfengyun/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.11/aomenfengyun/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.11/aomenfengyun/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.11/aomenfengyun/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.11/aomenfengyun/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�����½���������л������������ѵ�ʦͽ����л����ѧ�յ��ֺ�Ȼ�������뷢��Ծ�����Ϸ�г��ֵĶĳ���ľֻ�������ţ������Խ�����Ϊ��������ֻ������˶�Ǯ�����к��³����������⣬�����������ĳ������ܹ��ʵ�ħ����ʯһ�ᣨ���� �Σ����ջ����������ݣ�������������ѵ�����ף�����硣���к���Benz�磨������ �Σ������Ķ���ɹ�䣨л���� �Σ��Լ�����ţ��ʤ�������� �Σ������ر�������������ŵ��ء����գ��й�������Լ��������ؾ�����������Լ��ͬ����ʯһ�ᣬϣ�����ܹ��س�������æ�Ը�DOA��֯���ŵĸ��������߻� �Σ�������ȴ������Ϊ��������¡���һ���ᣬ�侹��ţ��ʤһ�������ţ�ϣ����������Ϊ��ܣ����',N'�й�/�й����',N'ϲ��/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-611765-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887807&amp;k=6a1101619d8b11567f24a507eec24e55&amp;t=1412261762&amp;sid=7f8evnVb9XzYv9RiI2c7W4y5ANZj4Q9SIwhnW8lcdHbsYM4',N'2014/10/2 22:57:35',0)
INSERT [movies] ([id],[title],[body],[class],[chicun],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 474,N'�����硿����ʬ����ڶ���13��ȫ����BluRay-720P.MKV������Ӣ��',N'<font color="blue"><font size="5"><a href="http://www.lwgod.com/thread-607520-1-1.html" target="_blank">��ʬ�����һ�����ص�ַ</a></font></font><br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/xingshizourou2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/xingshizourou2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������ʬ���� �ڶ���/��ʬ· ��2��(̨)<br />
Ƭ��������The Walking Dead Season 2<br />
�������ҡ�����<br />
�ࡡ���𡡶���/���/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�<font color="red">8.7/10 from 397,793 users</font><br />
�������ӡ�<a href="http://www.imdb.com/title/tt1520211" target="_blank">http://www.imdb.com/title/tt1520211</a><br />
�ס�������2011-10-16<br />
����������13<br />
����Ƭ����Լ45����<br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��15.1 GB<br />
�������ݡ�������˿�����ض�-��� Gwyneth Horder-Payton<br />
�������ݡ�����³���ֿ� Andrew Lincoln<br />
�����������ǡ�����ɪ Jon Bernthal<br />
����������ɯ����Τ��������˿ Sarah Wayne Callies<br />
�������������𡤺�� Laurie Holden<br />
�����������ܸ������ Jeffrey DeMunn<br />
����������ʷ���ġ��� Steven Yeun<br />
����������ŵ�������˹ Norman Reedus<br />
���������������򡤽��� Emily Kinney</strong></font><br />
<br />
<font color="red"><strong><font size="3">��飺</font></strong></font><br />
<br />
�������������ı���Ϊƽ��֮����ˡ�����ķ˹������³���ֿ� Andrew Lincoln �Σ����Ҵ��߼���̤��ǰ���������������֮�á����ı���ƣ����һȺ��Խ��Խ����Ӧ���·���Զû�����ɥʬ��������֮��Ĺ�ϵҲ�������΢��Ͳ��ȶ���������ǡ�����ɪ Jon Bernthal �Σ��������˺����֮������ɯ����Τ��������˿ Sarah Wayne Callies �Σ���ϵ������˷���룬��ñ�����̵���������Ѷ��ж�����ͷ�������ֹ��žٴ�Ϊ�Լ��ͻ���������˱�������ӡ����ͬʱ��������һ�������Ҵ������Ƚ����е������������ˡ�ʧ�٣��ɼ���������˲пᣬ���������µ���������ʾ��δ����ϣ������<br />
<br />
������Ƭ�������ᡤĦ����Tony Moore����ͬ�������ı࣬�ǵ���ʷ�ϵ�һ�����ڵĽ�ʬ���Ӿ硣<br />
<br />
��������ʬ���⡷�����˾��������һ��ִ���ж������е����˶���ʡ���£������ӻ��������Ѻ�ȴ���ȵط��֣����������Ȼ�췭�ظ�������һ��������ɥʬ���У�û�л�����Ӱ��������������˸ϵ����У�ȴ�����޶�����Ӱ����<br />
<br />
�������ܽ�ʬ�����Щ���ף����ⲿ����ȴ���ؿ̻��������ɫ��������仯�������еĺڰ����ڴ������б�¶���ɡ������Ұ��ɥʬ��Ŀ�����������й��Ӳд��������������˺��Ĳ���������Щ��ʬ���⣬���л��˼�Ļ������������½����˹�һ�δ����������ͬʱ��Ҳ�������һ������ĩ���ı�����<br />
<br />
<font color="red"><strong><font size="3">��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/xingshizourou2/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/xingshizourou2/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/xingshizourou2/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/xingshizourou2/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/xingshizourou2/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/xingshizourou2/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/xingshizourou2/7.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/xingshizourou2/8.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����/���/����',N'1280 x 720',N'http://www.lwgod.com/thread-612194-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888751&amp;k=93a0d952c79e114c0c4bc616de40386f&amp;t=1412261768&amp;sid=e255nEs7ktqbJ3OVK4rFymn2uqZ183cOMP8f9fXnv5CjiWg',N'2014/10/2 22:57:35',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 475,N'����14��Ч�����񻰡���ŵ�Ƿ��ۡ���BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/nuoyafangzhou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/nuoyafangzhou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������ŵ�Ƿ��ۣ�����֮��/Ų�ǣ�������ʾ(��)/ŵ�Ƿ���/ŵ��<br />
Ƭ��������Noah<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ���𡡶���/ð��/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.3/10 from 71,132 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1959490" target="_blank">http://www.imdb.com/title/tt1959490</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��3.80 GB<br />
Ƭ��������138 Min<br />
�������ݡ����ס�����ŵ��˹�� Darren Aronofsky<br />
�������ݡ����ء����� Russell Crowe ....Noah<br />
���������������ᡤ���ս�˹ Anthony Hopkins ....Methuselah<br />
�������������ꡤ��ɭ Emma Watson ....Ila<br />
�����������޸������� Logan Lerman ....Ham<br />
����������ղ�ݸ��������� Jennifer Connelly ....Naameh<br />
�������������ġ����� Kevin Durand ....Og<br />
����������������˹����˹ Douglas Booth ....Shem<br />
��������������������� Dakota Goyo ....Young Noah<br />
��������������١�����˹ Marton Csokas<br />
�����������ס���˹�� Ray Winstone<br />
�������������ס��Ƕ� Sami Gayle ....Sami<br />
�������������ɭ�����Ĳ��� Madison Davenport ....Na''el</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����ڡ�ʥ�����У��ϵ�Ҫ�ú�ˮ������ϵ����࣬��ѡ����ŵ��һ����Ϊ����������ӡ�ŵ��һ�߸��췽�ۣ�һ��Ȱ�����˻ڸ�����Ϊ��ŵ�ǻ�������120��ʱ�����������һֻ�Ӵ�ķ��ۣ��������ϵ۵Ļ�����ȫ�Ұ˿ڰ��˽�ȥ�����ַ�������Ҳһ�ԶԸ������������ɵؽ��뷽�ۡ�7��󣬺�ˮ���������һ������40����ҹ����Ⱥ�Ͷ�ֲ��ȫ������û��֮�֡���ʮ��󣬸������������֦����ʾ��ˮ�Ѿ����ˣ������ϵ�������������¿�ʼ�ڵ��Ϸ��ܡ�<br />
<br />
������ŵ�Ƿ��ۡ�����ʥ�����¸ı࣬�ɴ��ס�����ŵ��˹�����Դ����籾��ͬ������������һ��û��ϣ�������磬û���ꡢû����ʳ��������Ұ������������ͳ��һ�С�ŵ��������п������һ�����ˣ�һ���þ�ɳ����սʿ����ʦ������ʦ����ֻ��ͼ��˹��ϰ���ƽ�������Ȼ����ÿ�����������ᱻһ��ج������ĥ�������������类һ�����ˮ��û���ö���֮����ʶ����������������������Ѷ�ţ��ϵ�Ҫ�ͷ����࣬������ɱ�⡭����������ŵ��һ�����ᣬ�������Ա�������ϵ����֡�<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
������ŵ�Ƿ��ۡ����Ǵ�������ģ��������ӰƬͶ�ʾ�˵���ﵽ1.3����Ԫ����������ڽ���ζ���صĹ��£����ײ��������ǿ�����ڽ�ɫ�ʣ����Ҳ���Ϊ���Ǹ��ǳ��ڽ̵Ĺ��¡��Ҿ�������һ��ΰ���Ԣ�ԣ����Ը����ڽ̺;���ʵ��������Ϊ����һ������û����Ļ�ϱ��ֹ���ΰ����¡���<br />
<br />
������ŵ�Ƿ��ۡ��Ǵ��׸��˳ɱ���ߵ���Ʒ��Ͷ�ʸߴ�1.3����Ԫ���ǡ�����졷��10������Ƭ��Ա���ݺ���������Ӱ�����ء������������˹�ŵ�ǣ�Noah����ղ�ݸ�����������������������Naameh����Ҳ�Ƕ��˼̡��������顷���ٶ�������Ļ��ٳ��������˹����˹���޸�����������ŵ�ǵ����������еĳ���Shem�ʹ���Ham�����ꡤ��ɭ������ŵ�ǵ���Ů��Shem��Ů��Ila������Ӱ�۰����ᡤ���ս�˹������ŵ���游Methuselah����ӰƬ����Tubal-cain����Ӣ��Ϸ���ס���˹�١����⣬���ڡ����񡷡������׸�ȭ���и����������ӡ��ġ�С��̫������������Ƚ�����ͯ��ʱ�ڵ�ŵ�ǣ����ԡ�Բ���ʡ��������˴���ÿһ��������Ʒ����ˡ������˹Ҳ��Ȼ���С�<br />
<br />
������ŵ�Ƿ��ۡ�����2014��3��28�ձ�����ӳ�������������й��ڵء�<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/nuoyafangzhou/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/nuoyafangzhou/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/nuoyafangzhou/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/nuoyafangzhou/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/nuoyafangzhou/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���ڡ�ʥ�����У��ϵ�Ҫ�ú�ˮ������ϵ����࣬��ѡ����ŵ��һ����Ϊ����������ӡ�ŵ��һ�߸��췽�ۣ�һ��Ȱ�����˻ڸ�����Ϊ��ŵ�ǻ�������120��ʱ�����������һֻ�Ӵ�ķ��ۣ��������ϵ۵Ļ�����ȫ�Ұ˿ڰ��˽�ȥ�����ַ�������Ҳһ�ԶԸ������������ɵؽ��뷽�ۡ�7��󣬺�ˮ���������һ������40����ҹ����Ⱥ�Ͷ�ֲ��ȫ������û��֮�֡���ʮ��󣬸������������֦����ʾ��ˮ�Ѿ����ˣ������ϵ�������������¿�ʼ�ڵ��Ϸ��ܡ���ŵ�Ƿ��ۡ�����ʥ�����¸ı࣬�ɴ��ס�����ŵ��˹�����Դ����籾��ͬ������������һ��û��ϣ�������磬û���ꡢû����ʳ��������Ұ������������ͳ��һ�С�ŵ��������п������һ�����ˣ�һ���þ�ɳ����ս',N'����',N'����/ð��/����',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-611650-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887714&amp;k=92ced68ec26584dc131118c12d3ce959&amp;t=1412261763&amp;sid=43d1Brn8%2FpgvLIT5Z9z%2BpLRBmA%2FKsaPg%2FZQqlCxqXVvNWi8',N'2014/10/2 22:57:35',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 476,N'�������ȷ�����14����á����Ǻ��⴫����HD-1024.MP4�������',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/feihu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡�������Ǻ��⴫/��ի���Ǻ��⴫<br />
Ƭ��������The Extreme Fox<br />
�ꡡ������2014<br />
�������ҡ��й�/�й����<br />
�ࡡ���𡡰���/���/���/ϲ��<br />
����ԡ���ͨ��<br />
�֡���Ļ��������Ļ<br />
�ļ���ʽ��HD-1024.MP4<br />
��Ƶ�ߴ硡1024 x 576<br />
�ļ���С��878 MB<br />
Ƭ��������88 Min<br />
�������ݡ�Ǯ���� Wellson Chin<br />
�������ݡ������� Alex Fong<br />
���������������� Chrissie Chau<br />
����������̸���� Renata Tan<br />
������������ѩ Suet Lam<br />
��������������γ Awayne<br />
�����������ƿ�� Jun-qi Huang<br />
�����������Ž��� Jianbo Zhang<br />
�������������Ϸ� Zifen Tsai<br />
��������������� Zehu Yang<br />
�������������ڶ� Zaidong Hao<br />
���������������� Meitian He<br />
�����������ֿ��� Kang Xi Jia</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������Ӱ�����Ŵ��ƿ�����Ӣ����������������꣩�����������롰�������������ȣ�����һϵ��������������һ�η�����˼��������̣��������˾ʹ˷����˾޴�仯��<br />
<br />
�����ܾúܾ���ǰ����˵��һֻС���꣬�������ˣ�ÿ�������ɱ��ȡ�ģ������������һƬ�ֲ��С�һ��ɫŮ���ɶ����������ң����ϴ�Ů�����������ǧ˿���Ƶ���ϵ��������ŮС��������Ӣ����Ϊ�����������⣬ȴ�����ɶ���ͣ�������ջ����������Դˣ�һ������֮�䡢������Ů֮�䡢��а֮����۸��ӵ��ջ󡢿���������ڿ���ƽ�ȵ����������������<br />
<br />
�������·�����ңԶ�ĹŴ����Ǹ������������ӣ���������̫ƽ�������������� �Σ���һ��ƽ��������������֮�У����Ե�Сų������ֻ���ܹ����Ķ��飬ƽ�����һ�죬һλ�����ɶ��������� �Σ�������Ů�Ӳ���������ͻȻ����������������ǰ��������Ȼ��֪�ɶ������Ǻη���ʥ�������ɱ���������ɢ������������������������<br />
<br />
�������ɶ�����֮�󣬳������ŷ��������ɱ�˰����������߾���Ϊ���౻�ͳ�������û����֪����Щʧ�ٵ����ൽ��ȥ�������ŮС�䣨̸���� �Σ����������������������ɶ��Ե����ߵ���С������кܲ�����ζ��һ��żȻ�У�С��������ɶ��������Ի����������ܣ��ļ���ٵ����������Լ��������ҿ��ɶ��ġ���Ƥ����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/feihu/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/feihu/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/feihu/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/feihu/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/feihu/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����Ӱ�����Ŵ��ƿ�����Ӣ����������������꣩�����������롰�������������ȣ�����һϵ��������������һ�η�����˼��������̣��������˾ʹ˷����˾޴�仯���ܾúܾ���ǰ����˵��һֻС���꣬�������ˣ�ÿ�������ɱ��ȡ�ģ������������һƬ�ֲ��С�һ��ɫŮ���ɶ����������ң����ϴ�Ů�����������ǧ˿���Ƶ���ϵ��������ŮС��������Ӣ����Ϊ�����������⣬ȴ�����ɶ���ͣ�������ջ����������Դˣ�һ������֮�䡢������Ů֮�䡢��а֮����۸��ӵ��ջ󡢿���������ڿ���ƽ�ȵ�������������������·�����ңԶ�ĹŴ����Ǹ������������ӣ���������̫ƽ�������������� �Σ���һ��ƽ��������������֮�У����Ե�Сų������ֻ���ܹ�����',N'�й�/�й����',N'����/���/���/ϲ��',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-612189-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888735&amp;k=1f8807f3cdfe5bc54328a7ebcefc82ec&amp;t=1412261769&amp;sid=0154Oymz%2BD3GHt790xWCm2UYzwFJ3vUooMm%2Fepw8GqUX8ns',N'2014/10/2 22:57:36',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 477,N'����13�߷ֶ������ǡ���ɳĮ��Ӱ����BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/shamotuoying/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/shamotuoying/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������ɳĮ��Ӱ/�ټ�/�켣<br />
Ƭ��������Tracks<br />
�ꡡ������2013<br />
�������ҡ��Ĵ�����<br />
�ࡡ����ð��/����/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�7.3/10 from 3,321 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2167266" target="_blank">http://www.imdb.com/title/tt2167266</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.55 GB<br />
Ƭ��������112 Min<br />
�������ݡ�Լ�������� John Curran<br />
�������ݡ���櫡���ϣ����˹�� Mia Wasikowska ....Robyn Davidson<br />
�����������ǵ������︥�� Adam Driver ....Rick Smolan<br />
�������������ꡤ��˹ Emma Booth ....Marg<br />
�������������ɡ����� Rainer Bock ....Kurt<br />
����������Jessica Tovey ....Jenny<br />
�����������޲��ء��ƶ��� Robert Coleby ....Pop<br />
����������Tim Tim ....Glendle<br />
����������Melanie Melanie ....Annie<br />
����������John John ....Sallay</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����һ��Ů��ʵ�ֿ����Ѿõ�׷���Ұ��Į�����룬����һ������ֻ���պ�һ���ҳϵĹ�������´�Խ�Ĵ�����ɳĮ������Ϥ�����������˹˹����˹������չ��һ����Խ���޵�ǧ��ɳĮ֮�У����ִ������������<br />
<br />
����ӰƬ����Robyn Davidson�����Դ��峩���顶�켣���ı࣬������һ��Ů��ʵ�ֿ����Ѿõ�׷���Ұ��Į�����룬����һ������ֻ���պ�һ���ҳϵĹ�������´�Խ�Ĵ�����ɳĮ�Ĺ��¡�����Ϥ�����������˹˹����˹������չ��һ����Խ���޵�ǧ��ɳĮ֮�У����ִ������������ӰƬ����������ọ́�������һ�ζ������ǵĴ����ó̡�һ����������ɳĮ���衣<br />
<br />
������ִ��������ɴ����ӰƬ�ĵ���Լ������������һ����������һ��Ů�Ӵ�����ֻ���պ�һ���ҹ���ɳĮ���мǣ�չ����һ�����ڴ���Ȼ�е���η����֮�á�ӰƬ�ı����ޱ�����άɭ���Դ��峩���顶�켣�����ı������Ѿã������������ǡ��޲��ĺ��ݿɡ�������������ΪŮ���Ǻ�ѡ�����ջ������������櫡���ϣ����˹����������˿�����ɾ�����������׳��ɳĮ�澰������Ů�Զ������ң�Ӯ��ý������糱��ӰƬ��Χ��70������˹��Ӱ����������Ԫ�������׶ء����׶�ȶ����Ӱ��չӳ��<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
������Ƭ���ݰĴ�����С˵���ޱ�����άɭ�Ĵ�����ıࡣ��άɭ������ʮ�겻�ϵ����У�����������¼�������档�й�ɳĮ���е����������1978�귢�����������ҵ�����־������������Ȥ�����������д���顣���������׶أ�ס�ڶ���˿�������ļ��У������ˡ��ټ�������Ϊ��Ӯ�����׽�����˹���������ͼ�齱���ھ�ʮ�������������Ӱʦ��ˡ�˹Ī�����������Ӱ���˹Ȫ��ӡ�����ȫ��ͼƬ�����а����˵�һ��������Ƴ��Ļ�������ͼƬCD�����ټ�������ܻ�ӭ�������ǻ��Ů�Զ��ߵ�����������ԭ������Ϊ��������Ͷ���ڿ�Ұ��������������Ϊһ�����˵ĸ���Ʒ��������ɭ��ɳĮ֮�ñ���;����ԭס����������������á����˴�����һ���������շ��˵Ļ������ĸ�����������άɭ�߹�һ���·���������ҵ�ˮԴ��<br />
<br />
�������ϸ����Ͱ�ʮ�������ʮ�����С˵����ȳ��Ա�������Ļ�����оͰ���1993�������ǡ��޲������Խ�ʯ��Ӱ��˾ǩ����һ����ͬ�����ս���ʵ�ֵĵ���Լ��������˵����άɭ��������������б������ˣ����ޱ����ھ���һ�����ĵķ�Ծ���Ա��ܹ�Ӧ�����ǶԹ��µĸıࡣ�Ҿ������е������֮ǰ������ô������Ҫ�����ĳɵ�Ӱȴû�ɹ�����ӰƬ�����˲��ٻ�����������ޱ����������磬���������ײ�����������������ӰƬ�е�ȫ�����������������ޱ��ģ�����һ�����������������ڵ��ó̡�������ͼ�ù�������������һ���ọ́�����ֻ���Թۡ������������Щ��ʧָ������ε�����Ӫ��������յ���ս���������ĳ�ͻ����ӷḻ����Ϊһ����������ʮ����Ĺ��£�����ϣ�������Ǹ�ʱ���Ļ������ʣ������µ�һ�󿴵������Ӱ�ͷ羰���Ӷ�����ɳĮ�Ĺ������顣<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/shamotuoying/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/shamotuoying/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/shamotuoying/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/shamotuoying/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/shamotuoying/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/shamotuoying/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��һ��Ů��ʵ�ֿ����Ѿõ�׷���Ұ��Į�����룬����һ������ֻ���պ�һ���ҳϵĹ�������´�Խ�Ĵ�����ɳĮ������Ϥ�����������˹˹����˹������չ��һ����Խ���޵�ǧ��ɳĮ֮�У����ִ������������ӰƬ����Robyn Davidson�����Դ��峩���顶�켣���ı࣬������һ��Ů��ʵ�ֿ����Ѿõ�׷���Ұ��Į�����룬����һ������ֻ���պ�һ���ҳϵĹ�������´�Խ�Ĵ�����ɳĮ�Ĺ��¡�����Ϥ�����������˹˹����˹������չ��һ����Խ���޵�ǧ��ɳĮ֮�У����ִ������������ӰƬ����������ọ́�������һ�ζ������ǵĴ����ó̡�һ����������ɳĮ���衣��ִ��������ɴ����ӰƬ�ĵ���Լ������������һ����������һ��Ů�Ӵ�����ֻ����',N'�Ĵ�����',N'ð��/����/����',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-611646-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887709&amp;k=255e0567bbaeaa3ad42bfbeb96de2795&amp;t=1412261765&amp;sid=9976ZD8Wda6oDm6IL7UijejLSwkOsnOosv8lLyW%2BO%2FxB0C8',N'2014/10/2 22:57:36',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 478,N'����14����������á���������Ե����BluRay-720P.MKV������Ӣ��',N'<span><strong><span>��Ӱ������</span></strong></span><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/dongriqiyuan/00.jpg" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/dongriqiyuan/01.jpg" alt="" /><br />
<br />
<span><strong>�롡����������Ĺ���/������Ե/�����漣(̨)/���մ���/���յĹ���<br />
Ƭ��������Winter��s Tale<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ�������/����/����<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<span><span>��Ӣ/Ӣ��/��/��/Ӣ</span></span><br />
�������֡�6.2/10 from 17,178 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1837709" target="_blank">http://www.imdb.com/title/tt1837709</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<span><span>1280 x 720</span></span><br />
�ļ���С��2.59 GB<br />
Ƭ��������118 Min<br />
�������ݡ������ߡ���˹�� Akiva Goldsman<br />
�������ݡ����֡������ Colin Farrell ....Peter Lake<br />
����������������������-�ҵ��� Jessica Brown-Findlay ....Beverly Penn<br />
�������������ء����� Russell Crowe ....Pearly Soames<br />
����������������ʷ��˹ Will Smith ....Judge<br />
�������������ء���Ī Matt Bomer ....Peter��s Father<br />
����������ղ�ݸ��������� Jennifer Connelly ....Virginia Gamely<br />
�������������ġ����� Kevin Durand ....Cesar Tan<br />
����������¶���������˹ Lucy Griffiths ....Mrs. Lake<br />
�������������������� William Hurt ....Isaac Penn<br />
�������������ġ������� Kevin Corrigan ....Romeo Tan<br />
�������������׶�ķ������ Graham Greene ....Humpstone John<br />
�������������ޡ�������ɭ�� Eva Marie Saint ....Willa (Adult)</strong></span><br />
<br />
<span><strong><span>ӰƬ��飺</span></strong></span><br />
<br />
���������յĹ��¡��ı���С˵����ˡ�������ͬ������С˵������һ�������������һλ�ز�Ů��֮��İ�����¡����±����趨��20���ͳ������б˵á��׿˵Ĵ��������һ������Ů�ӣ��������Ⱞ��������Ů�ӣ���ϣ�������Լ���ת���ֻء������칦�����������ز��İ��ˡ�<br />
<br />
�������˹���һ�������˵á��׿ˣ����֡������ �Σ��İ������������ӣ���һ��ʼ�����������˷ݻ�еʦ�Ĺ��������������ȼ���ڰ���֯����β�͡���Short Tails������Ϊһ��������Ȼ���������͵����˺ڰ��ϴ����ء����� �Σ������ò���ʼ��ܡ���β�͡���׷ɱ��һ�죬�˵��������ҵ���ķ�������ʱ������Ů����������������������-�ҵ��� �Σ�һ�����飬Ȼ����������β����ñ�ȥ���ˡ�֮��˵����ⴳ������ǽ����Ѷȫ�ޣ���������ٴγ��֣����Ѳ��ǵ��Լ���˭����<br />
<br />
<span><strong><span>Ļ������</span></strong></span><br />
<br />
������Ƭ�ı���С˵����ˡ������ֵ�ͬ������С˵������һ�������������һλ�ز�Ů��֮��İ�����¡��������������������ں��˴����ĳ���ʵ������ת���ֻء������칦�ܵ����ݣ�һ��Ũ������÷�����³���������Ŀռ䡣<br />
<br />
������Ϊ���ԡ��������顷�͡���ȭ���ˡ���Ƭ���߰�˹�����Ʊ��İ����ߡ���˹���ĵ��ݴ�Ů�����ⲿӰƬ��������֮�������ò��ٵĹ�ע���������ߡ���˹���˷�ִ��Ͳ��ͬʱ�ֵ���ӰƬ�ı�硣��һ�δ�Խ����ġ�ŦԼ������¡�����û�ɫ���㡣<br />
<br />
�������������ϣ������ߡ���˹��ͬ�������˰�˹������ľ������ݣ���һ���ɽ���Ӱ�ۿ��֡���������٣�Ůһ������ƾ���Ȳ�Ӣ�硶�ƶ�ׯ԰���е���С�����ȶ��İ�����Ӣ��Ů�ǽ�����������-�ҵ�����ǰ�ߵĴ���������ߵĹŵ�����ν������á���������������Ǳ�׼�Ľ�����ڡ����뵼�ݰ����ߡ���˹�����ܺ������İ�˹��Ӱ�����ء���������Ƭ�еĺڰ��磻ƾ���������顷���߰�˹��Ů���ղ�ݸ���������Ҳ����������Ӱ�������������Լ�Ʊ����ҩ������ʷ��˹Ҳ��������Ƭ�пʹ����ݡ�<br />
<br />
�������⣬��Ƭ��������Ҳͬ���ǰ�˹������ģ��������ġ�����ָ�����ִ�ʦ��˹����Ĭ�ٵ�����Ԥ��Ƭ��ʹ�õĸ�������Ӣ����ҥ����Ů��Birdy�����µ�����Wings����<br />
<br />
<span><strong><span>ӰƬ��ͼ��</span></strong></span><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/dongriqiyuan/1.jpg" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/dongriqiyuan/2.jpg" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/dongriqiyuan/3.jpg" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/dongriqiyuan/4.jpg" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/dongriqiyuan/5.jpg" alt="" /><br />
<br />
<br />',N'�������յĹ��¡��ı���С˵����ˡ�������ͬ������С˵������һ�������������һλ�ز�Ů��֮��İ�����¡����±����趨��20���ͳ������б˵á��׿˵Ĵ��������һ������Ů�ӣ��������Ⱞ��������Ů�ӣ���ϣ�������Լ���ת���ֻء������칦�����������ز��İ��ˡ����˹���һ�������˵á��׿ˣ����֡������ �Σ��İ������������ӣ���һ��ʼ�����������˷ݻ�еʦ�Ĺ��������������ȼ���ڰ���֯����β�͡���Short Tails������Ϊһ��������Ȼ���������͵����˺ڰ��ϴ����ء����� �Σ������ò���ʼ��ܡ���β�͡���׷ɱ��һ�죬�˵��������ҵ���ķ�������ʱ������Ů����������������������-�ҵ��� �Σ�һ�����飬Ȼ��������',N'����',N'1',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-612138-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888473&amp;k=b915a3f4d7f3be06a4a6daea03eb8641&amp;t=1412261770&amp;sid=9a9bBQN0hisF6eNF864pQpm%2B99AA7r46%2F84CwXQbr6f4mek',N'2014/10/2 22:57:36',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 479,N'����12�˰ﴫ����Ѫ��������ƥ�򡿡�BluRay-720P.MKV�������֡�',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/pifu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/pifu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������ƥ��/ƥ���ǵ�ս��/ƥ������<br />
Ƭ��������An Inaccurate Memoir<br />
�ꡡ������2012<br />
�������ҡ��й�<br />
�ࡡ���𡡾���/����/ս��/����<br />
����ԡ���ͨ��<br />
�֡���Ļ�����ļ�<br />
�������֡�5.8/10 from 88 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2400407" target="_blank">http://www.imdb.com/title/tt2400407</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.79 GB<br />
Ƭ��������107 Mins<br />
�������ݡ������� Shupeng Yang<br />
�������ݡ������� Xiaoming Huang&nbsp;&nbsp;....������<br />
�������������� Yi Zhang&nbsp;&nbsp;....�߶���<br />
��������������� Xinyi Zhang&nbsp;&nbsp;....������<br />
�������������� Lie Wang&nbsp;&nbsp;....����<br />
������������С�� Tino Bao&nbsp;&nbsp;....������<br />
�����������߾��� Jingyang Ni&nbsp;&nbsp;....�ڹ�<br />
�������������� Lei Sun&nbsp;&nbsp;....������<br />
�������������� Yue Zhang&nbsp;&nbsp;....����<br />
������������Ⱥ�� Qunshu Gao&nbsp;&nbsp;....�켩��ӳ�<br />
������������ɺ Shan Jiang&nbsp;&nbsp;....�켩�ӳ�̫̫<br />
���������������� Waise Lee<br />
�������������� Jing Liang<br />
������������־�� Zhiming Ma</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����˰����췽�������������Σ������һ�����ɹٸ߶����������Σ����߶�������Ѫ��ǿ���˷˰�ġ�С�����̡������䣨������Σ������ǣ�û����֪�����߶�����������һ����Ʊ��ô�򵥡���<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
���������ƴ��� ����ϷֻΪһ�����ˡ�<br />
<br />
����������Ŀ�ġ��˰�󵱼ҡ���������ӰƬ��չ�ֳ���ͬ�������ı������ʣ���̹���Լ����ݷ�һ���꣬����Ϊ���������¶ף��������ƴ����������ҡ�ƥ���׵���壬�������Ϊ��Ӱƴ�����ˡ����ᵽϷ��Ϸ�⡰�󵱼ҡ�����ݣ�������˵������Ϊ���ڼ�����ǳ��ӳ�������7����ܣ���С��ϰ�߳�ͷ�͹��£�����һ���Ӿ�ϲ�����ⲿ��Ӱ�д󵱼ҵĽ�ɫ����������Ϊ���ִ�ֵļ�֣���������ѡһλ����Ӳ�����ݵ�������Ҳ�Ƹ�ѡ���˻�������<br />
<br />
���������ѡ��Ҳ�û����������������������Ƕ������������ֳ�չ����������ϧ�����꣬�������ǳ������顱��ǣ�ŵ������������ֱ��˵�����ҽ��ⲿϷֻΪһ�����ˡ��Ǿ������������Ҿ������ǻ����ӰȦ��������˧�ĵ��ݣ��Һ�����һ�����Ķ������飬�������������������ˡ�Ŷ���������ˡ������������Ц���Ĳ�ƴ�ڻ�����ݷ�������һ��������̬�Ȼ�Ӧ������ʢ�޻�����ӵ������Ӱ��ʽ�Ĵ�ͳ�뾴ҵ���Ӳ��ٵ����Ӳ���Ƭ���ֿ��籾�����ü���������ʳ�ͽ����������ѹ���Ͷ������Ӳ���˵����չ���˷�Ⱥ���������<br />
<br />
���������ݻ������⣬��ƥ�򡷻��缯��һ����߷�����Ա��������������롢�����Я�ֵǳ�����չ��ͬ�����ķ�ȣ������ʾ�Լ����ݵĽ�ɫ�����أ������������ݻ����������ã��˳ơ�С�����̡�����Ц���Լ��������ڵ�Ӱ�ﷸ�족����ӫ�������ܻ�ӭ�����ˣ����ε�½����Ļ����������˸��ӵľ�������������˶�̹�С�Ҫ����Ӧ���̣�����Ӱ�����ľ�ϸ���Ͻ���Ⱦ��Ҳ�԰��ս�ɫ�ʹ�����������µ���ʶ���� <br />
<br />
����תս����Ļ �Ա��ġ�ƥ���߳��͹�<br />
<br />
����ƾ�衶ʿ��ͻ���������ҵ��ų��ҵ��š�����ѩ���Ǹ�Ʈ����������������¡���һϵ������Ӱ�Ӿ磬�������ѳ�Ϊ������֪��ϲ������Ա���˴����ݡ�ƥ�򡷣��������Ϊ��תս��Ӱ����Ļ���ذ�֮�����ڲɷ��У����ݼ渱���ݵ����Ҷ������רҵ�����൱���ͣ������ԡ�ƥ��һ�����Ϊ����ĵ�Ӱ��������<br />
<br />
����ͬʱ������Ҳ�������롶ƥ�򡷵Ľ�Ե���̣����Ա���ʱ���ڽӴ�һ����Ҫ��Ŀ��Ϊ�˲������������Ƶ���24���缯����Լ��������ȴ��������ĸ��Է����������������������ԭ���������뵽�����ĵ͹��ڡ��ڻ�Ե�ɺ�֮�£������������������ߵ���һ�����մٳ������ڵġ�ƥ�򡷣������벻���ǵ�һ���������Ա��Ҳ��ΪӰƬ����Ҫ�������<br />
<br />
������������౬�� ������������ܳ�����<br />
<br />
�����ڷ������ֳ��������������������Ҳ���ֳ��˼����Ĭ���������۸��ԵĽ�ɫ�;���ʱ�������Ȥ��˵����Ϊ�����������Ϣ��ֻ��һ��֮���������������ܹ������������ڸ��ڷ��������ɵĵ�����������֮��ŷ�����ֻҪûϷ�ͻ����ڷ��佡��ѧӢ�ģ��൱�����־�ҵ��˵��֮�������൱�����������֡�Ϯ�ء���������������Ľ���ɹ�����������Ҳ���������������˺ܶ��Ӱ��ûϷ��ʱ�������ڷ��俴��Ӱ��Ħ���ݣ��ǳ�Ŭ������ż��Ҳ���С������������������������֪����ԭ�����Լ��ڷ����ﳴ��������<br />
<br />
����ֵ��һ����ǣ���ƥ����λ����Ҳ�и��Եġ������������������ǣ���ǹ���Ҿơ���Ƥ��������յ��ǣ���������Ĥ����߶߶�������������������ˣ����򡢳����������������൱�����ߡ��ġ�����������ˡ���������Ҳ͸¶���������㡶ƥ�򡷿�ν�Ծ���ͷ�����Կ�����ǡ�ƥ�򡷵�������㣬ӰƬ���յľ��顢��Ѫ��ս������Ͷ��еĻ���������ѡ�ڡ���һ��������󷨱��� <br />
<br />
����ʮ�������̨�� ��ڹ��򿰱ȡ����������<br />
<br />
������Ϊ��ƥ�򡷵��������ȫƬ������Ľ�����չ�����£�������Ϊ��Ӱ�仭�����⣬������Ƭ�е�һ�ι�ڱ�����������̾������̨�ʹ��������˾����Ŀ�����⣬������ƻ�������Ц�Էǡ����Ѿ��ع��Ƭ���п��Զ�Ϥһ�����������ݵĽ�ɫ�����������ݵĶ�������ǹ��ƣ�������������ʱ��˵��������˵�Ļ���Ȼ������һ��������˵��������˵�Ļ���ʱ�򣬴󵱼һ�����ȴ��δͦ����������ǳ���������˵!������Ԥ��Ƭ���ܸ��ܵ�ʮ���Ц��!<br />
<br />
���������������ԱΪ�����ⲿ��Ӱ������������䡰ƥ�򡱵ġ��������򡢱��󡢱�������Ҫ����������ǳ����࣬���������������Ľ�ɫ��������Լ�ϣ��������ʵ�����С����ҵ��ˡ���Լ����Ƿ����ݡ��߸�˧����ɫ�����⣬�����Գ�����������ݸ߸�˧��������ô?�����һ������ù��ڸо���һ����ʵ�Ĵ��ڣ������ҵĳɹ����������Ц���Լ���������ס��һ�����Ӳ������Č�˿���������ø����ʻ�Ľ�ɫ֤�������ò��ÿ�Ҳ��Ȩ����������<br />
<br />
�������ݼ�������ϲ��&nbsp;&nbsp;�����Rap��͸���顱<br />
<br />
����Ƭ�л�������쳾Ů��������ġ����ࡱ����Ȼ�Է���Ů��˵��һ�䡰���������ӡ���������õġ����ѡ��������ֳ�����ʮ�㣺���۵���Ҳ���Ǳ���������ô��������ô�����������������������һ�䣺���������ڲ���ˣ��������󵱼ҷ������ı���Ҳ����ϲ�У������ֲ�ʧ���ȡ�<br />
<br />
�������⣬�ص��з�񻯼�ǿ���ֳ����С����������䣺���б��������Ұ�����������ү�Ƕ���������ս���е�Сϸ��ȴ�����˱�ϲ���ӡ�<br />
<br />
��������ɽ����&nbsp;&nbsp;��ʱ��ؽ���æ<br />
<br />
���������ݣ����ǲ���Ӧ������ʿ��һ�㣿�������ţ��ã������Ż������͵�����������һ��һ�ͣ���ƥ�򡷾���˲���ɽ�����������˫���������ص�һ��������Ƭ��������룬��ʱ������ݽ����㡣�Ӵ�����ԡ�ң��ӻ������Ĵ�����������ֱ���ĵص�����վ�ŵ����ţ��ӹ��ŵ�ſ�ţ��Ӿ�װ��ԡ�ۣ���С��׵��������󡣻����������������ˡ�ƥ������Ŀ��ȣ��󵱼�Ҳ��ʼ�ʹ��������������������ô�����壬��ȭ̧�ߣ���˫�ܣ�ƽ���������ؼ�����������������<br />
<br />
�����ڻ�������ָ���£���Ա���Һ�����ҲĦȭ���ƣ�����װ�����Ŀ𣬴����Ĵ��Ϳ�ʼ������������֪ƣ��Ľ��������뺰�ſںţ��Գ�һ�ɡ���������ɱ���ȴֻ������Ϸ��Ъ��֪ƣ��ıı��������¶�������������ţȦ����Ż�ţ�Ϳ�ʼ�����������򲻸������ˣ���ƥ������˵�Ǹ���������ǿ��׳�������������鸹����ٰ��������󵱼ҡ�����ʾ�����ִ�ү�Ƕ�֮�伤�������ƴ������ǳ��Ͽɣ����Ծ�ͷ����Ц����ÿ��Ϸ����һ���С��������һ��ͦ����˼��������� <br />
<br />
��������Ȥû���� ��������ջ�ϲԩ���ֲ�ͣ <br />
<br />
��������Ϸ�ɣ�����û���ΰ�����Ц��������Ц�ʹ��һ�����ֳ��ͻ�Ծ�ˡ����ؼ��У������ֻ�ϲ���Դ����εĻ��䡣��Ϥ����ƥ�򡷵���������������Ĭ�����氮�֣���Ƭ��ʱ��ʱ��ƴ�ڻ�����ƶ��ˡ���Ϸʱ��������������ѽѽ����Ա�����ˡ������ն��������������Աʹǹʱ����ģ����ȴ��ʱ����ǹ����Ū�������ڳ��ܡ���������Ӫ������ɻ����Χ�£�ƥ����Ա����Ĭϸ���󱬷�����������������͵�������һƬ��ֻ�������һ��ҧ�ŵ���ƻ���͵����뱧�ŵ�С�������һ��߶߶�ţ�������������˼����������û�óԣ���һ�������ǵĳԣ��������𣿡���һ�ԵĻ�ţ��С���Ӷ�ֻ���۰Ͱ͸�����Ľ���ʺޡ����ҵĵ������ҵĵ�������ˣ����ȵ�Ҫ��Ϸʱ����ղŷ��ֵ���ƻ���ѱ�С��ն���⻹�����������Ϳ���һ�ߣ������һ�߲��ͺ����𣿡������ֹ���ʹ�������������������ġ����С�����Ƭ�����ֲ��ϡ�<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font> <br />
<br />
����ƥ����һ���������ʼ��صĵ�Ӱ��̸��Ƭ�������Ǻκ��壬������������ʾ����ƥ����ִ��Ը��ӣ��������ǰ���ġ����Եģ������Ǳ���ģ���Ӱ��Ľ�ɫҲ���������ӣ��������ǵײ������ȴ���������е���������˵ƥ��֮ŭ��Ѫ���岽�����������˼����<br />
<br />
��������ү����־�������ݸ�Ⱥ�顢�ܻ������������Լ����ʲݡ����������۾��ڱ�Ƭ�пʹ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/pifu/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/pifu/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/pifu/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/pifu/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/pifu/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/pifu/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���˰����췽�������������Σ������һ�����ɹٸ߶����������Σ����߶�������Ѫ��ǿ���˷˰�ġ�С�����̡������䣨������Σ������ǣ�û����֪�����߶�����������һ����Ʊ��ô�򵥡���Ļ�����������������ƴ��� ����ϷֻΪһ�����ˡ�������Ŀ�ġ��˰�󵱼ҡ���������ӰƬ��չ�ֳ���ͬ�������ı������ʣ���̹���Լ����ݷ�һ���꣬����Ϊ���������¶ף��������ƴ����������ҡ�ƥ���׵���壬�������Ϊ��Ӱƴ�����ˡ����ᵽϷ��Ϸ�⡰�󵱼ҡ�����ݣ�������˵������Ϊ���ڼ�����ǳ��ӳ�������7����ܣ���С��ϰ�߳�ͷ�͹��£�����һ���Ӿ�ϲ�����ⲿ��Ӱ�д󵱼ҵĽ�ɫ����������Ϊ���ִ�ֵļ�֣���������ѡһλ����Ӳ�����ݵ�����',N'�й�',N'����/����/ս��/����',N'1280 x 720',N'2012',N'http://www.lwgod.com/thread-611644-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887707&amp;k=a0d857454c2bc18333905ab3d3adedee&amp;t=1412261767&amp;sid=8e48aIBbKibwmMpnnba7ikSXvF9N%2F%2BAoNpq7vXegUHvyW1M',N'2014/10/2 22:57:37',2)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 480,N'������ؿ�����������������1��ѹ����BluRay-720P.MKV����˫�',N'<font color="blue"><font size="5">����ԭ�̸�����������ѹ�ƣ�<br />
�����ȼ���ǰ�汾��̫�࣬���������ղأ�</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/qieting1/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/qieting1/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡��������������<br />
Ƭ��������Overheard<br />
�ꡡ������2009<br />
�������ҡ��й����<br />
�ࡡ���𡡶���/����/���<br />
����ԡ�<font color="red"><font size="3">��������˫����</font></font><br />
�֡���Ļ�����ļ�<br />
�������֡�7.2/10 from 1,705 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1349853" target="_blank">http://www.imdb.com/title/tt1349853</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.70 GB<br />
Ƭ��������100 mins<br />
�������ݡ����׻� Siu Fai Mak<br />
����������ׯ��ǿ Felix Chong<br />
�������ݡ������� Ching Wan Lau<br />
���������������� Louis Koo<br />
���������������� Daniel Wu<br />
�����������ž��� Jingchu Zhang<br />
���������������� Alex Fong<br />
�����������ּλ� Ka Wah Lam<br />
���������������� Waise Lee<br />
����������½ʫ�� Luk Sharon<br />
������������ΰ�� Weiting Chen<br />
���������������� Michael Wong<br />
�������������ȶ� Mimi Chi Yan </strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
�����߿Ƽ���Ѷ������۹��С��ڰ�����Ļ������̰���������ڽ�ɽ�����ѣ�<br />
<br />
����ȫ�������ֵһ�ȳ�Խ��ʮ���ڵ����֤ȯ�г����ǵ���������Ҫ�ʽ��еأ��г�������ʢ����Ͷ���ȡ��������ٽ��ڴ��������죬�ڷ��ɿ�϶����Ӫ��ɫ�ش���ͼ�Է�һ����������ͷ��Ŀ�����дºš��ϰ塱(��������)֮�Ƶ�Ļ����֣������������й�˾���绪���ʡ�������Ļ���װ��������ж�����Ϊ��׷�硱����С��ȫ����졣<br />
<br />
����������Ӣ������ (��������)��С������ܣ��ж�������ͬ���Ͼ�Ա����(��������)������ʦ�֡����������һ��(��������)������������绪���ʡ������߲���Ա�İ칫�Ҽ���������ĵ绰ϵͳ������С����װ���롰�绪���ʡ�������ز����¸���͵������������������չ�������ж���<br />
<br />
����һ��żȻ�Ļ��ᣬ���˴����������У����������绪���ʡ������߲���Ա���ƻ�����˾�ɼۣ���0.2��ԪǮ������1.2Ԫ����Ϊ����˽�������˾�������˾������Ϣ��Ȼ���ڹ�Ʊ�г���ע��׬���������֮�ƣ�ȴ���ϣ���벶����ȸ�ں����˵���������ж������������˵Ĺ۲�֮�С���<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
�����������ڵ�����<br />
<br />
�������������ơ��У������ơ������桢��������������ɵ��鱨�鸺��Ϊ��ҵ�ﰸ����Ʋ���־������ҫ���Ƚ��ڴ������׹����еĺ�Ļ��ӰƬչʾ���������ͷ����������רҵ�����������ʣ�����������һ���ֻ������Գ�Ϊ�������ĳ������˾��ú��£�ֻҪ�ڼ�����������Է����ֻ����룬�Ϳ��������Է���ߵ�һ���������������ܿ��ԡ�����������ܣ�����ص����ֻ�Ҳû���ã���һ������⴫������ߵ�����������������ѵ�ز����<br />
<br />
�������ֻ���������װ���������Ĵ����������ۣ�ӰƬ��Ҳ��������˵�������ֳ�����ֻҪ�������������������������ź�һ�µ�Ƶ������Ϳ��������������Ա��˵ĶԻ����ź�ʮ�����������Ҽ�����ˣ�ӰƬ�������桢�����ֵ��˾�������͵������һ����Ůͬ��֮���˽�顣<br />
<br />
����������۾���ƬѪ��<br />
<br />
������۾���Ƭ��Ϊ����Ļ���Ƭ�֣��Ѿ��ӵ��꡶�������ơ���Ұ���̾���������籩�������¼������޼�����ľ��˳�ǹ��ͷ��ս�����ִ������̸߿Ƽ������������Ҳ��ô���˹���۾������ֶ��ǣ����������ơ�Ϊ������۾���Ƭ������Ѫ�������������ơ������֡���������λ��������ͬʱ���ݡ��������죬��Ϊ09�����ڻ����Ӱ��������㡣ӰƬ����ʮ���ӣ�Ƭ��δ����һ��̨�ʣ�ȫƾ��Ա��װ����װ�õ������ݺͽ������ֵĴ������飬��������һ��������ƴ�ݼ������������Ȥ�������ô�Ҿ�ϲ�ĵ�����Ƭ�����⣬Ƭ�����롰���޼����ϵ��֮�������׻Ժ�ׯ��ǿ��ͬ�ർ���������������챾Ϊ����ȡ֤����ȴ��̰���������á����������Ϸ����·��ȫ���̣����Ŷαȵ��ꡰ��ׯ���ԡ��޼�����о���˫�������Ե׵ľ��İ����й�֮���޲�������νһ��ͻ�ơ�Ҳ�й��ڿ���ӰƬ��ʾ��Ƭ�о������ø߿Ƽ������һЩ�а��Ŷ���ָʱ�ף�����˹��ڵ����������ݹ�����Ļ���ƺ���Ӱ��ƹ�ԣ֮�ӣ����ù��ڹ�����<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
�������������ơ����ǡ��޼�����͡���ͽ�������׵Ķ�����������Ӱ�������׻ԡ�ׯ��ǿ�ǡ��޼����ϵ�еĽ��Ʊ�磬���������ǳɹ�ִ������ͽ���Ķ�������������Ҳ���ڵ��ʷ����������״�����Ͷ�ʵĸ�Ƭ������ͬʱ����ӵ�и�Ƭ�����հ�Ȩ��������ȫ�̷���ҵ���д˿ɼ��ڵع�˾�ĵ�λ��ת�䣬�Ӹ��������������ĵ�λ��<br />
<br />
������Ӱ�Խ��ڷ������ģ�ֱָ�����ʵ�����ȫ�����ܽ���Σ����ʩŰ��ͬʱ���ڷ�����ݹ���Ҳ�ع�ý�壬������ƹ�ԣ�����ǽ��������ӡ�Υ�桱���ܵ��飬����Щ��Ƭ�ж������Ƶ�����������ʱ���еİ��գ������ڲ����¹��ڵ��ġ�<br />
<br />
�������⣬�����������ġ��޼�����͡���ͽ����Ϊ��Ƭ����������Ϣ����ɫ�ӽ�ͷ��³ç��������������Ŵ��ݣ��������ҡ�ȺϷ�����۾��飬ͬ����Ϯ���޼�����͡���ͽ���ķ�񣬶���Ƭ���Ĵ����������ݳ�������Ϊ�������ƣ������֣�������ͷ����ţ����ڸ�λ���ݼ��� �����������ϡ�<br />
<br />
������Ϊ�����������Ʒ�����������������鴫ý��ͬ������С�ӣ���˵������������1982���ɳ��ǡ���˺�����Ӱҵ���ҹ�˾�ϲ����ɣ���Ϊע���ڸ۵����ʱ����ĵ�Ӱ��˾���䲻�����ϣ��κ��Լ����ճǺ���ʢ�ǰ㱻����֪���������Ž���������Ƭ�����ڵصļӿ�����룬����������������������ȫ��͹�Գ����������������������˸�Ƭ�����ڵصĴ����ˣ����䶭�³��������Ϊ��Ƭ�ġ����ˡ����ɼ�����������ҵ��Ӱ�����������鴫ý��Ϊ�������ӵ�ѡ���Ŀ��������˾���ó����˾��͵ľ�Ӫ�������漰Ӱ��Ͷ�ʣ����������ơ�����������״�Я�ָ�Ƭ����Ȼ��һ�ж������ڱ������ɵ�һ�ִٳɡ�<br />
<br />
�������Ᵽ�����ɼ������ġ�ʮ��Χ�ǡ�����Ϊ�µ�ɭ������֮�������Χ�Ƽ�λ����֮ʿ������������ɽ�Ĺ���չ��������03���������������Ͷ�������׻���ͻȻ��ɱ���ø�Ƭ���������ڸ��á�����ڱ�����ǣ���£��¿����ᵶ��������Ϊ��Ƭ���ƣ���������ƻ������ڵ��ݺ�Ӱ�Զ��Զ�������һ�������˽�����Ǵ����Ƭ���ȡ�Ͷ��״���Ķ���Ϸ��������<br />
<br />
�������⣬��Ϊ�е����������ơ���������������ӳ�����Ƕ������ͳ�������1992������Ķ�����Ƭ��˾��������ǽ����ڶ��������εġ�����ӳ�񡱣����硶�²����顷�����һ�ս�����͡����Ǻ�ҹ�������������Ʒ��Ϊ�߶���ҵ������۵�Ӱע�����ѵõ��������塣<br />
<br />
������������ӳ�����ԣ�09�겻���С��������ơ��������˶�������ִ��Ͳ�ġ�ǹ��֮����Ҳ�������У�ͬʱ�Գ���ġ�һ·���㡷��������ġ��󺣵���衷Ҳ����׼���У���ʱ��������<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/qieting1/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/qieting1/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/qieting1/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/qieting1/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/qieting1/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'���߿Ƽ���Ѷ������۹��С��ڰ�����Ļ������̰���������ڽ�ɽ�����ѣ�ȫ�������ֵһ�ȳ�Խ��ʮ���ڵ����֤ȯ�г����ǵ���������Ҫ�ʽ��еأ��г�������ʢ����Ͷ���ȡ��������ٽ��ڴ��������죬�ڷ��ɿ�϶����Ӫ��ɫ�ش���ͼ�Է�һ����������ͷ��Ŀ�����дºš��ϰ塱(��������)֮�Ƶ�Ļ����֣������������й�˾���绪���ʡ�������Ļ���װ��������ж�����Ϊ��׷�硱����С��ȫ����졣������Ӣ������ (��������)��С������ܣ��ж�������ͬ���Ͼ�Ա����(��������)������ʦ�֡����������һ��(��������)������������绪���ʡ������߲���Ա�İ칫�Ҽ���������ĵ绰ϵͳ������С����װ���롰�绪���ʡ�������ز����¸���͵��������',N'�й����',N'����/����/���',N'1280 x 720',N'2009',N'http://www.lwgod.com/thread-612135-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888472&amp;k=d216dd6e8bbe0ca9be36e1991a6380eb&amp;t=1412261774&amp;sid=c1bbXiYfFh7IVQLHFU%2F14SWXtV0F11w0OtD4o17QKYhqRPw',N'2014/10/2 22:57:37',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 481,N'��������رر��������ν��3��ѹ����BluRay-720P.MKV�������',N'<font color="blue"><font size="5">��������ԭ�̸߲γ���������ѹ�ƣ�<br />
Ч������ǰ�汾ǿ̫�࣡�����������䣡<br />
����������ӰԺ��ӳʱ�Ĺ��䣬�������Ϊ��ӰƵ������ʱ�Ĺ��䣡</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/bianxingjingang3/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/bianxingjingang3/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ν��3/���ν��3�����½���(��)/���ν��3���º�֮ʱ<br />
Ƭ��������Transformers Dark Of The Moon<br />
�ꡡ������2011<br />
�������ҡ�����<br />
�ࡡ���𡡶���/ð��/�ƻ�<br />
����ԡ�<font color="red"><font size="3">Ӣ��˫����������</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.4/10 from 252,299 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1399103" target="_blank">http://www.imdb.com/title/tt1399103</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��5.76 GB<br />
Ƭ��������154 Mins<br />
�������ݡ����˶����� Michael Bay<br />
�������ݡ�ϣ�ǡ������� Shia LaBeouf&nbsp;&nbsp;....Sam Witwicky<br />
�������������硤������-������ Rosie Huntington-Whiteley&nbsp;&nbsp;....Carly<br />
������������ʲ���Ź��� Josh Duhamel&nbsp;&nbsp;....Major William Lennox<br />
����������̩��˹������ɭ Tyrese Gibson&nbsp;&nbsp;....Robert Epps<br />
���������������ά�� Hugo Weaving&nbsp;&nbsp;....Megatron (voice)<br />
�������������ɵ¡���Ī�� Leonard Nimoy&nbsp;&nbsp;....Sentinel Prime (voice) (rumored)<br />
����������������ˡ���ķ�� Patrick Dempsey&nbsp;&nbsp;....Dylan<br />
����������Լ���������ά�� John Malkovich&nbsp;&nbsp;....Bruce<br />
�����������ϡ�֣ Ken Jeong<br />
����������������˹����˶��ɵ� Frances McDormand&nbsp;&nbsp;....Marissa Faireborn<br />
�������������ס�ͼ���� Alan Tudyk&nbsp;&nbsp;....Dutch<br />
����������Լ���������� John Turturro&nbsp;&nbsp;....Simmons<br />
���������������ˡ�ά���� Frank Welker&nbsp;&nbsp;....Soundwave (voice)<br />
������������ķ������ Tom Kenny&nbsp;&nbsp;....Wheelie (voice)<br />
�������������ء����� Peter Cullen&nbsp;&nbsp;....Optimus Prime (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
������������������������š������ˡ�������ڶ���ʧ�ܺ���������ġ����컢����ս���������ˡ��롰���컢��������������֮��Σ�յġ�̫�վ������У�������ɽķ��һ��Ҫ�����Ļ��������������Ԯ��֮�֡���һ���н������µı��ν�յǳ����������ɡ��𵴲���Shockwave��������������������컢����������սʱ�ӹ�������̹����<br />
<br />
�������50����ǰ��һ����������̹�ķɴ�׹�������ɴ�����������������̫�վ��������������������ֻΪһ̽�ɴ��к��е����ܡ�ʱ��ص�21���ͳ�������������ս�����������ڴ�ܰ��컢�����֣��̶��������������ͬ���������ĵ���Ȼ���������ж�ŵ�������¼�ȴ�������Ѿõ�����ƻ����°ڵ����档Ϊ�˷�ֹ���컢�ҵ�������Ϊ����������������ս�ѷɸ����򣬸��ӵ���ķɴ��оȳ��������˵��ȴ��쵼�ߡ�������С���������������ķ����ߣ����ϰٸ�������������һ��������̫���ţ�ʵ�����ʵ�˲�䴫�͡�<br />
<br />
����æ���ҹ����Լ���Ů�ѿ������硤������-������Rosie Huntington-Whiteley �Σ���Ӫ�����ɽķ��ϣ�ǡ������� Shia LaBeouf �Σ��޿ɱ���ؾ������У����������ְ��컢�Ĳ���һ�е���ı��ȴ��֪�������ı��Σ������������Ӱ���󡭡� <br />
<br />
<font color="red"><strong><font size="3">һ�仰���ۣ�</font></strong></font><br />
<br />
���˵Ķ������档 <br />
������������ <br />
<br />
�ƻõ�Ӱ����׳�۵�һĻ�����ˡ� <br />
������ŦԼʱ���� <br />
<br />
���¼򵥣�����׳�ۡ� <br />
�����������ܿ��� <br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
��������������컢�ռ���ս<br />
<br />
����1984�꣬��֮����TAKARA����������һϵ�е���ߺͶ���Ƭ��������ߵĳ������ǿɱ���Ϊ�����˵��������ɻ�����˺�֮��������Щ������趨��һ�����±����������Ƕ��������ˣ����иߵ��ǻۺͿƼ����������Լ��Ķ��ؼ��ܣ�����Ⱥ���Ա��ε���ߣ���ͳ��Ϊ���ν�ա���1986��Ķ������Ӱ֮��20������֮��һֱ�ڳ�ı��Ƭ�����˵�Ӱ�棬��ȴ��Ϊ����ԭ��һֱ�޷����Σ�ֱ������������ĵ��ü�����ʷ���ġ�˹Ƥ������֮�󣬶ԡ����ν�ա��ǳ�����Ȥ��˹Ƥ���������ʯ���쾪���������ĵ������˶���������������Ƭ��������ʽ������̡�<br />
<br />
����2007�꣬��һ�����˵�Ӱ��ġ����ν�ա������ڵ���ճ�����������ȫ�����³���7�ڵ�Ʊ���ɼ��������ĵڶ���Ҳ����ʾ�������Ǳ���������4.02����ԪƱ����ȫ����Ǵﵽ8.36�ڡ����꣬ϵ�������������һ�������ν��3��������ӳ��̸���ⲿ��Ӱ���������ĵ������˶������ع˵������ӿ�ʼ�Ӵ������ν�ա���ʼ��һգ���Ѿ������ȥ�ˡ���������ͱ��ν�������ȹ������������̫���������������顣�Ҳ�ֹһ������������жϣ���ѵ��ݽ��������ˣ���������Ǿ�����ֵ������Ϊ������̫��һ�޶�������������ʱ��ǳ�ϲ������ߣ��ܹ�����Щ������ڵ�����Ļ�ϣ����Һ͹�����һ��HIGH����о�ʵ����̫���ˡ�������һ����ʱ�����ǻ�����������ϵ���ܽ��ж�ã���������û���������Ĵ��㣬��Ϊ�Ҳ���������ڹ��ڵĿ�ζ�������Ƿ񻹻�ϲ����Щ��ʮ��ǰ������أ���ҿ������Ա��ε������������磬�᲻�����̫��Ц�ˣ����ã���ʵ֤���ҵĵ��Ķ�����Ҫ���ⲿ��Ӱ����˴�ҵ��Ͽɡ���<br />
<br />
���������ν�ա�ȡ�ñ���Ʊ��֮�󣬡����ν��2����Ȼ��Ʊ���Ͻ�һ�������ӳأ����ڿڱ���ȴ�����һ������������״�����˶��������������������ڶ�����ʱ���ҵ�����˼·������ͨ������ĳ���Ͷ���ȥչ�ֳ�����������컢�ĶԾ��������ڵڶ�����˫���Ծ��ĳ���ǳ��Ӵ�Ҳ����˹��ڵ��Ͽɡ�����һ�����Ҳ��ò������ھ����ϵ�ת�ۣ�����һ��������Ϊ�������Э�˾��顣��ʵ��ԭ���ľ籾�����̹�����̻��ñȽ϶࣬������Ҳ����������£��������ܶ�Ϸ�ݲ��ò�����ɾ������Ҳ���Ҹе��ź������Ѿ��Ƚ����ѵ���ʶ���˵ڶ������ڵ����⣬�����ڡ����ν��3����һ�Թ����볡�����ϵ������������һ�����һ�������͵�һ�������Ĺ��£������������������սᣬ�����ٽ�β��ڶ���������˵���ݡ��������������ν�յĵ�Ӱ�Ѿ����׽����ˡ���<br />
<br />
���������ˡ����ν�ա�ϵ�У�˹Ƥ��������2008��ġ��ᱦ���4��֮��һֱû�������������������ʱ���������Ϊ�����ν�ա�Ͷ���˶��������أ����������������������˹Ƥ������˵�������ⲿ��Ӱ��90����Ҿ�����������㣬�����ڡ��ս���2��֮�󣬻����˵ĵ�Ӱ��������һЩ�µ��뷨�������ڼ�����ԭ��һֱû�����ɣ�ֱ���Һ����˶�������ͷ֮������ʱ�ԡ����ν�ա�Ҳ�ܸ���Ȥ���������Ǿ�һ��������Ŀ�����ˡ��Ҿ��ö����ϵ�У��ҵĶ�λ�ܼ򵥣���������Щ��С����Щ��߳���ĺ����ǣ����ڵĳ����ˣ��ٶ�ȥ��ζ���������ʱ������ָж�������һֱ�ڵ������ԣ������ʼ���ҵ���ִ�������ǲ�ȡ��������򵥵Ļ��������ͣ�����ȫ�´��죬�Լ��ھ������棬�����˵�װ������������̹�ǲ����٣������ڵ��о�������ʲô�������ã��Һ����˶������������������������ϸ�ڣ������˵�һ���͵ڶ�����ĥ�ϣ��ڵ���������ǻ���һ�ֱȽ�������״̬ȥ���֡���<br />
<br />
���������»��ǿ�ʼ��<br />
<br />
������һ��ʼ���㡶���ν��3�������˶�������͸¶���⽫��ϵ�����һ���ļƻ�������������������ĵ�Ӱϵ�У��������Ͱ�����Ȼ�ǲ�̫���ܵ��£�������һ�㣬ӰƬ�ļ���ʷ���ġ�˹Ƥ������˵��������ֻ��˵����������¶��ԣ��������ν��3�����Ѿ�ֹͣ�ˡ�ǰ����������һ�������Ĺ��£�����ʱû�м�������ļƻ������Ҿ������۴�Ӱ�ԵĽǶȻ��ǹ�˾�ĽǶȣ����ϵ�ж�ֵ����������ȥ�������˶�����������뷨������Ҫ���ʱ�������Լ�������������Ӱ�������Һ���������ѡ��Ҳ���һ�ִ����Ҳ�����ǻ��������������ͷ��������Щ������δ֪�������Կ϶����ǣ������ν��3����Ŀǰ������µ��սᡣҲ����δ����ĳһ�죬���������µ���׳����ڴ�����ǰ����<br />
<br />
�����򡶱��ν�ա�ϵ�ж����ȵ�С��ϣ�ǡ����������������ҵ״̬����Ѹ������̬�ƣ��ڡ�ӥ�ۡ����ᱦ���4����������2���ﶼ�в�����ֵ���������ڡ����ν��3�����ٶȶ��������������ⲿ��������������������������Ƭϵ�У�ϣ�ǡ�������˵�������Ҷԡ����ν�ա��ĸ����Ѿ����ܼ򵥵��ü��仰�������ˡ��ⲿ��Ӱ������ʶ��ԭ����һ����Ա������˵����˼��������㣬�����ǵ����Լ��ڵ�ӰԺ�￴������Ļ�ϵ��Һ�������վ��һ���ʱ������Ҷ����ϵ�о���ô�����е��ǳ������Ը��ᡣ�Һ�ϣ�������ν��3����Ϊ������ǵĵ�Ӱ���ⲻ��һ����򵥵��Ŀƻ�Ƭ�����ۺ��˶��ֵ�Ӱ����ټ���Ѥ����Ч������ȫ��Խ�˹�ȥ���������Ҿ��õ������ġ����ν��3����ʱ�������������黳���������������ܸо������ݵ�����뷨������һ���ӽ��ڡ��ռ���Ч���Ŀƻö�����Ƭ�������Գ�Ϊͬ���Ӱ���һ����ˡ�ϣ������δ��ĳ�գ��ⲿ��Ӱ�ܹ�����������ȥ���������ݲ������ң���Ҳ���ڴ�������Ļ�ϵĳ��֡���<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
�������ν��3�������˶�����ִ���ġ����ν�ա����˵�Ӱϵ�����һ���������ν�ա�Ҳ�����˶�����ִ���ĵ�һ����������Ӱ��<br />
<br />
����Ϊ3D�����Ĳ����ռ�����Ƭ������֮ǰ�Ͷ�����������ʵ�����㻹�Ǻ���ת�ƣ����ն�Ҫ��3D��ʽ������ӳ��һ��ʼ���˶�������Ϊ��3D������Ϥ���ֽ���̬�ȣ���Ϊղķ˹����÷¡����3D��Ӱ������˹����˹���˱�Ƭ��ʹ�����˶��������ջ��Ǿ���ʹ��3D�������㣬��˱�Ƭ����2D��3D��3DIMAX���ֹ����з�ӳ��<br />
<br />
�����硤������-��������ݵĿ���ԭ��������1984�꡶���ν�ա�����Ƭ�ĵڶ���������Ů�Խ�ɫ��<br />
<br />
���������ĸ����⡰�º�֮ʱ��ָ����һ��ʱ�������������챻��ס����ʧ�������Ϊ������֮�ա�����������һ��ʱ���Ľ�����һ���µĿ�ʼ��<br />
<br />
��ǰ�����ı���޲��С�����Ͱ����˹��������ҲΪ��Ƭ������ǰ�ڵľ籾�����������ͱ����ã���������������ν��2����繤�������ס���³����������˱�Ƭ�ľ籾��<br />
<br />
��÷��������˹�˳������ν��3��������֮�󣬽��ꡤ���صǣ���ʲ�򡤸��֣���³���֡��¿˶���������˶����Ŷ�������������÷�ء�ϣ���£������������գ����١������ϣ����ϡ������񣬰��ȡ��ϵ���˵���Ա��Ϊ�����ɫ���й��Ծ�����������Ǳ����硤������-������Ӯ�á�<br />
<br />
��ǧ�ﶥ��1984��Ķ������Ӱ�������֮���������ǵ��ܳ����������ڵĵ�Ӱ��������˱��۵��ܳ���<br />
<br />
����Ԥ��Ƭ����ֵİ�����11�ŵ��µȾ��飬��ʵ�ڡ����ν�ա���һ����ӳʱ��������ǰ��С˵���������顷���Ѿ��漰��<br />
<br />
�������ν��3����֥�Ӹ������ʱ����һ���ؼ��ɳ��Ĺ������Ϊ���»��������ֳ���һλ��ʱ��ԱGabriela V. Cedillo���ˣ�Gabriela V. Cedillo������ͷ­���ڽ�������ҽԺ���ƺ���Ȼ��������Σ�գ���������������������ˣ������̱�������������½��ĺ���֢��������Ϊ��֧����δ�����������ֵľ޶�ҽ�Ʒѡ�<br />
<br />
��Ϊ�����ܶ��ֻ�������������������Ϸ�ݣ�����֧����100����Ԫ��<br />
<br />
�����˶��������㱾Ƭʱ�ο��ˡ���ӥ׹�䡷�Ĳ��ֳ��������ⱾƬ��Ҳ�ö԰������˶�����ϲ���ĵ�Ӱ���ִ���ʾ¼�������¾���<br />
<br />
����Ƭ�������˷��ĳ�����������һ���̶ȵ�������<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/bianxingjingang3/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/bianxingjingang3/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/bianxingjingang3/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/bianxingjingang3/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/bianxingjingang3/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/bianxingjingang3/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'����������������������š������ˡ�������ڶ���ʧ�ܺ���������ġ����컢����ս���������ˡ��롰���컢��������������֮��Σ�յġ�̫�վ������У�������ɽķ��һ��Ҫ�����Ļ��������������Ԯ��֮�֡���һ���н������µı��ν�յǳ����������ɡ��𵴲���Shockwave��������������������컢����������սʱ�ӹ�������̹���򡣾��50����ǰ��һ����������̹�ķɴ�׹�������ɴ�����������������̫�վ��������������������ֻΪһ̽�ɴ��к��е����ܡ�ʱ��ص�21���ͳ�������������ս�����������ڴ�ܰ��컢�����֣��̶��������������ͬ���������ĵ���Ȼ���������ж�ŵ�������¼�ȴ�������Ѿõ�����ƻ����°ڵ����档Ϊ��',N'����',N'����/ð��/�ƻ�',N'1280 x 720',N'2011',N'http://www.lwgod.com/thread-611561-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887609&amp;k=95b705af0d0682422a928aa2feb7cded&amp;t=1412261768&amp;sid=40d7xue5dgk6o%2BLIlbds2s2BT%2Bt5C0mX%2Bh4sL%2FKiFlWMVWY',N'2014/10/2 22:57:37',3)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 482,N'����14����������������˼ά�ռ䡿��BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/anna/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/anna/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡������˼ά�ռ�/����/�����Ժ���<br />
Ƭ��������Mindscape<br />
�ꡡ������2013<br />
�������ҡ�����/������/����<br />
�ࡡ���𡡾���/���<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.4/10 from 4,987 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1715336" target="_blank">http://www.imdb.com/title/tt1715336</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.38 GB<br />
Ƭ��������99 Min<br />
�������ݡ�Jorge Dorado<br />
�������ݡ�̩ɯ����÷�� Taissa Farmiga ....Anna<br />
����������ŵ�ǡ�̩�� Noah Taylor ....Peter Lundgren<br />
������������ˡ�˹���� Mark Strong ....John<br />
��������������������� Indira Varma ....Judith<br />
����������������������˹ Brian Cox ....Sebastian<br />
����������Clare Calbraith ....Jaime<br />
�������������������͵� Jessica Barden ....Mousey<br />
����������Sanny van Heteren ....Samantha Harris<br />
����������Saskia Reeves ....Michelle Greene<br />
����������Rod Hallett ....Detective Worner<br />
����������Richard Dillane ....Robert Greene<br />
�����������������С����� Alberto Ammann ....Tom Ortega</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����Լ�����ܿ������˼�������������������°��ӵ�������Ǹ���ӱȴ�о��������ʮ������Ů���ȡ�Լ������⿪���ţ����Ⱦ����Ƿ���ỹ�����ؾ����˵��ܺ��ˡ���<br />
<br />
����˼ά�ռ�����һ�����������ĵ�Ӱ������������ͷ�Խ�Լ��������һ�����趨�ĳ����ڣ���Լ�����������ε�����������Լ������ɡ���<br />
<br />
������һȺ����Ϊ������̽���ˣ������лص��˼����ﳡ�������������˹�Լ���ӵ�һ�����ӣ�����������һ��16���Ů��Anna��Ů������Ϊ���о��񲡣�ʵ���������ų��ߵ����̣����Լ���ļ���̽Ѱ����һ������Լ��������Ԩ����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/anna/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/anna/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/anna/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/anna/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/anna/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��Լ�����ܿ������˼�������������������°��ӵ�������Ǹ���ӱȴ�о��������ʮ������Ů���ȡ�Լ������⿪���ţ����Ⱦ����Ƿ���ỹ�����ؾ����˵��ܺ��ˡ���˼ά�ռ�����һ�����������ĵ�Ӱ������������ͷ�Խ�Լ��������һ�����趨�ĳ����ڣ���Լ�����������ε�����������Լ������ɡ�����һȺ����Ϊ������̽���ˣ������лص��˼����ﳡ�������������˹�Լ���ӵ�һ�����ӣ�����������һ��16���Ů��Anna��Ů������Ϊ���о��񲡣�ʵ���������ų��ߵ����̣����Լ���ļ���̽Ѱ����һ������Լ��������Ԩ����ӰƬ',N'����/������/����',N'����/���',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-611951-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888101&amp;k=142dace6ad681bb264e019e94ea6a0c1&amp;t=1412261775&amp;sid=be93oXUIg43O0t1Ht1e43xUxa%2BZIWhbjxlWhdB30fFaHrdg',N'2014/10/2 22:57:38',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 483,N'����13�������������š�����ϷƦ����BluRay-720P.MKV�������֡�',N'<font color="blue"><font size="5">��Ƭ�ڶ�������7.0�߷֣���֪Ϊ����IMDBֻ��5.4�֣�<br />
������Ϊ��Ƭ�Ǹ�������Ƭ��</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/chuxipi/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/chuxipi/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������Ϸ��Ʀ��/��ϷƦ/���ӡ�Ϸ�ӡ�Ʀ��/������<br />
Ƭ��������The Chef, the Actor, the Scoundrel<br />
�ꡡ������2013<br />
�������ҡ��й�<br />
�ࡡ����ϲ��/����<br />
����ԡ���ͨ��<br />
�֡���Ļ�����ļ�<br />
�������֡�5.4/10 from 270 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2645044" target="_blank">http://www.imdb.com/title/tt2645044</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.83 GB<br />
Ƭ��������108 Mins<br />
�������ݡ��ܻ� Hu Guan<br />
�������ݡ����� Ye Liu&nbsp;&nbsp;....����<br />
�����������ź��� Hanyu Zhang&nbsp;&nbsp;....Ϸ��<br />
�����������Ʋ� Bo Huang&nbsp;&nbsp;....Ʀ��<br />
�������������� Jing Liang&nbsp;&nbsp;....ɵ��<br />
��������������ǧ�� Chie Tanaka&nbsp;&nbsp;....��������<br />
������������Ѹ Xun Wang&nbsp;&nbsp;....�����켩�Ӷӳ�<br />
����������ľ��� Ryu Kohata</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
���������ʮһ�꣬�������������л�������ƽ�Ǳ��վ���ǡ����������ߣ������ּ��ġ���å���Ʋ� �Σ����ò��У����ں�ͬ��ٴ󻧣�û�뵽ȴ�������ձ��˽ٵ���һ���ձ�����������ֻ�е����򸾺�һ��פ�곪Ϸ��Ϸ�ӡ��й������򸾣����ӣ����� �Σ���С���󣬳������ţ����� �Σ��м����ǡ�Ϸ�ӣ��ź��� �Σ��������ģ�����߶߶����ô���������ձ��˳������⡣<br />
<br />
����Ϊ���������������Լ��ģ���å����ǹ�������γ�����Ϸ�Ӹɴ�������һ���񵯡��������뽩�֣�������⣬��ʱ�վ��ͳ���α�����ڽ���ȫ�ǵ�̺ʽ�Ѳ顣֮����̬��չȴ�������ϣ��־��������ڱ�Ц��ת�����˷���ֳ��Ŀ񻶱����£������߾ȹ����ġ����˵�ս�����Ÿո����ݡ���<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
�����ݹܻ�͸¶�������������ľ籾������ʵ�ܿ죬����Ϊ��λӰ�����������������˴˴εĽ�ɫ���Ҷ��о�������ϲ�����Ź���Ҳ����ͬ���о������ź�����͸¶����Ӣ��Ƭ����The Chef��The Actor��The Scoundrel��ֱ���������������ӰƬ�еĽ�ɫ������һ�����������أ��ֳ������˲²¿��������ӡ�Ϸ�ӡ�����������ү����һ�������̬��������֮һ�����кܴ�ķ���͵߸����� <br />
<br />
�Ʋ���Ͼ��� ��������<br />
<br />
�����Ʋ�Ϊ���������ڷ����������Ƭ��ʮ�����ۡ�����ڡ����ν�ħƪ�����С��ţ�����Ʋ��˴�����������װ��������Ť�ηŵ磬�����������������ı���Ҳʮ�ֵ�λ�����Ϸ�����Ǿ������������ž�ͷ��ƨ���ǶΣ������˿��˶������󣡡�<br />
<br />
�����Ʋ�̹���ⳡ���ݶ�����ٳ����˷��ӣ������ɫ��ȹ�Ӷ���ֱ�Ӵ������ķ�װ������ϣ����������һ�㣬��Ϸ�������������ͳһ���������˷��Ӵ����ĸ�ЦЧ���������ֳ��Ĺ�����Ա���׷������ֻ��ģ����о������н�80̨������ڶ����ң���˵�����ҹ��ˣ�����ȥ�ɻ��ˡ���<br />
<br />
�����޻Ʋ�������ϲ�С�<br />
<br />
��������ϷƦ��������һ�������ռ����ƹ��£�������һĻ���Ķ��ǵ���Ϸʽ��ϲ�硣Ƭ�лƲ����ݵġ���Ʀ�ӡ���һ������ҽ��ᣬҲ����װ�����������Ƥ������ε������е���������ţ�еĸо���������Ҳ�������һЩ���������ϳ��������һ������Զվ��ֱ��˭�õ�����εĳ߶ȾͱȽϴ󣡡������ݹܻ���˵�籾ûд���ʣ��ܶ඼������Ӱ���ֳ��Ϸ���ӣ�̸���Ʋ��ı��ݺ����˶ಿϷ�Ĺܻ�����������ݣ����Ʋ���ʲô�㶼����û���⣬��������̫ǿ�ˣ����������ģ�����Զû��һ��֮�棬����ôȥ˵���з�����ԣ���<br />
<br />
��ɫ����<br />
<br />
�������ӣ����ǡ��Σ�<br />
�������ӱ�����һ���������С�ĺ��飬ʵ����һ������ר�ң��ܰ������ձ���˵�Ļ����������Ҳ�����ؼ�ʱ�������������������˹ؼ����á����ݹܻ���Ϊ��������һ�����⡢������˧�磬���ǲ����п��ܻ��������һ�棬��̫�˽����ˣ���ʵ�������еģ��ر��º͵�һ�棬��ô��Ҳ���������÷�����Ҫ�Ŵ����족��<br />
<br />
����Ϸ�ӣ��ź��衡�Σ�<br />
����Ϸ�ӵı��������Ũī�زʵ�Ϸ�ӣ�ʵ��������Ǹ���еר�ң��ر�ǹ���ڡ����ס�ը���������е�ǹ֧������ر����ס���ʵ�����е��ź����Ǿ����Ʊ�ѣ���Ҳ�����״γ��ԡ�Ũī�زʡ��ľ�����ࡣ�ź���ơ���ϷƦ�����Լ����ε�Ϸ�ӣ����������ǳ��гǸ���һ�쾩ǻ��������ϱ�����ү����<br />
<br />
����Ʀ�ӣ��Ʋ����Σ�<br />
����Ʀ�ӵ���ʵ��������ﻯѧר�ң�������Ҫ�������⿪������ҩ�Ļ�ѧ��ʽ������͸¶���Ʋ���ϲ���⣬���������зǳ������е�һ�桱������Ʀ�ӵĽ�ɫ����Ҫ�ó�������ص㡣��Ʀ�ӡ��Ʋ���٩�����ź��衢����������Ϸ�й�ϵ����������������ˣ�����ڡ�����Ϸ��Ʀ�ӡ����������ˡ���<br />
<br />
����ɵ�ӣ��������Σ�<br />
�����ϰ�������������������������ܹ�״��ɵ���ӣ�ʵ��ȴ���ó��ƽ����롢���ų�ǿ���������鱨ר�ҡ�Ϊ�������Ϸ��Ʀ�����˵Ŀ�ű���һ�£��������Լ�����˿�ǰ���ŵ�ױ�ݣ�ͻ�ƴ�ǰ��ɱ�����İ���ޣ�������ױ��Ѫ���ڡ�Բ��˫Ŀ������Ц�ơ������������������⣬�Ҿ���һ�������Ҷ���������������ھ��еĸ���Ϸ��ҲΪ���ž���֮������һĨ������ɫ��<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/chuxipi/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/chuxipi/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/chuxipi/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/chuxipi/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/chuxipi/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�������ʮһ�꣬�������������л�������ƽ�Ǳ��վ���ǡ����������ߣ������ּ��ġ���å���Ʋ� �Σ����ò��У����ں�ͬ��ٴ󻧣�û�뵽ȴ�������ձ��˽ٵ���һ���ձ�����������ֻ�е����򸾺�һ��פ�곪Ϸ��Ϸ�ӡ��й������򸾣����ӣ����� �Σ���С���󣬳������ţ����� �Σ��м����ǡ�Ϸ�ӣ��ź��� �Σ��������ģ�����߶߶����ô���������ձ��˳������⡣Ϊ���������������Լ��ģ���å����ǹ�������γ�����Ϸ�Ӹɴ�������һ���񵯡��������뽩�֣�������⣬��ʱ�վ��ͳ���α�����ڽ���ȫ�ǵ�̺ʽ�Ѳ顣֮����̬��չȴ�������ϣ��־��������ڱ�Ц��ת�����˷���ֳ��Ŀ񻶱����£������߾ȹ����ġ����˵�ս�����Ÿո����ݡ���Ļ����',N'�й�',N'ϲ��/����',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-611560-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887608&amp;k=a8187d7ed2a23fd607284f7b914c11a5&amp;t=1412261769&amp;sid=3c794Mj6UmIVZdftDrgq9JmKJKGSxd99hJ2IZb%2Fs1m2ypsk',N'2014/10/2 22:57:38',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 484,N'����14����Ц����ϲ�硿��3D���顿��BluRay-720P.MKV����˫�',N'<span><strong><span>��Ӱ������</span></strong></span><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/3dhaoqing/00.jpg" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/3dhaoqing/01.jpg" alt="" /><br />
<br />
<span><strong>�롡������3D����/����2<br />
Ƭ��������3D Naked Ambition<br />
�ꡡ������2014<br />
�������ҡ��й����<br />
�ࡡ����ϲ��/����<br />
����ԡ�<span><span>��������˫����</span></span><br />
�֡���Ļ�����ļ�<br />
�������֡�5.2/10 from 75 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt3740242" target="_blank">http://www.imdb.com/title/tt3740242</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<span><span>1280 x 720</span></span><br />
�ļ���С��2.89 GB<br />
Ƭ��������107 Min<br />
�������ݡ���� Kung-Lok Lee<br />
�������ݡ������� Chapman To<br />
�����������γ��� Josie Ho<br />
���������������� Derek Tsang<br />
����������Ԭ���� Candy Yuen Ka-Man<br />
��������������ϣ Nozomi Aso<br />
����������Ϧ������ Maiko Yuki<br />
������������������ Anri Okita<br />
��������������Ψ  Yui Tatsumi<br />
�����������ɰ����� Kana Yume<br />
���������������� Louis Koo<br />
��������������� Sandra Ng<br />
������������׿�� Charlene Choi<br />
�������������� Jing Wong</strong></span><br />
<br />
<span><strong><span>ӰƬ��飺</span></strong></span><br />
<br />
����AV�������������������Ի���Ĺ��ߣ���������һ�С�������һ�죬�����ת����Ů��ɫ��������<br />
<br />
������ΰ��(������ ��)����������Ů���б���״�������β�ֻ����ҵ�ϣ����ڴ��ϡ�<br />
<br />
������ѧϵ��ҵ�ĳ±���д��ֽɫ��С˵Ϊ���������ŷ��°�ͣ������ͣ��ͣ��ʧҵ�ĳº������룬�����������ձ�AV��������ˣ��β�Ͷ����AV���·����뷨���ϵõ�һ���������ҵ�Ͷ�ʣ�������֪�ձ�ɫ����ҵ�Ľ�ͷ���ɽ������(�γ��� ��)��·�������������²����Ĳι����㣬��ȴ����ر����º�������AV���š���������ǳ���AV�б�Ů������������ݳ������������ձ�һ�ڶ��죬һ�����н����ձ�AV�磡<br />
<br />
���������03��ִ���������ֺͳ���Ѹ���ݵ�����Ƭ�����顷�кý��������10�꣬���ڿ���������3D���顷��ֻ�����ǻ��϶����󡢺γ��Ǽ�һ���ձ�AVŮ�š�����ͺγ�����ͬ������鸰����ȡ�������ձ�������ֱ�������ֳ�����������ӿ������AV���ŵĶ��������ս����26�ꡢ��ӵ��42L��Χ������Ϊ��������ǿBody����AVŮ�ų������棬�����սһ��������<br />
<br />
������������Ƭ����־��AV���š�������γ��ǻ�쭴ֻ������������������Ա����ͷ����������ȴ�Ǿ��飬�����ű���ȭ���֣��ֲ�����̴���������߶ȷǳ�������������ʦ����֮�֡�����ӥ����һĻ�Ǽ���ӥ����ָ�����۹ϣ������֭�Ľ���������ڶ༤���ⲫ���棬������������ǿBody���ĳ������档<br />
<br />
������Ԥ��Ƭ�У����Ƕ�������һ��AVŮ�Ž����ⲫ���жೡ��������Ϸ����ʶ�൱�󵨡����˿�����Ѫ���ڡ�<br />
<br />
<span><strong><span>Ļ��������</span></strong></span><br />
<br />
������������<br />
<br />
���������03��ִ���������֡�����Ѹ�ͺγ������ݵ�����Ƭ�����顷�кý��������10�꣬����ξ������ġ�3D���顷���ɳ��Ǔg��1,500���ģ��������Ǿͻ��˶����󡣳���κͺγ���һֱ֧���б�����ɫ�ĸ۲�Ƭ����Ը�����ڵ��Ӵ��г���<br />
���Ƕ����Ӱ������2���ľ籾�������ú���Ȥ����ʹ��֪������Ƭ�������ڵ���ӳ�������Ǻ���������1,500��Ͷ�ʿ����ⲿϷ��ӰƬԤ��10�¿��ģ���Ա���˶�����ͺγ����⣬��Ϥ���ж�λ����AVŮ����Ծ��ա���AV Stephy������������ò����־��Ĳ���Ұ���¡�Ϧ�����ӡ����ġ�3D������֮���ֱ�������ԭɴ�������ľ���Ⱦ���Ӧ�ݳ��������ν�޸���ǳ����������ڸ��ձ������Ǽ��档<br />
<br />
�����������<br />
<br />
������γ����ֻ�����ƣ������������ִ����ӰƬ���кܶ�ֿڶ԰ף��԰�����Ҳ���٣���ʵ��Ƭ�Ը�ЦΪ�������½����ڸ�����ʧ�ܵĶ����󣬱��ȵ��ձ���AV���Ż�ծ��һ��ż����۹�����Ů�γ��ǣ�ԭ������Ҳ����Ϊ�ڸ�û��չ���������ձ���AVŮ�ţ��������Լ�����̵����������ŵļ��ɣ�ѧʶ��ɱ���󣬰���ȻԽ��Խ�죬���ǻ��������ľ����ˣ���������Ϧ��Ի������˸��顣<br />
<br />
<span><strong><span>ӰƬ��ͼ��</span></strong></span><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/3dhaoqing/1.jpg" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/3dhaoqing/2.jpg" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/3dhaoqing/3.jpg" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/3dhaoqing/4.jpg" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/3dhaoqing/5.jpg" alt="" /><br />
<br />
<br />',N'��AV�������������������Ի���Ĺ��ߣ���������һ�С�������һ�죬�����ת����Ů��ɫ����������ΰ��(������ ��)����������Ů���б���״�������β�ֻ����ҵ�ϣ����ڴ��ϡ���ѧϵ��ҵ�ĳ±���д��ֽɫ��С˵Ϊ���������ŷ��°�ͣ������ͣ��ͣ��ʧҵ�ĳº������룬�����������ձ�AV��������ˣ��β�Ͷ����AV���·����뷨���ϵõ�һ���������ҵ�Ͷ�ʣ�������֪�ձ�ɫ����ҵ�Ľ�ͷ���ɽ������(�γ��� ��)��·�������������²����Ĳι����㣬��ȴ����ر����º�������AV���š���������ǳ���AV�б�Ů������������ݳ������������ձ�һ�ڶ��죬һ�����н����ձ�AV�磡�����03��ִ���������ֺͳ���Ѹ���ݵ�����Ƭ�����顷�к�',N'�й����',N'1',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-611930-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888085&amp;k=ff44b63890b4252c5dd791fce6e4fd9c&amp;t=1412261784&amp;sid=46abfp%2BDwM5%2BzPKg5qtl5jpBnvvI%2FakVU0KWUrPcpZkaF7E',N'2014/10/2 22:57:38',16)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 485,N'��������رر��������ν��2��ѹ����BluRay-720P.MKV����˫�',N'<font color="blue"><font size="5">��������ԭ�̸߲γ���������ѹ�ƣ�<br />
Ч������ǰ�汾ǿ̫�࣡�����������죡<br />
���ν������������ѹ��Ϊ���ν��4Ԥ�ȣ�</font></font><br />
<br />
<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/bianxingjingang2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/bianxingjingang2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡���������ν��2�������ߵĸ���/���ν��2����������/���ν��2�����ɵķ���/���ν�տ�������(��)/���ν�գ�����֮ս(̨)<br />
Ƭ��������Transformers Revenge of the Fallen<br />
�ꡡ������2009<br />
�������ҡ�����<br />
�ࡡ���𡡶���/�ƻ�/ð��/���<br />
����ԡ�<font color="red"><font size="3">Ӣ�����˫����</font></font><br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.0/10 from 247,612 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt1055369" target="_blank">http://www.imdb.com/title/tt1055369</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��5.14 GB<br />
Ƭ��������150 Min<br />
�������ݡ����˶����� Michael Bay<br />
�������ݡ�ϣ�ǡ������� Shia LaBeouf&nbsp;&nbsp;....Sam Witwicky<br />
����������÷��������˹ Megan Fox&nbsp;&nbsp;....Mikaela Banes<br />
������������ʲ���Ź��� Josh Duhamel&nbsp;&nbsp;....Major William Lennox<br />
����������̩��˹������ɭ Tyrese Gibson&nbsp;&nbsp;....USAF Master Sergeant Epps<br />
����������Լ���������� John Turturro&nbsp;&nbsp;....Simmons<br />
�������������ɡ��޵������ Ramon Rodriguez&nbsp;&nbsp;....Leo Spitz<br />
�������������ġ��Ŷ� Kevin Dunn&nbsp;&nbsp;....Ron Witwicky<br />
��������������Ҷ������ Julie White&nbsp;&nbsp;....Judy Witwicky<br />
������������ɯ������¬��˹ Isabel Lucas&nbsp;&nbsp;....Alice<br />
����������Լ���������������� John Benjamin Hickey&nbsp;&nbsp;....Galloway<br />
�������������ޡ���˹�� Matthew Marsden&nbsp;&nbsp;....Captain Graham SAS<br />
��������������³�������� Andrew Howard&nbsp;&nbsp;....Special Air Service Forces<br />
�������������˶�������Լ�� Michael Papajohn&nbsp;&nbsp;....Cal<br />
�������������ס�ĪФ�� Glenn Morshower&nbsp;&nbsp;....General Morshower</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
���������ϵ�ս����Ȼ�����������ν��֮���ս����δ���ա���֩��ɻ�����̹���򣬴�����ž����ٻص�����һ����ս�������˷����������ʬ�岻���ˣ�ԭ���ѱ����˾���͵�ߣ���������󱻸������Ҫ��ʼ�������ͬʱ����֩��Ҳ����������̹��Ԯ������������������ʱ��ǿ���Լ���ս������һ����ս�������⡭��<br />
<br />
<font color="red"><strong><font size="3">һ�仰���ۣ�</font></strong></font><br />
<br />
һ������˼��ĵ�Ӱ���������������Ҫ�����Ĵ��棡<br />
�������ɽ�ɽ���±���<br />
<br />
��ǰ��һ�������Ǹ��Ӻ�ΰ׳�ۣ�������ڵ����������<br />
������������<br />
<br />
�Ӵ�ӷ�׵���������Ҫ����2����Сʱ����������������ڵ��Ӿ���ը��<br />
������ŦԼ�ʱ���<br />
<br />
��Ƭ���ÿ��£������޷����ܣ�ֻ��3��4���ط���������Ȥ��<br />
������֥�Ӹ���̳����<br />
<br />
<font color="red"><strong><font size="3">Ļ��������</font></strong></font><br />
<br />
�����޴����ڵĴ���<br />
<br />
��������ÿһ��Ӱ�Զ�������������ǰ�������һ�������ν�ա��������Ļ쫷磬�ⳡ�籩��Ȼ�ܴ�̶���Ҫ�鹦�ڵ������˶���������λ��������ϲ����Ū�ɳ���ը�ȴ���ĵ��ݡ����ڡ����ν�ա�ϵ�У����˶���������˵����������һ�����󲿷ֹ��ڶ��޷��ܾ��ĵ�Ӱ����������Щ�Ѿ�����һ���������������Թ����ֱ��ν����ߵ����ǡ��������׵�Ӱ���Ҿ���ʮ�ֹ�񫣬��Ϊ�������л����ܹ������С�ɳĮ�����ֵȸ��ֵط��úõĸ���һ���ˣ���ǰ�Ļ��ұ���Ѿ��Ļ�Ϊ��Щ�����ͱ�ը����Ѱ��һ�����ʵ����ɣ���������Щ�������̵ĵط���Ϊʲô���������Ļ�е�أ������ں�Ӱ���˶������Щ������棬��������Щͷ�ۡ����������ˡ����ν�ա�֮��һ�ж����˴𰸣�������������ִ��Ƽ������������������ϣ�����������֮ǰ��û�����濴�������ν�ա��������ߵ��˶��ܺܿ�����Խ�ȥ���������׵�Ӱ���Ƿǳ����ĵ���������ϣ�����ܹ�����Ĳ���������Щ׷�������ױȵĵ�Ӱ����Ĺ��ڣ�����Ļ�����Щ�����ν�ա������˷�˿����<br />
<br />
������һ�������ν�ա��ĸ��ִ�����Ȼ��Ӱ�Լ������£��������µ��⼯����˶������ֽ����������ʲô�����Ӿ����أ�������һ�㣬���˶�����˵����̸����Щ֮ǰ�����ȱ���ø�л��ҵ��ħ�Ļ���ǣ���������Ƿǳ����࣬����Ļ��һ��ֻ�м����ӵı��ι��̣���ҵ��ħ���������ʱ��ͨ����Ҫ���ꡣ�����Ǿ����ܵ�Ϊ���Ǽ��ٸ��������ԡ����ν��2������ֵĴ󲿷ֱ�ը���涼����ʵ�ģ������Ļ���ҵ��ħ�ں��������Ч��ͷ��ʱ���������鷳���Ҳ���͸¶��̫�࣬������˵��һ������һ��������һ�����ԣ��ӽǽ����Ӻ�ΰ�������ޣ��з��ޣ��и����ȫ���־�Խ����ᱻ�ݻ٣���������ǰ�͸ɹ����£�����ҿ��Ըɵø�Ư������һ�����кܶೡ�����Ҿ��ú��ź��ģ��������ľ�ս����΢ϸ��һ���Ӱ�Իᷢ�֣��Ǹ���������ʵû��һ���ִ����ý�����������Ϊ911�����ǵģ���Щ�����Ҳ���ȥ�������ǱȽ����еģ����ֹ�ȥ�����꣬���������Ź����ǻ������׵�Ӱֻ�ǵ�Ӱ�ˣ�����һ����ҽ�û�й�ȥ�����������ŵĸо�����һ���ĳɹ��ô�Ҷ������ˡ����ν�ա������������ҵ�������ǰ������ø��á���<br />
<br />
���������ⲿ��Ӱ��������������Ƭ��ʷ���ġ�˹Ƥ������ͬ��Ҳ��������������˶�������һλ�ܳ��ĵ��ݣ������ڴ�����Сϸ�ڵ������������Ҿ��þ�̾����ϣ�������ν�ա�ϵ����һ���������޴����ڵ���Ĭ�У�ͬʱ�����ض�����ĵ�Ӱ�����˶�������������һ�㣬���á����ν�ա�ϵ�����˸���Ŀ����ԣ��Ҷԡ����ν��2����1�������⣬��ʵ�������Ѿ��Ȳ��������뿴�������������ν�ա��ˡ���<br />
<br />
�������ֳ�ɫ����Ա<br />
<br />
����2007��ġ����ν�ա���������һ������̫������������Ա��ͬʱ����ǿ��������������Ϸ����Ҷ����ӳ��������ϣ�ǡ�������Ӯ���˲��׵����ۣ���Ů����÷��������˹��������Ծ��Ϊ��������ҫ�۵�Ů��֮һ���ἰ�����ν�ա���ϣ�ǡ������������������������˷�֮�飺�����ڻ��������������ܹ������ⲿ��Ӱ��ȫ����Ϊ˹Ƥ������󵼣����������ң����������ܹ����ã����������˶�����Ҳ�����Һܴ�����ɿռ䣬�����ҵ�ѹ�������˲��٣����µ�һ�����ҵĽ�ɫ���ٸ���Ŀ��飬�������Ѷ�Ҳ�ȵ�һ�����Ӳ��٣��кܶ�Σ�ճ����Ҷ����������㣬�Ҳ���ʹ��̫�����������ù���ʧ�������������Լ�ʧ����������������������Σ�գ��Ҷ�����ֵ�õģ���Ϊ�ⲿ��Ӱ��Ҫ��Աȫ���ĵ�Ͷ�룬ȫ������ô��Ĺ����ڶ����㣬�����������ò��С���<br />
<br />
��������ӰƬ���λ��Ա�ı��֣����˶�����˵������λ���ݶԡ����ν�ա����кܴ�����飬����Ⱥ��Ա�ĺ������Ҿ��ú����ܣ��Ҽ�������Ҫ��ʲôָ������ҿ��Ժܿ�Ľ���״̬�������Һܸ�л������Э����ӰƬ����ֵľ��˴󲿷ֶ��������ɾ�����ǲ�����Ĳ��ӹٱ������ǵ��ݳ����������רҵ��Ա���������������ǹɾ����Ҿ��ú����ϡ����ν�ա������ʡ����㡶���ν��2��������һ���������ҵ�У԰�����ȥѧУ��������һЩ���������£�����ҿ����������Ǵ���������ˣ�����ǵ�Ӱ����ĵط����ڣ�������������������档��<br />
<br />
<font color="red"><strong><font size="3">������</font></strong></font><br />
<br />
���󲿷�����ս����������������ī�����޵İ�ɳ�������鳡�Ͻ��еģ�<br />
������Ƭ����������Ա�󲿷��Ǹմ������˺Ͱ������������������ˣ�������ͨȺ����Ա��<br />
��������Ա�Ƕ����ⲿ��ӰͶ���˴��������飬��Ϊ���������Լ��ĺ������ڡ����ν��2���Ĵ���Ļ���ܿ����Լ��ͱ��ν������ս��<br />
����Ǵ�¥�����㹤���ṩ�˾޴��֧�֣������þ���ʹ�ð�ɳ�������鳡�����һ������Ǹ����Х������ս�����ӿ������㣻<br />
����Ǵ�¥ͬ��ҲҪ���ⲿ��ӰΪ������������һ�����ú����������<br />
����һ���ֳ������ں�����Լ����˹̹��˹�ź���ĸ�������㣬�ĵ��Ǻ���½ս��Ҳ���빥�����ӶԿ������ı��ν��һĻ��<br />
���ⲿ��Ӱ����ʷ������������½���վ��ͺ���½ս������һ�����������ж��Ľ����<br />
��ֱ�Ӷ��õ���Դ�����У�����A������ս��������F������ս����������װ�׺���������ʿ��������ɡ�ӣ�����M1A2̹�ˣ�����M3A3 ̹�ˣ�2�����е������䳵��2��װ�׳�����ɳ�������鳡������ըҩ��ը�����ݼٵľ��ˡ�<br />
������½���Ϳվ�֮��һֱ���������־������������ī�����޵�����ʹ���־������Ӽ��ҡ���Ȼ½���İ�ɳ���鳡�Ϳվ��Ĺ�¦�˻��ذ��ĺܽ����������Բ�ͬ���ľ�����Ա����Ӫ��ȴ����ȫ�ֿ��ģ�<br />
��ս��Ϸ�����϶������Ա�ڳ����ռ����Ļ�ͭ����װ�˺ö�Ͱ�����˿���Ц˵�����������������Ʒվ��׬����Ǯ������ܶ���ơ�ƣ�<br />
��������Ա̩��˹��Tyrese Gibson������һ���еľ��˽�ɫ���⼯�����˹٣���ս���к�ը�ĵ��涨λ����Ա��<br />
����ɳ�������鳡��������ʱ��İ�����ׯ������������ͻ����ըЧ����<br />
�������ڰ�����������Ķ������࣬�й���Ĵ�����ڱ�������������ȡ�ľ���<br />
���������������ⲿ��Ӱ��һ���ǳ���Ҫ�ľ���㣬�е�Ϸ���������ڽ���������������ģ�<br />
����������������е�M1̹�˷���յ�����Ϊ�������Ҳ����������̹�˱���һ��ѵ������������һ����ʹ��ʵ�������㣻<br />
��������Ϊ�˷���һЩ����Ҫ�ľ���Ʒ������������ʹ����һЩ��������Ϊ������ѵ��֮���Եľ�����Դ���⵽�����ĵ�Ӱ�����������ѵ�������Ǿ����������ܣ������������Ĺ��Ҳ���������Ǯ��<br />
����֩�����⼯���Ա���ΪF-22ս����<br />
�����ھ�����Ա���˶�����������߷�������һ�ȼ�����ʿ��������ľ�������Ա���ò��ҽ������ɢ���ǣ������Ǽ�����ô����̫��������ʵ�ˣ�����һ�����񵯾Ϳ��԰����Ƕ��ɵ�����������õ��Ļش��ǣ�������Ǻ����룬���ǲ���������Զ���򲻹�ĵ�ҩ�����ε���������ս��&quot;<br />
����һĻɽķ���׿�����һ��ׯ���ӳ������컢׷���Ϸ����˱�������ʿ����̹��ͬʱ��ǹ�����Ҵ򣬵�Ȼ������������׷�����ǵġ����ε������ˡ���<br />
���ڱ�ըϷ�ըҩ��ը������ʱ�٣�����Ӣ�������ʹһ���۽�ë���ɳ�Ϊ���˵���������������Ů��������Щ��ը��ͷ�Կհ�ֻ֪�������Ŀ��ܣ�<br />
����һ�Σ���һĻ�����һ�����һ�ߺ��ߵ���ϣ�ǡ�������ɽķ�İ����ߣ���÷��������˹���׿����İ����ߣ���Ҫǩ��һ��˵��Ǹ��������һ������ΪʲôҪ��Ǹ��һ��ˬ�������ǩ��������ͻȻ�䣬һȺ����ֽ�ͱʵĴ���Ƕ������ˡ���<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/bianxingjingang2/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/bianxingjingang2/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/bianxingjingang2/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/bianxingjingang2/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/bianxingjingang2/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/bianxingjingang2/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'�������ϵ�ս����Ȼ�����������ν��֮���ս����δ���ա���֩��ɻ�����̹���򣬴�����ž����ٻص�����һ����ս�������˷����������ʬ�岻���ˣ�ԭ���ѱ����˾���͵�ߣ���������󱻸������Ҫ��ʼ�������ͬʱ����֩��Ҳ����������̹��Ԯ������������������ʱ��ǿ���Լ���ս������һ����ս�������⡭��һ�仰���ۣ�һ������˼��ĵ�Ӱ���������������Ҫ�����Ĵ��棡
�������ɽ�ɽ���±�����ǰ��һ�������Ǹ��Ӻ�ΰ׳�ۣ�������ڵ����������
�������������Ӵ�ӷ�׵���������Ҫ����2����Сʱ����������������ڵ��Ӿ���ը��
������ŦԼ�ʱ�����Ƭ���ÿ��£������޷����ܣ�ֻ��3��4���ط���������Ȥ��
������֥�Ӹ���̳����Ļ',N'����',N'����/�ƻ�/ð��/���',N'1280 x 720',N'2009',N'http://www.lwgod.com/thread-611454-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887284&amp;k=c5b10969d3a629b3622f0ad06c228c67&amp;t=1412261770&amp;sid=743aCmZylaywBI7gKfUplFCy8rapdRpjHFnSciGZAGOTC5A',N'2014/10/2 22:57:39',8)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 486,N'����14��ЦŮ������������֮�á���BluRay-720P.MKV������Ӣ��',N'<font color="red"><strong><font size="3">��Ӱ������</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/mengxiuzhilv/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/mengxiuzhilv/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>�롡����������֮��/��������(̨)/�����������(��)/�ȹ���<br />
Ƭ��������Walk of Shame<br />
�ꡡ������2014<br />
�������ҡ�����<br />
�ࡡ����ϲ��<br />
����ԡ�Ӣ��<br />
�֡���Ļ��<font color="red"><font size="3">��Ӣ/Ӣ��/��/��/Ӣ</font></font><br />
�������֡�6.1/10 from 13,355 users<br />
�������ӡ�<a href="http://www.imdb.com/title/tt2463288" target="_blank">http://www.imdb.com/title/tt2463288</a><br />
�ļ���ʽ��x264 + 5.1 AC3 @ mkv<br />
��Ƶ�ߴ硡<font color="red"><font size="3">1280 x 720</font></font><br />
�ļ���С��2.34 GB<br />
Ƭ��������95 Min<br />
�������ݡ�ʷ���ġ������ Steven Brill<br />
�������ݡ�����ɯ�ס����˹ Elizabeth Banks&nbsp;&nbsp;Meghan<br />
����������ղķ˹����˹�� James Marsden ....Gordon<br />
�������������򰲡��Ÿ���˹ Gillian Jacobs ....Rose<br />
����������ɯ������ɭ Sarah Mason ....Denise (as Sarah Wright Olsen)<br />
������������ɣ�������� Ethan Suplee ....Officer Dave<br />
����������Billy Burr ....Officer Walter<br />
�����������ϡ���ά�ٰ� Ken Davitian ....Cab Driver<br />
����������С���𡤼����� Larry Gilliard Jr. ....Scrilla<br />
��������������������˰��� Alphonso McAuley ....Pookie<br />
����������Davon McDonald ....Hulk<br />
��������������ˡ����ذ��� Eric Etebari ....Biker Boy<br />
��������������������˹�� Oliver Hudson ....Kyle</strong></font><br />
<br />
<font color="red"><strong><font size="3">ӰƬ��飺</font></strong></font><br />
<br />
����С����÷���������ǳ�Ϊ����������һ����Ҫ�����Խ����׵ĸı��������ˡ�Ȼ�������Ե�ǰһ������Ȼ���˷�����һҹ�飬�ֻ������������֤��Ǯ��ͨͨ������ɣ�Ϊ���ܵõ������еĹ�������ֻ���뾡���ְ취��8��Сʱ�ڸϵ����Եص㡭��<br />
<br />
����Ů��������÷��������˹��ղķ˹����˹�� �Σ��ոո����˴���Լ������һ���Ծ���������������ϣ�������ȹ�һ����֮ҹһɨ�����������ɶ��������Լ������˧�磨ղķ˹����˹�� �Σ����������˼ң���һ������ҹ������ӵ��˾����˵ĵ绰����֪���õ���һ�����Ըı������������Ի��ᡣ���������߳�����ȴ�����Լ��ĳ��ӱ����ߣ������Լ���Ǯ�������֤Ҳ���ڳ��ϡ���λ��ù�����������ܲ��ܰ�ʱ�����������ֳ��أ�һ·�����ֻ�������ô���ć����أ�<br />
<br />
������������˺ò����׵����ı�����ᣬ�����ɽ���������Ĵ�ܺ�ʧ��У��������������Ӧ���أ�һ�����Ϊ���������˵�÷��������ɯ�ס����˹ Elizabeth Banks �Σ�������ʱ����һ�����ֶ��ַ����ɶ��ˡ�<br />
<br />
�������ɶ��ϣ�÷����������Ϊ��ǣ�ղķ˹����˹�� James Marsden �Σ�������֮��ü����ȥ���¶Ȼ���������һ�������������ͼ����ҹ�������ǰ������һҹ�������Ծ����˵ĵ绰���������ڷ�ɫ��Ϣ֮�е�÷����������ʵ��һ��������һ�ٳ����Ĵ�û��ᵽ���ˡ�Ȼ������ʱ��÷���ŷ��֣��Լ��ĳ������ߣ�Ǯ��������֤��ȫ����֮��ȥ���ۿ�������ʱ���Ҫ�������ܷ�׼ʱ�����������ֳ����Ǹ������÷���ܹ�ץס���ǧ���ѷ��ת����<br />
<br />
<font color="red"><strong><font size="3">ӰƬ��ͼ��</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/mengxiuzhilv/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/mengxiuzhilv/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/mengxiuzhilv/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/mengxiuzhilv/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/mengxiuzhilv/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'��С����÷���������ǳ�Ϊ����������һ����Ҫ�����Խ����׵ĸı��������ˡ�Ȼ�������Ե�ǰһ������Ȼ���˷�����һҹ�飬�ֻ������������֤��Ǯ��ͨͨ������ɣ�Ϊ���ܵõ������еĹ�������ֻ���뾡���ְ취��8��Сʱ�ڸϵ����Եص㡭��Ů��������÷��������˹��ղķ˹����˹�� �Σ��ոո����˴���Լ������һ���Ծ���������������ϣ�������ȹ�һ����֮ҹһɨ�����������ɶ��������Լ������˧�磨ղķ˹����˹�� �Σ����������˼ң���һ������ҹ������ӵ��˾����˵ĵ绰����֪���õ���һ�����Ըı������������Ի��ᡣ���������߳�����ȴ�����Լ��ĳ��ӱ����ߣ������Լ���Ǯ�������֤Ҳ���ڳ��ϡ���λ��ù�����������ܲ��ܰ�ʱ������',N'����',N'ϲ��',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-611451-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887272&amp;k=27741b3ee5ac981b12321a2aadb48ca2&amp;t=1412261774&amp;sid=87a88HPaGOT5qlAkqakmLPkFdd99n53gbW4FWmJAgEZQKmI',N'2014/10/2 22:57:39',19)

SET IDENTITY_INSERT [movies] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[setting]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [setting]

CREATE TABLE [setting] (
[title] [ntext]  NULL,
[url] [nvarchar]  (50) NULL,
[smallurl] [nvarchar]  (50) NULL,
[keyword] [ntext]  NULL,
[description] [ntext]  NULL,
[aboutme] [ntext]  NULL,
[aboutad] [ntext]  NULL,
[addteam] [ntext]  NULL)

if exists (select * from sysobjects where id = OBJECT_ID('[tip]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [tip]

CREATE TABLE [tip] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[SearchTip] [nvarchar]  (50) NULL)

SET IDENTITY_INSERT [tip] ON

INSERT [tip] ([id],[SearchTip]) VALUES ( 1,N'����')
INSERT [tip] ([id],[SearchTip]) VALUES ( 2,N'����')
INSERT [tip] ([id],[SearchTip]) VALUES ( 3,N'�ݰ��ո�')
INSERT [tip] ([id],[SearchTip]) VALUES ( 4,N'this')
INSERT [tip] ([id],[SearchTip]) VALUES ( 5,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 6,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 7,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 8,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 9,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 10,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 11,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 12,N'����')
INSERT [tip] ([id],[SearchTip]) VALUES ( 13,N'Ӣ')

SET IDENTITY_INSERT [tip] OFF
if exists (select * from sysobjects where id = OBJECT_ID('[user]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [user]

CREATE TABLE [user] (
[id] [int]  IDENTITY (1, 1)  NOT NULL,
[email] [nvarchar]  (100) NULL,
[pwd] [nvarchar]  (50) NULL,
[UserName] [nvarchar]  (10) NULL,
[CnName] [nvarchar]  (10) NULL,
[headPic] [nvarchar]  (50) NULL,
[sex] [nvarchar]  (10) NULL,
[QQ] [float]  NULL,
[Mobile] [nvarchar]  (50) NULL,
[Age] [nvarchar]  (50) NULL,
[address] [nvarchar]  (100) NULL,
[website] [nvarchar]  (300) NULL,
[jianjie] [ntext]  NULL,
[regtime] [datetime]  NULL,
[onlinetime] [datetime]  NULL)

ALTER TABLE [user] WITH NOCHECK ADD  CONSTRAINT [PK_user] PRIMARY KEY  NONCLUSTERED ( [id] )
SET IDENTITY_INSERT [user] ON

INSERT [user] ([id],[email],[pwd],[UserName],[CnName],[headPic],[sex],[QQ],[Mobile],[Age],[address],[website],[jianjie],[regtime],[onlinetime]) VALUES ( 1,N'csbqq66@qq.com',N'21232F297A57A5A743894A0E4A801FC3',N'hhcsb',N'���겨',N'20140525192832_6327.jpg',N'Boy',665345464,N'111-31312313',N'01-05-2014',N'����ʡ�����������׳���',N'http://www.workyi.com',N'����Χ�°��Ҹ��޸��Ҷ���',N'2014/5/27 17:36:34',N'2014/6/3 11:14:37')
INSERT [user] ([id],[email],[pwd],[QQ]) VALUES ( 2,N'fasdfno@sdf.com',N'202CB962AC59075B964B07152D234B70',0)

SET IDENTITY_INSERT [user] OFF
