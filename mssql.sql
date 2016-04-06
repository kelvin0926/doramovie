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

INSERT [articleClass] ([id],[cid],[name],[paixu]) VALUES ( 1,0,N'动作',0)
INSERT [articleClass] ([id],[cid],[name],[paixu]) VALUES ( 2,0,N'恐怖',0)
INSERT [articleClass] ([id],[cid],[name],[paixu]) VALUES ( 3,0,N'科幻',0)
INSERT [articleClass] ([id],[cid],[name],[paixu]) VALUES ( 4,0,N'喜剧',0)
INSERT [articleClass] ([id],[cid],[name],[paixu]) VALUES ( 5,0,N'限制',0)
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

INSERT [friendsite] ([id],[title],[url],[qq],[isPast],[addtime]) VALUES ( 1,N'高清电影',N'http://www.Look1080.com',66477347,1,N'2014/5/29 14:53:37')

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

INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 387,N'【必珍藏】【变形金刚三部曲合集】【BluRay-1080P.MKV】【双语】',N'<font color="blue"><font size="5">变4的1080p等有完美国语音轨再发！<br />
祝大家国庆快乐！</font></font><br />
<br />
<br />
<br />
<font color="red"><font size="6">变形金刚1</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.06/bianxingjingang1/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　变形金刚/变形金刚电影版<br />
片　　名　Transformers<br />
年　　代　2007<br />
国　　家　美国<br />
类　　别　动作/科幻/冒险<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.2/10 from 410,608 users<br />
链　　接　<a href="http://www.imdb.com/title/tt0418279" target="_blank">http://www.imdb.com/title/tt0418279</a><br />
文件格式　x264 + 5.1 DTS @ mkv<br />
视频尺寸　<font color="red"><font size="3">1920 x 1080</font></font><br />
文件大小　12.2 GB<br />
片　　长　144 Min<br />
导　　演　迈克尔·贝 Michael Bay<br />
主　　演　希亚·拉博夫 Shia LaBeouf&nbsp;&nbsp;....Sam Witwicky<br />
　　　　　梅根·福克斯 Megan Fox&nbsp;&nbsp;....Mikaela Banes<br />
　　　　　乔什·杜哈明 Josh Duhamel&nbsp;&nbsp;....Captain Lennox<br />
　　　　　泰瑞斯·吉布森 Tyrese Gibson&nbsp;&nbsp;....USAF Tech Sergeant Epps<br />
　　　　　强·沃特 Jon Voight&nbsp;&nbsp;....Defense Secretary John Keller<br />
　　　　　瑞切尔·泰勒 Rachael Taylor&nbsp;&nbsp;....Maggie Madsen<br />
　　　　　约翰·特托罗 John Turturro&nbsp;&nbsp;....Agent Simmons<br />
　　　　　安东尼·安德森 Anthony Anderson&nbsp;&nbsp;....Glen Whitmann<br />
　　　　　乔舒华·费恩曼 Joshua Feinman&nbsp;&nbsp;....USAF Staff Sergeant (as Josh Feinman)<br />
　　　　　罗伯特·福克沃斯 Robert Foxworth&nbsp;&nbsp;....Ratchet (voice)<br />
　　　　　伯尼·麦克 Bernie Mac&nbsp;&nbsp;....Bobby Bolivia<br />
　　　　　杰米·麦克布莱德 Jamie McBride&nbsp;&nbsp;....FBI Agent<br />
　　　　　阿莫里·诺拉斯科 Amaury Nolasco&nbsp;&nbsp;....ACWO Jorge &quot;Fig&quot; Figueroa<br />
　　　　　约翰·罗宾逊 John Robinson&nbsp;&nbsp;....Miles<br />
　　　　　雨果·维文 Hugo Weaving&nbsp;&nbsp;....Megatron (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　19世纪初，北极圈内：<br />
<br />
　　Archibald Witwicky船长(维特维奇家族的先祖)在一次灾难中随着巨大的冰块落入深渊，落到了埋藏在冰层之下的一个机器人手掌上。船长醒来后发现机器人的眼睛正注视着他。而这台机器人正是很久以前离开塞伯坦，前往地球寻找火种源(Allspark)的威震天(Megatron)……<br />
　　威震天将揭示火种源下落的地图烧刻在船长的眼镜上。眼镜作为船长的遗物一代一代地传到了萨姆(Shia LaBeout饰演)的手里……<br />
<br />
　　现代社会：<br />
<br />
　　中东卡塔尔的某个美国空军基地遭到了狂派战士眩晕(Blackout)，他将这个基地完全毁掉，而且还从一台计算机里获得了大量信息。此外，眩晕还释放了巨蝎怪(Scorponok)去追杀Lennox上尉和他的特别行动小队。Lennox上尉与五角大楼取得了联系，美国军方派遣一架战斗机暂时打退了狂派的小规模进攻。<br />
　　萨姆·维特维奇(Sam Witwicky)从汽车代理商手里买到了他的第一辆车，而这辆车恰恰是博派的大黄蜂(Bumblebee)。大黄蜂帮助萨姆赢得了Mikaela的芳心。博派前来寻找Archibald　老船长的眼镜，他们被迫躲藏在萨姆家的后院，因为凶恶的第七防区(Sector 7)的特工突然闯进了萨姆的家……<br />
　　影片将会采用五条故事线平行推进，最终汇总的形式。在影片的结尾会有一场博派领袖擎天柱(Optimus Prime)与狂派首领威震天的惊天大战。他们将从胡佛大坝一直杀到洛杉矶……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />
<br />
<font color="red"><font size="6">变形金刚2</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/bianxingjingang2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　变形金刚2：堕落者的复仇/变形金刚2：卷土重来/变形金刚2：狂派的反击/变形金刚狂派再起(港)/变形金刚：复仇之战(台)<br />
片　　名　Transformers Revenge of the Fallen<br />
年　　代　2009<br />
国　　家　美国<br />
类　　别　动作/科幻/冒险/惊悚<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.0/10 from 247,612 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1055369" target="_blank">http://www.imdb.com/title/tt1055369</a><br />
文件格式　x264 + 5.1 DTS @ mkv<br />
视频尺寸　<font color="red"><font size="3">1920 x 1080</font></font><br />
文件大小　12.8 GB<br />
片　　长　150 Min<br />
导　　演　迈克尔·贝 Michael Bay<br />
主　　演　希亚·拉博夫 Shia LaBeouf&nbsp;&nbsp;....Sam Witwicky<br />
　　　　　梅根·福克斯 Megan Fox&nbsp;&nbsp;....Mikaela Banes<br />
　　　　　乔什·杜哈明 Josh Duhamel&nbsp;&nbsp;....Major William Lennox<br />
　　　　　泰瑞斯·吉布森 Tyrese Gibson&nbsp;&nbsp;....USAF Master Sergeant Epps<br />
　　　　　约翰·特托罗 John Turturro&nbsp;&nbsp;....Simmons<br />
　　　　　拉蒙·罗德里格兹 Ramon Rodriguez&nbsp;&nbsp;....Leo Spitz<br />
　　　　　凯文·杜恩 Kevin Dunn&nbsp;&nbsp;....Ron Witwicky<br />
　　　　　朱丽叶·怀特 Julie White&nbsp;&nbsp;....Judy Witwicky<br />
　　　　　伊莎贝尔·卢卡斯 Isabel Lucas&nbsp;&nbsp;....Alice<br />
　　　　　约翰·本杰明·海基 John Benjamin Hickey&nbsp;&nbsp;....Galloway<br />
　　　　　马修·马斯登 Matthew Marsden&nbsp;&nbsp;....Captain Graham SAS<br />
　　　　　安德鲁·霍华德 Andrew Howard&nbsp;&nbsp;....Special Air Service Forces<br />
　　　　　迈克尔·帕帕约翰 Michael Papajohn&nbsp;&nbsp;....Cal<br />
　　　　　格伦·莫肖尔 Glenn Morshower&nbsp;&nbsp;....General Morshower</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　地球上的战争虽然结束，但变形金刚之间的战争并未告终。红蜘蛛飞回塞博坦星球，打算带着军队再回到地球一决死战。汽车人发现威震天的尸体不见了，原来已被萨克巨人偷走，威震天随后被复活，决心要开始复仇。与此同时，红蜘蛛也正率领塞博坦的援军赶来，汽车人在这时增强了自己的战斗力，一场大战在所难免……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/5.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/6.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />
<br />
<font color="red"><font size="6">变形金刚3</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/bianxingjingang3/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　变形金刚3/变形金刚3：黑月降临(港)/变形金刚3：月黑之时<br />
片　　名　Transformers Dark Of The Moon<br />
年　　代　2011<br />
国　　家　美国<br />
类　　别　动作/冒险/科幻<br />
语　　言　<font color="red"><font size="3">英语双国语三音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.4/10 from 252,299 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1399103" target="_blank">http://www.imdb.com/title/tt1399103</a><br />
文件格式　x264 + 5.1 DTS @ mkv<br />
视频尺寸　<font color="red"><font size="3">1920 x 1080</font></font><br />
文件大小　13.6 GB<br />
片　　长　154 Mins<br />
导　　演　迈克尔·贝 Michael Bay<br />
主　　演　希亚·拉博夫 Shia LaBeouf&nbsp;&nbsp;....Sam Witwicky<br />
　　　　　罗茜·汉丁顿-惠特莉 Rosie Huntington-Whiteley&nbsp;&nbsp;....Carly<br />
　　　　　乔什·杜哈明 Josh Duhamel&nbsp;&nbsp;....Major William Lennox<br />
　　　　　泰瑞斯·吉布森 Tyrese Gibson&nbsp;&nbsp;....Robert Epps<br />
　　　　　雨果·维文 Hugo Weaving&nbsp;&nbsp;....Megatron (voice)<br />
　　　　　伦纳德·尼莫伊 Leonard Nimoy&nbsp;&nbsp;....Sentinel Prime (voice) (rumored)<br />
　　　　　帕特里克·德姆西 Patrick Dempsey&nbsp;&nbsp;....Dylan<br />
　　　　　约翰·马尔科维奇 John Malkovich&nbsp;&nbsp;....Bruce<br />
　　　　　肯·郑 Ken Jeong<br />
　　　　　弗兰西斯·麦克多蒙德 Frances McDormand&nbsp;&nbsp;....Marissa Faireborn<br />
　　　　　艾伦·图代克 Alan Tudyk&nbsp;&nbsp;....Dutch<br />
　　　　　约翰·特托罗 John Turturro&nbsp;&nbsp;....Simmons<br />
　　　　　弗兰克·维尔克 Frank Welker&nbsp;&nbsp;....Soundwave (voice)<br />
　　　　　汤姆·肯尼 Tom Kenny&nbsp;&nbsp;....Wheelie (voice)<br />
　　　　　彼特·库伦 Peter Cullen&nbsp;&nbsp;....Optimus Prime (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　第三集里，擎天柱将率领着“汽车人”继续与第二集失败后卷土重来的“霸天虎”作战。“汽车人”与“霸天虎”被卷入了美苏之间危险的“太空竞赛”中，地球人山姆又一次要向他的机器人朋友们伸出援助之手。这一集中将会有新的变形金刚登场，包括大反派“震荡波（Shockwave）”，他在汽车人与霸天虎来到地球鏖战时接管了塞伯坦星球。<br />
<br />
　　距今50多年前，一艘来自赛博坦的飞船坠落月球，由此引发了美苏两国的太空竞赛。人类争相登上月球，只为一探飞船残骸中的秘密。时间回到21世纪初，经过几番征战，汽车人终于挫败霸天虎的入侵，继而与人类合作，共同保卫美丽的地球。然而发生在切尔诺贝利的事件却将尘封已久的月球计划重新摆到桌面。为了防止霸天虎找到能量柱为非作歹，擎天柱与战友飞赴月球，更从当年的飞船中救出了汽车人的先代领导者——御天敌。御天敌是能量柱的发明者，将上百根能量柱集合在一起便可制造太空桥，实现物质的瞬间传送。<br />
<br />
　　忙着找工作以及和女友卡莉（罗茜·汉丁顿-惠特莉Rosie Huntington-Whiteley 饰）经营爱情的山姆（希亚·拉博夫 Shia LaBeouf 饰）无可避免地卷入其中，他渐渐发现霸天虎的操纵一切的阴谋，却不知更大的阴谋和危机隐藏在那月影背后…… <br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/7.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/8.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianxingjingang/9.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'：19世纪初，北极圈内：Archibald Witwicky船长(维特维奇家族的先祖)在一次灾难中随着巨大的冰块落入深渊，落到了埋藏在冰层之下的一个机器人手掌上。船长醒来后发现机器人的眼睛正注视着他。而这台机器人正是很久以前离开塞伯坦，前往地球寻找火种源(Allspark)的威震天(Megatron)……威震天将揭示火种源下落的地图烧刻在船长的眼镜上。眼镜作为船长的遗物一代一代地传到了萨姆(Shia LaBeout饰演)的手里……现代社会：中东卡塔尔的某个美国空军基地遭到了狂派战士眩晕(Blackout)，他将这个基地完全毁掉，而且还从一台计算机里获得了大量信息。此外，眩晕还释放了巨蝎怪(Sc',N'美国',N'动作/科幻/冒险',N'1920 x 1080',N'2007',N'http://www.lwgod.com/thread-618662-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904426&amp;k=840ef8b61f82e0fa6522247533c260d7&amp;t=1412261713&amp;sid=e8a8OJdoROXfYeG5Idbpq78MOcJfTbU%2BZ9HSugl1%2F0Zl6rA',N'2014/10/2 22:57:15',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 388,N'【美14万众期待票房】【明日边缘】【BluRay-1080P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　明日边缘/异空战士(港)/明日边界(台)/杀戮轮回<br />
片　　名　Edge of Tomorrow<br />
年　　代　2014<br />
国　　家　美国/澳大利亚<br />
类　　别　动作/科幻<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　<font color="red">8.1/10 from 136,222 users</font><br />
链　　接　<a href="http://www.imdb.com/title/tt1631867" target="_blank">http://www.imdb.com/title/tt1631867</a><br />
文件格式　x264 + 5.1 DTS @ mkv<br />
视频尺寸　<font color="red"><font size="3">1920 x 1080</font></font><br />
文件大小　7.88 GB<br />
片　　长　113 Min<br />
导　　演　道格·里曼 Doug Liman<br />
主　　演　汤姆·克鲁斯 Tom Cruise ....威廉·凯奇 Cage<br />
　　　　　艾米莉·布朗特 Emily Blunt ....丽塔·沃拉塔斯基 Rita<br />
　　　　　比尔·帕克斯顿 Bill Paxton ....士官长法瑞尔 Master Sergeant Farell<br />
　　　　　布莱丹·格里森 Brendan Gleeson ....布里格汉姆上将 General Brigham<br />
　　　　　夏洛特·莱李 Charlotte Riley ....兰斯 Nance<br />
　　　　　诺亚·泰勒 Noah Taylor ....卡特博士 Dr. Carter<br />
　　　　　劳拉·普沃 Lara Pulver ....卡伦·劳德 Karen Lord<br />
　　　　　约纳斯·阿姆斯特朗 Jonas Armstrong ....Skinner<br />
　　　　　托尼·魏 Tony Way ....Kimmel<br />
　　　　　奇克·盖瑞 Kick Gurry ....Griff<br />
　　　　　弗兰兹·德拉梅 Franz Drameh ....Ford<br />
　　　　　德拉古米尔·米希克 Dragomir Mrsic ....Kuntz<br />
　　　　　羽田昌义 Masayoshi Haneda ....Takeda</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片描述了一场与外星人的战争，主人公凯奇从未接受过军事训练，却被派到前线作战，这无疑是一场自杀行动。就在他频死的那一刻，他意外地获得穿越时空的能力，能够让他不断地重复生死轮回，一次次重新回到战场。而每经历一次死亡，凯奇的战斗力就增强一分……<br />
<br />
　　未来世界陷入外星人入侵的恐慌中，军事演说家凯奇中校（汤姆·克鲁斯 Tom Cruise 饰）畏惧上战场，他从没想过将军（布莱丹·格里森 Brendan Gleeson 饰）会让他去指挥即将开始的“诺曼底战役”，拒绝接受命令之后将军居然恶整了他，那就是把他当做逃兵扔进了军营中。凯奇被归入了J小队中进行战斗，战役的第一天就惨死在战场，没想到这一死让他拥有了时空循环的能力，而唯一相信他的人就是被称为“全金属战士”的丽塔·沃拉塔斯基（艾米莉·布朗特 Emily Blunt 饰）。二人开始了时空循环作战，在训练凯奇的同时他们发现了控制时间的奥秘，这与外星人“主脑”欧米茄有关，但是唯一能取得胜利的方法就是让凯奇不断死去、不断重启时间。在不断重复登陆那天的战斗的同时，凯奇越来越不想失去丽塔……<br />
<br />
　　本片改编自日本作家樱坂洋的轻小说《杀戮轮回 All you need is kill》。故事背景设定于近未来的地球，在一场全面性的外星物种入侵战争中，凯奇（汤姆·克鲁斯 饰）被送到登陆战的海滩，每天都在重复着必败的死亡激战。而他从未接受过任何军事训练，却奉派到前线与敌人作战，这无疑是一场自杀的作战行动。就在他频死的那一刻，他意外地获得穿越时空回廊的能力，能够让他不断地重复生死轮回，一次又一次地重新回到战场。随着每一次醒来，比尔对战争的经验就更深一层，他越来越了解敌人的弱点，在战场上的存活时间也越来越久。他在“战场女武神”丽塔（艾米丽·布朗特 饰）的魔鬼训练下，战斗能力突飞猛进，两人一同并肩作战，终于让这场毫无希望的战争露出一线胜利的曙光。但是凯奇也面临一项痛苦的抉择……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　电影改编自日本作家樱坂洋原著、安倍吉俊插画的轻小说《杀戮轮回》（All you need is kill），2010年4月，华纳兄弟花了约300美元买下了小说改编版权，但剧组认为《杀戮轮回》这个名字过于血腥，于是将片名改为《明日边缘》（Edge of Tomorrow）。影片于2012年10月1日在英国开机拍摄，拍摄地是利文斯顿片场，此前这里曾是《哈利-波特》的拍摄地。影片投资1.78亿美元，由道格-里曼（《谍影重重》、《史密斯行动》）执导，汤姆-克鲁斯领衔主演，影片的艺术指导是《独立日》的奥立弗-施多尔，摄影指导是曾获得奥斯卡提名的迪恩-比贝，视觉效果总监是参与过《蝙蝠侠：黑暗骑士》的尼可-达维斯，团队阵容十分华丽。道格-里曼此前执导的一部间谍片《谍影重重》迄今已接近十年，他最初看到本片剧本时非常兴奋，“剧本非常出彩，它融合了好莱坞大片中所有精彩元素，还选择了全新的视角来演绎。”<br />
<br />
　　汤姆-克鲁斯于2012年7月20日加入本片的筹备工作，与他上一部电影《遗落战境》关机不到一周时间。年过50的汤姆-克鲁斯近年来仍不断接拍高难度动作片，2011年他玩命般地悬吊在世界最高的建筑，这次出演《明日边缘》又亲自身穿巨大的金属铠甲参与战斗，“我需要旋转身体，找到操纵它的办法，这身铠甲重达85到125磅”，阿汤哥的敬业精神令人钦佩。此外，汤姆-克鲁斯在拍摄一场汽车跌落的戏时受伤，拍戏艰苦程度可见一斑。女主角艾米莉也表示拍摄这部戏是“多么的痛苦”，一些特训也让她吃不消。<br />
<br />
　　影片首映后，被媒体一致盛赞是2014年夏季最佳大片之一，“战场打斗异常凶猛，影片巧妙地平衡了动作、幽默、勇气、非完美主义英雄等元素”。<br />
<br />
<font color="red"><strong><font size="3">影片评价：</font></strong></font><br />
<br />
　　媒体综评71分，烂番茄方面新鲜度89%，180人投出新鲜番茄，22人砸出烂番茄，CinemaScore评分B+；获得与《碟中谍4》持平的高分评价。<br />
<br />
　　其中《芝加哥太阳报》打出满分“《明日边缘》其实就是对汤姆-克鲁斯事业的暗喻。你永远也杀不死这家伙，他总会接连不断地死而复生。克鲁斯仍然是当今世上最有名的电影明星是有原因的——这是他自己努力赚取的！”，“极具前瞻性的科幻作品，经典的主题、巧妙的策划、高明地剧本编纂与执导手法，《明日边缘》可能会是夏季档中一鸣惊人的纯娱乐大片”，“这部影片成功的原因在于，它把一切都扔进搅拌器打碎混合并产出全新的东西。这些“新东西”机智活泼并充满幽默，若你愿意还可以进一步深挖其内涵”“一部由明星驱动的商业娱乐大片，类型体裁上的创新出乎意料、令人兴奋”，“导演让动作场面和惊喜接连不断。好吧，虽然结局令人头痛，但在此之前克鲁斯与布朗特接连不断的死亡游戏，还是让我们倍感愉悦”，“作为一部讲述时空循环的电影，《明日边缘》永远不会让观众感到厌倦或是相似”。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·本片改编自日本作家樱坂洋的轻小说《杀戮轮回》。但一开始剧组就认为原著的标题过于残酷，与电影版偏喜剧的气氛不符，之后剧组曾用过“我们都是凡人”的标题，最终改为“明日边缘”。<br />
<br />
·影片大部分戏份在英国取景。拍摄地Leavesden Studio曾经是哈利·波特系列影片的片场。<br />
<br />
·影片中比尔·凯奇中士的角色原定由布拉德·皮特出演。他曾经与导演里曼合作过《史密斯夫妇》。<br />
<br />
·汤姆·克鲁斯自从2012年7月20日加入本片的剧组开始筹备工作。那距离他上一部电影《遗落战境》关机尚不到一周时间。<br />
<br />
·汤姆·克鲁斯自掏腰包，花了10万美元为剧组举办了一个盛大的关机派对。但他本人由于还有戏份需要拍摄未能前来参加。<br />
<br />
·丽塔的角色曾经考虑邀请《艺术家》的法国女星贝勒尼丝·贝乔出演。<br />
<br />
·华纳公司为本片开启了一场史无前例的“预告特辑马拉松”，在同一天之内，发布了7支《明日边缘》相关的预告及制作特辑。<br />
<br />
·拍摄本片期间，女主角艾米莉·布朗特怀孕了，因此她不得不拒绝拍摄一些动作戏，而剧组知道她拒绝的真正原因的人只有阿汤哥。<br />
<br />
·2013年8月，媒体报道了《明星伙伴》男星杰里米·皮文加盟本片的消息，但他最终没有出现在影片的上映版当中。<br />
<br />
·这并非是艾米莉·布朗特主演的第一部以时空穿梭为题材的科幻动作片，上一部是《环形使者》。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/mingribianyuan/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/mingribianyuan/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/mingribianyuan/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'：影片描述了一场与外星人的战争，主人公凯奇从未接受过军事训练，却被派到前线作战，这无疑是一场自杀行动。就在他频死的那一刻，他意外地获得穿越时空的能力，能够让他不断地重复生死轮回，一次次重新回到战场。而每经历一次死亡，凯奇的战斗力就增强一分……未来世界陷入外星人入侵的恐慌中，军事演说家凯奇中校（汤姆·克鲁斯 Tom Cruise 饰）畏惧上战场，他从没想过将军（布莱丹·格里森 Brendan Gleeson 饰）会让他去指挥即将开始的“诺曼底战役”，拒绝接受命令之后将军居然恶整了他，那就是把他当做逃兵扔进了军营中。凯奇被归入了J小队中进行战斗，战役的第一天就惨死在战场，没想到这一死让他拥有了时空',N'美国/澳大利亚',N'动作/科幻',N'1920 x 1080',N'2014',N'http://www.lwgod.com/thread-617960-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903482&amp;k=a5a7799f08f35b4159305a00f9854154&amp;t=1412261713&amp;sid=440coPxVhUPyMJXxnCVFCYhr%2BdI%2BJxCaBx77zBmGxMxmgJI',N'2014/10/2 22:57:15',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 389,N'【英14必看】【街头霸王：暗杀拳】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/jieba/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/jieba/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　街头霸王：暗杀拳/街头霸王：刺客之拳/街霸：暗杀拳<br />
片　　名　Street Fighter: Assassin''s Fist<br />
年　　代　2014<br />
国　　家　英国<br />
类　　别　动作/冒险/惊悚/剧情<br />
语　　言　英语/日语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.9/10 from 5,344 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3069212" target="_blank">http://www.imdb.com/title/tt3069212</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.42 GB<br />
片　　长　146 Min<br />
导　　演　乔伊·安沙 Joey Ansah<br />
主　　演　Mark Killeen<br />
　　　　　伊川东吾 Togo Igawa<br />
　　　　　Mike Moh<br />
　　　　　乔伊·安沙 Joey Ansah<br />
　　　　　克里斯蒂安·霍华德 Christian Howard<br />
　　　　　山内春彦 Hal Yamanouchi<br />
　　　　　Gaku Space<br />
　　　　　玄里 Hyunri<br />
　　　　　小家山晃 Akira Koieyama<br />
　　　　　尚玄 Shogen</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　这款网络电视剧通过Capcom官方授权，将讲述“街霸：传奇”的前传剧情，聚焦隆和肯的师傅刚拳，经历与其兄弟豪鬼的比武后的影响，他将选择是否传承“暗杀拳”流派。 刚拳纠结他的学徒隆和肯是否会如同当年，他自己和豪鬼拜轰铁为师那样，走向光明与黑暗的道路。<br />
<br />
　　在日本一处僻静的所在，孤儿隆（Mike Moh 饰）和情同手足美国青年肯（Simeon Tsolov 饰）一同在师父刚拳（小家山晃 饰）的指导下，日复一日进行艰苦卓绝的修行。当二人终于感受到体内气的流动之时，师父允诺带他们进行更高阶段的修炼，而那将触及破坏力十足的暗杀拳。青年时代，刚拳和弟弟豪鬼随师傅轰铁（伊川东吾 饰）修习。一心变得强大的豪鬼偷阅师父的秘籍，学会可怕的暗杀拳，可是却不会控制杀意的波动，最终被轰铁逐出师门。仿佛又一个循环，肯似乎也正在走着豪鬼的老路，刚拳则接近全力避免悲剧重演。<br />
<br />
　　直到某一天，豪鬼找上门来，师兄弟不得不面对宿命的对决……<br />
<br />
　　该片由Joey Ansah与肯的演员Christian Howard共同撰写剧本，Joey指导，演员阵容可谓相当华丽，《艺伎回忆录》，《最后的武士》的日本演员伊川东吾将扮演轰铁，美版《假面超人》系列的 Mike Moh将扮演隆，《金刚狼》的山内春彦扮演僧人，《权力的游戏》Mark Killeen扮演肯的父亲，《最后的吸血鬼》演员小家山晃扮演刚拳，年轻豪鬼扮演者为Gaku Space，年轻刚拳为尚玄。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：这款网络电视剧通过Capcom官方授权，将讲述“街霸：传奇”的前传剧情，聚焦隆和肯的师傅刚拳，经历与其兄弟豪鬼的比武后的影响，他将选择是否传承“暗杀拳”流派。 刚拳纠结他的学徒隆和肯是否会如同当年，他自己和豪鬼拜轰铁为师那样，走向光明与黑暗的道路。在日本一处僻静的所在，孤儿隆（Mike Moh 饰）和情同手足美国青年肯（Simeon Tsolov 饰）一同在师父刚拳（小家山晃 饰）的指导下，日复一日进行艰苦卓绝的修行。当二人终于感受到体内气的流动之时，师父允诺带他们进行更高阶段的修炼，而那将触及破坏力十足的暗杀拳。青年时代，刚拳和弟弟豪鬼随师傅轰铁（伊川东吾 饰）修习。一心变得强大的豪鬼偷阅',N'英国',N'动作/冒险/惊悚/剧情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617503-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902438&amp;k=8080c210d999ac59603707044e1ee425&amp;t=1412261713&amp;sid=8847RAB91jy%2F7SwI1sPxXrE3U%2Fi7Kyd7%2Bs%2BSrlk3wJKB0mg',N'2014/10/2 22:57:15',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 390,N'【韩14票房超高分神作】【辩护人】【BluRay-720P.MKV】【中字】',N'<font color="blue"><font size="5">本片豆瓣网评分高达9.1分！绝对神作，人人必看！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianhuren/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/bianhuren/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　辩护人/逆权大状(港)/正义辩护人(台)<br />
片　　名　The Attorney<br />
年　　代　2013<br />
国　　家　韩国<br />
类　　别　剧情<br />
语　　言　韩语<br />
字　　幕　中文简繁<br />
评　　分　7.9/10 from 834 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3404140" target="_blank">http://www.imdb.com/title/tt3404140</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.97 GB<br />
片　　长　127 Min<br />
导　　演　梁宇皙 Woo-seok Yang<br />
主　　演　宋康昊 Kang-ho Song ....宋佑硕<br />
　　　　　林时完 Si-wan Lim ....镇宇<br />
　　　　　郭道元 Do-won Gwak ....郭秉奎<br />
　　　　　吴达庶 Dal-su Oh ....朴东虎 Park Dong-ho<br />
　　　　　金英爱 Yeong-ae Kim ....顺爱<br />
　　　　　柳秀荣 Su-yeong Ryu<br />
　　　　　宋英昌 Young-chang Song ....Judge<br />
　　　　　Byeong-gyu Kwak ....Cha Dong-yeong</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片以1981年韩国第五共和国全斗焕军事独裁政权执政初期的釜山为背景，讲述了平凡税务律师宋佑硕（宋康昊 饰）的为震惊全国的“釜林事件”受害学生进行人权辩护的故事。<br />
<br />
　　1978年，只有高中学历的宋佑硕（宋康昊 饰）通过多年的艰苦努力，终于通过司法考试，并在成为法官后很快转行成为一名律师。他敏锐地从最新政策中嗅到商机，以不动产代书业务起家。虽然被同行讥讽为随时随地派发名片的夜店小弟，但佑硕不以为忤，一步一步朝着心中的目标迈进。他依靠赚来的钱让妻儿过上富足的生活，也还了七年前在饭店大婶那里欠下的良心债。进入20世纪80年代，韩国民主化斗争愈演愈烈。佑硕全然不管窗外事，关起门来继续赚钱。然而社会的巨变已经不容他置身事外，饭店大婶的儿子朴镇宇因从属的釜山读书联合会被控为左翼社团而遭到逮捕，更受到残酷的虐待和不公的指控。<br />
<br />
　　虽然爱钱却更重感情的佑硕，就这样走上了为民主辩护的道路……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
真实事件改编<br />
<br />
　　《辩护人》以1981年韩国全斗焕军事独裁ZF以传阅危险书籍，进行非法集会，涉嫌违反《国家安全法》等理由对釜山地区的大学生和大学出身的活动家，进行拘留刑讯的&quot;釜林事件&quot;为素材改编拍摄。当时还是个平凡的税务律师的韩国已故前总统卢武铉在接触了受害学生后受到震动，随后参与为学生辩护，并从此走上&quot;人权辩护&quot;道路。宋康昊在片中所饰演的律师宋佑硕的角色设定与卢武铉颇为相似。<br />
<br />
　　卢武铉2003-2008年在任韩国总统，卸任后不久为亲友收受财界贿赂的丑闻所困扰，于2009年5月23日跳崖自杀身亡。该人物的政治敏感性和极富争议，曾令宋康昊一度拒演。他担心很难毫无顾及的去演绎一个颇具争议的政治人物的人生断面。但在回味了剧本15天后，宋康昊决定接下这个角色，他给出的理由是&quot;为身处那个年代的那些人们的人生态度和热情所打动&quot;，并且宋康昊还坦言&quot;主人公宋佑硕前后心境和现实行动的转变勾起了他的表演欲望&quot;。在《辩护人》筹划初期，正值李明博当政，一部映射全斗焕前总统暗杀事件的《26年》曾因题材敏感一度停拍。《辩护人》战战兢兢的制作方因为宋康昊的加盟看到了一线生机。而当时刚刚经历过《嚎叫》和《蓝盐》两部商业电影票房败走的宋康昊，也正急需一个为自己正名的好角色。<br />
<br />
宋康昊演技突破<br />
<br />
　　影片《辩护人》刻画了一个只知道挣钱的税务律师走上人权辩护道路的过程。。在影片的前半部分，他是一个土气、厚脸皮、精明且能说会道的新人律师，为了拓展业务到处拉关系散名片。如宋康昊许多深植人心的角色一样，从头到脚都透着喜感。就像《杀人回忆》中自以为是的无能警察、《密阳》中爱耍小聪明的车行老板、还有《孝子洞理发师》中小心翼翼的理发师，在宋佑硕身上，都能找到他们的影子。而当宋佑硕平生第一次不为钱，而是为了人的尊严和司法正义站上法庭，角色的新鲜感也随之凸显。除了十分考验台词功底的庭辩戏，宋康昊还挑战了一把前所未有的咆哮演技。<br />
<br />
　　此外，为了完美诠释角色，从前读剧本只读一遍，从不体验角色生活，拍摄前从不对戏的宋康昊，提前四五天就进入了剧组练习台词。这对拍戏全靠临场发挥、追求“自然演技”的“行动派”演员宋康昊来说还是第一次。<br />
<br />
新人导演演绎历史<br />
<br />
　　显然，《辩护人》并非传记电影，韩国人将这一类电影叫做FACTION（FACT+FICTION）--以现实为基础的杜撰电影。在《辩护人》之前，类似的韩国电影也出现过很多，像讲述总统暗杀事件的《26年》；以首尔发岩桥爆炸事件为原型的阴谋论电影《白鲸》；以朴正熙总统的理发师为主人公的《孝子洞理发师》等，这些影片通过戏说小人物身上发生的故事来展现特定的时代背景。宋康昊在《辩护人》中所塑造的也仅仅是历史洪流中的一个小人物，只不过现实中的他后来碰巧当上了韩国总统。更有意思的是，主人公宋佑硕的名字由宋康昊的姓和导演的名组成，随意的毫无深意可言，这或许也是导演的刻意之举，让人物看上去尽可能的单纯，减少联想。<br />
<br />
　　与《孝子洞理发师》一样，《辩护人》的导演杨佑硕也是首次执导电影。此外《26年》《白鲸》也都是新人作品。这或许是新人导演更喜欢借敏感题材入手使然，他们不在意后果，没有顾虑，考虑最多的只是如何表达自己的真实想法和内心声音。毕业于韩国高丽大学的哲学和英文学专业的杨佑硕，曾出版过很多译作，同时还是个漫画作家。其所作的连载漫画《铁雨》曾因预言了金正日的去世一度成为热门话题。《铁雨》讲述了在金正日去世后的半岛备战状态下，故事主人公阻止战争拯救家人的故事。如此对人类生存状态的关注和关怀也将在电影《辩护人》中继续。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·影片以1981年韩国全斗焕军事独裁政府以传阅危险书籍，进行非法集会，涉嫌违反《国家安全法》等理由对釜山地区的大学生和大学出身的活动家，进行拘留刑讯的“釜林事件”为素材改编拍摄。<br />
<br />
·宋康昊在片中饰演角色的原型正是当时还是个平凡税务律师的韩国已故前总统卢武铉。当年卢武铉在接触了受害学生后受到震动并为学生辩护，并从此走上&quot;人权辩护&quot;的道路。<br />
<br />
·因为卢武铉这一角色原型的敏感性和争议性，宋康昊曾一度拒绝出演该片。他给出的理由是“担心给他（卢武铉）添麻烦”。<br />
<br />
·为了完美诠释角色，从前读剧本只读一遍，拍摄前从不对戏的宋康昊，提前四五天就进了剧组练习台词。这对拍戏全靠临场发挥、追求“自然演技”的“行动派”演员宋康昊来说还是第一次。<br />
<br />
·主人公宋佑硕的名字由宋康昊的姓和导演的名组成。<br />
<br />
·毕业于韩国高丽大学的哲学和英文学专业的杨佑硕导演，曾出版过很多译作，同时还是个漫画作家。其所作的连载漫画《铁雨》曾因预言了金正日的去世一度成为热门话题。<br />
<br />
·《辩护人》并非宋康昊首次饰演有历史原型的角色，在2004年上映的《孝子洞理发师》中，宋康昊扮演了韩国前总统朴正熙的理发师。<br />
<br />
·由于卢武铉这一人物争议性，影片还未上映，就在韩国门户网站上得到了一些网友1分的评价，并留下了偏激言论。这些不和谐大概也是片方早就预料到的，所以在宣传过程中，虽然会提及&quot;釜林事件&quot;，却都刻意回避了&quot;卢武铉&quot;三个字，试图最大限度减少观众对影片先入为主的偏颇判断。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：影片以1981年韩国第五共和国全斗焕军事独裁政权执政初期的釜山为背景，讲述了平凡税务律师宋佑硕（宋康昊 饰）的为震惊全国的“釜林事件”受害学生进行人权辩护的故事。1978年，只有高中学历的宋佑硕（宋康昊 饰）通过多年的艰苦努力，终于通过司法考试，并在成为法官后很快转行成为一名律师。他敏锐地从最新政策中嗅到商机，以不动产代书业务起家。虽然被同行讥讽为随时随地派发名片的夜店小弟，但佑硕不以为忤，一步一步朝着心中的目标迈进。他依靠赚来的钱让妻儿过上富足的生活，也还了七年前在饭店大婶那里欠下的良心债。进入20世纪80年代，韩国民主化斗争愈演愈烈。佑硕全然不管窗外事，关起门来继续赚钱。然而社会的巨变已',N'韩国',N'剧情',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-618618-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904305&amp;k=bad544d71cb9a14181ee3d30e8b1aece&amp;t=1412261714&amp;sid=b8bdIzWxiSX%2Ff%2FGYETjhq%2FbAS%2FOOmYZn2YwiAeyakiuENy8',N'2014/10/2 22:57:15',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 391,N'【好评高分烧脑必看】【恐怖游轮】【BluRay-720P.MKV】【中英】',N'<font color="blue"><font size="5">本片其实根本不像惊悚片！极度诡异，时间上极度复杂！<br />
其实本片是类似《明日边缘》的烧脑片！非常好看！<br />
豆瓣网8.2高分！航子极度推荐，没看过的兄弟必下！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/youlun/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/youlun/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　恐怖游轮/汪洋血迷宮(台)/轮回三角/三角形/迷失三角洲<br />
片　　名　Triangle<br />
年　　代　2009<br />
国　　家　英国/澳大利亚<br />
类　　别　剧情/悬疑/惊悚/神秘<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.9/10 from 43,668 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1187064" target="_blank">http://www.imdb.com/title/tt1187064</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.45 GB<br />
片　　长　99 Min<br />
导　　演　克里斯托弗·史密斯 Christopher Smith<br />
主　　演　梅利莎·乔治 Melissa George ....Jess<br />
　　　　　利亚姆·海莫斯沃斯 Liam Hemsworth ....Victor<br />
　　　　　艾玛·朗 Emma Lung ....Heather<br />
　　　　　Rachael Carpani ....Sally<br />
　　　　　迈克尔·多曼 Michael Dorman ....Greg<br />
　　　　　Henry Nixon ....Downey<br />
　　　　　Joshua McIvor ....Tommy<br />
　　　　　Jack Taylor ....Jack<br />
　　　　　Bryan Probets ....Driver</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　洁西和一帮朋友乘游艇出海游玩，但她总有一种有不好的事情发生的感觉。果然，游艇遇到了风暴，于是所有人只好换乘了一辆刚好路过的大游轮来保证安全。可是洁西深信她曾乘坐过这辆大游轮，船上的钟突然停止了，一些恐怖的事情接踵而至……<br />
<br />
　　单亲母亲杰西（梅利莎·乔治 饰）和一帮朋友乘游艇出海游玩，但她总有一种有不好的事情发生的感觉。不久，他们便在海上遭遇一场强烈的风暴。游艇翻船，众人落海，几经挣扎他们好不容易爬到游艇残骸上来。正当他们无计可施之时，一艘巨大的游轮向众人缓缓驶来。众人欣喜过望，未加思索便登上这艘名为“艾俄洛斯”的游轮，结果发现这竟是一艘1930年便告失踪的神秘之船，而船上更是空无一人。<br />
<br />
　　随处可见的鲜血、神秘的指示以及突如其来的凶杀事件，将这群男女带入万劫不复的恐怖轮回之中……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
考验脑力的恐怖之旅<br />
<br />
　　每年世界出品的电影中，恐怖惊悚类电影无疑是其中产量极大又良莠不齐最为严重的一类，每年在恐怖电影中，能被记住并在更长时间为人津津乐道的屈指可数。而在2009年，英国导演克里斯托弗·史密斯献上的一部《恐怖游轮》无疑是当年较为显眼的一部，这部电影并未以血腥场面骇人，却以精巧的剧情架构和宿命般的一波三折，让观众不但沉入其中，更在看罢影片后还要热烈讨论一番。实际上克里斯托弗至今导演的三部长片虽然皆为恐怖片，却一直擅长在其中注入特别的基因，让其显得别具一格，而《恐怖游轮》中奇特的轮回式剧本架构无疑便是本片最为吸引人的特质。<br />
<br />
　　对于这样一部颇为考验观众理解力的电影，其精巧的剧本形成过程无疑令人关注，而克里斯托弗本人也正是本片编剧，“我开始有个初步的构思，我想到的是她回头一望，发现自己正在游艇上的一刻，但是我当时还没有想的太清楚，不过对于这个故事，我首先想到的关键点就是她处于一种自己回望自己的角度。这很像《阴阳魔界》（1959）的点子，所以围绕着这个中心思想，我渐渐的开始丰富剧本内容。”，谈起剧本创作过程，克里斯托弗也不忘提起给他带来最大灵感的影片，那就是《闪灵》（1980），导演希望在电影的视角上营造《闪灵》一样的效果，即你观看影片时，不知道自己究竟是在杰克·尼科尔森脑中去体验，还是以一个第三方的角度俯视那个酒店中发生的一切。而在这部影片中，导演在走廊、大厅的布置和镜头对观众的引导上都借鉴了《闪灵》的做法。而整个过程中，克里斯托弗要费力的注意剧情的严密性和逻辑性，他写了大量的小纸条，从各个细节拼接观察，力求整个故事无懈可击。<br />
<br />
非常规的制作过程<br />
<br />
　　在完成这个剧本后，克里斯托弗在来自于澳大利亚的电影基金的投资下开始了本片的拍摄，为了完成这部电影，他做的第一件事，就是直接建造了半个游轮。“我们开始想直接找一艘游轮，但是实际寻找这样一艘游艇是非常棘手的事。因为游轮不像汽车，如果一艘游轮报废了，它就永远的被肢解了，所以你很难找到一艘不再运营又依然可用的游轮”，谈起寻找游轮的过程，克里斯托弗说到，“但是建造一艘游轮又需要花费我们很大的预算，所以我当时真的不知道这（建造真实的游轮场景）是否是个明智的决定，当然，最后我们终于成功的建起了一艘。”<br />
<br />
　　看过本片的人，想必不少会被片中交织的多重线索绕晕，而对于本片主演梅利莎·乔治来说，拍摄这样一部电影同样是个巨大的挑战。对此克里斯托弗也深有体会：“这太难了，演员通常都希望有一个角色和故事的全貌，这样他们才能投入到表演中去。你不可能在一开始就进入到比如级别在10级的惊恐状态，按照通常的剧情，你要经过一定过程才能达到这一步。但是，这个故事的挑战就在于，你需要在几分钟内就先处于10级恐惧的状态，然后‘重启’自己，接着再来一遍，对于梅利莎来说，要认识到这点很难，因为有人拿枪追着她，但是此刻她又要进入第二循环”。然而在片中，梅利莎也一直处于奔跑状态，据克里斯托弗透露，这样的奔跑让她当时也筋疲力尽，所以他也没让她再做太多高声尖叫的表现，因为，她已经累的恐怕无力尖叫了，当然，梅利莎卖力的表演也得到了导演的充分认可，他表示，“整个拍摄过程对她虽然很难，但是我非常喜欢她的表演！”。<br />
<br />
开放式解读的恐怖体验<br />
<br />
　　“一部像《闪灵》一样的电影，一部房间内猎杀和主人公逐步走向疯狂的电影，一部如《偷天情缘》（1993）般炼狱的电影”，在问及如何向未看过本片的观众介绍此片时，克里斯托弗如是说。确实，本片在剧情上，就如《偷天情缘》一样，主人公永远等不来土拨鼠之夜，不断的循环同样的经历。而更复杂的是，在《恐怖游轮》中，这些重复的经历还彼此交互，于是，在片中，我们看到同样的人在同样的场地出现，甚至彼此追杀，女主角杰西也不可避免的走向精神的崩溃。本片的剧情架构无疑对观众是种挑战，但是也带来了乐趣，同时提供了多样的剧情理解可能，正因为如此，这部电影也成为2009年惊悚电影的话题之作，激起了观众广泛的讨论。在克里斯托弗看来，他最初的想法，是将所有的剧情都围绕一个母亲的身份展开，她是一个好妈妈还是一个坏妈妈？她的孩子确实有自闭症还是这只是她心中的想法？一个人如果犯了错，她是否能挽回这种错误或者自我逃避？这是一部船上幽灵的恐怖电影，还是一部精神分裂式的电影？这部电影里表现了很多层面，让观众可以进行多样的解读，导演表示，本片有三个结局，但是都最终导向了同样的终点，即最后的车祸一幕，将梅丽莎留在这个无尽的循环中，影片看似结束，却留下更多谜题。或许这就是这部电影最大的魅力，它以逻辑严谨的线索交错留下一个开放式的剧情，一个并未完全解答的谜题，让观众如同杰西一样，在其中做出自己的选择。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·围绕《恐怖游轮》的讨论也带出了大量恐怖电影，除了导演自己“供出”的《闪灵》、《12只猴子》、《偷天情缘》、《死亡之夜》（Dead of Night，1945）外，此外，还有人指出本片结构和西班牙电影《超时空犯罪》（2008）非常相似，但是由于媒体报道本片完成于4年之前，所以这样的相似更可能只是巧合而已。<br />
<br />
·为了本片，导演克里斯托弗·史密斯搭建了半艘游轮作为布景，而令他本人遗憾的是，这艘“游轮”最终并未永久留下，还是在拍完影片后被拆除。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：洁西和一帮朋友乘游艇出海游玩，但她总有一种有不好的事情发生的感觉。果然，游艇遇到了风暴，于是所有人只好换乘了一辆刚好路过的大游轮来保证安全。可是洁西深信她曾乘坐过这辆大游轮，船上的钟突然停止了，一些恐怖的事情接踵而至……单亲母亲杰西（梅利莎·乔治 饰）和一帮朋友乘游艇出海游玩，但她总有一种有不好的事情发生的感觉。不久，他们便在海上遭遇一场强烈的风暴。游艇翻船，众人落海，几经挣扎他们好不容易爬到游艇残骸上来。正当他们无计可施之时，一艘巨大的游轮向众人缓缓驶来。众人欣喜过望，未加思索便登上这艘名为“艾俄洛斯”的游轮，结果发现这竟是一艘1930年便告失踪的神秘之船，而船上更是空无一人。随处可见的鲜',N'英国/澳大利亚',N'剧情/悬疑/惊悚/神秘',N'1280 x 720',N'2009',N'http://www.lwgod.com/thread-617435-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902362&amp;k=96b52cc23e515d67efedc59ca0cd1ce3&amp;t=1412261719&amp;sid=b4bcC7%2BLTSriImHxarNRSxJU%2B%2F6kCV7C9z2RNRwQh6XzuAk',N'2014/10/2 22:57:16',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 392,N'【14最新大牌云集】【情欲三重奏】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/qingyu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/qingyu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/qingyu/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　出轨幻想/情欲三重奏(台)/悬疑第三者(港)/第三者/第三个人<br />
片　　名　Third Person<br />
年　　代　2013<br />
国　　家　英国/美国/德国/比利时<br />
类　　别　剧情/爱情<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.4/10 from 3,436 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2343793" target="_blank">http://www.imdb.com/title/tt2343793</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.20 GB<br />
片　　长　137 Min<br />
导　　演　保罗·哈吉斯 Paul Haggis<br />
主　　演　连姆·尼森 Liam Neeson ....Michael<br />
　　　　　奥利维亚·王尔德 Olivia Wilde ....Anna<br />
　　　　　米拉·库妮丝 Mila Kunis ....Julia<br />
　　　　　詹姆斯·弗兰科 James Franco ....Rick<br />
　　　　　阿德里安·布洛迪 Adrien Brody ....Sean<br />
　　　　　金·贝辛格 Kim Basinger ....Elaine<br />
　　　　　玛丽亚·贝罗 Maria Bello ....Theresa<br />
　　　　　卡罗琳·古道 Caroline Goodall ....Dr. Gertner<br />
　　　　　莫兰·阿提艾斯 Moran Atias ....Monika<br />
　　　　　大卫·海伍德 David Harewood ....Jake Long<br />
　　　　　里卡尔多·斯卡马奇奥 Riccardo Scamarcio<br />
　　　　　Gisella Marengo ....Natalia</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　据导演保罗·哈吉斯描述，该片结构类似《撞车》，不过它是三条爱情线交织，故事以非常奇特的方式发生在纽约、巴黎和罗马三个城市。其中连姆·尼森饰演一名新闻记者，奥利维亚·王尔德的角色是一位纽约八卦专栏作家。<br />
<br />
　　影片从一名作家的视点出发，描绘了三段情爱故事，镜头在罗马、纽约和巴黎三座城市之间巧妙转换。不断变化的城市场景令观者目不暇接。结构设计巧妙，每一组镜头之间都有完整意义的衔接，揭示了成熟男女在婚姻之后和之外的情感萌发，讨论了对爱的信任与信念。本片的整体气质如同一首忧伤的诗，也似一个瑰丽的梦。<br />
<br />
<font color="red"><strong><font size="3">幕后花絮：</font></strong></font><br />
<br />
　　作为本片的导演兼编剧，保罗·哈吉斯最开始有拍摄这个故事的想法是在完成《危情三日》不久。其灵感来源于他与片中的以色列女演员莫兰·阿提艾斯的一系列谈话。莫兰出演了《危情三日》和哈吉斯奥斯卡获奖作品《撞车》的电视剧版。她也在《第三者》中出演了来自罗马的美女莫妮卡，揭示了片中情感关系的主题。情感和心灵战场依旧是这位多产作家的最大挑战。哈吉斯在制片公司的同僚，同时也是本片的制片人迈克尔·纳奇克，对哈吉斯的创作最有发言权。他说：“保罗的创作总是很快，但对于《第三者》来说，他总有种执迷一定要将它写好。我必须阅读超过二十多个不同的稿子，并给出注释意见。在他的剧本完成的前两年，我们就敲定了主演。这是一个大胆而冒险的决定，所以剧本必须很完善。”<br />
<br />
　　哈吉斯最少写了五十个版本的剧本，他只是不停的觉得有问题，然后重新开始。在两年半的时间内，一周六天，每天六个到八个小时，他都持续为之创作，直到终于觉得有些对路了。他从不同的制片人那里都收到了很多建议，有些他尝试了，有些并没有理会。由于影片的主角是一位作家，人们总好奇这是否与哈吉斯的经历有关。他的回应是：“我想大家都知道这是不可能的。如果有人问我这是否是自传：这些角色都是我，因为他们都在探讨同样的问题，如何在一段关系中生存，如何得到你想要的，或者你是否曾经获得过心中所想。如果你信任的人完全不可信怎么办？如果你们改变了他们，是否就不爱他了？这些问题在令人充满希望的同时也令人沮丧，如同生活。”从一开始，哈吉斯就知道这将是一部独立电影，要在大片场之外的迷你系统中进行融资，好在他们有经纪人帮他们寻找投资方。这部电影的自由创意打动了Corsan电影公司，因为挑战与自由创作正是他们的信条。由于成本有限，他们的全部拍摄都在意大利的罗马影城中完成。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：据导演保罗·哈吉斯描述，该片结构类似《撞车》，不过它是三条爱情线交织，故事以非常奇特的方式发生在纽约、巴黎和罗马三个城市。其中连姆·尼森饰演一名新闻记者，奥利维亚·王尔德的角色是一位纽约八卦专栏作家。影片从一名作家的视点出发，描绘了三段情爱故事，镜头在罗马、纽约和巴黎三座城市之间巧妙转换。不断变化的城市场景令观者目不暇接。结构设计巧妙，每一组镜头之间都有完整意义的衔接，揭示了成熟男女在婚姻之后和之外的情感萌发，讨论了对爱的信任与信念。本片的整体气质如同一首忧伤的诗，也似一个瑰丽的梦。幕后花絮：作为本片的导演兼编剧，保罗·哈吉斯最开始有拍摄这个故事的想法是在完成《危情三日》不久。其灵感来源于他',N'英国/美国/德国/比利时',N'剧情/爱情',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-617880-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903187&amp;k=58237bbbd7d1fd4344615ed2df3255fd&amp;t=1412261714&amp;sid=e5f8W4ZraxZxxxI8dJzAxnvyfQkTmhPZm0XAmE1Z%2Ftgpp3U',N'2014/10/2 22:57:16',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 393,N'【14巨星云集最强硬汉动作】【敢死队3】【HD-1024.MP4】【中字】',N'<font color="blue"><font size="5">这个是目前最好的版本了！不过有韩文硬字幕，无法去除！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/gansidui3/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.30/gansidui3/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　敢死队3/浴血任务3(台)/轰天猛将3(港)<br />
片　　名　The Expendables 3<br />
年　　代　2014<br />
国　　家　美国/法国<br />
类　　别　动作/冒险/惊悚<br />
语　　言　英语<br />
字　　幕　中文字幕<br />
评　　分　6.3/10 from 46,719 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2333784" target="_blank">http://www.imdb.com/title/tt2333784</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　1.23 GB<br />
片　　长　126 Min<br />
导　　演　派特里克·休斯 Patrick Hughes<br />
主　　演　西尔维斯特·史泰龙 Sylvester Stallone ....巴尼 Barney Ross<br />
　　　　　杰森·斯坦森 Jason Statham ....克里斯马斯 Lee Christmas<br />
　　　　　梅尔·吉布森 Mel Gibson ....康拉德·斯通班克斯 Conrad Stonebanks<br />
　　　　　李连杰 Jet Li ....Yin Yang<br />
　　　　　安东尼奥·班德拉斯 Antonio Banderas ....Rapido<br />
　　　　　韦斯利·斯奈普斯 Wesley Snipes ....Surgeon<br />
　　　　　杜夫·龙格尔 Dolph Lundgren ....Gunnar Jensen<br />
　　　　　哈里森·福特 Harrison Ford ....Max Drummer<br />
　　　　　阿诺·施瓦辛格 Arnold Schwarzenegger ....Trench<br />
　　　　　凯南·鲁兹 Kellan Lutz ....Smilee<br />
　　　　　泰瑞·克鲁斯 Terry Crews ....Hale Caesar<br />
　　　　　凯尔希·格兰莫 Kelsey Grammer ....Bonaparte<br />
　　　　　兰迪·库卓 Randy Couture ....Toll Road<br />
　　　　　维克多·奥提兹 Victor Ortiz ....Mars<br />
　　　　　格伦·鲍威尔 Glen Powell Jr. ....Thorn/Wifi<br />
　　　　　隆达·鲁西 Ronda Rousey ....Luna<br />
　　　　　罗伯特·戴维 Robert Davi ....Goran Vogner<br />
　　　　　Sarai Givaty ....Camilla</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　在此次第三部的故事中，巴尼（史泰龙饰）与克里斯马斯（杰森·斯坦森 饰）领衔的敢死队将正面迎战昔日战友、如今的军火枭雄康拉德·斯通班克斯（梅尔·吉布森 饰）。斯通班克斯曾侥幸死里逃生过一次，现在他对敢死队下达了绝杀令。巴尼则另有一番打算：为迎战强敌，巴尼决定给敢死队注入新鲜血液，招募了更快更强的高科技战斗新生，搭配长枪硬炮的硬汉前辈，展开一番大决战。<br />
<br />
　　影片开场，巴尼·罗斯（西尔维斯特·史泰龙 Sylvester Stallone 饰）带领敢死队的老伙计李（杰森·斯坦森 Jason Statham 饰）、贡纳（杜夫·龙格尔 Dolph Lundgren 饰）等人驾驶直升机劫持火车，救出了被囚禁的用刀高手医生（韦斯利·斯奈普斯 Wesley Snipes 饰）。经过短暂的休整，他们奔赴索马里潜入某倒卖军火组织的老巢中执行任务，谁知巴尼发现该组织老大竟然是当年本该死去的敢死队战友康拉德·斯通班克（梅尔·吉布森 Mel Gibson 饰）。一番激烈的交火过后，斯通班克成功逃脱，而敢死队方面则损失惨重。<br />
<br />
　　此役过后，不仅军方和敢死队藏着一股怒火，连斯通班克也被彻底激怒，最强的硬汉迎来生死对决……<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·史泰龙曾多次邀约梅尔·吉布森担纲《敢死队》系列导演一职，单被吉布森屡次婉拒。此次答应出演《敢死队3》大反派，也算是给老友史泰龙一个交待。<br />
<br />
·澳大利亚导演派特里克·休斯由史泰龙钦点、曾拍摄过影片《红色山丘》及曾风靡网络的爱情短片《信号》，此次他联手资深导演丹·布拉德利共同执导。<br />
<br />
·新加入的女将尤达·鲁西，是美国的一名MMA格斗明星，这也是她的首部大银幕作品。她还出演了《速度与激情7》，是一名被业内看好的动作新星。<br />
<br />
·出演该片的一众巨星们在一起工作的时间并不长。李连杰只拍摄了几天， 泰瑞·克鲁斯工作了一周，施瓦辛格差不多一周多时间，不过这不算少，第一部，施瓦辛格只拍了半天，第二部也就四天。<br />
<br />
·史泰龙透露他曾力邀杰克·尼科尔森出演。<br />
<br />
·在影片开始部分，韦斯利从飞机上跳向火车的场景都是真的，并非什么特效合成。<br />
<br />
·剧组约有200个人服务于影片特效制作。《敢死队2》制作了1400-1700个特效镜头，《敢死队3》有望完成2000个镜头。<br />
<br />
·《敢死队3》使用的武器好像是A12半自动散弹枪和HK416自动步枪，后者曾在《刺杀本拉登》中出现过，还有很多武器未被曝光。<br />
<br />
·为了节省时间、精力和费用，剧组将拍摄地选在了保加利亚，那里拥有多样的地貌，15分钟时间，你就可以从雪山穿越到城市，再用很短的时间，你还能看到森林。<br />
<br />
·凭借战术顾问团队及按照各个主角的身高、体型量身打造枪械配置，柯尔特M、格洛克8、MP5、SG550、G36K等一大批世界顶级名枪使得影片不仅仅是“硬汉”大联盟，更是超级现代兵器展。<br />
<br />
·北美上映一月前，网上突然出现《敢死队3》的盗版下载，试映碟片经网络流出后一天之内全球下载量超过20万次，狮门影业经过近10天的追缴，宣布对涉盗进行起诉。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：在此次第三部的故事中，巴尼（史泰龙饰）与克里斯马斯（杰森·斯坦森 饰）领衔的敢死队将正面迎战昔日战友、如今的军火枭雄康拉德·斯通班克斯（梅尔·吉布森 饰）。斯通班克斯曾侥幸死里逃生过一次，现在他对敢死队下达了绝杀令。巴尼则另有一番打算：为迎战强敌，巴尼决定给敢死队注入新鲜血液，招募了更快更强的高科技战斗新生，搭配长枪硬炮的硬汉前辈，展开一番大决战。影片开场，巴尼·罗斯（西尔维斯特·史泰龙 Sylvester Stallone 饰）带领敢死队的老伙计李（杰森·斯坦森 Jason Statham 饰）、贡纳（杜夫·龙格尔 Dolph Lundgren 饰）等人驾驶直升机劫持火车，救出了被囚禁的用',N'美国/法国',N'动作/冒险/惊悚',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-618612-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904189&amp;k=a1b7e48e6c2b6aebfb6750b296c3dc0c&amp;t=1412261715&amp;sid=a58c6wWQM3PtTmpAUzyIQNj9BekUpYV2K%2B71O5FMt1s5gqU',N'2014/10/2 22:57:16',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 394,N'【美14全球最受期待巨制】【变形金刚4】【HD-1024.MP4】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/bianxingjingang4/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/bianxingjingang4/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　变形金刚4：绝迹重生/变形金刚：歼灭世纪(港)/变形金刚4：灭绝时代/变形金刚4/变4<br />
片　　名　Transformers: Age of Extinction<br />
年　　代　2014<br />
国　　家　美国/中国<br />
类　　别　动作/冒险/科幻<br />
语　　言　英语<br />
字　　幕　中文字幕<br />
评　　分　6.2/10 from 98,468 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2109248" target="_blank">http://www.imdb.com/title/tt2109248</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　1.61 GB<br />
片　　长　165 Min<br />
导　　演　迈克尔·贝 Michael Bay<br />
主　　演　马克·沃尔伯格 Mark Wahlberg ....凯德·伊格尔 Cade Yeager<br />
　　　　　妮可拉·佩尔茨 Nicola Peltz ....泰莎·伊格尔 Tessa Yeager<br />
　　　　　杰克·莱诺 Jack Reynor ....肖恩 Shane<br />
　　　　　李冰冰 Bingbing Li ....苏月明 Su Yueming<br />
　　　　　斯坦利·图齐 Stanley Tucci ....约书亚 Joshua<br />
　　　　　凯尔希·格兰莫 Kelsey Grammer ....哈罗德·艾汀格 Harold Attinger<br />
　　　　　提图斯·维里沃 Titus Welliver .... 萨沃伊 Savoy<br />
　　　　　索菲亚·迈尔斯 Sophia Myles ....达茜 Darcy<br />
　　　　　T·J·米勒 T.J.Miller ....卢卡斯 Lucas<br />
　　　　　彼特·库伦 Peter Cullen ....擎天柱 Optimus Prime (voice)<br />
　　　　　约翰·古德曼 John Goodman ....探长 Autobot Hound (voice)<br />
　　　　　渡边谦 Ken Watanabe ....漂移 Drift (voice)<br />
　　　　　约翰·迪·玛吉欧 John Di Maggio ....十字线 Crosshairs (voice)<br />
　　　　　罗伯特·福克沃斯 Robert Foxworth ....救护车 Ratchet (voice)<br />
　　　　　弗兰克·维尔克 Frank Welker ....惊破天 Galvatron (voice)<br />
　　　　　马克·瑞安 Mark Ryan ....禁闭 Lockdown (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　故事发生在前作芝加哥终极决战四年后，汽车人与霸天虎从地球销声匿迹，而人类也在断壁残垣的废墟中开始了新生。然而，一群手握大权的商人联合天才科学家，意欲通过那场入侵打破壁垒，研发出他们实则难以驾驭的全新技术。与此同时，地球也遭受到了一个古老而强大的变形金刚的威胁恫吓，关乎自由与奴役的正邪史诗决战一触即发……<br />
<br />
　　当年那场惨烈的芝加哥大战，汽车人虽然成功击退了霸天虎的入侵，却也让地球人对他们失去了应有的信任与尊重。由美国中情局组建的“墓风”部队对所有的变形金刚进行无差别的猎杀，一时间汽车人和霸天虎全都在地球不见了踪影。某天，居住在得州的落魄机械发明家凯德·伊格（马克·沃尔伯格 Marky Mark 饰）买回来一辆破旧的卡车车头，谁知那竟是处在休眠中的汽车人首领擎天柱。嗅到气息的墓风部队蜂拥而至，苏醒后的擎天柱救走了凯德一家，也和散落在各个角落的汽车人相继取得联系。另一方面，疯狂的人类科学家从变形金刚的残骸中获知了他们变形的秘密，并企图借此制造出人造金刚，而脱胎自威震天的惊破天正是他们的得意作品以及催命死神。<br />
<br />
　　新一轮的危机卷土而来，地球面临更大的灾难……<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·迈克尔·贝决定回归《变4》是因为他在新加坡的环球影城看到人们愿意为变形金刚排3个小时的队，他不想让经验不足的导演拍，以保证影片质量。<br />
<br />
·汽车厂商们让他们最招摇的车型飞去迈克尔·贝的办公室，以确保这些车能在电影中有一席之地。<br />
<br />
·迈克尔·贝曾想让巨石强森加盟，可惜时间表有冲突，不然《健男抢钱团》的两位男主就要重聚了。<br />
<br />
·这部影片大约将有18个新变形金刚角色。<br />
<br />
·迈克尔·贝的手下所有人算在一起，拥有850年的电影产业从业经验。<br />
<br />
·《变4》是首部采用4K IMAX 3D摄影机拍摄的电影，一台摄影机就价值100万美元。<br />
<br />
·价值百万美元的4K IMAX 3D摄影机被安装在了价值5万多美金的保时捷卡宴顶部。<br />
<br />
·迈克尔·贝将重新设计变形金刚比喻为“就像蝙蝠侠在每部电影里都会获得新战甲一样”。<br />
<br />
·迈克尔·贝从一开始就设想了一系列在香港发生的情节，而不是为中国观众“特供”一些片段。<br />
<br />
·美国军方这次在影片中的“角色”不会很大。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：故事发生在前作芝加哥终极决战四年后，汽车人与霸天虎从地球销声匿迹，而人类也在断壁残垣的废墟中开始了新生。然而，一群手握大权的商人联合天才科学家，意欲通过那场入侵打破壁垒，研发出他们实则难以驾驭的全新技术。与此同时，地球也遭受到了一个古老而强大的变形金刚的威胁恫吓，关乎自由与奴役的正邪史诗决战一触即发……当年那场惨烈的芝加哥大战，汽车人虽然成功击退了霸天虎的入侵，却也让地球人对他们失去了应有的信任与尊重。由美国中情局组建的“墓风”部队对所有的变形金刚进行无差别的猎杀，一时间汽车人和霸天虎全都在地球不见了踪影。某天，居住在得州的落魄机械发明家凯德·伊格（马克·沃尔伯格 Marky Mark 饰）',N'美国/中国',N'动作/冒险/科幻',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-617431-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902361&amp;k=9709ebe65f8cda362bf23cf36ed5f9bd&amp;t=1412261720&amp;sid=6ca76EhisSZbh1z%2F2Gmy%2FuomrckILT9NLLwdBfW6khnQAxs',N'2014/10/2 22:57:16',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 395,N'【日14新喷血惊悚犯罪】【杀手们】【BluRay-720P.MKV】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/killers/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/killers/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/killers/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　杀手们<br />
片　　名　Killers<br />
年　　代　2014<br />
国　　家　印度尼西亚/日本<br />
类　　别　动作/剧情/犯罪/惊悚<br />
语　　言　日语/印尼语/英语<br />
字　　幕　中文简繁<br />
评　　分　6.9/10 from 1,386 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2409300" target="_blank">http://www.imdb.com/title/tt2409300</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.12 GB<br />
片　　长　137 Min<br />
导　　演　提莫·塔哈亚托 Timo Tjahjanto<br />
　　　　　Kimo Stamboel<br />
主　　演　北村一辉 Kazuki Kitamura<br />
　　　　　高梨临 Rin Takanashi<br />
　　　　　奥卡·安塔拉 Oka Antara<br />
　　　　　Ray Sahetapy<br />
　　　　　Epy Kusnandar<br />
　　　　　露娜·玛雅 Luna Maya<br />
　　　　　黑川芽以 Mei Kurokawa<br />
　　　　　Tara Basro</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　一位错手杀人的印尼记者和一位日本的连环杀手，在线上偶遇，展开一场变态的杀戮比拼，“我们杀人只是因为我们可以，下一个是谁？”影片入围今年圣丹斯电影节午夜展映单元，由Mo兄弟执导，印尼演员Oka Antara和日本演员北村一辉主演。<br />
<br />
　　日本东京，野村（北村一辉 饰）用摄像机拍摄下处刑室内柔弱女性被残忍虐杀的全过程，经剪辑后上传网络。某个夜晚，他偶遇年龄相差较多的久惠（高梨临 饰）姐弟，野村对久惠产生了兴趣，此后每天访问这个女孩工作的花店。他的出现让久惠重现笑容，并渐渐敞开心扉。<br />
<br />
　　印尼雅加达，充满正义感的自由记者巴由（Oka Antara 饰）致力于揭露当权者贪污的事实，却陷入对方设下的陷阱，生活由此落入前所未有的困境之中。某天他意外看到野村的视频，嫌恶之余却有危险的欲望在心底萌生。他偶然杀死一名持枪匪徒，并将匪徒的尸体拍摄下来发布网上。远在东京的野村看到这段视频，直觉意识到同道中人的存在。两个身处不同城市的猎者，开始了最为凶险的接触……<br />
<br />
　　本片首周初登场观众满意度排名第九位。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：一位错手杀人的印尼记者和一位日本的连环杀手，在线上偶遇，展开一场变态的杀戮比拼，“我们杀人只是因为我们可以，下一个是谁？”影片入围今年圣丹斯电影节午夜展映单元，由Mo兄弟执导，印尼演员Oka Antara和日本演员北村一辉主演。日本东京，野村（北村一辉 饰）用摄像机拍摄下处刑室内柔弱女性被残忍虐杀的全过程，经剪辑后上传网络。某个夜晚，他偶遇年龄相差较多的久惠（高梨临 饰）姐弟，野村对久惠产生了兴趣，此后每天访问这个女孩工作的花店。他的出现让久惠重现笑容，并渐渐敞开心扉。印尼雅加达，充满正义感的自由记者巴由（Oka Antara 饰）致力于揭露当权者贪污的事实，却陷入对方设下的陷阱，生活由此落',N'印度尼西亚/日本',N'动作/剧情/犯罪/惊悚',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617837-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903183&amp;k=846261f2fe9dbb49bb87fbbbeb00d2da&amp;t=1412261716&amp;sid=f6bcStP7xd%2BVIrAybClpUoBay7cqPH6IBRtBuLX9YAR2jd0',N'2014/10/2 22:57:16',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 396,N'【美14烧脑科幻口碑必看】【信号】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/xinhao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/xinhao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　信号/诡·异·讯(台)/诡异讯<br />
片　　名　The Signal<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　科幻/惊悚<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.3/10 from 11,995 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2910814" target="_blank">http://www.imdb.com/title/tt2910814</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.61 GB<br />
片　　长　97 Min<br />
导　　演　威廉·尤克班 William Eubank<br />
主　　演　布兰顿·思怀兹 Brenton Thwaites ....Nic<br />
　　　　　劳伦斯·菲什伯恩 Laurence Fishburne ....Damon<br />
　　　　　奥利维亚·库克 Olivia Cooke ....Haley<br />
　　　　　博·纳普 Beau Knapp ....Jonah<br />
　　　　　Patrick Davidson ....Boy Playing Claw Game<br />
　　　　　Jeffrey Grover ....Gas Station Clerk<br />
　　　　　Roy Kenny ....Hazmat 1<br />
　　　　　Timothy Holmes ....Hazmat 2<br />
　　　　　Ricardo Campos ....Hazmat 3<br />
　　　　　Drew Sykes ....Hazmat 4<br />
　　　　　琳·莎耶 Lin Shaye ....Mirabelle<br />
　　　　　Robert Longstreet ....James</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　双腿受伤的尼克（布伦顿·思韦茨 Brenton Thwaites 饰）和女友海莉（奥莉维娅·库克 Olivia Cooke 饰）以及好哥们约拿（伯乌·内普 Beau Knapp 饰）正在进行一段喜乐参半的漫长旅行。在此之前，就读于麻省理工的他一直和约拿在追踪一个黑进学校网站的天才骇客，经过一段时间的努力，他们终于抓住骇客的踪迹。二人扬言揭发对方，谁知对方竟仿佛在他们身边监视着一样。旅途继续，夜幕降临，三人准备在一个废弃的小屋落脚。就在此时屋外传来海莉的呼救声，而尼克也被人重重击倒。<br />
<br />
　　当他再度醒来，只见到穿着防辐射衣服的陌生男子（劳伦斯·菲什伯恩 Laurence Fishburne 饰）在和他说话。此时此刻，他仿佛置身一个关于外星生物的巨大阴谋之中，噩梦永远没有尽头……<br />
<br />
　　麻省理工学院的高材生约拿，为了帮尼克的女友海莉搬家，三人计画了一趟公路旅行。就在开车经过西南部的荒野时，他们为了追踪一名骇进学校的天才骇客，双方人马在网路上挑衅起来……<br />
<br />
　　而骇客将他们引诱到一个荒废的屋子，当尼克和约拿正打算给他一点颜色瞧瞧时，门外却传来海莉凄厉的尖叫声。与此同时，两人眼前也突然一黑，随即倒下而不省人事。<br />
<br />
　　在尼克恢复意识之后，他发现自己单独被隔离在一个陌生的实验室，只能和一名每天来审问他的神秘男子戴蒙联系。虽然对方不停释出善意，但当尼克下定决心要找到同伴一起逃脱时，却没想到陷入一个更大的阴谋之中……<br />
<br />
<font color="red"><strong><font size="3">幕后花絮：</font></strong></font><br />
<br />
　　该片的导演威廉·尤克班可谓年轻有为且名不见经传，其为松下集团供职的广告拍摄经验，为其在摄影和画面的艺术感方面积累了丰富的经验。事实上，其在画面处理上的广告天赋，在这部新作《信号》中也可谓是得到了充分的展现。有早在年初圣丹斯电影节上率先看过该片的观众们，绝大多数都被影片优美别致的画面所征服。再配合影片预算中的大部分都用在了后期特效处理上，更为影片带来了精湛的视听效果。在威廉·尤克班的工作履历上，也同样不乏亮点——去年曾担任马克·沃尔伯格和拉塞尔·克劳等巨星主演的影片《破碎之城》的副导演。而作为该片唯一的明星级演员，劳伦斯·菲什伯恩可谓是灵魂人物。他以试验者的身份似乎在掌控者全局，也引领着观众和主人公尼克小伙一块儿进行着一场心灵之旅。<br />
<br />
　　事实上，作为一部成本不高却制作精良的科幻惊悚片，《信号》无论是从精致的外表还是概念感强烈的内容方面，都称不上是一部大众作品。因此，在圣丹斯电影节上放映后的该片也最终收获了两极分化般的评论，不喜欢的观众唾弃其为假借电影的形式，用广告的模样在大银幕上搞笑；喜欢的观众则奉该片为概念化科幻片中的新秀，甚至早有期待其在北美公映后的第二次第三次去再看该片。以充分地去和导演的那一种意识与心灵上大银幕探索产生共鸣。<br />
<br />
<font color="red"><strong><font size="3">影片评价：</font></strong></font><br />
<br />
　　媒体综评52分，烂番茄方面新鲜度54%，34人投出新鲜番茄29人砸出烂番茄；风评两极！<br />
<br />
　　照例先来看好评“《信号》是一部翻天覆地的公路电影”，“这部影片怪异且惊悚，并为观众带来了不同寻常的议题”，“比很多电影更加繁琐和不受欢迎，但在怪异的外壳之下却是一个令人惊艳的内核”，“虽然导演非常年轻但却拥有视觉方面的独特天赋，他总是用低廉但=却惊艳的特效给我们以惊喜”，“看上去好似《阴阳魔界》和《X档案》的综合体，导演取二者之精华浑然而成”。<br />
<br />
　　再来看差评“整部影片都充斥着自以为是的故弄玄虚，结局的大反转更是令人哑然失笑”，“整部影片值得称道的就是视觉风格，除此之外就是一些近乎偏执的文化监视与政府不信任感。其实本片非常公式化，但好在导演处理的还不错”，“一个外星人版的《女巫布莱尔》，我得承认它有一会儿，只是一会儿，还是挺有趣的”。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：双腿受伤的尼克（布伦顿·思韦茨 Brenton Thwaites 饰）和女友海莉（奥莉维娅·库克 Olivia Cooke 饰）以及好哥们约拿（伯乌·内普 Beau Knapp 饰）正在进行一段喜乐参半的漫长旅行。在此之前，就读于麻省理工的他一直和约拿在追踪一个黑进学校网站的天才骇客，经过一段时间的努力，他们终于抓住骇客的踪迹。二人扬言揭发对方，谁知对方竟仿佛在他们身边监视着一样。旅途继续，夜幕降临，三人准备在一个废弃的小屋落脚。就在此时屋外传来海莉的呼救声，而尼克也被人重重击倒。当他再度醒来，只见到穿着防辐射衣服的陌生男子（劳伦斯·菲什伯恩 Laurence Fishburne 饰）在和他',N'美国',N'科幻/惊悚',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-618522-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904098&amp;k=e43690c073d9099ac3b90e26f357d923&amp;t=1412261716&amp;sid=d7b32XCZu6u%2FGV%2BMyfYXGXQ%2BINNvLQS3AAVXsIoj5VzjCTg',N'2014/10/2 22:57:16',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 397,N'【中14巨制】【白发魔女传之明月天国】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/baifamonv/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.17/baifamonv/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　白发魔女传之明月天国/白发魔女传3D<br />
片　　名　The White Haired Witch of Lunar Kingdom<br />
年　　代　2014<br />
国　　家　中国/中国香港<br />
类　　别　动作/爱情/奇幻/武侠/古装<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
评　　分　4.8/10 from 76 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3465456" target="_blank">http://www.imdb.com/title/tt3465456</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　994 MB<br />
片　　长　100 Min<br />
导　　演　张之亮 Jacob Cheung<br />
主　　演　范冰冰 Bingbing Fan ....练霓裳<br />
　　　　　黄晓明 Xiaoming Huang ....卓一航<br />
　　　　　赵文卓 Vincent Zhao ....金独异<br />
　　　　　童瑶 Yao Tong ....客娉婷<br />
　　　　　王学兵 Xuebing Wang ....慕容冲<br />
　　　　　倪大红 Dahong Ni ....魏忠贤<br />
　　　　　李欣汝 Shera Li ....铁珊瑚<br />
　　　　　叶童 Cecilia Yip ....凌云凤<br />
　　　　　严屹宽 Yikuan Yan ....皇太极</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　川陕总督卓仲廉的孙子卓一航（黄晓明 饰）刚刚成为武当派的新掌门人，藉此良机，他奉紫阳道长之命前往京城进奉红丸。谁知巨阉魏忠贤（倪大红 饰）从中作梗，用假红丸毒死登基不久的明光宗，之后把持朝政，派出锦衣卫追杀卓一航。与此同时，川陕副将金独异（赵文卓 饰）图谋害死卓仲廉，栽赃救助灾民的魔教女子玉罗刹（范冰冰 饰）。混战中有过一面之缘的玉罗刹和卓一凡再度相逢，并坠入爱河。然而好景不长，锦衣卫的魔爪分别伸向玉罗刹所在的明月寨以及武当山，有情之人被迫分离。为免除武当覆灭之难，卓一航只得忍辱负重归顺阉党。得知卓一航娶妻消息，玉罗刹一夜白头。<br />
<br />
　　乱世之秋，男女传奇千古流传……<br />
<br />
　　明朝末年，朝政腐败，奸臣当道，外族后金乘机崛起，战争一触即发。<br />
<br />
　　在西北边境，饥荒连绵，魔教妖女玉罗刹（范冰冰 饰）为救灾民，与拘杀灾民的官兵厮杀，却被官员嫁祸成杀害总督卓仲廉之凶手，霎时间玉罗刹及其魔教变成通缉目标。<br />
<br />
　　另一方面，名门武当派紫阳道长推举弟子卓一航（黄晓明 饰）为新任掌门，并带红丸入京进贡圣上。皇帝吃红丸后一命呜呼，朝廷锦衣卫全力捉拿卓一航。<br />
<br />
　　此时，卓已经离京到达西北，一次偶然救助饥民时见识玉罗刹狠辣的手段，两人不打不相识。卓跟从玉回到明月寨，这个被外面官员称之为“魔窟”的地方，其实是世外桃源，卓见识玉的处事魅力及侠义精神，两人情难自禁坠入爱河，更互许终身。<br />
<br />
　　锦衣卫攻入明月寨捉拿卓一航，同事揭发玉罗刹乃杀害卓仲廉——即卓一航爷爷之凶手，卓心痛离开后被扔进大牢，紫阳道长为保卓跳崖自尽。卓继而脱离武当，投靠奸党，娶奸臣之女。玉收到消息大闹新房，执剑向卓心脏刺去……一夜间，玉之黑发被白色无情吞噬……<br />
<br />
　　一个垂死的朝代，两个注定的恋人，他们的缘分能否超越正邪，共渡生死？<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·电影于2012年11月2日正式开机，2013年4月2日影片杀青。<br />
<br />
·电影的拍摄地点主要为北京延庆、怀柔地区。<br />
<br />
·拍摄期间经历了严寒、暴雪、黄晓明片场受伤等意外。导演在得知主演受伤后，为了节省开支，搬到了80元钱一天的简陋招待所。剧组的开支都从衣食住行中省下来，把更多经费用到拍摄上。<br />
<br />
·黄晓明与范冰冰在《白发魔女传之明月天国》是第一次真正合作。<br />
<br />
·与之前张国荣版本相比较，电影风格不一样，视觉效果有提升，故事人物都有改变。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：川陕总督卓仲廉的孙子卓一航（黄晓明 饰）刚刚成为武当派的新掌门人，藉此良机，他奉紫阳道长之命前往京城进奉红丸。谁知巨阉魏忠贤（倪大红 饰）从中作梗，用假红丸毒死登基不久的明光宗，之后把持朝政，派出锦衣卫追杀卓一航。与此同时，川陕副将金独异（赵文卓 饰）图谋害死卓仲廉，栽赃救助灾民的魔教女子玉罗刹（范冰冰 饰）。混战中有过一面之缘的玉罗刹和卓一凡再度相逢，并坠入爱河。然而好景不长，锦衣卫的魔爪分别伸向玉罗刹所在的明月寨以及武当山，有情之人被迫分离。为免除武当覆灭之难，卓一航只得忍辱负重归顺阉党。得知卓一航娶妻消息，玉罗刹一夜白头。乱世之秋，男女传奇千古流传……明朝末年，朝政腐败，奸臣当道，外族',N'中国/中国香港',N'动作/爱情/奇幻/武侠/古装',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-617425-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902360&amp;k=02bd241ddb350adb591c1599b2d20234&amp;t=1412261721&amp;sid=1e59BMdNmkWQrva48QOU3XDlRcHsyDxM7WIfThge3VOaaL0',N'2014/10/2 22:57:17',N'wall',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 398,N'【高分大尺度力作】【超市夜未眠】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/yeweimian/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/yeweimian/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　超市夜未眠/爱情回水(港)<br />
片　　名　Cashback<br />
年　　代　2006<br />
国　　家　英国<br />
类　　别　喜剧/剧情/爱情<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.3/10 from 63,588 users<br />
链　　接　<a href="http://www.imdb.com/title/tt0460740" target="_blank">http://www.imdb.com/title/tt0460740</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.86 GB<br />
片　　长　102 Min<br />
导　　演　西恩·埃利斯 Sean Ellis<br />
主　　演　肖恩·比格斯代夫 Sean Biggerstaff&nbsp;&nbsp;....Ben Willis<br />
　　　　　艾米丽雅·福克斯 Emilia Fox&nbsp;&nbsp;....Sharon Pintey<br />
　　　　　迈克尔·迪克森 Michael Dixon&nbsp;&nbsp;....Barry Brickman<br />
　　　　　斯图尔特·古德温 Stuart Goodwin&nbsp;&nbsp;....Jenkins<br />
　　　　　米歇尔·雷恩 Michelle Ryan&nbsp;&nbsp;....Suzy<br />
　　　　　达芙妮·吉尼斯 Daphne Guinness&nbsp;&nbsp;....Anna Shapiro<br />
　　　　　基莉·哈泽尔 Keeley Hazell&nbsp;&nbsp;....Frozen Girl in Sainsbury''s (as Keeley Hazel)<br />
　　　　　肖恩·埃文斯 Shaun Evans&nbsp;&nbsp;....Sean Higgins<br />
　　　　　尼娅·罗伯茨 Nia Roberts&nbsp;&nbsp;....Woman at the Till<br />
　　　　　杰瑞德·哈里斯 Jared Harris&nbsp;&nbsp;....Alex Proud (uncredited)</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　Ben Willis（肖恩·比格斯代夫饰）是在艺术学院就读的学生，他被女朋友Suzy甩了之后，开始变得失眠。有一次深夜去超市买东西，无意中看到了超市的一个招聘。于是，为了消磨晚上漫长的时间，他决定到当地的这家超市上晚班。超市总共有一个女收银员Sharon Pintey（艾米丽雅·福克斯饰）、四个男管理员兼清洁工（Sean Higgins、Barry Brickman加上Ben和后面来的不会功夫却一直在练功夫的Brian''Kung Fu''）和一个男老板Jenkins。在超市里面，Sharon总是感觉时间过得特别慢，Sean Higgins和Barry Brickman总是开着各样的玩笑，Brian''Kung Fu''在做清洁时总是显示各种搞笑的功夫。在那里，他遇见了各种去超市买东西的人。在枯燥乏味的夜班工作时间里，他施展自己极端丰富的想象力，把同事和顾客全都幻想成自己脑海中编织的故事的角色。他幻想时间“暂时停顿”，能够冻结世界的艺术之美，以便仔细和从容地欣赏世间和人物的美，然后用自己手中的笔去描绘他们。他对不太爱说话的女收银员Sharon似乎有特别的好感，似乎在这个女孩的身上能够找到解决Ben失眠的办法。一次，Sean Higgins和Barry Brickman他们两个对Ben开了一个玩笑。然而，正是这个玩笑，Ben走进了新的爱情和走向了目标。<br />
<br />
<font color="red"><strong><font size="3">一句话评论：</font></strong></font><br />
<br />
　　影片中有着机智的内在幽默，导演肖恩·艾利斯成功地把时间加入到《超市夜未眠》之中，赋予主人公本一个广阔的故事背景，从而在剧情中嫁接上一个充满浪漫色彩的爱情故事。 <br />
——《综艺》杂志 <br />
<br />
　　很显然，我们不知道导演究竟是想把本片拍成带有艺术气息的罗曼蒂克式的沉溺于幻想的另一个《天使爱美丽》，还是让《男人装》（FHM）的读者看起来也很轻松的一部电影，至少这位银幕处女作的英国导演肖恩·埃利斯更想的是二者兼顾。 <br />
——《eye WEEKLY》杂志 <br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　两部《超市夜未眠》 <br />
<br />
　　2004年有一部备受好评的短片《超市夜未眠》，该片总长18分钟，其中有二分之三的时间都是主人公的想象，画面不乏裸露和性的元素，如果MPAA看到一定会给打上“R”级的标签，事实上他们的愿望不久就能实现，因为此片导演——35岁的时尚摄影师、广告导演肖恩·艾利斯早就打算拍摄一部长片版本的《超市夜未眠》，而且保证会保留短片中的一切。　 <br />
<br />
　　经过两年的潜心酝酿和制作，102分钟的长片终于在2006年与世人见面。艾利斯在2004年的短片，是一个充满幻想的18分钟的小段子，讲述了一位英国超市打工的雇员，为了打发夜班枯燥无味的八小时工作时间，创造出无穷无尽的想象。本片则有更加充裕的时间和空间，来展现这个题材。这两部电影的男主角Ben(肖恩·比格斯代夫最为人熟知的角色还是在哈里·波特系列电影中扮演的奥利弗·伍德)是一个很有天赋的艺术专业学生，他想象自己有让时光停滞的能力，或者可以相反，通过停顿从而让时间走得更快。 <br />
<br />
　　迷人的想象和浪漫的爱情 <br />
<br />
　　影片充满魅力的想象力和文雅唯美的性爱，加上漂亮的拍摄手法，《超市夜未眠》通过不符合常规的时间和记忆游戏，为观众讲述了一个符合常规的爱情故事。与他自己创作的剧本相比而言，这位英国导演最终在拍摄技巧上显得要更加得心应手和老练。虽然片中涉及到赤裸的性方面，观众群因此会缩减不少，但是影片获得过大奖青睐的好口碑加上很容易就能让人记住的片名，法国高蒙公司(Gaumont)可以在世界范围的发行上映大道上畅通无阻，以及在本土也会得到一些年轻观众的热捧。 <br />
<br />
　　主人公Ben在《超市夜未眠》中，富有哲学意味的画外音贯穿着整部电影，但毫不沉闷。扩充后的剧组团队能够更加完美的诠释这个故事，几乎没有太多人物对白的表演，与女主角艾米丽雅·福克斯精致优雅的罗曼蒂克气息十分吻合。而饰演脾气暴躁的老板的斯图尔特·古德温（爱好中国功夫）的存在，可以说完全是甘当绿叶来衬托红花的作用。 <br />
<br />
　　影片关于艺术和爱情所探讨的理念只是想证明自己并不止于表面和浅显，贯穿全片的第三者的演出(旁白)有的时候也显得十分多余。至于画面，则是美得令人头晕目眩。在剪辑师斯科特·托马斯(Scott Thomas)和卡罗斯·多米克(Carlos Domeque)的大力相助和通力协作下，观众还可以感觉到导演艾利斯本人很显然对站在摄影机后面同样兴趣浓厚，慢动作、加速度和定格画面，发挥出非同反响的视觉效果。闪回到主人公童年时代的回忆画面，过渡自然、不露痕迹，同时也强化了影片关于时间容易变化、总是不确定的主题。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·本片翻拍自导演2004年的同名短片《超市夜未眠》，该短片获得2006年第78届奥斯卡最佳真人短片提名，是当年五部提名短片中唯一和死亡无关的电影。此外还获得了纽约翠贝卡电影节和芝加哥国际电影节的最高奖等12个国际电影节的最佳短片奖。<br />
<br />
·本片的主演依然是短片的主演，是在《哈利·波特》系列中扮演Oliver Wood的肖恩·比格斯代夫(Sean Biggerstaff)。<br />
<br />
·有一个镜头，Ben用自己的手指发出喀哒声来开始计时，然后切到Ben为他的朋友开门的镜头。在这两个镜头之间已经有两年的时间间隔，正是本片两年前拍摄完成的那部短片的时间。·艾米丽雅·福克斯为了准备跳舞的那场戏，在自己的卧室里支起一根竿子，这样就方便她来练习。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：Ben Willis（肖恩·比格斯代夫饰）是在艺术学院就读的学生，他被女朋友Suzy甩了之后，开始变得失眠。有一次深夜去超市买东西，无意中看到了超市的一个招聘。于是，为了消磨晚上漫长的时间，他决定到当地的这家超市上晚班。超市总共有一个女收银员Sharon Pintey（艾米丽雅·福克斯饰）、四个男管理员兼清洁工（Sean Higgins、Barry Brickman加上Ben和后面来的不会功夫却一直在练功夫的Brian''Kung Fu''）和一个男老板Jenkins。在超市里面，Sharon总是感觉时间过得特别慢，Sean Higgins和Barry Brickman总是开着各样的玩笑，Bri',N'英国',N'喜剧/剧情/爱情',N'1280 x 720',N'2006',N'http://www.lwgod.com/thread-617746-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903098&amp;k=fef7c5ab5b6b294aec9de88da3b45ccd&amp;t=1412261721&amp;sid=a92eBTDsGw3F5sqZB5EFiOoJlEMuETgBc5uNHvju8bRABx8',N'2014/10/2 22:57:17',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 399,N'【日13超爆笑无下限】【变态假面】【BluRay-720P.MKV】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/jiamian/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/jiamian/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　变态假面/变态超人(港)/疯狂假面(台)<br />
片　　名　Hentai Kamen<br />
年　　代　2013<br />
国　　家　日本<br />
类　　别　喜剧/动作<br />
语　　言　日语<br />
字　　幕　中文简繁<br />
评　　分　6.1/10 from 696 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2708764" target="_blank">http://www.imdb.com/title/tt2708764</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.54 GB<br />
片　　长　105 Min<br />
导　　演　福田雄一 Yuichi Fukuda<br />
主　　演　铃木亮平 Ryohei Suzuki ....色丞狂介<br />
　　　　　清水富美加 Fumika Shimizu<br />
　　　　　片濑那奈 Nana Katase ....色丞魔喜<br />
　　　　　安田显 Ken Yasuda ....户渡<br />
　　　　　佐藤二朗 Jiro Sato<br />
　　　　　小栗旬 Shun Oguri<br />
　　　　　塚本高史 Takashi Tsukamoto<br />
　　　　　大东俊介 Shunsuke Daito<br />
　　　　　冈田义德 Yoshinori Okada<br />
　　　　　安田显 Ken Yasuda<br />
　　　　　室毅 Tsuyoshi Muro<br />
　　　　　池田成志 Narushi Ikeda</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　抖M受虐刑警和SM女王结合生出的孩子色丞狂介，平常是个很没用的高中生，但只要脸套上内裤、穿上网袜全身仅穿一个三角内裤就能变身为神勇的“变态超人”，打击犯罪。<br />
<br />
　　抖S和抖M之子色丞狂介（铃木亮平 饰）貌似没有继承搜查一课魔鬼刑警老爹的基因，虽然长着一副凶狠的面孔，可是为人懦弱胆小，即使加入拳法部之后也没有丝毫改观。某天，美丽可爱的转学生姬野爱子（清水富美加 饰）来到狂介的班上，令这个大男孩体会到前所未有的心跳感觉。放学回家路上，一群匪徒闯入银行劫持人质，人质中更有狂介心仪的爱子。为了救出女孩，他悄悄潜入银行，谁知偶然戴上胖次之后，竟然意外唤醒体内潜藏的强大力量。在此之后，他化身变态假面，以压倒性的实力击败匪徒，也令爱子对变态假面产生倾慕之情。某天，意欲统治周边学校的恶汉大金玉男入侵学校，由此拉开了和变态假面旷日持久的战争……<br />
<br />
　　本片根据安土庆周的同名漫画原作改编。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：抖M受虐刑警和SM女王结合生出的孩子色丞狂介，平常是个很没用的高中生，但只要脸套上内裤、穿上网袜全身仅穿一个三角内裤就能变身为神勇的“变态超人”，打击犯罪。抖S和抖M之子色丞狂介（铃木亮平 饰）貌似没有继承搜查一课魔鬼刑警老爹的基因，虽然长着一副凶狠的面孔，可是为人懦弱胆小，即使加入拳法部之后也没有丝毫改观。某天，美丽可爱的转学生姬野爱子（清水富美加 饰）来到狂介的班上，令这个大男孩体会到前所未有的心跳感觉。放学回家路上，一群匪徒闯入银行劫持人质，人质中更有狂介心仪的爱子。为了救出女孩，他悄悄潜入银行，谁知偶然戴上胖次之后，竟然意外唤醒体内潜藏的强大力量。在此之后，他化身变态假面，以压倒性的',N'日本',N'喜剧/动作',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-618521-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904097&amp;k=3f588c72ce29406755d5a4d4a4175c42&amp;t=1412261717&amp;sid=8533Cv6aGO2K8COveNgidZQjQfTC%2BgFmUqP8oTaNvasLufs',N'2014/10/2 22:57:17',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 400,N'【朱莉14新魔幻巨制】【沉睡魔咒】【BluRay-1080P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　沉睡魔咒/黑魔后：沉睡魔咒(港)/黑魔女：沉睡魔咒(台)/玛琳菲森/黑法魔女/睡美人外传<br />
片　　名　Maleficent<br />
年　　代　2014<br />
国　　家　美国/英国<br />
类　　别　动作/奇幻/冒险/家庭<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.3/10 from 103,916 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1587310" target="_blank">http://www.imdb.com/title/tt1587310</a><br />
文件格式　x264 + 5.1 DTS @ mkv<br />
视频尺寸　<font color="red"><font size="3">1920 x 1080</font></font><br />
文件大小　6.23 GB<br />
片　　长　97 Min<br />
导　　演　罗伯特·斯托姆伯格 Robert Stromberg<br />
主　　演　安吉丽娜·朱莉 Angelina Jolie ....玛琳菲森 Maleficent<br />
　　　　　艾丽·范宁 Elle Fanning ....爱洛公主 Princess Aurora<br />
　　　　　沙尔托·科普雷 Sharlto Copley ....斯特凡国王 Stefan<br />
　　　　　萨姆·赖利 Sam Riley ....迪瓦尔 Diaval<br />
　　　　　布兰顿·思怀兹 Brenton Thwaites ....菲力王子 Prince Phillip<br />
　　　　　莱丝利·曼维尔 Lesley Manville ....蓝果仙子 Flittle<br />
　　　　　伊梅尔达·斯汤顿 Imelda Staunton ....红叶仙子 Knotgrass<br />
　　　　　朱诺·坦普尔 Juno Temple ....绿蕨仙子 Thistletwit<br />
　　　　　艾拉·彭内尔 Ella Purnell ....少女玛琳菲森 Teen Maleficent<br />
　　　　　杰克森·贝武思 Jackson Bews ....少年斯特凡 Teen Stefan<br />
　　　　　伊索贝·莫洛伊 Isobelle Molloy ....儿时玛琳菲森 Young Maleficent<br />
　　　　　迈克尔·希金斯 Michael Higgins ....儿时斯特凡 Young Stefan</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　玛琳菲森（安吉丽娜·朱莉饰）曾是一个美丽纯洁，拥有翅膀能够飞翔的年轻仙子，生长于宁静祥和的森林王国。然而美好的时光总是短暂的，王国突遭人类军队侵袭，玛琳菲森在战斗中逐渐成长为这片森林的守护者，同时也遭受到了无情背叛，从此她的心灵开始变得冷酷，脑海只剩复仇的念头。为了报复，她给人类国王的女儿爱洛公主施下恶咒；然而随着爱洛的成长，玛琳菲森才逐渐意识到——这位小公主不仅能给两个世界带来和平，也许还能给自己带来真正的快乐。<br />
<br />
　　在宁静祥和的摩尔王国，广袤的大森林中，动物与精灵和谐相处，无忧无虑。那一年，天真无邪的小仙女玛琳菲森（伊莎贝尔·莫洛伊 Isobelle Molloy 饰）邂逅了人类小男孩斯特凡（迈克尔·希金斯 Michael Higgins 饰）。他们两小无猜，成为亲密无间的好朋友，更在万物的守护下坠入爱河。但是随着年龄的增长，斯特凡（沙尔托·科普雷 Sharlto Copley 饰）褪去了往日的纯真，被人类的贪欲所吸引。而玛琳菲森（安吉丽娜·朱莉 Angelina Jolie 饰）则成长为法术强大的仙女。愚蠢的人类向摩尔王国开展，斯特凡为了成为王位继承者，残忍地割下了玛琳菲森的翅膀。<br />
<br />
　　肉体的痛苦和心灵的创伤，让玛琳菲森变成了满怀仇恨的冷酷魔女，为了复仇她给斯特凡的女儿爱洛公主（艾丽·范宁 Elle Fanning 饰）施下了沉睡魔咒……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　出演片名人物的安吉丽娜·朱莉在谈及这个经典角色时称，玛琳菲森实际上是一个很伟大的人，但她是不完美的。她认为，编剧琳达·沃尔夫在打碎原有故事的同时，不是对故事做了简单的简化或逆转，而是讲了一个更大的故事，&quot;我们的挑战是站在另一个角度去看问题&quot;。<br />
<br />
　　影片中作为反角的主人公玛琳菲森头上长角，皮肤绿色，能变身成黑紫色的巨龙。谈及角色造型时，朱莉称造型正在完善中，但牛角是不可缺少的，&quot;牛角装&quot;很适合自己，她也从中获得了很多乐趣。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·朱莉的女儿薇薇安在片中扮演小时候的爱洛公主。朱莉表示让女儿出演角色完全是“形势所趋”，其他三四岁的小演员都被她头上的角和尖尖的指甲吓坏了，但是又需要一个孩子演对手戏，只能是薇薇安。<br />
<br />
·为了片中的夸张造型，朱莉每次拍戏前都要在脸颊上贴些东西，以突出颧骨，鼻子也是刻意做高的。<br />
<br />
·本片导演罗伯特·斯托姆伯格曾担任《阿凡达》、《爱丽斯梦游仙境》和《魔境仙踪》的艺术指导。《沉睡魔咒》是他首度担纲导演的大制作。<br />
<br />
·朱莉在谈到对角色的理解时指出，“《沉睡魔咒》并不是单纯的讲述一个反派女巫的故事，而是要探索一个人是如何一步步走向邪恶，也就是‘坏人是怎样炼成的’，影片的重点是揭露女巫背后的故事。”<br />
<br />
·著名女歌手Lana Del Rey为本片翻唱了老版的主题曲《Once Upon a Dream》，她是由安吉丽娜·朱莉本人钦点的人选。<br />
<br />
·影片是迪士尼公司有史以来在一位新人导演身上投资最大的影片，超过了2010年的《创战纪》。<br />
<br />
·本片于2014年5月30日起开始上映，而这也正好是1959年版《睡美人》的上映55周年纪念日。<br />
<br />
·《沉睡魔咒》是朱莉自从2010年《致命伴旅》时隔四年之后主演的第一部新作。<br />
<br />
·本片中玛琳菲森的扮演是一只乌鸦，名叫Diaval(发音与魔鬼devil类似)，而老版中乌鸦的名叫叫做Diablo，是西班牙语中恶魔的意思。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/chenshuimozhou/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/chenshuimozhou/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/chenshuimozhou/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'：玛琳菲森（安吉丽娜·朱莉饰）曾是一个美丽纯洁，拥有翅膀能够飞翔的年轻仙子，生长于宁静祥和的森林王国。然而美好的时光总是短暂的，王国突遭人类军队侵袭，玛琳菲森在战斗中逐渐成长为这片森林的守护者，同时也遭受到了无情背叛，从此她的心灵开始变得冷酷，脑海只剩复仇的念头。为了报复，她给人类国王的女儿爱洛公主施下恶咒；然而随着爱洛的成长，玛琳菲森才逐渐意识到——这位小公主不仅能给两个世界带来和平，也许还能给自己带来真正的快乐。在宁静祥和的摩尔王国，广袤的大森林中，动物与精灵和谐相处，无忧无虑。那一年，天真无邪的小仙女玛琳菲森（伊莎贝尔·莫洛伊 Isobelle Molloy 饰）邂逅了人类小男孩斯特凡（',N'美国/英国',N'动作/奇幻/冒险/家庭',N'1920 x 1080',N'2014',N'http://www.lwgod.com/thread-617345-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902160&amp;k=1def00b8f052136a1d2d499414c10517&amp;t=1412261722&amp;sid=48c8hkps3%2FHQCAPdHytBbwG%2BduUJFXXz8Q8uXNE5WvN60WY',N'2014/10/2 22:57:17',N'wall',0)
INSERT [movies] ([id],[title],[body],[class],[chicun],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 401,N'【推荐】【行尸走肉第三季16集全】【BluRay-720P.MKV】【中英】',N'<font color="blue"><font size="5">不好意思，让大家等久了！第四季我会尽快的！<br />
<a href="http://www.lwgod.com/thread-607520-1-1.html" target="_blank">行尸走肉第一季下载地址</a><br />
<a href="http://www.lwgod.com/thread-612194-1-1.html" target="_blank">行尸走肉第二季下载地址</a></font></font><br />
<br />
<font color="red"><strong><font size="3">海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/xingshizourou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/xingshizourou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　行尸走肉 第三季/阴尸路 第3季(台)<br />
片　　名　The Walking Dead Season 3<br />
国　　家　美国<br />
类　　别　动作/惊悚/灾难<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　8.7/10 from 414,224 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1520211" target="_blank">http://www.imdb.com/title/tt1520211</a><br />
首　　播　2012-10-14<br />
集　　数　16<br />
单集片长　约45分钟<br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　20.4 GB<br />
导　　演　格里高利·尼克特洛 Gregory Nicotero<br />
　　　　　Bill Gierhart<br />
　　　　　盖·费尔兰德 Guy Ferland<br />
　　　　　厄内斯特·R·迪克森 Ernest R. Dickerson<br />
主　　演　安德鲁·林肯 Andrew Lincoln<br />
　　　　　莎拉·韦恩·卡丽丝 Sarah Wayne Callies<br />
　　　　　大卫·莫瑞瑟 David Morrissey<br />
　　　　　劳瑞·侯登 Laurie Holden<br />
　　　　　史蒂文·连 Steven Yeun<br />
　　　　　钱德勒·里格斯 Chandler Riggs<br />
　　　　　斯科特·威尔森 Scott Wilson<br />
　　　　　劳伦·科汉 Lauren Cohan<br />
　　　　　诺曼·瑞杜斯 Norman Reedus</strong></font><br />
<br />
<font color="red"><strong><font size="3">简介：</font></strong></font><br />
<br />
　　时间流逝着，逃亡与抗争的旅程依旧漫漫看不到尽头，好在瑞克（安德鲁·林肯 Andrew Lincoln 饰）一行人的运气还不算太坏，偶然中，他们找到了最理想的庇护所——一座废弃已久的监狱，在这里，新的生活即将展开。<br />
<br />
　　另一边，出走的安德里亚（劳瑞·侯登 Laurie Holden 饰）与“刀女”米琼恩（达娜·贾克赛·古瑞拉 Danai Jekesai Gurira 饰）亦找到了一处由“总督”（大卫·莫瑞瑟 David Morrissey 饰）所统治的“世外桃源”，安德里亚十分喜欢这里貌似平静快乐的生活，但显然米琼恩并不这么觉得，随着时间的推移，一个惊人而恐怖的秘密渐渐浮出了水面。瑞克和“总督”，当这两个原则和理念完全相悖的“领导”相遇之时，战争爆发了。<br />
<br />
　　《行尸走肉》讲述了警察瑞克在一次执法行动中因中弹负伤而不省人事，当他从昏迷中苏醒后却惊讶地发现，这个世界已然天翻地覆。周遭一派死境，丧尸横行，没有活人踪影。死里逃生的瑞克赶到家中，却不见妻儿的踪影……<br />
<br />
　　尽管僵尸题材有些老套，但这部漫画却着重刻画了人物角色的心理活动与变化，人性中的黑暗面在大灾难中暴露无疑。哀殍遍野，丧尸满目，人类在其中苟延残喘，带来毁灭与伤害的不仅仅是那些行尸走肉，还有活人间的互相争斗。故事将主人公一次次抛入绝境的同时，也给予观者一种如临末世的悲望。<br />
<br />
<font color="red"><strong><font size="3">截图：</font></strong></font><br />
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
<br />',N'动作/惊悚/灾难',N'1280 x 720',N'http://www.lwgod.com/thread-617116-1-1.html',N'http://www.lwgod.com/attachment.php?aid=901630&amp;k=338449c5b23dd46a1526df66176acb60&amp;t=1412261724&amp;sid=2247f%2Fa2ttm%2BIvOiR%2FI4VKkFXEb1IX44fcDRrfoNKS3EecY',N'2014/10/2 22:57:17',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 402,N'【中14最新悬疑惊悚新片】【床下有人2】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/chuangxiayouren2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.29/chuangxiayouren2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　床下有人2<br />
片　　名　Under The Bed 2<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　悬疑/惊悚<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　837 MB<br />
片　　长　84 Min<br />
导　　演　袁杰 Jie Yuan<br />
主　　演　殷果儿 Guo-er Yin<br />
　　　　　李卓远 Zhuoyuan Li<br />
　　　　　陈园 Chen Yuan<br />
　　　　　宋伟 Song Wei<br />
　　　　　孙心娅 Xinya Sun<br />
　　　　　李鹤楠 Henan Li<br />
　　　　　陈嘉敏 Chen Jia Min<br />
　　　　　王钟超 Zhongchao Wang</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　根据“十大校园鬼故事”之首的“好朋友背靠背”改编而成，讲述了医学院内发生的一连串诡异离奇事件：一个女大学生被害身亡，尸体被钉在了好朋友的床板下。半年后，一群医学院的大学生回到他们荒废已久的旧日校园，同时也遇到了杀害女大学生的神秘女鬼……<br />
<br />
　　晴朗明媚的一天，医科大学生何欣悦（殷果儿 饰）、马晓丽（陈园 饰）、黄燕燕（陈嘉敏 饰）、雷永涵（李鹤楠 饰）、杨刚（宋伟 饰）和曾萍（孙心娅 饰）等六人相约来到早已荒废的旧校舍玩耍。半年前，学校发生了一起离奇杀人案，一名女子死于“好朋友，背靠背”的恐怖传言，人人传说此处有鬼，一度闹得人心惶惶。无所畏惧的青年男女不顾看护旧校舍的秦师傅警告，执意要在此地住上两天。夜幕降临，人心浮动，有人看见一闪而过的鬼影，有人心中私欲膨胀。<br />
<br />
　　次日一早，黄燕燕神秘失踪，这群男女惶恐不安，而他们的噩梦也进入了最恐怖的时刻……<br />
<br />
　　本片故事起源于一个在天涯、猫扑、百度贴吧等知名论坛里广泛流传的校园鬼故事 “好朋友，背靠背”，讲述的是校园里朝夕相处的室友闺蜜之间的惊悚故事。该故事一经面世，就引来了众多校园惊悚小说爱好者的围观，在相当长一段时间里位居“校园十大鬼故事”榜首，成为网友心目中的校园惊悚故事之最。 第一部《床下有人》的故事发生在古朴静美的一座旅游古城，景虽美，却容易让人产生陌生的距离感。而《床下有人2》则把故事的发生地搬到了更容易产生亲近感的大学校园，不仅切实提升了影片的代入感，还通过场景的植入与切换，引起大家对校园生活的千百种各异的回忆与共鸣。除了场景升级，影片在人物角色上也下足了功夫。片中全方位展示了校园中的各色人物——闺蜜、兄弟、情侣、情敌、师生，个个角色粉墨登场，利益纠葛也随之接连上演。从以往的经验来看，故事情节都是大多是国产片的硬伤，而影片《床下有人2》的创作团队则尽力打破窠臼，在剧作层面精耕细作，努力将故事完善到至臻至纯。影片不仅呈现出大学同窗之间的尖锐矛盾与温暖关怀，其中友情爱情与利益复仇的相互交织也足以赚足年轻观众的眼球。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：根据“十大校园鬼故事”之首的“好朋友背靠背”改编而成，讲述了医学院内发生的一连串诡异离奇事件：一个女大学生被害身亡，尸体被钉在了好朋友的床板下。半年后，一群医学院的大学生回到他们荒废已久的旧日校园，同时也遇到了杀害女大学生的神秘女鬼……晴朗明媚的一天，医科大学生何欣悦（殷果儿 饰）、马晓丽（陈园 饰）、黄燕燕（陈嘉敏 饰）、雷永涵（李鹤楠 饰）、杨刚（宋伟 饰）和曾萍（孙心娅 饰）等六人相约来到早已荒废的旧校舍玩耍。半年前，学校发生了一起离奇杀人案，一名女子死于“好朋友，背靠背”的恐怖传言，人人传说此处有鬼，一度闹得人心惶惶。无所畏惧的青年男女不顾看护旧校舍的秦师傅警告，执意要在此地住上两天',N'中国',N'悬疑/惊悚',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-618520-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904096&amp;k=a366da41d902b4e28a03e80cc3ac839d&amp;t=1412261720&amp;sid=4228lsc%2F2NVuD4HrRFc2nTaxO%2BRbO8UMWg25clTf09qkVgs',N'2014/10/2 22:57:18',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 403,N'【日14新超大尺度】【花与蛇：零】【BluRay-720P.MKV】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/ling/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　花与蛇：零<br />
片　　名　Hana to hebi: Zero<br />
年　　代　2014<br />
国　　家　日本<br />
类　　别　剧情/犯罪/惊悚<br />
语　　言　日语<br />
字　　幕　中文简繁<br />
评　　分　6.3/10 from 11 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3421616" target="_blank">http://www.imdb.com/title/tt3421616</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.14 GB<br />
片　　长　111 Min<br />
导　　演　桥本一 Hajime Hashimoto<br />
主　　演　天乃舞衣子 Maiko Amano ....Misaki<br />
　　　　　滨田のり子 Noriko Hamada ....Shizuko<br />
　　　　　桜木梨奈 Rina Sakuragi ....Ruri<br />
　　　　　川野直辉 Naoki Kawano<br />
　　　　　木村祐一 Yuichi Kimura<br />
　　　　　榊英雄 Hideo Sakaki<br />
　　　　　菅原大吉 Daikichi Sugawara<br />
　　　　　津田宽治&nbsp;&nbsp;Kanji Tsuda<br />
　　　　　辻本祐树 Yuki Tsujimoto</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　团鬼六的肉欲小说人气系列的最新作「花と蛇 ZERO」终于被电影化了，本作的导演是在「探偵はBARにいる」（泡吧侦探）系列中出名的桥本一先生。本作是由东映映像提供，杉本彩主演。这次系列第四部的企划概念是原点回归。所有的演员都是通过遴选，选出在过激的SM场面时能展现出精湛演技的女演员。<br />
<br />
　　至今为止的「花と蛇」系列，故事都是围绕着主人公静子展开的。而本作启用了三位女主演，描绘出三人三种不同的肉欲世界。在遴选中获胜的是天乃舞衣子、浜田范子、桜木梨奈这3人。捆绑调教，三人同时紧缚吊打，同性恋SM，极限的色情描写就是本作最大的看点。<br />
<br />
　　天乃扮演的是，在追踪谜样的违法映像网站「バビロン」（巴比伦）主谋者的过程中，陷入调教陷阱中的警视厅生活安全部门特搜队的警部候补雨宮美咲。本作是她首脱，也勇敢的挑战过激画面，开拓了新的境地。当问到说拍摄时候有惹怒桥本导演的时候，「训了我以后他还是会开着玩笑，拍摄时也不会将不快带入，在最好的环境中拍摄，我觉得这真的是非常好的经验」她如此回答。<br />
<br />
　　过去由桥幸夫是编制的「セイントフォー」中的成员滨田，作为花与蛇系列的重要演员扮演了静子。她在「巴比伦」被监禁、调教，并且画面被上传到网络上。她说这是紧缚这种设定最初的经验，「利用疼痛，让她们流出并非演技的眼泪。但是，这个计划不得不被取消之后，导演的编导过程每天都受到冲击」。由樱木饰演的是静子粉丝，性欲无法被满足的主妇琉璃，留下了这样的记录「我完全信任桥本导演和工作人员，将心和身体都放开，非常愉快的拍摄」。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：团鬼六的肉欲小说人气系列的最新作「花と蛇 ZERO」终于被电影化了，本作的导演是在「探偵はBARにいる」（泡吧侦探）系列中出名的桥本一先生。本作是由东映映像提供，杉本彩主演。这次系列第四部的企划概念是原点回归。所有的演员都是通过遴选，选出在过激的SM场面时能展现出精湛演技的女演员。至今为止的「花と蛇」系列，故事都是围绕着主人公静子展开的。而本作启用了三位女主演，描绘出三人三种不同的肉欲世界。在遴选中获胜的是天乃舞衣子、浜田范子、桜木梨奈这3人。捆绑调教，三人同时紧缚吊打，同性恋SM，极限的色情描写就是本作最大的看点。天乃扮演的是，在追踪谜样的违法映像网站「バビロン」（巴比伦）主谋者的过程中，',N'日本',N'剧情/犯罪/惊悚',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617320-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902159&amp;k=604c49cac75b1c00d7545082670a4a44&amp;t=1412261724&amp;sid=144b00P9pBJGdA9KlYthO4GAcpOCACprTTaSrQbvy0PRCpU',N'2014/10/2 22:57:18',N'wall',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 404,N'【中14高分动画】【龙之谷：破晓奇兵】【HD-1024.MP4】【国语】',N'<font color="blue"><font size="5">本片在豆瓣网竟有7.5分高分！国产动画巅峰之作！<br />
不过大家注意，此版本清晰度一般！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/longzhigu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.22/longzhigu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　龙之谷：破晓奇兵/龙之谷之黑龙崛起/龙之谷大电影/龙之谷前传<br />
片　　名　Dragon Nest: Warriors'' Dawn<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　动画/奇幻/冒险/爱情<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
评　　分　8.8/10 from 77 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2911342" target="_blank">http://www.imdb.com/title/tt2911342</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　901 MB<br />
片　　长　90 Min<br />
导　　演　宋岳峰 Yue Feng Song<br />
主　　演　胡歌 Ge Hu ....贝思柯德配音<br />
　　　　　景甜 Tian Jing ....游侠阿尔杰塔配音<br />
　　　　　夏梓桐 Xia Zi Tong ....女巫卡拉秋配音<br />
　　　　　徐娇 Jiao Xu ....精灵弓箭手莉雅配音</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　原本宁静的阿尔特里亚大陆，被黑龙及其魔物追随者的势力所席卷。乱世下，民不聊生。绰号小鱼的兰伯特，是生活在小村庄里的普通少年，却为了保护村庄，在误打误撞中作为小跟班加入了为讨伐黑龙而建立的英雄联盟。这支由精灵、魔法师、游侠和传奇战士组成的临时杂牌联盟，踏上了失落已久的古道，翻越诡异的丛林和奇幻的雪山寻觅黑龙的巢穴。可前方，却有意想不到的危机等着他们的到来。旅程的艰辛和奇异的境遇让兰伯特迅速成长起来，可他最终能找到属于自己的战斗的意义吗？<br />
<br />
　　不务正业的流浪少年兰伯特意外听到了邪恶的大黑龙手下魔族准备攻占阿尔特里亚大陆的情况，为了保护家乡他与魔物周旋被困，却被游侠巴尔纳救下，加入到了游侠杰兰特、阿尔杰塔（景甜 配音）的队伍中。精灵一族中的法师首领卡拉秋（夏梓桐 配音）也带着公主内尔文与弓箭手随从莉亚（徐娇 配音）前来邀请人类国王参战，面对魔物的入侵，他们和游侠队伍以及人类骑士贝斯柯德（胡歌 配音）组成了对付大黑龙的联盟。众人历经困难来到了大黑龙的巢穴，兰伯特与莉亚日久生情，但是他们却不知道杰兰特和阿尔杰塔，以及贝斯柯德各自带着不为人知的秘密……<br />
<br />
　　本片是人气网游《龙之谷》改编的动画大电影，由盛大游戏公司推出，计划是拍摄三部曲，故事的主线围绕《龙之谷》游戏前传。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·两位好莱坞电影人比尔·波顿（《功夫》、《歌舞青春》系列、《谍中谍3》制片人）、格兰特·梅杰（《指环王》三部曲、《金刚》、《绿灯侠》艺术指导）加入《龙之谷》的创作团队，为导演宋岳峰和他的300人剧组带来真正意义上的国际化。<br />
<br />
·“比尔完全按全球市场标准来要求故事”，导演宋岳峰说，“剧情的理解和传达，横向上，必须能满足影片设定观众群的广度，即东西方不同文化背景的观众；纵向上，要照顾到从低龄到高龄观众的理解力。”<br />
<br />
·曾凭借《指环王》获得过奥斯卡最佳艺术指导的格兰特·梅杰，则为《龙之谷》建立了不同于好莱坞电影的视觉体系。导演宋岳峰介绍说：“故事建立在西方奇幻文学世界观设定上，梅杰跟中国制作团队一起，寻找将东方元素融入这个故事的方法。最终，我们确定了明快的美术风格和偏可爱的人物设定。”<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：原本宁静的阿尔特里亚大陆，被黑龙及其魔物追随者的势力所席卷。乱世下，民不聊生。绰号小鱼的兰伯特，是生活在小村庄里的普通少年，却为了保护村庄，在误打误撞中作为小跟班加入了为讨伐黑龙而建立的英雄联盟。这支由精灵、魔法师、游侠和传奇战士组成的临时杂牌联盟，踏上了失落已久的古道，翻越诡异的丛林和奇幻的雪山寻觅黑龙的巢穴。可前方，却有意想不到的危机等着他们的到来。旅程的艰辛和奇异的境遇让兰伯特迅速成长起来，可他最终能找到属于自己的战斗的意义吗？不务正业的流浪少年兰伯特意外听到了邪恶的大黑龙手下魔族准备攻占阿尔特里亚大陆的情况，为了保护家乡他与魔物周旋被困，却被游侠巴尔纳救下，加入到了游侠杰兰特、阿尔杰',N'中国',N'动画/奇幻/冒险/爱情',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-617833-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903178&amp;k=b1ff84750ac03a913a43d6895d0af94d&amp;t=1412261724&amp;sid=cda7W%2FSoKVUzADgf1p8zNRQxAu67JmUX6T0BFQttdFZOe0g',N'2014/10/2 22:57:18',N'wall',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 405,N'【帕丁森14新好评】【沙海漂流人】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/shahai/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/shahai/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　沙海漂流人/漂泊者/绝命正义<br />
片　　名　The Rover<br />
年　　代　2014<br />
国　　家　澳大利亚/美国<br />
类　　别　剧情/犯罪<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.6/10 from 13,271 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2345737" target="_blank">http://www.imdb.com/title/tt2345737</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.54 GB<br />
片　　长　103 Min<br />
导　　演　大卫·米肖德 David Michod<br />
主　　演　罗伯特·帕丁森 Robert Pattinson ....Reynolds<br />
　　　　　盖·皮尔斯 Guy Pearce ....Eric<br />
　　　　　斯科特·麦克奈利 Scoot McNairy ....Reynolds'' Brother<br />
　　　　　Samuel F. Lee ....Chinese Acrobat<br />
　　　　　Anthony Hayes<br />
　　　　　David Field<br />
　　　　　Gillian Jones<br />
　　　　　Susan Prior<br />
　　　　　Matt Connelly ....Soldier<br />
　　　　　T. Stinga ....Soldier<br />
　　　　　纳许·艾德顿 Nash Edgerton ....Town Soldier</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　故事在澳洲的沙漠腹地展开，盖·皮尔斯饰演的艾瑞克（Eric）在金融危机中失去了所有财富，四处流浪的他经历一群暴徒的抢劫，他们抢走了他最后的金钱，同时也带走了他身上所有人性美好的部分。艾瑞克决定反抗，他冒死追踪这帮暴徒，并得到其中一位受伤的暴徒雷伊（罗伯特·帕丁森 饰演）的帮助……<br />
<br />
<font color="red"><strong><font size="3">幕后花絮：</font></strong></font><br />
<br />
　　金融危机的大背景，加上故事的发生地荒蛮无度的澳洲沙漠，让无助的人与走投无路的人性，从一开始便经受着严峻而巨大的考验和捶打。这部出自影片《动物王国》的导演大卫·米肖德的西部惊悚新作，无论从卖相上还是从内容的实质，皆勾起人们不小的兴趣。尤其是产自英伦的澳洲硬汉盖·皮尔斯和英伦大帅哥罗伯特·帕丁森的组合，颇让人浮想联翩。事实上，早在影片爆出海报部分剧照和预告片时，就已经给观众们以及这两位主演的粉丝们足够的吸引力了。尤其是后者罗伯特·帕丁森，曾经凭借《哈利波特5》中的精彩亮相，以及随后《暮光之城》系列里的精湛表现，依然让其成为风靡欧美乃至世界影坛的一线偶像巨星。然而，此番破相出演的他想必会令一些女粉丝伤心。但观其在这部西部惊悚片的表现，无论从外形上的巨大反差，还是演技方面的进步，都可谓精进不小。曾经的“白面吸血书生”也有阳刚糙汉子的一面。<br />
<br />
　　而再度自编自导的澳洲才俊大卫·米肖德，在凭借《动物王国》收获2010年的圣丹斯电影节的评审团大奖之后，可谓风生水起。如今则以一部非典型的西部片形式，浓郁的以暴制暴的风格，加上浓重的惊悚元素，将这个残酷现实下人性演变和寻找出路的故事展现出来。这部投资仅百万余美元的独立影片，已然凭借其不错的成色，在戛纳影展上收获口碑。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：故事在澳洲的沙漠腹地展开，盖·皮尔斯饰演的艾瑞克（Eric）在金融危机中失去了所有财富，四处流浪的他经历一群暴徒的抢劫，他们抢走了他最后的金钱，同时也带走了他身上所有人性美好的部分。艾瑞克决定反抗，他冒死追踪这帮暴徒，并得到其中一位受伤的暴徒雷伊（罗伯特·帕丁森 饰演）的帮助……幕后花絮：金融危机的大背景，加上故事的发生地荒蛮无度的澳洲沙漠，让无助的人与走投无路的人性，从一开始便经受着严峻而巨大的考验和捶打。这部出自影片《动物王国》的导演大卫·米肖德的西部惊悚新作，无论从卖相上还是从内容的实质，皆勾起人们不小的兴趣。尤其是产自英伦的澳洲硬汉盖·皮尔斯和英伦大帅哥罗伯特·帕丁森的组合，颇让人浮',N'澳大利亚/美国',N'剧情/犯罪',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-618473-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904054&amp;k=405fa799748473b4d87394f21cda50c2&amp;t=1412261721&amp;sid=9347SOgSsN60P1KBMUlYYad0xcY14NHNn77RKk7CZPgKINg',N'2014/10/2 22:57:18',N'wall',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[status],[Look]) VALUES ( 406,N'【徐帆陈建斌14新喜剧】【洋妞到我家】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/yangniu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.16/yangniu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　洋妞到我家<br />
片　　名　When a Peking Family Meets Aupair<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　喜剧/剧情/家庭<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　942 MB<br />
片　　长　94 Min<br />
导　　演　陈刚 Gang Chen<br />
主　　演　徐帆 Fan Xu ....奇葩老妈文娟<br />
　　　　　陈建斌 Jianbin Chen ....隐形老爸苏有志<br />
　　　　　陈一诺 Yinuo Chen ....女儿皮皮<br />
　　　　　孙红雷 Honglei Sun ....犀利总裁<br />
　　　　　佳妮娜·阿拉纳·特拉诺瓦 Gianina ....野蛮洋妞娜塔莉<br />
　　　　　郭涛 Tao Guo ....土豪邻居<br />
　　　　　佟丽娅 Liya Tong ....“最美幼教”<br />
　　　　　张晓龙 Xiaolong Zhang ....“太监”服务员<br />
　　　　　王千源 Qianyuan Wang<br />
　　　　　范文芳 Fann Wong ....蒙蒙<br />
　　　　　李铭顺 Christopher Lee<br />
　　　　　邬倩倩 Qianqian Wu<br />
　　　　　孙桂田 Guihua Sun<br />
　　　　　金志文 Zhiwen Jin<br />
　　　　　徐佳 Jia Xu</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片讲述中国奇葩一家人遭遇野蛮洋妞的爆笑故事。<br />
<br />
　　一个洋妞来到一个中国家庭，种种啼笑皆非轮番上演：奇葩老妈（徐帆 饰）地铁偷拍家人、强迫老公分床、争风吃醋上演红唇诱惑，誓要送女儿出国，给死人化妆也愿意。<br />
<br />
　　毫无存在感的隐形老爸（陈建斌 饰），人生轨迹是从才子帅哥到屌丝大叔，就算是穿上比基尼也要让京剧团起死回生，与洋妞湿身相拥。<br />
<br />
　　如今，规矩打破了、孩子野蛮了、老公危险了……老妈终于觉醒了！<br />
<br />
　　由中央戏剧学院教授陈刚执导，李春利编剧，徐帆、陈建斌、陈一诺主演，孙红雷、郭涛、佟丽娅等十多位华语明星参演的群星生活喜剧《洋妞到我家》确定于8月8日全国上映。影片讲述中国奇葩一家人遭遇野蛮洋妞的爆笑故事，届时大家将享受一出极品家人的爆笑盛宴。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：影片讲述中国奇葩一家人遭遇野蛮洋妞的爆笑故事。一个洋妞来到一个中国家庭，种种啼笑皆非轮番上演：奇葩老妈（徐帆 饰）地铁偷拍家人、强迫老公分床、争风吃醋上演红唇诱惑，誓要送女儿出国，给死人化妆也愿意。毫无存在感的隐形老爸（陈建斌 饰），人生轨迹是从才子帅哥到屌丝大叔，就算是穿上比基尼也要让京剧团起死回生，与洋妞湿身相拥。如今，规矩打破了、孩子野蛮了、老公危险了……老妈终于觉醒了！由中央戏剧学院教授陈刚执导，李春利编剧，徐帆、陈建斌、陈一诺主演，孙红雷、郭涛、佟丽娅等十多位华语明星参演的群星生活喜剧《洋妞到我家》确定于8月8日全国上映。影片讲述中国奇葩一家人遭遇野蛮洋妞的爆笑故事，届时大家将享受',N'中国',N'喜剧/剧情/家庭',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-617319-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902157&amp;k=5ed29c22c0bad18df4f94b527241f967&amp;t=1412261725&amp;sid=185fybgYyfzZsTzjPBCsI8%2BqNZkgA5rUrIdXN3b0jGPekxw',N'2014/10/2 22:57:18',N'wall',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 407,N'【美14万众期待票房】【明日边缘】【BluRay-720P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.21/mingribianyuan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　明日边缘/异空战士(港)/明日边界(台)/杀戮轮回<br />
片　　名　Edge of Tomorrow<br />
年　　代　2014<br />
国　　家　美国/澳大利亚<br />
类　　别　动作/科幻<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　<font color="red">8.1/10 from 136,222 users</font><br />
链　　接　<a href="http://www.imdb.com/title/tt1631867" target="_blank">http://www.imdb.com/title/tt1631867</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.40 GB<br />
片　　长　113 Min<br />
导　　演　道格·里曼 Doug Liman<br />
主　　演　汤姆·克鲁斯 Tom Cruise ....威廉·凯奇 Cage<br />
　　　　　艾米莉·布朗特 Emily Blunt ....丽塔·沃拉塔斯基 Rita<br />
　　　　　比尔·帕克斯顿 Bill Paxton ....士官长法瑞尔 Master Sergeant Farell<br />
　　　　　布莱丹·格里森 Brendan Gleeson ....布里格汉姆上将 General Brigham<br />
　　　　　夏洛特·莱李 Charlotte Riley ....兰斯 Nance<br />
　　　　　诺亚·泰勒 Noah Taylor ....卡特博士 Dr. Carter<br />
　　　　　劳拉·普沃 Lara Pulver ....卡伦·劳德 Karen Lord<br />
　　　　　约纳斯·阿姆斯特朗 Jonas Armstrong ....Skinner<br />
　　　　　托尼·魏 Tony Way ....Kimmel<br />
　　　　　奇克·盖瑞 Kick Gurry ....Griff<br />
　　　　　弗兰兹·德拉梅 Franz Drameh ....Ford<br />
　　　　　德拉古米尔·米希克 Dragomir Mrsic ....Kuntz<br />
　　　　　羽田昌义 Masayoshi Haneda ....Takeda</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片描述了一场与外星人的战争，主人公凯奇从未接受过军事训练，却被派到前线作战，这无疑是一场自杀行动。就在他频死的那一刻，他意外地获得穿越时空的能力，能够让他不断地重复生死轮回，一次次重新回到战场。而每经历一次死亡，凯奇的战斗力就增强一分……<br />
<br />
　　未来世界陷入外星人入侵的恐慌中，军事演说家凯奇中校（汤姆·克鲁斯 Tom Cruise 饰）畏惧上战场，他从没想过将军（布莱丹·格里森 Brendan Gleeson 饰）会让他去指挥即将开始的“诺曼底战役”，拒绝接受命令之后将军居然恶整了他，那就是把他当做逃兵扔进了军营中。凯奇被归入了J小队中进行战斗，战役的第一天就惨死在战场，没想到这一死让他拥有了时空循环的能力，而唯一相信他的人就是被称为“全金属战士”的丽塔·沃拉塔斯基（艾米莉·布朗特 Emily Blunt 饰）。二人开始了时空循环作战，在训练凯奇的同时他们发现了控制时间的奥秘，这与外星人“主脑”欧米茄有关，但是唯一能取得胜利的方法就是让凯奇不断死去、不断重启时间。在不断重复登陆那天的战斗的同时，凯奇越来越不想失去丽塔……<br />
<br />
　　本片改编自日本作家樱坂洋的轻小说《杀戮轮回 All you need is kill》。故事背景设定于近未来的地球，在一场全面性的外星物种入侵战争中，凯奇（汤姆·克鲁斯 饰）被送到登陆战的海滩，每天都在重复着必败的死亡激战。而他从未接受过任何军事训练，却奉派到前线与敌人作战，这无疑是一场自杀的作战行动。就在他频死的那一刻，他意外地获得穿越时空回廊的能力，能够让他不断地重复生死轮回，一次又一次地重新回到战场。随着每一次醒来，比尔对战争的经验就更深一层，他越来越了解敌人的弱点，在战场上的存活时间也越来越久。他在“战场女武神”丽塔（艾米丽·布朗特 饰）的魔鬼训练下，战斗能力突飞猛进，两人一同并肩作战，终于让这场毫无希望的战争露出一线胜利的曙光。但是凯奇也面临一项痛苦的抉择……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　电影改编自日本作家樱坂洋原著、安倍吉俊插画的轻小说《杀戮轮回》（All you need is kill），2010年4月，华纳兄弟花了约300美元买下了小说改编版权，但剧组认为《杀戮轮回》这个名字过于血腥，于是将片名改为《明日边缘》（Edge of Tomorrow）。影片于2012年10月1日在英国开机拍摄，拍摄地是利文斯顿片场，此前这里曾是《哈利-波特》的拍摄地。影片投资1.78亿美元，由道格-里曼（《谍影重重》、《史密斯行动》）执导，汤姆-克鲁斯领衔主演，影片的艺术指导是《独立日》的奥立弗-施多尔，摄影指导是曾获得奥斯卡提名的迪恩-比贝，视觉效果总监是参与过《蝙蝠侠：黑暗骑士》的尼可-达维斯，团队阵容十分华丽。道格-里曼此前执导的一部间谍片《谍影重重》迄今已接近十年，他最初看到本片剧本时非常兴奋，“剧本非常出彩，它融合了好莱坞大片中所有精彩元素，还选择了全新的视角来演绎。”<br />
<br />
　　汤姆-克鲁斯于2012年7月20日加入本片的筹备工作，与他上一部电影《遗落战境》关机不到一周时间。年过50的汤姆-克鲁斯近年来仍不断接拍高难度动作片，2011年他玩命般地悬吊在世界最高的建筑，这次出演《明日边缘》又亲自身穿巨大的金属铠甲参与战斗，“我需要旋转身体，找到操纵它的办法，这身铠甲重达85到125磅”，阿汤哥的敬业精神令人钦佩。此外，汤姆-克鲁斯在拍摄一场汽车跌落的戏时受伤，拍戏艰苦程度可见一斑。女主角艾米莉也表示拍摄这部戏是“多么的痛苦”，一些特训也让她吃不消。<br />
<br />
　　影片首映后，被媒体一致盛赞是2014年夏季最佳大片之一，“战场打斗异常凶猛，影片巧妙地平衡了动作、幽默、勇气、非完美主义英雄等元素”。<br />
<br />
<font color="red"><strong><font size="3">影片评价：</font></strong></font><br />
<br />
　　媒体综评71分，烂番茄方面新鲜度89%，180人投出新鲜番茄，22人砸出烂番茄，CinemaScore评分B+；获得与《碟中谍4》持平的高分评价。<br />
<br />
　　其中《芝加哥太阳报》打出满分“《明日边缘》其实就是对汤姆-克鲁斯事业的暗喻。你永远也杀不死这家伙，他总会接连不断地死而复生。克鲁斯仍然是当今世上最有名的电影明星是有原因的——这是他自己努力赚取的！”，“极具前瞻性的科幻作品，经典的主题、巧妙的策划、高明地剧本编纂与执导手法，《明日边缘》可能会是夏季档中一鸣惊人的纯娱乐大片”，“这部影片成功的原因在于，它把一切都扔进搅拌器打碎混合并产出全新的东西。这些“新东西”机智活泼并充满幽默，若你愿意还可以进一步深挖其内涵”“一部由明星驱动的商业娱乐大片，类型体裁上的创新出乎意料、令人兴奋”，“导演让动作场面和惊喜接连不断。好吧，虽然结局令人头痛，但在此之前克鲁斯与布朗特接连不断的死亡游戏，还是让我们倍感愉悦”，“作为一部讲述时空循环的电影，《明日边缘》永远不会让观众感到厌倦或是相似”。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·本片改编自日本作家樱坂洋的轻小说《杀戮轮回》。但一开始剧组就认为原著的标题过于残酷，与电影版偏喜剧的气氛不符，之后剧组曾用过“我们都是凡人”的标题，最终改为“明日边缘”。<br />
<br />
·影片大部分戏份在英国取景。拍摄地Leavesden Studio曾经是哈利·波特系列影片的片场。<br />
<br />
·影片中比尔·凯奇中士的角色原定由布拉德·皮特出演。他曾经与导演里曼合作过《史密斯夫妇》。<br />
<br />
·汤姆·克鲁斯自从2012年7月20日加入本片的剧组开始筹备工作。那距离他上一部电影《遗落战境》关机尚不到一周时间。<br />
<br />
·汤姆·克鲁斯自掏腰包，花了10万美元为剧组举办了一个盛大的关机派对。但他本人由于还有戏份需要拍摄未能前来参加。<br />
<br />
·丽塔的角色曾经考虑邀请《艺术家》的法国女星贝勒尼丝·贝乔出演。<br />
<br />
·华纳公司为本片开启了一场史无前例的“预告特辑马拉松”，在同一天之内，发布了7支《明日边缘》相关的预告及制作特辑。<br />
<br />
·拍摄本片期间，女主角艾米莉·布朗特怀孕了，因此她不得不拒绝拍摄一些动作戏，而剧组知道她拒绝的真正原因的人只有阿汤哥。<br />
<br />
·2013年8月，媒体报道了《明星伙伴》男星杰里米·皮文加盟本片的消息，但他最终没有出现在影片的上映版当中。<br />
<br />
·这并非是艾米莉·布朗特主演的第一部以时空穿梭为题材的科幻动作片，上一部是《环形使者》。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：影片描述了一场与外星人的战争，主人公凯奇从未接受过军事训练，却被派到前线作战，这无疑是一场自杀行动。就在他频死的那一刻，他意外地获得穿越时空的能力，能够让他不断地重复生死轮回，一次次重新回到战场。而每经历一次死亡，凯奇的战斗力就增强一分……未来世界陷入外星人入侵的恐慌中，军事演说家凯奇中校（汤姆·克鲁斯 Tom Cruise 饰）畏惧上战场，他从没想过将军（布莱丹·格里森 Brendan Gleeson 饰）会让他去指挥即将开始的“诺曼底战役”，拒绝接受命令之后将军居然恶整了他，那就是把他当做逃兵扔进了军营中。凯奇被归入了J小队中进行战斗，战役的第一天就惨死在战场，没想到这一死让他拥有了时空',N'美国/澳大利亚',N'动作/科幻',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617750-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903115&amp;k=f4d5c06b0ed83d4e890f270deba1f62a&amp;t=1412261725&amp;sid=c148IvX9SqvBju%2BZB4%2F9cohvCiqsQKdJEPmUV85zC6Rs%2Frc',N'2014/10/2 22:57:18',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 408,N'【布鲁斯南14最新】【自杀四人组】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/sirenzu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/sirenzu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　自杀四人组/自杀俱乐部/绝命四人组/漫漫长路/往下跳<br />
片　　名　A Long Way Down<br />
年　　代　2014<br />
国　　家　英国<br />
类　　别　剧情/喜剧<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.3/10 from 10,423 users<br />
链　　接　<a href="http://www.imdb.com/title/tt0458413" target="_blank">http://www.imdb.com/title/tt0458413</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.32 GB<br />
片　　长　96 Min<br />
导　　演　帕斯卡尔·舒梅 Pascal Chaumeil<br />
主　　演　亚伦·保尔 Aaron Paul ....J.J.<br />
　　　　　皮尔斯·布鲁斯南 Pierce Brosnan ....Martin Sharp<br />
　　　　　托妮·科莱特 Toni Collette ....Maureen<br />
　　　　　伊莫珍·波茨 Imogen Poots ....Jess Crichton<br />
　　　　　罗莎曼德·派克 Rosamund Pike<br />
　　　　　山姆·尼尔 Sam Neill<br />
　　　　　塔彭丝·米德尔顿 Tuppence Middleton ....Kathy<br />
　　　　　Joe Cole ....Chas<br />
　　　　　Diana Kent ....Hope<br />
　　　　　Mohammed Ali<br />
　　　　　George Hewer ....Party Goer</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　在元旦新年的守岁夜，伦敦有四个失意绝望的人：因为跟一个15岁少女上床而声败名裂的电视名人马丁；除了照顾自己严重残疾的成年儿子没有自己生活的中年妇女莫莲；因为姐姐几年前神秘失踪而一直走不出心理阴影的少女杰丝；和乐队解散、女友分手的美国摇滚歌手JJ。他们都想到著名的“礼帽大 厦”楼顶跳楼自杀，四人在楼顶不期而遇。他们一起度过了一个晚上，讲述各自不幸的遭遇，第二天一早各自回家，但从此形成了一个奇怪的四人小团体，开始发生各种各样有趣的事情，比如他们试图挽救马丁的婚姻，结果一团糟；他们组成读书会，专门讨论自杀的作家们，他们还计划不周地匆匆去金丝雀群岛旅行…<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：在元旦新年的守岁夜，伦敦有四个失意绝望的人：因为跟一个15岁少女上床而声败名裂的电视名人马丁；除了照顾自己严重残疾的成年儿子没有自己生活的中年妇女莫莲；因为姐姐几年前神秘失踪而一直走不出心理阴影的少女杰丝；和乐队解散、女友分手的美国摇滚歌手JJ。他们都想到著名的“礼帽大 厦”楼顶跳楼自杀，四人在楼顶不期而遇。他们一起度过了一个晚上，讲述各自不幸的遭遇，第二天一早各自回家，但从此形成了一个奇怪的四人小团体，开始发生各种各样有趣的事情，比如他们试图挽救马丁的婚姻，结果一团糟；他们组成读书会，专门讨论自杀的作家们，他们还计划不周地匆匆去金丝雀群岛旅行…影片',N'英国',N'剧情/喜剧',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-618472-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904053&amp;k=e4435c62878ffc6c88c02f3ff9be7d42&amp;t=1412261725&amp;sid=539dVWoyg7SwdYCPjBin4aF1%2B235Qp6sAdVP%2BmOLkkLOpNE',N'2014/10/2 22:57:19',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 409,N'【美14笑翻天】【百万种硬的方式】【BluRay-720P.MKV】【中英】',N'<font color="blue"><font size="5">未分级加长版！比普通版多了19分钟！<br />
笑翻天票房必看大片！不可错过！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xibu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xibu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xibu/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　死在西部的一百万种方式/夺命西(港)/百万种硬的方式(台)/西部的一百万种死法<br />
片　　名　A Million Ways to Die in the West<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　喜剧/西部<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.2/10 from 52,268 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2557490" target="_blank">http://www.imdb.com/title/tt2557490</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.15 GB<br />
片　　长　135 Min<br />
导　　演　塞思·麦克法兰 Seth MacFarlane<br />
主　　演　塞思·麦克法兰 Seth MacFarlane ....Albert<br />
　　　　　查理兹·塞隆 Charlize Theron ....Anna<br />
　　　　　阿曼达·塞弗里德 Amanda Seyfried ....Louise<br />
　　　　　连姆·尼森 Liam Neeson ....Clinch<br />
　　　　　吉奥瓦尼·瑞比西 Giovanni Ribisi ....Edward<br />
　　　　　尼尔·帕特里克·哈 Neil Patrick Harris ....Foy<br />
　　　　　萨拉·丝沃曼 Sarah Silverman ....Ruth<br />
　　　　　克里斯多夫·哈根 Christopher Hagen ....George Stark <br />
　　　　　韦斯·斯塔迪 Wes Studi ....Cochise <br />
　　　　　Matt Clark ....Old Prospector<br />
　　　　　Evan Jones ....Lewis<br />
　　　　　Aaron MacPherson ....Ben<br />
　　　　　雷克斯·林 Rex Linn ....Sheriff / Narrator</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　一个懦弱的农夫（塞思·麦克法兰 饰演）被人抢走了女朋友（阿曼达·塞弗里德 饰演），他的女朋友性感火辣，而农夫面对的情敌则是一个无恶不错的大坏蛋（尼尔·帕特里克·哈里斯 饰演），而且这个坏蛋枪法一流，如何打败情敌挽回女友芳心，成为农夫生命中最大的难题。这时塞隆出演的神秘女子来到镇上，帮助农夫练习枪法，让他找回了夺回女友的信心。可是在相处中，农夫却慢慢爱上了这位神秘女子。紧接着，神秘女子的恶棍丈夫（连姆·尼森 饰演）也跟随而至，试图报复他们……<br />
<br />
　　影片主要讲述一个懦弱的农场主（塞斯·麦克法兰 饰）在决斗面前退缩，结果女友（阿曼达·塞弗里德 饰）弃他而去和另一个男人（尼尔·帕特里克·哈里斯 饰）跑了。之后这名农场主遇到了一位江洋大盗的妻子（莎莉兹·塞隆 饰），这名神秘美丽的女人教会他开枪射击，帮助他找了了勇气，两人也陷入了爱河。不过好日子没过多久，这名江洋大盗（利亚姆·尼森 饰）回来了，在他的复仇面前，农场主刚刚找回的勇气遭到了考验。<br />
<br />
<font color="red"><strong><font size="3">幕后花絮：</font></strong></font><br />
<br />
　　许多人认识塞思·麦克法兰是通过那只贱萌爆粗的泰迪熊。他第一次导演电影就获得了口碑和票房的巨大成功，直接挫败了同期上映的《宿醉2》。此前，赛思主要担任热门剧集的制作人，比如《恶搞之家》、《美国老爸》和《克里夫兰秀》，他还为这些动画剧集的许多人物献声。他创建了自己的优管动画系列。作为演员，他客串了许多电视剧，包括《吉尔莫女孩》、《家庭战争》和《FlashForward》。对科幻的喜爱将他带上了大银幕，出演了《星际迷航》和《地狱男孩》中的小人物。<br />
<br />
　　麦克法兰在最新作品中，选择了乏人问津的西部片题材。他成长在西部片的黄金年代，一直是西部片的忠实粉丝，希望效仿《今日》中的马特-劳尔制作“意大利式西部片，就像是四五十年代那些，有着约翰-福特的视野和埃尔默-伯恩斯坦的音乐。我想如果能有人将现代元素融入进去，那将是前所未有的。”不过，在他眼中，那里一定是个环境恶劣，难以生存的地方。所以，他试图让影片拥有一种经典好莱坞风格与残酷现实混合的效果。片中充斥了赛思喜爱的元素，诸如脏话连篇，令人反胃的暴力和身体分泌物（人和动物的），当然，还有查理兹-塞隆的演出。麦克法兰不否认搞这么多事，最终的目的不过是和塞隆合作。尽管塞隆曾凭借《青少年》获得金球奖提名，这部电影才算是她第一次真正出演喜剧。麦克法兰说他们在电影中的关系让他们真正“脱离了这种电影的层次。绝对找不到比塞隆更好的搭档了。她能让人做得更好。”塞隆第一次去看了自己在银幕上的表现，并感到安慰，觉得自己做了足够的努力。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：一个懦弱的农夫（塞思·麦克法兰 饰演）被人抢走了女朋友（阿曼达·塞弗里德 饰演），他的女朋友性感火辣，而农夫面对的情敌则是一个无恶不错的大坏蛋（尼尔·帕特里克·哈里斯 饰演），而且这个坏蛋枪法一流，如何打败情敌挽回女友芳心，成为农夫生命中最大的难题。这时塞隆出演的神秘女子来到镇上，帮助农夫练习枪法，让他找回了夺回女友的信心。可是在相处中，农夫却慢慢爱上了这位神秘女子。紧接着，神秘女子的恶棍丈夫（连姆·尼森 饰演）也跟随而至，试图报复他们……影片主要讲述一个懦弱的农场主（塞斯·麦克法兰 饰）在决斗面前退缩，结果女友（阿曼达·塞弗里德 饰）弃他而去和另一个男人（尼尔·帕特里克·哈里斯 饰）跑了。',N'美国',N'喜剧/西部',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617259-1-1.html',N'http://www.lwgod.com/attachment.php?aid=901920&amp;k=9fffcd6a075ca3271960970846fd6e31&amp;t=1412261726&amp;sid=41f8wy1eH9Tmql%2Bdw1kZxZM5XyA6incbk9%2BMd%2BPxy3LhAtc',N'2014/10/2 22:57:19',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 410,N'【美14好评众星喜剧】【落魄大厨】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/luopodachu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/luopodachu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　落魄大厨/五星主厨快餐车(台)/滋味旅程(港)/大厨<br />
片　　名　Chef<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　喜剧<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.4/10 from 38,044 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2883512" target="_blank">http://www.imdb.com/title/tt2883512</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.57 GB<br />
片　　长　110 Min<br />
导　　演　乔恩·费儒 Jon Favreau<br />
主　　演　乔恩·费儒 Jon Favreau ....Carl Casper<br />
　　　　　索菲娅·维加拉 Sofia Vergara<br />
　　　　　约翰·雷吉扎莫 John Leguizamo<br />
　　　　　斯嘉丽·约翰逊 Scarlett Johansson ....Molly<br />
　　　　　奥利弗·普莱特 Oliver Platt<br />
　　　　　小罗伯特·唐尼 Robert Downey Jr.<br />
　　　　　达斯汀·霍夫曼 Dustin Hoffman<br />
　　　　　鲍比·坎纳瓦尔 Bobby Cannavale<br />
　　　　　艾米·塞德丽丝 Amy Sedaris<br />
　　　　　诺亚·林伯格 Noa Lindberg ....Hungry Jogger<br />
　　　　　梅根·阿露坲 Meghan Aruffo ....Customer</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　凯尔·卡斯帕 (乔恩·费儒 饰) 是洛杉矶一家明星餐厅的当家主厨。由于无法忍受他控制欲过强的老板 (达斯汀·霍夫曼 饰)，卡尔一气之下辞掉了工作。他决定给自己放个大假，顺便找找未来的方向。凯尔来到了迈阿密。他和前妻 (索菲亚·维加拉 饰)、儿子以及好友 (约翰·雷吉扎莫 饰)一起开设了一家简陋的移动餐车。餐车上路了，卡尔试图在这样的旅程中试图修补与妻儿的关系，同时找回自己对于烹饪以及生活的热爱。影片由《钢铁侠》的导演兼演员乔恩·费儒自编自导自演，与他合作过的两位大明星小罗伯特·唐尼、斯嘉丽·约翰逊客串捧场。<br />
<br />
<font color="red"><strong><font size="3">幕后花絮：</font></strong></font><br />
<br />
　　此番，导演《钢铁侠》的著名导演乔恩-费儒再次展示了其自编自导自演的多重才华。以“落魄大厨”的身份惊艳亮相。并展示了诸多令人垂涎三尺的美味佳肴及精湛的制作工艺。从美洲的到欧洲的诸多美食，在煎锅和铁板上蒸腾出各种诱人的味道来。美食电影的诱人作用也尽显无遗。而影片本身从烹饪这个美妙的工序中散发出来的，还有诸多人生中简单而又积极的内容。人生正如一顿色香味俱佳的美食，不但要自己精心准备，还要给心爱的人喜欢。<br />
<br />
　　影片除了美食之外的另一大看点，就是影片云集的大牌明星们，各自都放下身段倾情出演这部并非商业大片的个性之作。也足见导演乔恩-费儒在圈内的号召力。除了性感“女神”斯嘉丽?约翰逊在片中饰演一个餐馆经理，同时也是欣赏乔恩-费儒的厨艺以及其本人的窈窕情人之外。还有“钢铁侠”小罗伯特-唐尼等大咖友情加盟。在曝光的一款预告片中，人们可以见到小罗伯特-唐尼版的娘炮，还有达斯汀-霍夫曼饰演的苛刻老板，美女索菲娅-维加拉饰演的性感前妻，当然也少不了另一位演技派老友约翰-雷吉扎莫都随身相伴。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：凯尔·卡斯帕 (乔恩·费儒 饰) 是洛杉矶一家明星餐厅的当家主厨。由于无法忍受他控制欲过强的老板 (达斯汀·霍夫曼 饰)，卡尔一气之下辞掉了工作。他决定给自己放个大假，顺便找找未来的方向。凯尔来到了迈阿密。他和前妻 (索菲亚·维加拉 饰)、儿子以及好友 (约翰·雷吉扎莫 饰)一起开设了一家简陋的移动餐车。餐车上路了，卡尔试图在这样的旅程中试图修补与妻儿的关系，同时找回自己对于烹饪以及生活的热爱。影片由《钢铁侠》的导演兼演员乔恩·费儒自编自导自演，与他合作过的两位大明星小罗伯特·唐尼、斯嘉丽·约翰逊客串捧场。幕后花絮：此番，导演《钢铁侠》的著名导演乔恩-费儒再次展示了其自编自导自演的多重才华。',N'美国',N'喜剧',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617602-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902526&amp;k=d73d4afb6027b1628552df78ef383b02&amp;t=1412261726&amp;sid=d02aaKgavZbF5LWRSofzWNX4fwN%2Fo%2BgzdN2PBE3dA5gW9Po',N'2014/10/2 22:57:19',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 411,N'【中14最新众星演绎票房大片】【闺蜜】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/guimi/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.28/guimi/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　闺蜜<br />
片　　名　Girls<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　喜剧/爱情<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　1.16 GB<br />
片　　长　118 Min<br />
导　　演　黄真真 Babara Wong<br />
主　　演　薛凯琪 Fiona Sit ....Kimmy<br />
　　　　　陈意涵 Ivy Chen ....希汶<br />
　　　　　杨子姗 Zishan Yang ....小美<br />
　　　　　吴建豪 VanNess Wu ....九天<br />
　　　　　余文乐 Shawn Yue ....乔立<br />
　　　　　钟汉良 Wallace Chung ....林杰</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　《闺蜜》讲述的是由陈意涵饰演的希汶、薛凯琪饰演的Kimmy、杨子姗饰演的小美三个女孩之间20余年的闺蜜情。三个女孩年纪相仿，性格各异，希汶作为乖乖女，对人生有着自己的计划，希望28岁结婚，30岁生小孩，蜜月要去巴黎，结婚前要买好房子；Kimmy则在广告公司大展拳脚，她从来都不相信爱情，男人对于她而言只是生理需求，外表坚强内心却充满孤独；小美则是一个特立独行的文艺女青年，人生最大的梦想是要当一名导演，为了实现这个梦想可以放弃一切。正是这样如同从现实中走上银幕的三个女孩同样也面临着失望、迷茫、无望、嫉妒、争吵、无奈，也正是因为闺蜜之间细腻而又绵长的情感，冲淡了人生中的悲苦，可以一起疯狂一起悲伤一起笑对人生。<br />
<br />
　　希汶（陈意涵 饰）、Kimmy（薛凯琪 饰）和小美（杨子珊 饰）一直是无话不谈的闺蜜，三人大学毕业后开始了同居生活。乖乖女希汶的生活重心全放在了相爱7年的未婚夫林杰（钟汉良 饰）身上，可随着林杰的出轨，三姐妹的生活全被打乱了。无男不欢的白富美Kimmy和酷酷的小美不得不全天候照顾因失恋而混乱的希汶，但是她们俩为闺蜜的两肋插刀都比不上暖男乔立（余文乐 饰）的出现。当希汶正为乔立的性取向怀疑时，Kimmy和小美却陷入了与摇滚音乐人九天（吴建豪 饰）的三角恋中，并随着九天赴美国的演唱会而变得白热化，希汶与Kimmy都不支持小美和九天的恋情，而且小美要坚持与九天一起去演唱会，就不得不放弃现有的副导演工作。三人的友情危机一触即发，小美最终会何去何从？<br />
<br />
　　导演黄真真也出演了本片，扮演了自己，并且还原了自己的纪录片代表作《女人那话儿》的拍摄现场。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　黄真真打造金牌团队 电影《闺蜜》打破格局将引领时代继《被偷走的那五年》大获成功后，此次黄真真导演更是有备而战，据悉电影《闺蜜》的主创团队中囊括了曾凭借《赛德克·巴莱》、《艋胛》等影片9次问鼎台湾金马奖最佳音效、录音等奖项的杜笃之、凭借电影《梁祝》荣获第14届香港电影金像奖最佳电影配乐奖的著名音乐人雷颂德、凭借《赛德克·巴莱》获第48届台湾电影金马奖最佳造型设计提名的造型林欣宜、曾参与过电影《饮食男女2012》、《第36个故事》、《女朋友·男朋友》等影片的美术设计，并获得第47届金马奖最佳美术设计提名的李敦纲以及凭借电影《重庆森林》《墨攻》《寒战》等影片多次获得香港电影金像奖的剪辑师邝志良。黄真真导演表示，之所以会聚集大家，打造这样一个黄金团队，是因为想做一部高水准精制作的影片。相关人士透露，电影《闺蜜》无论从剧情、画面、表演、以及影片传递的信息等等都是打破了现有的格局，相信电影《闺蜜》与观众见面后，将引领一个全新的电影时代。<br />
<br />
　　继《被偷走的那五年》成功后，此次黄真真导演更是有备而战，据悉电影《闺蜜》的主创团队中囊括了曾凭借《赛德克·巴莱》、《艋胛》等影片9次问鼎台湾金马奖最佳音效、录音等奖项的杜笃之，凭借电影《梁祝》荣获第14届香港电影金像奖最佳电影配乐奖的著名音乐人雷颂德，凭借《赛德克·巴莱》获第48届台湾电影金马奖最佳造型设计提名的造型林欣宜，曾参与过电影《饮食男女2012》、《第36个故事》、《女朋友·男朋友》等影片的美术设计，并获得第47届金马奖最佳美术设计提名的李敦纲以及凭借电影《重庆森林》、《墨攻》、《寒战》等影片多次获得香港电影金像奖的剪辑师邝志良。黄真真导演表示，之所以会聚集大家，打造这样一个黄金团队，是因为想做一部高水准精制作的影片。<br />
<br />
　　黄真真导演作品《闺蜜》2014年7月30日全球公映后，拿下首日1650万票房，占当天总票房1/5。良好的票房开局更被各大影院看好，给予了可观排片。截止2014年8月4日仅仅上映5天的《闺蜜》票房已达1.16亿。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·影片中一心想做电影导演的小美拍摄的电影就是导演黄真真的出道名作——《女人那话儿》。黄真真也坦言小美有她年轻时候的影子。<br />
<br />
·虽然主题是闺蜜情，但黄真真的作品依然不乏重口味元素。片中有不少女性大尺度话题的讨论，以及女生平时羞于说出口的两性话题。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：《闺蜜》讲述的是由陈意涵饰演的希汶、薛凯琪饰演的Kimmy、杨子姗饰演的小美三个女孩之间20余年的闺蜜情。三个女孩年纪相仿，性格各异，希汶作为乖乖女，对人生有着自己的计划，希望28岁结婚，30岁生小孩，蜜月要去巴黎，结婚前要买好房子；Kimmy则在广告公司大展拳脚，她从来都不相信爱情，男人对于她而言只是生理需求，外表坚强内心却充满孤独；小美则是一个特立独行的文艺女青年，人生最大的梦想是要当一名导演，为了实现这个梦想可以放弃一切。正是这样如同从现实中走上银幕的三个女孩同样也面临着失望、迷茫、无望、嫉妒、争吵、无奈，也正是因为闺蜜之间细腻而又绵长的情感，冲淡了人生中的悲苦，可以一起疯狂一起悲伤一',N'中国',N'喜剧/爱情',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-618450-1-1.html',N'http://www.lwgod.com/attachment.php?aid=904052&amp;k=3108eb8c7ccdec46d63ac4c272af0a85&amp;t=1412261728&amp;sid=5f19vqpK05uT%2FTnmhedADnnEsGBS76wuxJ6LA1d9LwKtNgs',N'2014/10/2 22:57:19',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 412,N'【张家辉14新超吓人】【盂兰神功】【BluRay-720P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/shengong/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/shengong/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　盂兰神功/盂蘭神功<br />
片　　名　Hungry Ghost Ritual<br />
年　　代　2014<br />
国　　家　中国香港<br />
类　　别　惊悚/恐怖<br />
语　　言　<font color="red"><font size="3">国语粤语双音轨</font></font><br />
字　　幕　中文简繁<br />
评　　分　5.9/10 from 49 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3830194" target="_blank">http://www.imdb.com/title/tt3830194</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.15 GB<br />
片　　长　82 Min<br />
导　　演　张家辉 Nick Cheung<br />
主　　演　张家辉 Nick Cheung<br />
　　　　　刘心悠 Annie Liu<br />
　　　　　李元玲 Cathryn Lee<br />
　　　　　吴家丽 Carrie Ng<br />
　　　　　林威 Wai Lam</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　农历七月为中国的盂兰鬼节，传说在这个月份，阴间中门大开，游魂野鬼会到阳间“游玩”，为了令“它们”无暇四出寻找替身，戏班会在农历的七月十五至十七，於空地上搭起竹棚戏台上演神功戏，娱乐四方鬼神。<br />
<br />
　　彩排室内，二帮花旦阿敏和武生贵哥正为快将开锣的神功戏彩排，老班主啸天 （林威 饰） 聚精会神地看着大戏，忽然在二胡声中，彩排室的大门被推开，走进来的是啸天出走多年的儿子宗华 （张家辉 饰）。啸天重见儿子喜不自胜，但宗华离家拼搏多年，最後落得生意失败的下场无奈回家，非常失意，加上同母异父的妹妹晶晶不断奚落，令宗华更加难受。<br />
<br />
　　开戏前夕，啸天突然心脏病发入院，危急间只能将剧团交给宗华带领，剧团的花旦小燕 （刘心悠 饰）感激班主多年来知遇之恩，故落力协助宗华这个外行人接管剧团，演出神功戏，双方更互有好感。自宗华加入剧团，除了要面对各团员的冷淡对待及单打外，更感到剧团的气氛诡异，怪事连连。医院内，宗华遇上负责运送屍体的女工，对方警告宗华要在这个农历七月份外小心……其後宗华渐渐在家里、戏棚甚至走在街上，都不断看到不可思议的景像，有几次更差点令宗华吓破胆及有生命危险。愈是接近开锣日期，晶晶、小燕及其他团员都不时做出怪异及无法解释的行为，宗华不明所以，为保众人安全唯有提出取消演出。然而锣鼓声中，无论宗华愿不愿意，一场恐怖的戏码其实已一早在暗中上演……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：农历七月为中国的盂兰鬼节，传说在这个月份，阴间中门大开，游魂野鬼会到阳间“游玩”，为了令“它们”无暇四出寻找替身，戏班会在农历的七月十五至十七，於空地上搭起竹棚戏台上演神功戏，娱乐四方鬼神。彩排室内，二帮花旦阿敏和武生贵哥正为快将开锣的神功戏彩排，老班主啸天 （林威 饰） 聚精会神地看着大戏，忽然在二胡声中，彩排室的大门被推开，走进来的是啸天出走多年的儿子宗华 （张家辉 饰）。啸天重见儿子喜不自胜，但宗华离家拼搏多年，最後落得生意失败的下场无奈回家，非常失意，加上同母异父的妹妹晶晶不断奚落，令宗华更加难受。开戏前夕，啸天突然心脏病发入院，危急间只能将剧团交给宗华带领，剧团的花旦小燕 （刘心悠',N'中国香港',N'惊悚/恐怖',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617231-1-1.html',N'http://www.lwgod.com/attachment.php?aid=901915&amp;k=a7a34754b2ab61372c0a19a4fe5ccd06&amp;t=1412261727&amp;sid=26a4q064lU443YqXLhpXZ6D%2Fsisnhx1NBwiGsPFNuoWHQuY',N'2014/10/2 22:57:19',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 413,N'【性感美女超火爆】【性感女特工1】【BluRay-720P.MKV】【中英】',N'<font color="blue"><font size="5">高码原盘高参重新压制！质量比之前发布版本好太多！<br />
想看的建议重下！本片比续集评价好很多，片子应该还不错！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/xiaomao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.19/xiaomao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　性感女特工/公路杀手/小猫快跑(未分级加长版)<br />
片　　名　Cat Run<br />
年　　代　2011<br />
国　　家　美国<br />
类　　别　动作/喜剧<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　5.5/10 from 3,758 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1446147" target="_blank">http://www.imdb.com/title/tt1446147</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.77 GB<br />
片　　长　106 Min<br />
导　　演　约翰·斯托克韦尔 John Stockwell<br />
主　　演　帕兹·维嘉 Paz Vega ....Catarina<br />
　　　　　斯科特·麦克洛维茨 Scott Mechlowicz ....Anthony<br />
　　　　　珍妮·麦克蒂尔 Janet McTeer ....Helen Bingham<br />
　　　　　克里斯托弗·麦克唐纳 Christopher McDonald ....Krebb<br />
　　　　　托尼·库兰 Tony Curran ....Sean Moody<br />
　　　　　卡瑞尔·罗登 Karel Roden ....Daniel Carver<br />
　　　　　Michelle Lombardo ....Stephanie<br />
　　　　　D·L·休利 D.L. Hughley ....Dexter<br />
　　　　　布兰科·德加力奇 Branko Djuric ....Hamilton<br />
　　　　　Jelena Gavrilovic ....Grushenka<br />
　　　　　安娜·萨科奇 Ana Sakic ....Woman<br />
　　　　　阿方索·麦克奥雷 Alphonso McAuley ....Julian</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片讲述了一名女特工手中掌握了政府掩盖犯罪的证据，此时两位年轻的私家侦探也卷入其中……<br />
<br />
　　对于安东尼（斯科特·麦克洛维茨 Scott Mechlowicz 饰）来说，成为一名成功的厨师是他的毕生志愿，怀揣着这个梦想，安东尼来到了南斯拉夫，准备在这里开一家小餐厅。没想到，不但餐厅没开成，安东尼还和偶遇的好友朱利安（阿方索·麦克奥雷 Alphonso McAuley 饰）一起干起了私家侦探的活计。众所周知，朱利安是个好色的花花公子，和这样的伙伴一起创业真的没有问题吗？<br />
<br />
　　一个名叫卡塔琳娜（帕兹·维嘉 Paz Vega 饰）的美艳女子出现在了安东尼和朱利安的面前，声称因为掌握了一份绝密的情报而身处危险之中，这两个连自身都难保的大男人能够保护卡塔琳娜吗？两人此时还不知道的是，他们已经成为了冷酷杀手海伦（珍妮·麦克蒂尔 Janet McTeer 饰）的下一个目标。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　一部故事层次繁杂的动作喜剧《性感女特工》讲述的是一个混合了多种电影元素的喜剧故事，充斥的是各种放肆又漠视道德的滑稽时刻，由资深的电影人约翰·斯托克韦尔（John Stockwell）执导……<br />
<br />
　　在影片中饰演了其中的一位笨蛋侦探安东尼的是斯科特·麦克洛维茨（Scott Mechlowicz），他先是通过2004年的一部《欧洲性旅行》（EuroTrip）突然走进了大家的视野，还有一部于同一年上映的独立影片《湖群狗党》（Mean Creek）——虽然事实证明麦克洛维茨并不是一个很多产的演员，可是却无法掩盖他才华横溢的表演天分，而这一切都是由他过分挑剔和讲究的性格决定的，麦克洛维茨承认道：“有的时候，你不得不做出属于自己的选择，包括你的事业未来的发展方向，在单纯的工作和你真正想要做的事情之间衡量得失，因为你最不应该做的就是为了工作而工作。在这样的想法的制约下，我发现自己经常会置身于一个左右为难的境地，那就是要不要继续等下去，只为了一个不知何时会出现的深得人心的好的电影素材？毫无疑问，这有效地制止了我时常处在工作中的忙碌状态，也让我有了更多的时间去思考，继而了解自己真正企盼的到底是什么。” 在经过相应的反思与沉淀之后，斯科特·麦克洛维茨做选择的时候也显得更加地随心所欲了，而他一眼就从《性感女特工》中看到了自己一直在苦苦寻找的特质，麦克洛维茨说：“当我第一次读到剧本的时候，我意识到这是一个拥有着狂野的想象力的电影故事，不过在发展的过程中，里面的很多内容都做出了更符合要求的调整和改变，几乎每一天都有全新的元素被添加进来，可以说我们一直是在进化中的……<br />
<br />
　　我之所以对安东尼这个角色如此地着迷，是因为我发现能从他的身上挖掘出很多完全不同的动态联系，说实话，这是一次非常具有趣味性的经历。最开始的是时候，安东尼是一个过着相对闭塞生活的宅男，然后，他离开了他的家人，来到一个陌生的地方——本来，他是想开一间属于自己的餐馆的，结果却和他的童年好友意外结成了侦探搭档。他们正在追踪的这个女孩是一名妓女，由于她亲眼目睹了政府所实施的一场阴谋和一起谋杀，而受到了来自于各个势力层面的人的穷追不舍。随着时间的推移，安东尼不得不将自己身上的所有潜能全部开发出来，还得自行发展和进步——不过他一下子还不能完全为它们找到合适的发泄渠道，所以他会变得有点失去控制。” 确实，任何人做事都会有一个从陌生到熟悉的循序渐进的过程，虽然是在一种迫不得已的情况下，安东尼才卷入了这一系列麻烦当中的，可是对于斯科特·麦克洛维茨来说，看着他如何从笨手笨脚到得心应手的过程，确实是一种非常棒的体验。安东尼其实是一个非常精明、有想法的人，只不过他对生活付诸是一种很不可思议的怪异观点而已——尤其是在一组场景中，当他优雅又斯文地请求帕兹·维嘉（Paz Vega）饰演的卡塔琳娜不要偷他的车的时候，似乎就是在对这个人物做出一次最为恰到好处的总结，麦克洛维茨形容道：“那一部分的描述确实是非常具有趣味性，也是我最满意的与这个角色有关的内容……<br />
<br />
　　不过在我看来，这个人物并没有得到充分的发挥，我本来可以将他刻画的更有深度的，但就一部电影而言，毕竟需要的是团队作业，不可能给其中的一个角色太过自我的空间，所以为了帮助故事稳定整体的结构和节奏，我们不得不牺牲掉最初的时候为安东尼设置好的一些完全不同的性格层面。不过即使如此，他仍然在影片中完成了很多非常滑稽的时刻，而这正好也是我最初被这个人物深深吸引的原因之一。” 虽然影片中并没有对安东尼为何如此内向、避世做出详细的解释，可是随着故事的发展，我们多多少少能够从点滴的片断中获悉一些相关的信息，斯科特·麦克洛维茨说：“我想安东尼之所以会变成今天这样，与他之前的一些遭遇有着密不可分的联系……他的妈妈去世了，再加上他和他的兄弟之间令人难堪的财政状况——他们的信托基金被取消了，包括家族的生意也是一蹶不振，最终以破产的命运收场，所有的这一切，都成了促使他走进这样一个脱离传统的局面的直接动力，也间接地说明了他为什么会避免一切与人接触的机会和可能性。” 极富喜剧敏感度的电影人物《性感女特工》所讲述的故事涉及了欧洲很多不同的地方，虽然是在独立制作的有限的预算体制下，但影片的幕后电影人团队还是决定选择几处可行的位置进行实地拍摄，斯科特·麦克洛维茨描述道：“我们分别去了贝尔格莱德、塞尔维亚和门的内哥罗——那里实在是太美了，因为我们拜访的全部都是拥有着华美、宏伟的建筑物的很有中世纪风格的小城镇。然后，当我们抵达南斯拉夫的首都贝尔格莱德的时候，又被这里浓厚的历史气息和互相冲撞的抵触给深深地吸引住了，就我们每一个人而言，这无疑都是一场非常独特的经历和体验。”<br />
<br />
　　珍妮·麦克蒂尔（Janet McTeer）在影片中饰演的是一名冷血杀手，不过最可笑的是，她的扮相看起来就好像是《欢乐满人间》（Mary Poppins）里的玛丽·波平斯，既奇妙又欢闹，包括武斗和对打的场景在内，制造出的全部都是一些非凡且卓越的神奇效果，斯科特·麦克洛维茨说：“麦克蒂尔是我所见过的最令人惊叹的女演员，她本身就是一个大美女，如今配上了武器，显得更加地火辣了……我发现一个特别有意思的现象，如果与你合作的是一个像她这么多才多艺的表演艺术家的话，总是可以激发出你更加优秀的一面，感觉上真的是太酷了。从始至终，麦克蒂尔都显得很兴奋，包括她的聪明才智——不管是戏里还是戏外，与她对戏都是一个异常享受的过程。” 安东尼的侦探搭档朱利安的扮演者是阿方索·麦克奥雷（Alphonso McAuley），同样是一个糊涂的倒霉蛋，作为童年时代的好朋友，你能从他们之间的关系上感受到的是很亲密的哥们情谊，斯科特·麦克洛维茨解释道：“为了能够更融洽的相处，在影片正式开拍之前，我和麦克奥雷进行了好几次私人化的会面，我们真的非常地合得来，所以总是找机会、找借口出来玩……麦克奥雷是一个精力异常充沛的小伙子，能和他这样的人合作，真的是一次非常伟大的体验，不仅能够推动我们影片的前进速度，还以一种想象不到的方式鼓励了在场的每一位工作人员和演员——我们每一天都感到很快乐，而这都是因为有麦克奥雷的存在。” 导演约翰·斯托克韦尔以前就是演员出身，曾经出演过像《壮志凌云》（Top Gun）这种非常受欢迎的动作大片，而他丰富的表演经验，就成了《性感女特工》需要依靠的另外一种财富，斯科特·麦克洛维茨说：“我一直都对表演领域走出来的导演印象深刻，因为他们对演员的理解和同情，是其他人所不能比拟的……如果你之前曾做过演员，即使现在转型当导演，中间可能会有的某些心领神会的默契是不会因此就有所转变的。斯托克韦尔的背景只会让他更加熟练且巧妙地去操纵一些场景，还有他在镜头的运用方面，总是能制造出不可思议的动态效果——等把这一切全部结合在一起之后，我们就得到了一部相当优秀的电影作品。”<br />
<br />
　　在《性感女特工》拍摄的过程中，包括演员与工作人员在内，他们共同经历了很多疯狂且不敢想象的遭遇，其中之一就是食物中毒所造成的集体缺席，斯科特·麦克洛维茨回忆道：“现在回想起来仍然觉得有点难以置信，感觉上很像是有人在我们中间投放了一颗毒气弹，基本上有一周的时间，我们都没办法做任何事，只能和厕所打交道……我们当时是在塞尔维亚，这次集体中毒事件一下子就削减了我们80%的战斗力，我们一直在找医院，却发现任何一间大一点的医院都是人满为患。我们甚至还意外地走进了一家已经倒闭的儿童医院，里面又脏又可怕，简直好像是来到了一个杀人电影的现场——不过总的来说，我们都将此当成了一个非常有趣的小插曲。” 很多人都对这部影片的片名产生了非常好奇的心理，因为他们发现故事的内容与这样的标题似乎全然没有什么关联性，确实是很容易让人对此产生迷惑的猜测，斯科特·麦克洛维茨说：“事实上，我们的影片最初的时候并不叫《性感女特工》，而是使用的另外一个更加贴切的名字——《公路杀手》（Roadkill）。随后，对片名的抉择问题前前后后至少出现了20个不同的版本，最终才决定使用《性感女特工》的，我觉得这个名字很有趣，简单好记，而且一看就是一部紧张、火爆的动作电影，最最重要的是，它不会有任何泄漏影片细节的可能性。” 《性感女特工》最大的特点，就是以一种几近于完美的故事形态，将多个不同的电影元素糅合在了一起，而且不会出现任何不伦不类的不协调感，斯科特·麦克洛维茨表示：“这部影片展现出来的是与讲故事有关的完全不一样的多面性，就算是把它称之为‘大杂烩’也不为过。所以我觉得它适合任何背景的观众群体，不管你的电影品味是什么样的，高端的也好，世俗的也罢，都能从我们所描述的内容中找到属于自己的快乐与趣味性……还有我们采用的极度狂热的故事节奏，也在不断地加速、升温当中，直到所有的一切再也没办法停下来为止，势必会深深地吸引住你的注意力，让你再也无法移开目光。”<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：影片讲述了一名女特工手中掌握了政府掩盖犯罪的证据，此时两位年轻的私家侦探也卷入其中……对于安东尼（斯科特·麦克洛维茨 Scott Mechlowicz 饰）来说，成为一名成功的厨师是他的毕生志愿，怀揣着这个梦想，安东尼来到了南斯拉夫，准备在这里开一家小餐厅。没想到，不但餐厅没开成，安东尼还和偶遇的好友朱利安（阿方索·麦克奥雷 Alphonso McAuley 饰）一起干起了私家侦探的活计。众所周知，朱利安是个好色的花花公子，和这样的伙伴一起创业真的没有问题吗？一个名叫卡塔琳娜（帕兹·维嘉 Paz Vega 饰）的美艳女子出现在了安东尼和朱利安的面前，声称因为掌握了一份绝密的情报而身处危险之中',N'美国',N'动作/喜剧',N'1280 x 720',N'2011',N'http://www.lwgod.com/thread-617592-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902500&amp;k=bff16cfb73b73a90c08f20724de476a3&amp;t=1412261727&amp;sid=301bf6%2FtrDUf%2Bx%2FN944L4t43U63JgHq9D36xZ%2FSACW3b2s0',N'2014/10/2 22:57:19',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 414,N'【美14全球最受期待】【变形金刚4】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/bianxingjingang4/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.23/bianxingjingang4/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　变形金刚4：绝迹重生/变形金刚：歼灭世纪(港)/变形金刚4：灭绝时代/变形金刚4/变4<br />
片　　名　Transformers: Age of Extinction<br />
年　　代　2014<br />
国　　家　美国/中国<br />
类　　别　动作/冒险/科幻<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.1/10 from 111,037 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2109248" target="_blank">http://www.imdb.com/title/tt2109248</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　5.24 GB<br />
片　　长　165 Min<br />
导　　演　迈克尔·贝 Michael Bay<br />
主　　演　马克·沃尔伯格 Mark Wahlberg ....凯德·伊格尔 Cade Yeager<br />
　　　　　妮可拉·佩尔茨 Nicola Peltz ....泰莎·伊格尔 Tessa Yeager<br />
　　　　　杰克·莱诺 Jack Reynor ....肖恩 Shane<br />
　　　　　李冰冰 Bingbing Li ....苏月明 Su Yueming<br />
　　　　　斯坦利·图齐 Stanley Tucci ....约书亚 Joshua<br />
　　　　　凯尔希·格兰莫 Kelsey Grammer ....哈罗德·艾汀格 Harold Attinger<br />
　　　　　提图斯·维里沃 Titus Welliver .... 萨沃伊 Savoy<br />
　　　　　索菲亚·迈尔斯 Sophia Myles ....达茜 Darcy<br />
　　　　　T·J·米勒 T.J.Miller ....卢卡斯 Lucas<br />
　　　　　彼特·库伦 Peter Cullen ....擎天柱 Optimus Prime (voice)<br />
　　　　　约翰·古德曼 John Goodman ....探长 Autobot Hound (voice)<br />
　　　　　渡边谦 Ken Watanabe ....漂移 Drift (voice)<br />
　　　　　约翰·迪·玛吉欧 John Di Maggio ....十字线 Crosshairs (voice)<br />
　　　　　罗伯特·福克沃斯 Robert Foxworth ....救护车 Ratchet (voice)<br />
　　　　　弗兰克·维尔克 Frank Welker ....惊破天 Galvatron (voice)<br />
　　　　　马克·瑞安 Mark Ryan ....禁闭 Lockdown (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　故事发生在前作芝加哥终极决战四年后，汽车人与霸天虎从地球销声匿迹，而人类也在断壁残垣的废墟中开始了新生。然而，一群手握大权的商人联合天才科学家，意欲通过那场入侵打破壁垒，研发出他们实则难以驾驭的全新技术。与此同时，地球也遭受到了一个古老而强大的变形金刚的威胁恫吓，关乎自由与奴役的正邪史诗决战一触即发……<br />
<br />
　　当年那场惨烈的芝加哥大战，汽车人虽然成功击退了霸天虎的入侵，却也让地球人对他们失去了应有的信任与尊重。由美国中情局组建的“墓风”部队对所有的变形金刚进行无差别的猎杀，一时间汽车人和霸天虎全都在地球不见了踪影。某天，居住在得州的落魄机械发明家凯德·伊格（马克·沃尔伯格 Marky Mark 饰）买回来一辆破旧的卡车车头，谁知那竟是处在休眠中的汽车人首领擎天柱。嗅到气息的墓风部队蜂拥而至，苏醒后的擎天柱救走了凯德一家，也和散落在各个角落的汽车人相继取得联系。另一方面，疯狂的人类科学家从变形金刚的残骸中获知了他们变形的秘密，并企图借此制造出人造金刚，而脱胎自威震天的惊破天正是他们的得意作品以及催命死神。<br />
<br />
　　新一轮的危机卷土而来，地球面临更大的灾难……<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·迈克尔·贝决定回归《变4》是因为他在新加坡的环球影城看到人们愿意为变形金刚排3个小时的队，他不想让经验不足的导演拍，以保证影片质量。<br />
<br />
·汽车厂商们让他们最招摇的车型飞去迈克尔·贝的办公室，以确保这些车能在电影中有一席之地。<br />
<br />
·迈克尔·贝曾想让巨石强森加盟，可惜时间表有冲突，不然《健男抢钱团》的两位男主就要重聚了。<br />
<br />
·这部影片大约将有18个新变形金刚角色。<br />
<br />
·迈克尔·贝的手下所有人算在一起，拥有850年的电影产业从业经验。<br />
<br />
·《变4》是首部采用4K IMAX 3D摄影机拍摄的电影，一台摄影机就价值100万美元。<br />
<br />
·价值百万美元的4K IMAX 3D摄影机被安装在了价值5万多美金的保时捷卡宴顶部。<br />
<br />
·迈克尔·贝将重新设计变形金刚比喻为“就像蝙蝠侠在每部电影里都会获得新战甲一样”。<br />
<br />
·迈克尔·贝从一开始就设想了一系列在香港发生的情节，而不是为中国观众“特供”一些片段。<br />
<br />
·美国军方这次在影片中的“角色”不会很大。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：故事发生在前作芝加哥终极决战四年后，汽车人与霸天虎从地球销声匿迹，而人类也在断壁残垣的废墟中开始了新生。然而，一群手握大权的商人联合天才科学家，意欲通过那场入侵打破壁垒，研发出他们实则难以驾驭的全新技术。与此同时，地球也遭受到了一个古老而强大的变形金刚的威胁恫吓，关乎自由与奴役的正邪史诗决战一触即发……当年那场惨烈的芝加哥大战，汽车人虽然成功击退了霸天虎的入侵，却也让地球人对他们失去了应有的信任与尊重。由美国中情局组建的“墓风”部队对所有的变形金刚进行无差别的猎杀，一时间汽车人和霸天虎全都在地球不见了踪影。某天，居住在得州的落魄机械发明家凯德·伊格（马克·沃尔伯格 Marky Mark 饰）',N'美国/中国',N'动作/冒险/科幻',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617989-1-1.html',N'http://www.lwgod.com/attachment.php?aid=903483&amp;k=53ee3e882510b6710e28405dc17d9dc8&amp;t=1412261729&amp;sid=4d55MtEiFYqHZDLHe4PbRy%2BL7eTWkum%2FcoG6qAMuZlI9NKM',N'2014/10/2 22:57:20',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 415,N'【中14超好评高分必看动作】【绣春刀】【HD-1024.MP4】【国语】',N'<font color="blue"><font size="5">豆瓣网7.6分高分！国产片里难得的高分大作！<br />
建议大家不要错过了！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xiuchundao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.15/xiuchundao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　绣春刀/飞鱼服绣春刀/斩立决<br />
片　　名　Brotherhood of Blades<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　动作/悬疑/武侠/古装<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
评　　分　7.0/10 from 38 users<br />
链　　接　<a href="http://www.imdb.com/title/tt4019426" target="_blank">http://www.imdb.com/title/tt4019426</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　1.04 GB<br />
片　　长　107 Min<br />
导　　演　路阳 Yang Lu<br />
主　　演　张震 Zhen Zhang ....沈炼<br />
　　　　　刘诗诗 Cecilia Liu ....周妙彤<br />
　　　　　王千源 Qianyuan Wang ....卢剑星<br />
　　　　　李东学 Dong Xue Li ....靳一川<br />
　　　　　聂远 Yuan Nie ....赵靖中<br />
　　　　　金士杰 Shijie Jin ....魏忠贤<br />
　　　　　朱丹 Dani ....魏廷<br />
　　　　　周一围 Yiwei Zhou ....丁修<br />
　　　　　叶青 Qing Ye ....张嫣<br />
　　　　　赵立新 Lixin Zhao ....韩旷</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　明崇祯皇帝登基，大太监魏忠贤（金世杰 饰）及其“阉党”被锦衣卫倾巢覆灭。锦衣卫中以卢剑星（王千源 饰）、沈炼（张震 饰）和靳一川（李东学 饰）三结拜兄弟最为勇猛正直。老大卢剑星为了升官百户，沈炼为替教坊司妓女周妙彤（刘诗诗 饰）赎身，三弟靳一川为摆脱浪人丁修（周一围 饰）的纠缠，三兄弟决定接受东厂都督赵靖忠（聂远 饰）追杀魏忠贤的秘密行动。行动中三人遭到魏忠贤义女魏廷（朱丹 饰）带队阻拦，一场腥风血雨后魏忠贤尸首被带回，卢剑星如愿以偿升官百户，本以为三人夙愿皆能实现，但没想到沈炼竟然隐瞒了一个天大的秘密，并且引起了大臣韩旷（赵立新 饰）的怀疑。此后三兄弟都面临着生命危险，沈炼终于说出真相但为时已晚，与一川相好的医馆女子（叶青 饰）和周妙彤都被牵连其中。面对危机，沈炼决意带着兄弟、爱人离开京城，朝廷腐朽混乱，小人物的命运将何去何从？<br />
<br />
　　明朝崇祯皇帝登基后，权倾天下的大太监魏忠贤被弹劾辞官，阉党覆灭。锦衣卫授命追捕阉党，这一任务被指派给卢剑星（王千源 饰）、沈炼（张震 饰）、靳一川（李东学 饰）。这三人是结拜兄弟，不料想这桩不错的差事，却为后来三人的命运转变埋下了隐患。<br />
<br />
　　卢剑星、沈炼、靳一川三人各有特点，也各有心事。大哥卢剑星沉着稳重，一心想达成父亲的意愿成为锦衣卫百户；二哥沈炼内敛隐忍，做人做事一心为兄弟着想，暗恋着沦落教坊司的女子周妙彤（刘诗诗 饰）；三弟靳一川则有着不可告人的过去，被师兄丁修（周一围 饰）暗中勒索。<br />
<br />
　　三兄弟奉命追杀魏忠贤（金世杰 饰），一场殊死搏斗之后，带回了大太监魏忠贤的尸首，本以为凭此大功，三人的夙愿皆可实现。但随着，验尸、阉党报仇等事件的发生，三人沦为众矢之的，危险也越来越大……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　电影名称<br />
<br />
　　飞鱼服和绣春刀其实都是明朝锦衣卫的标准配置，飞鱼服是锦衣卫的制服，而绣春刀则是锦衣卫的看起来很浪漫，实际很恐怖的武器，而三位主演在片中都使用”绣春刀“，片名也由此得来。<br />
<br />
　　创作背景<br />
<br />
　　电影的故事的来源于日本作家司马辽太郎的《冲田总司之恋》，路阳看后很有感触。原作以边缘人的普通情感为主，到了路阳的笔下，故事的核心变为边缘武者对操弄自己的命运的抵抗，爱情仍然重要，但不是核心了。<br />
<br />
　　他在做《盲人电影院》同时已经写完了《绣春刀》的故事雏形，剧本写好是2010年。路阳想拍《绣春刀》时，有公司劝他将古装剧改成现代戏，尽管经费不足，但依旧没有同意。也正因为没有人投资，没有演员和发行方愿意合作。2012年底，原本不抱希望的路阳成功地说服了演员张震，也因此有了中影的3000万投资。<br />
<br />
　　拍摄时，路阳一开始很镇定，他自认为对整个电影烂熟于心，但真正拍起来，这笔钱还是让他崩溃。他尝试用好莱坞电影（比如《谍影重重》）的节奏而非传统武侠片的叙事来调动这部电影，这就需要大量的、快速的镜头。碍于经费他们的拍摄周期只有67天，所以一天下来必须完成四五十个镜头，最夸张的一天拍了一百个，而一个剧组正常的工作量，一天一般只完成十到二十个镜头。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·拍摄现场非常诡异，尸横遍地，一片血腥，锦衣卫的“屠人场”即便在白天也透着几分阴森可怖的感觉。<br />
<br />
·演员王千源首次拍摄打戏，也与张震一同练习武术，为演大哥还要粘“胡子”。<br />
<br />
·拍摄时演员不仅要面对戏外 “三伏天”的高温环境，还要穿上里三层外三层的戏服，李东学因此调侃自己是“十斤戏服二斤汗”。<br />
<br />
·在《绣春刀》中，张震所使用的武器以刀为主。提前进组半个月，跟随武指桑林专门做刀法训练。<br />
<br />
·虽然都是使用绣春刀，但也有不同之处，李东学用的是双刀，大哥王千源用的是斩马刀，二哥张震的刀最接近绣春刀原型，但是又配了个短弩。<br />
<br />
·朱丹饰演的魏廷虽是一个女性角色，但是魏忠贤一直将她当儿子养，所以在片中她都是男性化打扮出镜。<br />
<br />
·王千源在拍摄骑马戏时，屁股被磨掉一层皮，睡觉都要趴着睡。<br />
<br />
·这部影片中王千源首次拍摄动作戏。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：明崇祯皇帝登基，大太监魏忠贤（金世杰 饰）及其“阉党”被锦衣卫倾巢覆灭。锦衣卫中以卢剑星（王千源 饰）、沈炼（张震 饰）和靳一川（李东学 饰）三结拜兄弟最为勇猛正直。老大卢剑星为了升官百户，沈炼为替教坊司妓女周妙彤（刘诗诗 饰）赎身，三弟靳一川为摆脱浪人丁修（周一围 饰）的纠缠，三兄弟决定接受东厂都督赵靖忠（聂远 饰）追杀魏忠贤的秘密行动。行动中三人遭到魏忠贤义女魏廷（朱丹 饰）带队阻拦，一场腥风血雨后魏忠贤尸首被带回，卢剑星如愿以偿升官百户，本以为三人夙愿皆能实现，但没想到沈炼竟然隐瞒了一个天大的秘密，并且引起了大臣韩旷（赵立新 饰）的怀疑。此后三兄弟都面临着生命危险，沈炼终于说出真相但为',N'中国',N'动作/悬疑/武侠/古装',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-617204-1-1.html',N'http://www.lwgod.com/attachment.php?aid=901699&amp;k=ce44d33b49d558a792ae5f8d04df624e&amp;t=1412261728&amp;sid=f745V5jdEPf7OvTqPxvMkBfUGvA0rOYvtsyV6U%2B0thWgNfw',N'2014/10/2 22:57:20',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 416,N'【美14新美女动作】【性感女特工2】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.18/xiaomao2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　性感女特工2/公路杀手2/小猫快跑2<br />
片　　名　Cat Run 2<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　动作<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　3.9/10 from 245 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3461828" target="_blank">http://www.imdb.com/title/tt3461828</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.65 GB<br />
片　　长　96 Min<br />
导　　演　约翰·斯托克韦尔 John Stockwell<br />
主　　演　雯特·艾娃·佐莉 Winter Ave Zoli ....Tatiana<br />
　　　　　斯科特·麦克洛维茨 Scott Mechlowicz ....Anthony<br />
　　　　　阿方索·麦克奥雷 Alphonso McAuley ....Julian<br />
　　　　　Kamille Leai ....Simone<br />
　　　　　范妮莎·布兰奇 Vanessa Branch ....Hannah Wollcroft<br />
　　　　　Maria Rogers ....Mina<br />
　　　　　Lawrence P. Beron ....Bojan Dragnovic<br />
　　　　　Thomas Hyde III ....Wilson<br />
　　　　　David Maldonado ....Lamonde<br />
　　　　　莱昂纳多·南 Leonardo Nam ....Zhang</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　本片是《性感女特工》的续集，依然由约翰·斯托克维尔执导。影片讲述了一名女特工手中掌握了政府掩盖犯罪的证据，此时两位年轻的私家侦探也卷入其中……<br />
<br />
　　《性感女特工2》是《性感女特工》的续集影片，影片讲述了一名女特工掌握了军方的重要情报，两名私家侦探也卷入其中，追杀与被追杀的故事，整部影片全程在美国本土取景拍摄，影片还加入了女特工大战机器人的科幻场面，可谓是多种元素混搭的一部动作片。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：本片是《性感女特工》的续集，依然由约翰·斯托克维尔执导。影片讲述了一名女特工手中掌握了政府掩盖犯罪的证据，此时两位年轻的私家侦探也卷入其中……《性感女特工2》是《性感女特工》的续集影片，影片讲述了一名女特工掌握了军方的重要情报，两名私家侦探也卷入其中，追杀与被追杀的故事，整部影片全程在美国本土取景拍摄，影片还加入了女特工大战机器人的科幻场面，可谓是多种元素混搭的一部动作片。影片',N'美国',N'动作',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617532-1-1.html',N'http://www.lwgod.com/attachment.php?aid=902451&amp;k=7d9bac0c90214ebb56e34373af90e35d&amp;t=1412261728&amp;sid=fb27BauouQT%2BHGO1NK8vJTggBkWQMrky7QjbfzQxyZpSA5Y',N'2014/10/2 22:57:20',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 417,N'【朱莉14新魔幻巨制】【沉睡魔咒】【BluRay-720P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chenshuimozhou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　沉睡魔咒/黑魔后：沉睡魔咒(港)/黑魔女：沉睡魔咒(台)/玛琳菲森/黑法魔女/睡美人外传<br />
片　　名　Maleficent<br />
年　　代　2014<br />
国　　家　美国/英国<br />
类　　别　动作/奇幻/冒险/家庭<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.3/10 from 103,916 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1587310" target="_blank">http://www.imdb.com/title/tt1587310</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.65 GB<br />
片　　长　97 Min<br />
导　　演　罗伯特·斯托姆伯格 Robert Stromberg<br />
主　　演　安吉丽娜·朱莉 Angelina Jolie ....玛琳菲森 Maleficent<br />
　　　　　艾丽·范宁 Elle Fanning ....爱洛公主 Princess Aurora<br />
　　　　　沙尔托·科普雷 Sharlto Copley ....斯特凡国王 Stefan<br />
　　　　　萨姆·赖利 Sam Riley ....迪瓦尔 Diaval<br />
　　　　　布兰顿·思怀兹 Brenton Thwaites ....菲力王子 Prince Phillip<br />
　　　　　莱丝利·曼维尔 Lesley Manville ....蓝果仙子 Flittle<br />
　　　　　伊梅尔达·斯汤顿 Imelda Staunton ....红叶仙子 Knotgrass<br />
　　　　　朱诺·坦普尔 Juno Temple ....绿蕨仙子 Thistletwit<br />
　　　　　艾拉·彭内尔 Ella Purnell ....少女玛琳菲森 Teen Maleficent<br />
　　　　　杰克森·贝武思 Jackson Bews ....少年斯特凡 Teen Stefan<br />
　　　　　伊索贝·莫洛伊 Isobelle Molloy ....儿时玛琳菲森 Young Maleficent<br />
　　　　　迈克尔·希金斯 Michael Higgins ....儿时斯特凡 Young Stefan</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　玛琳菲森（安吉丽娜·朱莉饰）曾是一个美丽纯洁，拥有翅膀能够飞翔的年轻仙子，生长于宁静祥和的森林王国。然而美好的时光总是短暂的，王国突遭人类军队侵袭，玛琳菲森在战斗中逐渐成长为这片森林的守护者，同时也遭受到了无情背叛，从此她的心灵开始变得冷酷，脑海只剩复仇的念头。为了报复，她给人类国王的女儿爱洛公主施下恶咒；然而随着爱洛的成长，玛琳菲森才逐渐意识到——这位小公主不仅能给两个世界带来和平，也许还能给自己带来真正的快乐。<br />
<br />
　　在宁静祥和的摩尔王国，广袤的大森林中，动物与精灵和谐相处，无忧无虑。那一年，天真无邪的小仙女玛琳菲森（伊莎贝尔·莫洛伊 Isobelle Molloy 饰）邂逅了人类小男孩斯特凡（迈克尔·希金斯 Michael Higgins 饰）。他们两小无猜，成为亲密无间的好朋友，更在万物的守护下坠入爱河。但是随着年龄的增长，斯特凡（沙尔托·科普雷 Sharlto Copley 饰）褪去了往日的纯真，被人类的贪欲所吸引。而玛琳菲森（安吉丽娜·朱莉 Angelina Jolie 饰）则成长为法术强大的仙女。愚蠢的人类向摩尔王国开展，斯特凡为了成为王位继承者，残忍地割下了玛琳菲森的翅膀。<br />
<br />
　　肉体的痛苦和心灵的创伤，让玛琳菲森变成了满怀仇恨的冷酷魔女，为了复仇她给斯特凡的女儿爱洛公主（艾丽·范宁 Elle Fanning 饰）施下了沉睡魔咒……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　出演片名人物的安吉丽娜·朱莉在谈及这个经典角色时称，玛琳菲森实际上是一个很伟大的人，但她是不完美的。她认为，编剧琳达·沃尔夫在打碎原有故事的同时，不是对故事做了简单的简化或逆转，而是讲了一个更大的故事，&quot;我们的挑战是站在另一个角度去看问题&quot;。<br />
<br />
　　影片中作为反角的主人公玛琳菲森头上长角，皮肤绿色，能变身成黑紫色的巨龙。谈及角色造型时，朱莉称造型正在完善中，但牛角是不可缺少的，&quot;牛角装&quot;很适合自己，她也从中获得了很多乐趣。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·朱莉的女儿薇薇安在片中扮演小时候的爱洛公主。朱莉表示让女儿出演角色完全是“形势所趋”，其他三四岁的小演员都被她头上的角和尖尖的指甲吓坏了，但是又需要一个孩子演对手戏，只能是薇薇安。<br />
<br />
·为了片中的夸张造型，朱莉每次拍戏前都要在脸颊上贴些东西，以突出颧骨，鼻子也是刻意做高的。<br />
<br />
·本片导演罗伯特·斯托姆伯格曾担任《阿凡达》、《爱丽斯梦游仙境》和《魔境仙踪》的艺术指导。《沉睡魔咒》是他首度担纲导演的大制作。<br />
<br />
·朱莉在谈到对角色的理解时指出，“《沉睡魔咒》并不是单纯的讲述一个反派女巫的故事，而是要探索一个人是如何一步步走向邪恶，也就是‘坏人是怎样炼成的’，影片的重点是揭露女巫背后的故事。”<br />
<br />
·著名女歌手Lana Del Rey为本片翻唱了老版的主题曲《Once Upon a Dream》，她是由安吉丽娜·朱莉本人钦点的人选。<br />
<br />
·影片是迪士尼公司有史以来在一位新人导演身上投资最大的影片，超过了2010年的《创战纪》。<br />
<br />
·本片于2014年5月30日起开始上映，而这也正好是1959年版《睡美人》的上映55周年纪念日。<br />
<br />
·《沉睡魔咒》是朱莉自从2010年《致命伴旅》时隔四年之后主演的第一部新作。<br />
<br />
·本片中玛琳菲森的扮演是一只乌鸦，名叫Diaval(发音与魔鬼devil类似)，而老版中乌鸦的名叫叫做Diablo，是西班牙语中恶魔的意思。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：玛琳菲森（安吉丽娜·朱莉饰）曾是一个美丽纯洁，拥有翅膀能够飞翔的年轻仙子，生长于宁静祥和的森林王国。然而美好的时光总是短暂的，王国突遭人类军队侵袭，玛琳菲森在战斗中逐渐成长为这片森林的守护者，同时也遭受到了无情背叛，从此她的心灵开始变得冷酷，脑海只剩复仇的念头。为了报复，她给人类国王的女儿爱洛公主施下恶咒；然而随着爱洛的成长，玛琳菲森才逐渐意识到——这位小公主不仅能给两个世界带来和平，也许还能给自己带来真正的快乐。在宁静祥和的摩尔王国，广袤的大森林中，动物与精灵和谐相处，无忧无虑。那一年，天真无邪的小仙女玛琳菲森（伊莎贝尔·莫洛伊 Isobelle Molloy 饰）邂逅了人类小男孩斯特凡（',N'美国/英国',N'动作/奇幻/冒险/家庭',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-617123-1-1.html',N'http://www.lwgod.com/attachment.php?aid=901631&amp;k=dda4d0e5bb3556be24eca447ec693253&amp;t=1412261729&amp;sid=6c3bNki7esBSsuMxmyKJYOrNMmLgRczzTIp%2FiHf4Ut4%2FfS4',N'2014/10/2 22:57:21',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 418,N'【韩14新灰色青春】【优雅的谎言】【BluRay-720P.MKV】【中字】',N'<font color="blue"><font size="5">本片IMDB评分一般，豆瓣网却有7.5高分！<br />
评价很高的影片！推荐观看！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/youyadehuangyan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/youyadehuangyan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　优雅的谎言<br />
片　　名　Thread of Lies<br />
年　　代　2014<br />
国　　家　韩国<br />
类　　别　剧情/悬疑<br />
语　　言　韩语<br />
字　　幕　中文简繁<br />
评　　分　6.3/10 from 16 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3837154" target="_blank">http://www.imdb.com/title/tt3837154</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.73 GB<br />
片　　长　117 Min<br />
导　　演　李翰 Han Lee<br />
主　　演　金喜爱 Hie-ae Kim ....贤淑<br />
　　　　　金有贞 Yoo-jeong Kim ....花莲<br />
　　　　　高雅星 Ah-sung Ko ....万智<br />
　　　　　金香奇 Hyang-gi Kim<br />
　　　　　成东日 Dong-il Sung<br />
　　　　　刘亚仁 Ah In Yoo</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　《优雅的谎言》是《少年菀得》导演李瀚的新作。影片改编自作家金良玲的同名小说，是一部灰色背景的青春片。讲述一位平凡少女突然死后，围绕少女的死因，在其母亲、姐姐和周围其他人之间发生的故事。<br />
<br />
　　身负家庭生计在超市工作，任何时候都正直有主见的妈妈贤淑（金喜爱 饰）和对家人和外界毫不在意、拥有孤僻性格的姐姐万智（高智星 饰），以及总是对妈妈和姐姐乖巧温和的小女儿天智（金香奇 饰）在一起生活。一天天智意外离开人世，三口之家中最活泼的小女儿的离去令妈妈和姐姐惊慌失措，坚韧的妈妈和姐姐为了适应没有天智的生活努力着。直到万智偶然从天智的朋友口中得知到一些天智的秘密，原来天智之死与其最亲密的朋友花妍有关。同时，万智还有在红色毛线里，发现了天智隐藏的信息……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：《优雅的谎言》是《少年菀得》导演李瀚的新作。影片改编自作家金良玲的同名小说，是一部灰色背景的青春片。讲述一位平凡少女突然死后，围绕少女的死因，在其母亲、姐姐和周围其他人之间发生的故事。身负家庭生计在超市工作，任何时候都正直有主见的妈妈贤淑（金喜爱 饰）和对家人和外界毫不在意、拥有孤僻性格的姐姐万智（高智星 饰），以及总是对妈妈和姐姐乖巧温和的小女儿天智（金香奇 饰）在一起生活。一天天智意外离开人世，三口之家中最活泼的小女儿的离去令妈妈和姐姐惊慌失措，坚韧的妈妈和姐姐为了适应没有天智的生活努力着。直到万智偶然从天智的朋友口中得知到一些天智的秘密，原来天智之死与其最亲密的朋友花妍有关。同时，万智',N'韩国',N'剧情/悬疑',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616273-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899186&amp;k=a943c7c158f8239ff20521a57058c5bf&amp;t=1412261730&amp;sid=72e8UxyubSDrfKp0r43mdS9kFtrvmJEu7Ecs9vANyhWQe28',N'2014/10/2 22:57:21',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 419,N'【欧弟14新屌丝逆袭女神】【超萌英雄】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chaomengyingxiong/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.14/chaomengyingxiong/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　超萌英雄<br />
片　　名　A Simple Hero<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　喜剧/爱情/冒险<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　887 MB<br />
片　　长　89 Min<br />
导　　演　欧阳奋强 Fenqiang Ouyang<br />
主　　演　欧弟 O Ti<br />
　　　　　杨舒婷 Shuting Yang<br />
　　　　　成泰燊 Taishen Cheng<br />
　　　　　田源 Yuan Tian<br />
　　　　　王子 Prince Yau</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　一个业余保镖和三个奇葩绑匪所共同展开的一次惊心动魄的护花之旅。<br />
<br />
　　欧弟扮演的“屌丝男”和杨舒婷扮演的“D CUP富二代”这对孤男寡女在机缘巧合下被迫同车自驾游三千公里，伴随着未知的危险和刚上路时两人之间不断的摩擦，两人踏上旅途，一路上历经重重考验和磨难，既被犯罪团伙围追堵截濒临绝境，又半路杀出第三者上演“重口味”追爱大作战。在西域壮美的风光和少数民族的热情之中，两性关系也在慢慢的发酵，女神芳心逐渐被融化。<br />
<br />
<font color="red"><strong><font size="3">幕后花絮：</font></strong></font><br />
<br />
　　由87版贾宝玉扮演者欧阳奋强执导的公路喜剧电影《超萌英雄》正在新疆火热赶拍，因拍戏相识的欧弟和杨舒婷，首次搭档银幕情侣就显得默契十足，俨然一对合作过若干次的黄金搭档。到底戏中两位是如何练就感情速成大法的呢？通过曝光的拍摄花絮，我们来一探究竟吧。<br />
<br />
☆感情催熟秘诀一：卖萌不可耻☆<br />
<br />
　　戏中，由欧弟饰演的郭坦是一个心地善良，既呆又萌的非职业保镖，那么卖萌自然是他的看家本领。搞怪的他在片场休息时也不忘给大家耍个宝装个萌，瞧他鼾声连天的可爱劲儿可把杨舒婷给乐坏了。话说，这样的率真的大男孩很容易激起女生的爱心哦！<br />
<br />
☆感情催熟秘诀二：幽默是法宝☆<br />
<br />
　　除了卖萌外，幽默也是增进两人感情的一大法宝。俗话说男人不坏，女人不爱，应该改成男人不贫嘴，追爱跑断腿。拍摄现场，欧弟总会时不时冒出一句精彩语录，惹得杨舒婷娇笑连连。瞧他们搂在一起，眉目传情的神态，还真有点假戏真做的“赶脚”啊。<br />
<br />
☆感情催熟秘诀三：创造机会是关键☆<br />
<br />
　　追女生除了发挥你的聪明才智这还不够！你看人家欧弟多会给自己创造独处的机会。拍戏时在被弹弓打到嘴后，立马在女友面前讨安慰，求关注，这一会儿撅嘴，一会儿喊疼的，装可怜的功力可不一般啊！<br />
<br />
☆杨舒婷、欧弟――“女汉子、小男人”☆<br />
<br />
　　在情侣感情迅速升温之后，如何让爱情保鲜呢，还得让郭坦和黄雯雯二位戏里情圣给大家支支招儿！<br />
<br />
　　戏里，感情路上当小男人遇上了女汉子，情路想不坎坷都不行。看欧弟平日里那股男子汉的劲儿一到杨舒婷面前可就全没了。这两个欢喜冤家在途中，尽管一路吵吵闹闹，但多数是“床头吵架床尾和”，所以要想爱情能够长跑，互相包容才是关键。在这里还得提醒男同胞们，如果真遇到女汉子，平时装点怂没什么，关键时可要秀出男子汉的真气概哦。<br />
<br />
　　由87版贾宝玉扮演者欧阳奋强执导的公路喜剧电影《超萌英雄》正在新疆伊犁紧张拍摄。电影讲述了一个奇葩保安、两个美丽姑娘和三个愚蠢劫匪的传奇搞笑“萌”故事。内地影视演员王子在影片中出演率真、痴情的女富豪王桃花，对欧弟饰演的保安一见钟情，对欧弟深度卖萌。<br />
<br />
☆王子对欧弟深度卖萌，花痴是要闹哪样☆<br />
<br />
　　影视演员王子笑容甜美，俏皮可爱，演技娴熟，浑身上下都透露着亲切的喜感，可爱至极。因出演热播剧《金太郎的幸福生活》中的护士小雪被观众熟知。剧中，王子将小雪对妇产科大夫金亮的如痴如醉演绎的入木三分，成为该剧的亮点之一。此次，在影片《超萌英雄》中，王子饰演的角色比起小雪可谓有过之而无不及。身价不菲的王桃花偏偏痴心于一个小保安，身份的巨大落差为电影增加了很多的可看性。在这种戏剧冲突之下，王桃花的命运，欧弟到底情归何处都成为影片最大的悬念。比起在《金太郎在幸福生活》中的人物，王子说：“王桃花这个角色的发挥空间更大，她在经历传奇，特别有钱又很痴情，我看剧本的时候已经被这个角色吸引，现在演起来很过瘾。”据悉，影片中，王桃花为了追到欧弟使出了浑身解数，让人无限期待花痴究竟要闹哪样。<br />
<br />
☆缓解拍摄压力，王子伊犁搞怪逗骆驼☆<br />
<br />
　　电影《超萌英雄》计划在北京与新疆伊犁等地取景，全组人员都在伊犁进行紧张的拍摄工作。入秋以来，伊犁的日温已经偏低，工作人员在拍摄现场已经穿上了厚重的棉衣。同时，王子肯组里在工作人员每天都要花费几个小时的车程往返于片场和驻地之间，工作十分辛苦。为了缓解拍摄压力，开心果王子在片场的放松方式就是“逗”骆驼。“我是个乐观的人，朋友们都说我充满了正能量。组里每天工作量很大，但是大家配合的很默契，一切都在有条不紊的进行中，很开心。”难怪，在如此繁重的拍摄任务之下王子依然应对自如，还和伊犁的骆驼亲切“沟通”，相信影片呈现在大荧幕之前一定不会让观众失望。<br />
<br />
　　据悉，电影《超萌英雄》的拍摄已经过半，王子将于几天后杀青回京，马不停蹄开始新电视剧的拍摄工作，而《超萌英雄》也有望于2014年贺岁档全线上映。<br />
<br />
相关新闻<br />
<br />
　　“综艺新天王”欧弟的电影处女作、公路喜剧《超萌英雄》已定于2014年7月4日登陆全国各大院线，影片由87版《红楼梦》贾宝玉的扮演者欧阳奋强执导。2014年7月，该片首度曝光六款“超萌英雄谱”角色海报，除欧弟以外，“金考拉”影后杨舒婷、实力派影帝成泰燊、“天天兄弟”田源、喜剧演员王子、项宇等一众主演的片中造型正式与观众见面，海报上他们极富喜感的形象也相当引人遐想。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：一个业余保镖和三个奇葩绑匪所共同展开的一次惊心动魄的护花之旅。欧弟扮演的“屌丝男”和杨舒婷扮演的“D CUP富二代”这对孤男寡女在机缘巧合下被迫同车自驾游三千公里，伴随着未知的危险和刚上路时两人之间不断的摩擦，两人踏上旅途，一路上历经重重考验和磨难，既被犯罪团伙围追堵截濒临绝境，又半路杀出第三者上演“重口味”追爱大作战。在西域壮美的风光和少数民族的热情之中，两性关系也在慢慢的发酵，女神芳心逐渐被融化。幕后花絮：由87版贾宝玉扮演者欧阳奋强执导的公路喜剧电影《超萌英雄》正在新疆火热赶拍，因拍戏相识的欧弟和杨舒婷，首次搭档银幕情侣就显得默契十足，俨然一对合作过若干次的黄金搭档。到底戏中两位是如何',N'中国',N'喜剧/爱情/冒险',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-617113-1-1.html',N'http://www.lwgod.com/attachment.php?aid=901628&amp;k=2e0ddeeacd02d2c8b1243754fb5bf382&amp;t=1412261730&amp;sid=37fbW%2BlPrDu6cyZjiQ%2Bkf2UUWUfT84iy3W0hCq87eXvu%2FDw',N'2014/10/2 22:57:21',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 420,N'【美14万众期待票房巨制】【驯龙高手2】【HD-1024.MP4】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/xunlonggaoshou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.03/xunlonggaoshou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　驯龙高手2/驯龙记2(港)<br />
片　　名　How to Train Your Dragon 2<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　动画/动作/冒险/喜剧<br />
语　　言　英语<br />
字　　幕　中文字幕<br />
评　　分　<font color="red">8.3/10 from 62,008 users&nbsp;&nbsp;Top 250 #192</font><br />
链　　接　<a href="http://www.imdb.com/title/tt1646971" target="_blank">http://www.imdb.com/title/tt1646971</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　0.99 GB<br />
片　　长　102 Min<br />
导　　演　迪恩·德布洛斯 Dean DeBlois<br />
主　　演　林更新 Gengxin Lin ....小嗝嗝（中文配音）<br />
　　　　　白百何 Baihe Bai ....阿丝翠德（中文配音）<br />
　　　　　蒋雯丽 Wenli Jiang ....沃尔卡（中文配音）<br />
　　　　　杰伊·巴鲁切尔 Jay Baruchel ....小嗝嗝（英文配音）Hiccup (voice)<br />
　　　　　凯特·布兰切特 Cate Blanchett ....沃尔卡 Valka (voice)<br />
　　　　　亚美莉卡·费雷拉 America Ferrera ....阿丝翠德 Astrid (voice)<br />
　　　　　杰拉德·巴特勒 Gerard Butler ....斯多戈 Stoick the Vast (voice)<br />
　　　　　克雷格·费格森 Craig Ferguson ....高博 Gobber (voice)<br />
　　　　　基特·哈灵顿 Kit Harington ....埃雷特 (voice)<br />
　　　　　杰曼·翰苏 Djimon Hounsou ....德雷格 Drago Bludvist (voice)<br />
　　　　　乔纳·希尔 Jonah Hill ....鼻涕虫 Snotlout (voice)<br />
　　　　　克里斯汀·韦格 Kristen Wiig ....拉芙纳特 Ruffnut (voice)<br />
　　　　　T·J·米勒 T.J. Miller ....特夫纳特 Tuffnut (voice)<br />
　　　　　克里斯托夫·梅兹 Christopher Mintz ....鱼脚司 Fishlegs (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　这部续集故事承接前作五年之后，上一集中惧怕龙的维京人已经和龙成为伙伴。主人公“小嗝嗝”没有像其他维京青年那样沉迷于“魁地奇”比赛，而是和他的龙伙伴“没牙仔”一起开始了新的冒险。这对伙伴发现自己已被卷入一场战争的中心地带后，他们必须率领族人捍卫这片土地的平静。除拯救龙族外，小嗝嗝与家人间的感情线也会是影片的重点。<br />
<br />
　　梦工场动画带来《怪物史瑞克》、《功夫熊猫》、《疯狂原始人》班底打造万众期待、获奥斯卡提名、改编自葛蕾熙达·柯维尔同名儿童小说系列──《驯龙高手》的续集。这激荡人心，史诗式三部曲中的第二章讲述年轻英勇的维京勇士小嗝嗝 (杰伊·巴鲁切尔配音)驯服受伤的龙，更与它成为好友。经过五年时间，博克岛居民的生活彻底渗入龙的气息。博克岛现已是个维京人与龙和平共存的天堂。<br />
<br />
　　然而，成长却意味着责任。为了寻找答案，小嗝嗝与忠诚的没牙仔开始了他们的冒险旅程，但结果却超乎预料。一方面，小嗝嗝发现神秘的驯龙骑士，正是失踪多年的亲母沃尔卡(奥斯卡影后凯特·布兰切特配音)；另一方面，嗜权的德雷格(奥斯卡最佳演员提名杰曼·翰苏配音)与龙猎人埃雷特 (《权力游戏》演员基特·哈灵顿配音)结盟，威胁到博克岛上人与龙的和平。<br />
<br />
　　为了保护深受大家喜爱的龙，阿丝翠德(亚美莉卡·费雷拉配音)、高博(克雷格·费格森配音)，维京伙伴们：鼻涕虫(乔纳·希尔)、鱼脚司(克里斯托夫·梅兹-普莱瑟配音)及双胞胎拉芙纳特(克里斯汀·韦格配音)、特夫纳特(托德·约瑟夫·米勒配音)都出手相助，加上小嗝嗝、身为部族的首领的父亲斯多戈(杰拉德·巴特勒配音)及母亲连手合作。在这期间，小嗝嗝一直追寻的答案就在不知不觉以意想不到的方式出现了。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·导演迪恩·德布洛斯心中最棒的续集电影是《星球大战2：帝国反击战 》，他称此片为他拍《驯龙高手2》的灵感源泉。<br />
<br />
·导演迪恩·德布洛斯认为大多数动画片续集都没有存在的意义，当梦工厂希望他执导时他直接告诉CEO杰弗里·卡森伯格，避免问题的最好办法是把男主角嗝嗝的故事打造成三部曲，否则他不会接手。<br />
<br />
·《驯龙高手》上映后一个月后梦工厂就计划拍续集，制作周期整整四年。<br />
<br />
·《驯龙高手2》总共启用30-40名动画技师，不过在冲刺完成影片的最后几个月剧组必须借用人才，最高时有50名动画技师同时制作影片。<br />
<br />
·导演迪恩·德布洛斯在2011年奥斯卡颁奖典礼上找到凯特·布兰切特并告诉她在《驯龙高手2》中有一个为她量身打造的角色。布兰切特表示非常感兴趣，因为她的孩子们非常喜欢《驯龙高手》。<br />
<br />
·导演说瓦尔卡的角色是为凯特·布兰切特写的，这个角色长期远离人类社会，有时很脆弱、情绪化，但也非常坚强、权威性十足。在他心目中布兰切特是此角的不二人选。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：这部续集故事承接前作五年之后，上一集中惧怕龙的维京人已经和龙成为伙伴。主人公“小嗝嗝”没有像其他维京青年那样沉迷于“魁地奇”比赛，而是和他的龙伙伴“没牙仔”一起开始了新的冒险。这对伙伴发现自己已被卷入一场战争的中心地带后，他们必须率领族人捍卫这片土地的平静。除拯救龙族外，小嗝嗝与家人间的感情线也会是影片的重点。梦工场动画带来《怪物史瑞克》、《功夫熊猫》、《疯狂原始人》班底打造万众期待、获奥斯卡提名、改编自葛蕾熙达·柯维尔同名儿童小说系列──《驯龙高手》的续集。这激荡人心，史诗式三部曲中的第二章讲述年轻英勇的维京勇士小嗝嗝 (杰伊·巴鲁切尔配音)驯服受伤的龙，更与它成为好友。经过五年时间，博克',N'美国',N'动画/动作/冒险/喜剧',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-616259-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899165&amp;k=d80c432dae4e78746c5b1e393621f185&amp;t=1412261731&amp;sid=3c25euRF7Z6XYNduRq9szm%2BMHaS6LhZYRiTLrAznupx90oo',N'2014/10/2 22:57:21',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 421,N'【港13众星云集大片】【光辉岁月】【BluRay-720P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/guanghuisuiyue/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/guanghuisuiyue/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　光辉岁月<br />
片　　名　7 Assassins<br />
年　　代　2013<br />
国　　家　中国/中国香港<br />
类　　别　动作/冒险/剧情<br />
语　　言　<font color="red"><font size="3">国语粤语双音轨</font></font><br />
字　　幕　中文简繁<br />
评　　分　5.5/10 from 40 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3552642" target="_blank">http://www.imdb.com/title/tt3552642</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.64 GB<br />
片　　长　102 Min<br />
导　　演　熊欣欣 Xin Xin Xiong<br />
主　　演　曾志伟 Eric Tsang ....猫老板<br />
　　　　　黄日华 Felix Wong ....铁云<br />
　　　　　梁咏琪 Gigi Leung ....细帘<br />
　　　　　吕良伟 Ray Lui ....亲王<br />
　　　　　郭涛 Tao Guo ....柳傲天<br />
　　　　　熊欣欣 Xin Xin Xiong ....无仇<br />
　　　　　莫少聪 Siu Chung Mok ....慕白<br />
　　　　　王敏德 Michael Wong ....方彼得<br />
　　　　　李子雄 Waise Lee ....汪捕头<br />
　　　　　倪虹洁 Hongjie Ni ....满天红<br />
　　　　　李炜 Wei Li ....安乐<br />
　　　　　刘五性 Oh-seong Yu ....武忠额<br />
　　　　　任达华 Simon Yam ....老胡<br />
　　　　　惠英红 Kara Hui ....胡妻<br />
　　　　　狄龙 Lung Ti ....卓知府</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　清朝末年，局势动荡，乱相纷现。曾经历黄花岗起义的南国革命党人铁云（黄日华 饰）和志同道合的战友勇闯大漠，偷运黄金，准备购买大批军火再次起事。谁知途中遭到博尔格亲王（吕良伟 饰）之爪牙满天红（倪虹洁 饰）的伏击，关键时刻幸得满腔赤诚的从四品官卓知府（狄龙 饰）出手相救。卓知府具有远见卓识，虽身处敌我两派，但仍将国家的命运寄托在铁云身上，安排他前往黄金峡寻找善良热情且不乏豪气的猫老板（曾志伟 饰），为此甘愿陪上满门家小性命。猫老板是曾参加过义和团的勇士，由他守护的黄金峡云集了来自四面八方的仁人义士。大家不讲革命，不关心政治，在这个安宁所在过着世外桃源的生活。<br />
<br />
　　随着铁云的到来，黄金峡的宁静被彻底打破。隐退江湖的英雄们为国为家，再展身手……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　香港影坛老戏骨打戏亲身上阵<br />
<br />
　　《光辉岁月》中曾志伟、黄日华、吕良伟、狄龙、任达华、郭涛等负责动作打戏的演员平均年龄已经超过50岁。饰演卓知府的狄龙是演员中年纪最长的前辈。狄龙为拍摄被捕时的一场重头打戏，足足“被打”了一整天，“65岁了，体力是个最大的考验，但是一定要拍好每一场戏”。除了狄龙，曾志伟饰演的猫叔在片中也有多场打戏，“虽然有威亚辅助，但是导演的要求非常高，一个动作都要几十遍的练习，导演的要求非常之高。”<br />
<br />
　　一百多只马匹进驻剧组 导演手持摄影机拍摄受伤<br />
<br />
　　除了打戏，《光辉岁月》中，马戏部分也是重中之重。“整部戏动用了140多匹马，这些马都是从北京挑选最好的品种，用大卡车3天3夜运来剧组的”。导演亲自手持摄像机骑奔马上阵试拍。不料，马匹突然受惊失控，熊导坠马，重伤不起，但摄像机却被他紧紧抱在怀里。“为了保护摄像机，熊欣欣肋骨断了三根”。随队医生回想起当时的情景依旧心有余悸，“如果断的再严重点，会伤到内脏，有生命危险的”。万幸的是，熊欣欣和演员们拍摄前做足保护功夫，“无敌头盔”最终让他脱离险境，经过紧急处理，骨伤未愈的导演披戈上阵又开始新一轮的打戏拍摄，“轻伤不下火线，我们是英雄来的嘛”。<br />
<br />
　　众英雄&quot;斗&quot;恶劣天气<br />
<br />
　　拍摄期间，《光辉岁月》辗转甘肃景泰、黄河石林和云南楚雄进行拍摄，在甘肃2200米海拔的高原上，剧组经历了拍摄有史以来最惨烈的情况，风沙、雨雪、寒冷气温都考验着整个剧组。曾志伟直言拍戏30多年从未见过这么恶劣的环境。“风沙一来，就像世界末日一样，眼睛睁不开，呼吸都是困难的。”<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：清朝末年，局势动荡，乱相纷现。曾经历黄花岗起义的南国革命党人铁云（黄日华 饰）和志同道合的战友勇闯大漠，偷运黄金，准备购买大批军火再次起事。谁知途中遭到博尔格亲王（吕良伟 饰）之爪牙满天红（倪虹洁 饰）的伏击，关键时刻幸得满腔赤诚的从四品官卓知府（狄龙 饰）出手相救。卓知府具有远见卓识，虽身处敌我两派，但仍将国家的命运寄托在铁云身上，安排他前往黄金峡寻找善良热情且不乏豪气的猫老板（曾志伟 饰），为此甘愿陪上满门家小性命。猫老板是曾参加过义和团的勇士，由他守护的黄金峡云集了来自四面八方的仁人义士。大家不讲革命，不关心政治，在这个安宁所在过着世外桃源的生活。随着铁云的到来，黄金峡的宁静被彻底打破',N'中国/中国香港',N'动作/冒险/剧情',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-616555-1-1.html',N'http://www.lwgod.com/attachment.php?aid=900151&amp;k=b9bc23ee83e558daa4d00be6f0e477fa&amp;t=1412261731&amp;sid=aa9cLiSXyj3zbQzi5Lk2BDOZYiILkRKR72miYNUoMSFTE2M',N'2014/10/2 22:57:22',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 422,N'【珍藏为第2部预热】【猩球崛起1】【BluRay-1080P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　猩球崛起/猿族崛起/猩团的崛起/猿人争霸战：猩凶革命(港)<br />
片　　名　Rise of the Planet of the Apes<br />
年　　代　2011<br />
国　　家　美国<br />
类　　别　动作/剧情/科幻/惊悚<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.6/10 from 311,999 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1318514" target="_blank">http://www.imdb.com/title/tt1318514</a><br />
文件格式　x264 + 5.1 DTS @ mkv<br />
视频尺寸　<font color="red"><font size="3">1920 x 1080</font></font><br />
文件大小　8.36 GB<br />
片　　长　105 Min<br />
导　　演　鲁伯特·瓦耶特 Rupert Wyatt<br />
主　　演　詹姆斯·弗兰科 James Franco&nbsp;&nbsp;....Will Rodman<br />
　　　　　芙蕾达·平托 Freida Pinto&nbsp;&nbsp;....Caroline Aranha<br />
　　　　　安迪·瑟金斯 Andy Serkis&nbsp;&nbsp;....Caesar<br />
　　　　　约翰·利特高 John Lithgow&nbsp;&nbsp;....Charles Rodman<br />
　　　　　布莱恩·考克斯 Brian Cox&nbsp;&nbsp;....John Landon<br />
　　　　　汤姆·费尔顿 Tom Felton&nbsp;&nbsp;....Dodge Landon<br />
　　　　　大卫·奥伊罗 David Oyelowo&nbsp;&nbsp;....Steven Jacobs<br />
　　　　　泰勒·拉拜 Tyler Labine&nbsp;&nbsp;....Robert Franklin<br />
　　　　　杰米·哈里斯 Jamie Harris&nbsp;&nbsp;....Rodney<br />
　　　　　大卫·休莱特 David Hewlett&nbsp;&nbsp;....Hunsiker<br />
　　　　　泰·奥尔森 Ty Olsson&nbsp;&nbsp;....Chief John Hamil<br />
　　　　　麦迪逊·贝尔 Madison Bell&nbsp;&nbsp;....Alice Hunsiker<br />
　　　　　Makena Joy&nbsp;&nbsp;....Alice Hunsiker (Teen)<br />
　　　　　肖恩·泰森 Sean Tyson&nbsp;&nbsp;....Animal Control Officer #2<br />
　　　　　杰克·库里斯 Jack Kuris&nbsp;&nbsp;....Boy in Muir Woods</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　2011年，旧金山。<br />
<br />
　　为了研究如何治疗老年痴呆症，行内知名的科学家威尔·罗曼（詹姆斯·弗兰科饰）已经攻关研究了多年。试验一直没有取得太大的起色，虽然他和灵长类学家卡洛琳（芙蕾达·平托饰）一起研制了一种名为“Cure”的新药物，这种药物能改变基因，但由于极其危险的副作用，使得他找不到合适的临床试验对象来验证Cure的药性。终于，在科研所的所长（布莱恩·考克斯饰）的怂恿之下，他将药物放在了大猩猩身上。<br />
<br />
　　Cure具有自我修复大脑的作用，这在大猩猩身上得到了验证。有了Cure的疗效，大猩猩开始变得超级有智慧，常年被所长虐待的动物们开始报复人类，最先恢复智力的大猩猩凯撒（安迪·瑟金斯饰）开始率领其他猩猩对人类进行反攻倒算，人类不再是地球唯一的统治者，猿族开始逐渐崛起。闯下大祸的威尔·罗曼，决定用他自己的方式来化解这一场人类和猿族之间的战争……<br />
<br />
<font color="red"><strong><font size="3">一句话评论：</font></strong></font><br />
<br />
既包含了对人类的隐喻又有对科技的质疑，《猿族崛起》完全可以和老版的《金刚》并列影史。<br />
——《时代杂志》<br />
<br />
强力的动作戏，出色的特效，至今为止最可信的人猿“表演”，这些捶胸不已的大猩猩会震撼票房的。<br />
——《好莱坞报道者》<br />
<br />
《猿族崛起》做得很不错。聪明、有趣，非常富于娱乐性。这应该是暑期大片的一个模范之作，绝无侮辱观众智商的行为。<br />
——《洛杉矶时报》<br />
<br />
《猿族崛起》令人印象深刻，尤其是你知道这个前传发展到《人猿星球》系列最后会产生什么样的悲剧结尾。<br />
——《综艺》<br />
<br />
《猿族崛起》是这个夏天最值得观众去影院观看的最佳电影。<br />
——《纽约每日新闻》<br />
<br />
猿类横冲直撞的动作形象，非常震撼人心，堪称好莱坞目前最高水平的电影制作。<br />
——《娱乐周刊》<br />
<br />
故事简单明了，由演员通过动作捕捉完成的猿族的表演，不夸张又令人印象深刻，这部电影很能让观众产生共鸣。<br />
——《环球邮报》<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　反乌托邦的人猿决战<br />
<br />
　　末日科幻题材的电影很多，描述人类和入侵的异族作战的电影也不胜枚举，其中《异种》《异形》《星河战队》等影片都是其中的佼佼者。而在这当中，1999年的《人猿猩球》也是值得一提的亮色佳作。这部改编自1968年同名作品的电影，描述一位探索宇宙的宇航员随着飞船坠落在猿人星球中，随后进行的一系列生死冒险。故事的黑暗与结局的震惊使得这部电影成为科幻迷津津乐道的电影，十年过后，《猿族崛起》则以前传的姿态开始对故事进行梳理。对于这个充满了末日情怀的故事，曾经担任过《以眼还眼》《变种》等片的编剧里克·杰法说道：“我很喜欢1968年的《决战猩球》，在那个故事里，人类显得非常无助，猩猩统治了整个社会，人类相反却成为了少数的、被展览的稀有生物，电影要讽刺的东西很明显，我们不尊重动物，若换一个角度，则会感受到它们的痛苦。在那个年代，《决战猩球》的理念显得很超前，如今在《猿族崛起》里，我们保持了《决战猩球》的世界观，同时将整个悲剧的发生描述得更详细，大家会在故事里看到，地球上的人类是如何在各种自私自利下，一步一步的走向灭亡。”<br />
<br />
　　《猿族崛起》是一部前传，故事发生在《决战猩球》之前。由于观众早已知道结局，那么这次会否没有像《决战猩球》的结局那样，带给人这么大的震撼呢？对此，编剧里克·杰法继续说道：“在结局上，当然不可能重现《决战猩球》那样的震撼。但我换了一个角度，既然结局已经众所周知，何不用另一种方式去讲述呢？大家都知道猩猩占据了整个星球，那么我们就会在这部电影里，揭示出为什么会被猩猩占领，人类都做了些什么样的事。《决战猩球》保持着一种高度的现实讽刺，《猿族崛起》也不例外，它在这方面和《12猴子》有点类似，故事里会讲述人和猩猩之间的关系。我曾经看过一个报道，里面讲述有一些科研机构拿猩猩做一些非常不人道的实验，画面触目惊心，这给我留下了非常深刻的印象，在被科学家捆在实验台上的时候，猩猩露出了一种非常怨恨的眼神，它根本不像一个动物所发出的眼神，那眼神给我很长时间里留下了印象，当我开始写《猿族崛起》的时候，我就已经想把这眼神的故事写进电影当中。”<br />
<br />
　　执导《猿族崛起》的鲁伯特·瓦耶特入行十多年，但产量并不多，前作还是2008年的《逃狱》，那是一部低成本的小制作。这次执导《猿族崛起》，是他入行以来操作的最为大型的项目，谈起执导《猿族崛起》的经历，鲁伯特·瓦耶特说道：“我在这之前对《决战猩球》了解得并不算深，当年看这部电影的时候只觉得它很吓人，猩猩的服装做得很逼真。2001年的版本是这次我接拍之前的重点研究对象，在这部电影里，我领悟到了一个词，就是绝望。《决战猩球》是一部让人绝望的电影，因为主角永远没有出路，一切的抗争都是徒劳。这其实是很让人沮丧的一件事，但它却让人看清事实，让观众能够正视人类自身的缺点。在《猿族崛起》里，我尝试把这种绝望做为故事的最终点，一切的剧情铺垫都为最后的结局做服务，那个充满了宿命的悲凉结局。当我看到《猿族崛起》的故事，我便觉得这电影是自己必须去拍摄的，因为它虽然有着一层科幻电影的外壳，但内里讲述的情感却十分朴素，那就是人类应该平等的对待地球上的其他生物，否则，我们会受到非常严重的、致命的惩罚。本质上，这是一部反乌托邦式的电影。”<br />
<br />
　　焕然一新的技术革命<br />
<br />
　　《猿族崛起》里，最惹人注目的自然是众多的猩猩，而这些猩猩都由CG技术所打造，曾经参加过《阿凡达》制作的特效团队为本片制造出了上百个逼真的猩猩。对于《猿族崛起》里的CG特效场面，导演鲁伯特·瓦耶特说道：“在这部电影里，成败的关键是在于对猩猩们的刻画。在《金刚》等片为了我们做了一次伟大的尝试和突破之后，《猿族崛起》里我想再用一些能令观众耳目一新的技术，《阿凡达》的CG技术非常成功，因此在2010年中，我和他们的特效团队一起，开始对《猿族崛起》的CG技术进行探讨。我们想在这部电影里尝试更多的可能性。我们在这之前参阅了大量自然野生的录像，探索频道几乎成为了我们的合作伙伴，在这个过程里我们积累了不少的经验，最终让安迪·瑟金斯真的成为了一个令人恐惧的大猩猩。”<br />
<br />
　　在影片里扮演猩猩首领凯撒的安迪·瑟金斯，这次虽然没有以自己的形象出现在银幕前，却完成了大量的动作捕捉。对于在《猿族崛起》里的表演，安迪o瑟金斯说道：“这是我从影以来拍得很辛苦的一部电影，虽然我99％的时间都是在特效工作室里进行表演，但我所花费的心力却要比普通电影大得多。我需要按照特效团队的要求做出各种动作，并且按照不同的故事幻想不同的场景，和不存在的角色们进行对戏，这几乎是一场由我一个人完成的话剧。而且让我感到很郁闷的一点是，我所做出的动作通常和特效团队所想象的有差距，因此我必须和他们在每个动作完成的过程里进行反复的沟通。这是一个漫长而折磨人的过程，让我几乎想放弃。但最后让我看到屏幕上凯撒的动作，我知道这些辛苦是值得的，凯撒就好像另一个世界的我一样，这种感觉让人觉得神奇美妙。”<br />
<br />
　　在《猿族崛起》里扮演男主角的詹姆斯·弗兰科，是近年来银幕上当红的好莱坞小生，奥斯卡的影帝提名更让他风生水起。谈及这次在《猿族崛起》里的表现，詹姆斯·弗兰科说道：“这是一部让我感觉很过瘾的电影，因为我很喜欢过去的《决战猩球》。在这部电影里，我扮演的科学家将会成为整个事件的核心人物，观众会跟着他，了解整个故事的起源。在电影里，这个科学家其实完全是抱着让人类受益的好心去研制药物，但最后却正好因为这份好心造成了一场不可挽回的灾难，而他也为这场灾难付出了代价。故事的基调比较黑色，但也有让人会心一笑的地方，这个故事的着重点将体现出凯撒如何带领猩猩们反抗人类。”<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·本片的特效技术直接延伸自《阿凡达》，但这是动作捕捉技术首次在日光下进行。<br />
<br />
·凯撒的“猩猩性格”有很大的跨越性，从一个无辜者到一个革命领袖，安迪·瑟金斯为了提高表演技巧，观摩了很多非洲黑猩猩的活动。<br />
<br />
·安迪·瑟金斯还为影片的音效出力不少，主要是模仿黑猩猩的噪音。<br />
<br />
·扮演凯撒不同于之前在《金刚》中“扮演”大猩猩金刚，因为凯撒在性格上更具宽度。<br />
<br />
·影片包含了大量特效，不过，由于其在真实世界取景、所以不会让人感到虚假，很有现实感。<br />
<br />
·影片的技术模糊了特效电影和动作捕捉动画电影的界限，或许《猿族崛起》的技术可以被概括为一群真实的演员、在真实的时间、现实的世界中，以动作捕捉的方式互动。<br />
<br />
·本片的制作成本约为9000万美元。<br />
<br />
·2011年初，出品方20世纪福斯公司曾宣布将《猿族崛起》的档期从2011年6月24日推至11月23日，但在3月下旬，20世纪福斯公司又决定将本片的公映时间提前至8月3日，这样本片最终还是成为杀入暑期档的一部大片。<br />
<br />
·《猿族崛起》的世界观和《决战猩球》保持一致，但在电影里的发生时间上是整个故事的起源。<br />
<br />
·本片主要在加拿大进行拍摄。<br />
<br />
·因为本片要将分级定为PG-13，所以很多涉及到猩猩和人类大战的暴力镜头都进行了删减。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.02/xingqiujueqi/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.02/xingqiujueqi/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.02/xingqiujueqi/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'：2011年，旧金山。为了研究如何治疗老年痴呆症，行内知名的科学家威尔·罗曼（詹姆斯·弗兰科饰）已经攻关研究了多年。试验一直没有取得太大的起色，虽然他和灵长类学家卡洛琳（芙蕾达·平托饰）一起研制了一种名为“Cure”的新药物，这种药物能改变基因，但由于极其危险的副作用，使得他找不到合适的临床试验对象来验证Cure的药性。终于，在科研所的所长（布莱恩·考克斯饰）的怂恿之下，他将药物放在了大猩猩身上。Cure具有自我修复大脑的作用，这在大猩猩身上得到了验证。有了Cure的疗效，大猩猩开始变得超级有智慧，常年被所长虐待的动物们开始报复人类，最先恢复智力的大猩猩凯撒（安迪·瑟金斯饰）开始率领其他猩猩对',N'美国',N'动作/剧情/科幻/惊悚',N'1920 x 1080',N'2011',N'http://www.lwgod.com/thread-616189-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898978&amp;k=a06f59a4b4ea33a5f14e1f23c8fd57f1&amp;t=1412261733&amp;sid=81ache%2B%2BWWnzyhVghEq39NW8Q9LjDKSTbfieQwWu19JHJkE',N'2014/10/2 22:57:22',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 423,N'【安吉丽娜朱莉14新票房】【沉睡魔咒】【HD-1024.MP4】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/chenshuimozhou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.07/chenshuimozhou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　沉睡魔咒/黑魔后：沉睡魔咒(港)/黑魔女：沉睡魔咒(台)/玛琳菲森/黑法魔女/睡美人外传<br />
片　　名　Maleficent<br />
年　　代　2014<br />
国　　家　美国/英国<br />
类　　别　动作/奇幻/冒险/家庭<br />
语　　言　英语<br />
字　　幕　中文字幕<br />
评　　分　7.3/10 from 97,207 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1587310" target="_blank">http://www.imdb.com/title/tt1587310</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　979 MB<br />
片　　长　98 Min<br />
导　　演　罗伯特·斯托姆伯格 Robert Stromberg<br />
主　　演　安吉丽娜·朱莉 Angelina Jolie ....玛琳菲森 Maleficent<br />
　　　　　艾丽·范宁 Elle Fanning ....爱洛公主 Princess Aurora<br />
　　　　　沙尔托·科普雷 Sharlto Copley ....斯特凡国王 Stefan<br />
　　　　　萨姆·赖利 Sam Riley ....迪瓦尔 Diaval<br />
　　　　　布兰顿·思怀兹 Brenton Thwaites ....菲力王子 Prince Phillip<br />
　　　　　莱丝利·曼维尔 Lesley Manville ....蓝果仙子 Flittle<br />
　　　　　伊梅尔达·斯汤顿 Imelda Staunton ....红叶仙子 Knotgrass<br />
　　　　　朱诺·坦普尔 Juno Temple ....绿蕨仙子 Thistletwit<br />
　　　　　艾拉·彭内尔 Ella Purnell ....少女玛琳菲森 Teen Maleficent<br />
　　　　　杰克森·贝武思 Jackson Bews ....少年斯特凡 Teen Stefan<br />
　　　　　伊索贝·莫洛伊 Isobelle Molloy ....儿时玛琳菲森 Young Maleficent<br />
　　　　　迈克尔·希金斯 Michael Higgins ....儿时斯特凡 Young Stefan</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　玛琳菲森（安吉丽娜·朱莉饰）曾是一个美丽纯洁，拥有翅膀能够飞翔的年轻仙子，生长于宁静祥和的森林王国。然而美好的时光总是短暂的，王国突遭人类军队侵袭，玛琳菲森在战斗中逐渐成长为这片森林的守护者，同时也遭受到了无情背叛，从此她的心灵开始变得冷酷，脑海只剩复仇的念头。为了报复，她给人类国王的女儿爱洛公主施下恶咒；然而随着爱洛的成长，玛琳菲森才逐渐意识到——这位小公主不仅能给两个世界带来和平，也许还能给自己带来真正的快乐。<br />
<br />
　　在宁静祥和的摩尔王国，广袤的大森林中，动物与精灵和谐相处，无忧无虑。那一年，天真无邪的小仙女玛琳菲森（伊莎贝尔·莫洛伊 Isobelle Molloy 饰）邂逅了人类小男孩斯特凡（迈克尔·希金斯 Michael Higgins 饰）。他们两小无猜，成为亲密无间的好朋友，更在万物的守护下坠入爱河。但是随着年龄的增长，斯特凡（沙尔托·科普雷 Sharlto Copley 饰）褪去了往日的纯真，被人类的贪欲所吸引。而玛琳菲森（安吉丽娜·朱莉 Angelina Jolie 饰）则成长为法术强大的仙女。愚蠢的人类向摩尔王国开展，斯特凡为了成为王位继承者，残忍地割下了玛琳菲森的翅膀。<br />
<br />
　　肉体的痛苦和心灵的创伤，让玛琳菲森变成了满怀仇恨的冷酷魔女，为了复仇她给斯特凡的女儿爱洛公主（艾丽·范宁 Elle Fanning 饰）施下了沉睡魔咒……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　出演片名人物的安吉丽娜·朱莉在谈及这个经典角色时称，玛琳菲森实际上是一个很伟大的人，但她是不完美的。她认为，编剧琳达·沃尔夫在打碎原有故事的同时，不是对故事做了简单的简化或逆转，而是讲了一个更大的故事，&quot;我们的挑战是站在另一个角度去看问题&quot;。<br />
<br />
　　影片中作为反角的主人公玛琳菲森头上长角，皮肤绿色，能变身成黑紫色的巨龙。谈及角色造型时，朱莉称造型正在完善中，但牛角是不可缺少的，&quot;牛角装&quot;很适合自己，她也从中获得了很多乐趣。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·朱莉的女儿薇薇安在片中扮演小时候的爱洛公主。朱莉表示让女儿出演角色完全是“形势所趋”，其他三四岁的小演员都被她头上的角和尖尖的指甲吓坏了，但是又需要一个孩子演对手戏，只能是薇薇安。<br />
<br />
·为了片中的夸张造型，朱莉每次拍戏前都要在脸颊上贴些东西，以突出颧骨，鼻子也是刻意做高的。<br />
<br />
·本片导演罗伯特·斯托姆伯格曾担任《阿凡达》、《爱丽斯梦游仙境》和《魔境仙踪》的艺术指导。《沉睡魔咒》是他首度担纲导演的大制作。<br />
<br />
·朱莉在谈到对角色的理解时指出，“《沉睡魔咒》并不是单纯的讲述一个反派女巫的故事，而是要探索一个人是如何一步步走向邪恶，也就是‘坏人是怎样炼成的’，影片的重点是揭露女巫背后的故事。”<br />
<br />
·著名女歌手Lana Del Rey为本片翻唱了老版的主题曲《Once Upon a Dream》，她是由安吉丽娜·朱莉本人钦点的人选。<br />
<br />
·影片是迪士尼公司有史以来在一位新人导演身上投资最大的影片，超过了2010年的《创战纪》。<br />
<br />
·本片于2014年5月30日起开始上映，而这也正好是1959年版《睡美人》的上映55周年纪念日。<br />
<br />
·《沉睡魔咒》是朱莉自从2010年《致命伴旅》时隔四年之后主演的第一部新作。<br />
<br />
·本片中玛琳菲森的扮演是一只乌鸦，名叫Diaval(发音与魔鬼devil类似)，而老版中乌鸦的名叫叫做Diablo，是西班牙语中恶魔的意思。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：玛琳菲森（安吉丽娜·朱莉饰）曾是一个美丽纯洁，拥有翅膀能够飞翔的年轻仙子，生长于宁静祥和的森林王国。然而美好的时光总是短暂的，王国突遭人类军队侵袭，玛琳菲森在战斗中逐渐成长为这片森林的守护者，同时也遭受到了无情背叛，从此她的心灵开始变得冷酷，脑海只剩复仇的念头。为了报复，她给人类国王的女儿爱洛公主施下恶咒；然而随着爱洛的成长，玛琳菲森才逐渐意识到——这位小公主不仅能给两个世界带来和平，也许还能给自己带来真正的快乐。在宁静祥和的摩尔王国，广袤的大森林中，动物与精灵和谐相处，无忧无虑。那一年，天真无邪的小仙女玛琳菲森（伊莎贝尔·莫洛伊 Isobelle Molloy 饰）邂逅了人类小男孩斯特凡（',N'美国/英国',N'动作/奇幻/冒险/家庭',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-616552-1-1.html',N'http://www.lwgod.com/attachment.php?aid=900150&amp;k=188652165e84254dffec5ee9eee0293c&amp;t=1412261732&amp;sid=58a8cBZTocdAgYI5QIEuj1NO3v%2FWS8%2BKtbQPjXU3FZDstYw',N'2014/10/2 22:57:22',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 424,N'【美14超高分必看】【星运里的错】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/xingyunlidecuo/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/xingyunlidecuo/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　星运里的错/生命中的美好缺憾(港)/命运的错/无比美妙的痛苦<br />
片　　名　The Fault in Our Stars<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　剧情/爱情<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　<font color="red">8.2/10 from 75,966 users</font><br />
链　　接　<a href="http://www.imdb.com/title/tt2582846" target="_blank">http://www.imdb.com/title/tt2582846</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.10 GB<br />
片　　长　133 Min<br />
导　　演　乔什·波恩 Josh Boone<br />
主　　演　谢琳·伍德蕾 Shailene Woodley ....Hazel<br />
　　　　　安塞尔·埃尔格特 Ansel Elgort ....Gus<br />
　　　　　奈特·沃尔夫 Nat Wolff ....Isaac<br />
　　　　　劳拉·邓恩 Laura Dern ....Frannie<br />
　　　　　山姆·特拉梅尔 Sam Trammell ....Michael<br />
　　　　　威廉·达福 Willem Dafoe ....Van Houten<br />
　　　　　洛特·弗贝克 Lotte Verbeek ....Lidewij<br />
　　　　　Ana De La Cruz ....Dr. Maria<br />
　　　　　Randy Kovitz ....Dr. Simmons<br />
　　　　　Toni Saldana ....Flight Attendant<br />
　　　　　David Whalen ....Gus'' Dad<br />
　　　　　Mia Govich ....Gus'' Mom</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　电影根据约翰·格林同名小说改编，讲述了两个患有癌症的青少年间有关爱情，生命和死亡的故事。16岁少女海蓁患有肺癌，最近病情似乎有所缓解，但对于这样的奇迹她并没有感到特别高兴，因为她还是得不断接受治疗，每次的诊疗都仿佛在刻印着她生命最后的篇章，氧气罐更是成为了维持她生命不可或缺的陪伴。直到她青少年癌友互助会认识了同样身患骨癌的男孩奥古斯塔斯，她的人生开启了新的扉页……<br />
<br />
　　海泽尔（谢琳·伍德蕾 Shailene Woodley 饰）是一名十六岁的美丽少女，正处在黄金年代的她本该和其他同龄人一样尽情享受生命和青春带来的快乐与希望，但无情的病魔找上了海泽尔，她是一名肺癌患者。<br />
<br />
　　尽管最近病情有所好转，但海泽尔的心情却并没有因此而轻松半分，癌症随时可能复发的阴影和无法中断的治疗如影随形，让海泽尔对生命几乎失去了所有的热情和希望。一次偶然中，海泽尔在癌友互助会中结识了名叫奥古斯都（安塞尔·埃尔格特 Ansel Elgort 饰）的英俊男孩，他所患的是骨癌。两个境遇相似的年轻人很快就越走越近，他们在一起，探索着上帝留给他们的小小的一片世界，海泽尔也因此看到了未来和希望。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　影片投资约1200万美元，电影根据约翰-格林同名小说改编，由于原著拥有较多粉丝，电影开拍后便广受瞩目，电影预告片发布后迅速成为YouTube最受欢迎预告片。影片对两个年轻人的生活进行了真实写照，同时让很多人为之伤感流泪，电影试映后，被一些媒体盛赞是一部伟大的爱情电影。也有记者调侃电影的催泪，说看片现场就像是追掉会，几百人同时在大哭。<br />
<br />
　　电影剧本的初稿在两周内完成，之后片方开始海选主演，参加试镜女主角的人数达到了200人，最终谢琳-伍德蕾凭借特殊的魅力赢得了角色。编剧斯科特说，自己是原著的超级粉丝，如果他不去改编成剧本，其他人也会这样么去做，而且他们很可能把事情搞砸。斯科特还表示，电影版的故事会非常接近小说，书迷一定会满意。本片的制片人威克-戈弗雷曾是《暮光之城》制片人，这次参与本片的制作他表示受益更多，首先他觉得原著令他感动，看到了年轻人身上的特殊力量。相比《暮光之城》，本片的故事更真实，而且是关于爱情和生死，可以得到更多感情上的共鸣。戈弗雷还认为男女主角是最完美的一对银幕情侣，他在不同电影中和很多银幕情侣工作过，但他认为伍德蕾和埃尔格特之间产生的化学反应不可否认，“他们是那么的完美”，伍德蕾的声音优雅，具有独特的气质。他们俩是很好的演员，将超越任何电影，因为他们是如此与众不同。<br />
<br />
　　BOM票房网副总裁认为影片在全球范围内都会得到年轻观众的支持，票房会爆棚。他预测电影北美首周票房可能会达到4500万美元，甚至超越同日上映的汤姆-克鲁斯的新片《明日边缘》。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：电影根据约翰·格林同名小说改编，讲述了两个患有癌症的青少年间有关爱情，生命和死亡的故事。16岁少女海蓁患有肺癌，最近病情似乎有所缓解，但对于这样的奇迹她并没有感到特别高兴，因为她还是得不断接受治疗，每次的诊疗都仿佛在刻印着她生命最后的篇章，氧气罐更是成为了维持她生命不可或缺的陪伴。直到她青少年癌友互助会认识了同样身患骨癌的男孩奥古斯塔斯，她的人生开启了新的扉页……海泽尔（谢琳·伍德蕾 Shailene Woodley 饰）是一名十六岁的美丽少女，正处在黄金年代的她本该和其他同龄人一样尽情享受生命和青春带来的快乐与希望，但无情的病魔找上了海泽尔，她是一名肺癌患者。尽管最近病情有所好转，但海泽尔',N'美国',N'剧情/爱情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616088-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898632&amp;k=244d0ec2f6b0737a57516466e943267c&amp;t=1412261735&amp;sid=3303KEpARVYWDPmRWDVTzw6lvFTYijze1jimH%2BN34sjBtOw',N'2014/10/2 22:57:22',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 425,N'【日14好评】【白雪公主杀人事件】【BluRay-720P.MKV】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/baixuegongzhu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/baixuegongzhu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　白雪公主杀人事件<br />
片　　名　The Snow White Murder Case<br />
年　　代　2014<br />
国　　家　日本<br />
类　　别　悬疑/剧情<br />
语　　言　日语<br />
字　　幕　中文简繁<br />
评　　分　7.2/10 from 85 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3096712" target="_blank">http://www.imdb.com/title/tt3096712</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.04 GB<br />
片　　长　126 Min<br />
导　　演　中村义洋 Yoshihiro Nakamura<br />
主　　演　井上真央 Mao Inoue ....城野美姫<br />
　　　　　绫野刚 Go Ayano ....赤星雄治<br />
　　　　　莲佛美沙子 Misako Renbutsu ....狩野里沙子<br />
　　　　　菜菜绪 Nanao ....三木典子<br />
　　　　　贯地谷诗穗梨 Shihori Kanjiya ....谷村夕子<br />
　　　　　金子统昭 Nobuaki Kaneko ....筱山聪史<br />
　　　　　小野惠令奈 Erena Ono ....满岛荣美<br />
　　　　　谷村美月 Mitsuki Tanimura ....前谷みのり<br />
　　　　　染谷将太 Shota Sometani ....长谷川<br />
　　　　　生濑胜久 Katsuhisa Namase ....水谷</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片讲述了化妆品公司的一名美女职员被杀害，而与她同期的同事，普通不起眼的城野美姬突然失踪，成了嫌疑人。一时间，谣言四起，各路媒体的报道蜂拥而至。然而真相又是如何？城野真的是凶手吗？<br />
<br />
　　国定公园的密林中央，一位有着摄人容貌的白领丽人惨遭杀害，乱刀留下的创口将她雪白的衬衣染红，随后尸体更被凶手点燃烧作焦炭。究竟这名美若天仙的女性招致了怎样的仇恨？又是什么样的原因让凶手做出如此疯狂的举动？<br />
<br />
　　警方与民众推理猜测，最终他们疑惑的目光全部聚焦在一位女子的身上，那就是受害者三木典子（菜菜绪 饰）同期入社的同事城野美姬（井上真央 饰）。典子和美姬供职于知名企业日出化妆品公司，与前者形成鲜明对比的是，美姬资质平平，绝不引人注目。电视台综合娱乐节目（Wide Show）导演赤星雄治（绫野刚 饰）对嫌疑人美姬的动机抱有疑问，为了弄清事实真相，他全力以赴奔走，通过美姬的同事、同班同学、家人和乡亲，他搜集了看法不一的大量证言。<br />
<br />
　　与此同时，在信息大爆炸的时代，各路小道消息、猜测、谣言通过网络、电视等媒体迅速传播，宛如病毒般疯长的新闻铺天盖地袭来，令身处其间的当事人、相关者和旁观者莫衷一是，难辨是非。究竟美姬是人们众口声讨谩骂的魔女？还是……<br />
<br />
　　该片根据日本著名推理小说家凑佳苗在2012年推出的同名长篇悬疑小说改编，讲述了某化妆品公司美女社员三木典子惨遭杀害，与典子同属一家公司的美姬（井上真央饰）离奇失踪，因此被媒体和网络大肆报道渲染，导致周围朋友以及同事都将“杀人凶手”的标签贴在了美姬身上。真相到底是什么？美姬真的是杀人恶魔？还是凶手另有其人？<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　畅销推理小说作家凑佳苗的作品，近些年一直是影视人的心头所好。从2010年旬报十佳榜眼《告白》，到老中青三代实力派演员大飙演技的《北方金丝雀》；从冰冷至极悲哀至死的《赎罪》，到现代大都会日本人情感激烈交锋的《夜行摩天轮》，几乎每一部作品都引领着读者和观众掀开一层层人性的面纱，直视灵魂最深处的震撼秘密。2014年，第三部根据凑佳苗作品改编的电影搬上银幕，这便是作家于2012年出版的《白雪公主杀人事件》。<br />
<br />
　　影片以白领丽人遭到残忍手段杀害的恶性案件为开端，围绕这一案件，电视台导演对作为嫌疑人的死者同事城野美姬进行调查，而时下飞速发展的多媒体手段使普罗大众拥有话语权，成为事件直接的参与者和审判者。在世人的目光注视和粗暴臆测下，真实的美姬变得愈加扑朔迷离。<br />
<br />
　　本片导演由中村义洋担任，他最早拍摄了十分钟左右的印象视频，连同企划书一起寄给凑佳苗。精湛的电影语言和叙事技巧博得作者好感，凑佳苗将其称作“最令人期待的客人！”，更大赞影片“非常有趣，让作为原作者的她有了败北感”。中村导演执导的小品《鸭子和野鸭子的投币式自动存放柜》和《两个穿运动服的人》清新出众，随后的“白色荣光系列”则证明了其作为商业片导演的不俗实力，直到2010年集大成的群像剧《金色梦乡》尽情彰显了其杰出的节奏把握能力和创造力，该片亦可看作中村导演迄今为止的巅峰之作。在此之后，中村义洋更多沉湎在小成本小格局作品的打造，虽才华不减当年，却难给人尽兴之感。因此，线索繁多、疑云重重的《白雪公主杀人事件》实可谓中村义洋令人期待已久的商业大片的回归之作！编剧方面，2013年为《稻草之盾》和《永远的0》等票房炸弹执笔的林民夫加盟，与原作和导演组成实力相当的三驾马车，堪为影片质量的又一重要保证。<br />
<br />
　　演员方面，2012年凭借《第八日的蝉》勇夺日本电影金像奖最佳女主角的青年女星井上真央饰演女主角城野美姬，她原本靓丽灵巧的形象与人物大相径庭，一度令凑佳苗颇为担忧，但她在片场为了角色“自毁形象”和全力投入的劲头最终赢得了作家的信任。而根据世人说法不一的证言，她配合表现出来的行为与表情则是对其最为严峻的考验，也是本片的看点之一。追踪美姬脚步调查真相的电视台导演赤星雄治，该角色由近些年在影视剧方面频频出击的当红青年男星绫野刚担任。作为影片主线的死者——白领丽人三木典子，其饰演者是号称九头身美女的菜菜绪。跟随着赤星的脚步，金子统昭、莲佛美沙子、谷村美月、贯地谷诗穗梨、大东骏介、生濑胜久、染谷将太等将近二十名日本知名役者齐齐加盟，其阵容丝毫不亚于当年的《金色梦乡》。他们作为美姬的同事、亲朋甚至毫不相关的旁观者，通过只言片语乃至无端猜测，共同拼凑出一个看不穿、猜不透的犯罪嫌疑人形象。<br />
<br />
　　是黑？是白？是魔女？是天使？是嫉妒？是仇恨？是确有其事？还是无端猜测？一个万众瞩目的嫌疑人，1.3亿国民的证言，最具冲击力的故事就此上演！<br />
<br />
　　本片在日本国内305块银幕上同时公映，首周初登场排名和观众满意度排名均位列第四位。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·中村义洋最初呈现给凑佳苗的视频是绫野刚采访莲佛美沙子的一场戏，配合剧情浮现出来的推特留言让作家认同了导演的细心，所以同意了小说的改编企划。<br />
<br />
·本书灵感始于《告白》电影版流行的时期，凑佳苗在频繁的采访中突然想到，如果各种媒体所热议的不是好事而是一宗杀人案件，人们会说些什么呢？“自己眼中的自己”和“他人眼中的自己”差距怎会如此之大？由此促成了这部新作的诞生。<br />
<br />
·首映式上，菜菜绪当众发愿，“如果影片不能大卖，我就关闭推特！”<br />
<br />
·谈到网络谣言，井上真央透露了一件发生在自己身上的真事。她上初中时有一次为了备战考试，一段时间没在电视上出现，结果就传出她去世的谣言，以致于亲朋都专门打来电话问询。<br />
<br />
·头顶人气女优的光环，井上真央也会对自己偶尔流露出的质朴平凡（地味）感到意外，比如平时坐电车基本不会被人认出来。<br />
<br />
·井上真央对自己的评价，“工作时是天使，个人来讲是恶魔”。<br />
<br />
·2014年3月24日，剧组在六本木举行了限定女性推特用户的见面会。谁知主创刚一登场，绫野刚就提出去厕所，等他返回后，井上真央不失时机调侃“新闻标题绝对会是《绫野刚GO厕所》”。节目进行到一半，中村义洋借评论阿刚扮演的角色的时候兴致盎然大找其乐，“他的角色很接地气，但绝对不酷，因为他是一个上厕所都不能忍忍的男人”。此言一出，阿刚的苦笑和现场的爆笑相映成趣。<br />
<br />
·网络上的留言原本是没有配音的，但制作过程中又需要加进人声，所以导演紧急动员，包括导演、剧组职员、导演夫人以及井上真央都参与了录音工作。井上真央自嘲“连我自己都听不出哪条是我录的，真是地味得可以~”<br />
<br />
·本片是菜菜绪出演的首部电影，她在片中也根据不同人的证言扮演了三种性格不同的三木典子。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：影片讲述了化妆品公司的一名美女职员被杀害，而与她同期的同事，普通不起眼的城野美姬突然失踪，成了嫌疑人。一时间，谣言四起，各路媒体的报道蜂拥而至。然而真相又是如何？城野真的是凶手吗？国定公园的密林中央，一位有着摄人容貌的白领丽人惨遭杀害，乱刀留下的创口将她雪白的衬衣染红，随后尸体更被凶手点燃烧作焦炭。究竟这名美若天仙的女性招致了怎样的仇恨？又是什么样的原因让凶手做出如此疯狂的举动？警方与民众推理猜测，最终他们疑惑的目光全部聚焦在一位女子的身上，那就是受害者三木典子（菜菜绪 饰）同期入社的同事城野美姬（井上真央 饰）。典子和美姬供职于知名企业日出化妆品公司，与前者形成鲜明对比的是，美姬资质平平，',N'日本',N'悬疑/剧情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616455-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899910&amp;k=d389362928d588a4c61dd67261b6b202&amp;t=1412261733&amp;sid=cbebpBPqLjn2QP2T33qw3OEd%2F2gEHwF2HOx5OnYubxujTDc',N'2014/10/2 22:57:23',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 426,N'【美13好评悬疑犯罪力作】【东方】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/east/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/east/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　东方<br />
片　　名　The East<br />
年　　代　2013<br />
国　　家　美国/英国<br />
类　　别　动作/剧情/悬疑<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.9/10 from 31,721 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1869716" target="_blank">http://www.imdb.com/title/tt1869716</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.87 GB<br />
片　　长　116 Min<br />
导　　演　扎尔·巴特曼里 Zal Batmanglij<br />
主　　演　布丽特·马灵 Brit Marling ....Sarah<br />
　　　　　亚历山大·斯卡斯加德 Alexander Skarsg rd ....Benji<br />
　　　　　艾伦·佩姬 Ellen Page ....Izzy<br />
　　　　　威尔伯·菲茨杰拉德 Wilbur Fitzgerald ....Robert McCabe<br />
　　　　　派翠西娅·克拉克森 Patricia Clarkson ....Sharon<br />
　　　　　托比·凯贝尔 Toby Kebbell ....Doc<br />
　　　　　朱莉娅·奥蒙德 Julia Ormond ....Paige<br />
　　　　　比利·斯劳特 Billy Slaughter ....Trevor Landen<br />
　　　　　Anthony Michael Frederick&nbsp;&nbsp;....Randy<br />
　　　　　阿尔迪斯·霍奇 Aldis Hodge<br />
　　　　　Patricia French ....Fake Mom<br />
　　　　　Pamela Roylance ....Diane Wisecarver<br />
　　　　　希罗·弗南德兹 Shiloh Fernandez</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　莎拉·莫斯是一个前FBI的探员，从FBI退休之后，她来到了席勒·布鲁德公司工作，这是一个私人的安保公司。这个公司存在的目的就是保护一切他们的客户所要求要保护的东西，其中的成员都是个中精英。可是这个公司目前却遭受着挑战－－一个叫东方的神迷组织让这个公司非常烦恼。席勒·布鲁德公司的头子沙朗亲自把莫斯从员工中挑选了出来，让她渗透进了东方之中。<br />
<br />
　　东方是由一群无政府主义者自发组织而成的一个组织，他们的存在的目的是打击大公司的犯罪活动，并且把真相公布于众。因为接受过训练，并且发誓要完成这个任务。莫斯很快就渗透进了东方这个组织，并且和其中的成员打成了一片，赢得了他们的信任，并且有望参加他们下一次的行动。可是和东方的成员生活在一起，莫斯渐渐发现自己心中的道德和行为准则发生了变化。<br />
<br />
　　在见到东方的头目本吉之后，莫斯发现东方所存在的意义其实并不是“除暴安良”或者是“劫富济贫”那么简单－－莫斯的生活、个人道德标准和她对世界的认知发生了变化和倾斜……<br />
<br />
<font color="red"><strong><font size="3">一句话评论：</font></strong></font><br />
<br />
影片有着跟大制片公司的间谍电影一样熟练的节奏，作为一部刺激肾上腺素的惊悚片，它几乎成功了。最终的问题不在于其情节过于饱满，而是某些戏剧性不合逻辑。<br />
——indieWIRE<br />
<br />
《东方》是一幅引人注目的画像，讲述在一项事业变成一种痴迷的过程中的所得与所失。<br />
——《娱乐周刊》<br />
<br />
看完《东方》，你会不禁想知道的更多，这对主演布丽特·马灵和导演扎尔·巴特曼里而言是任务的圆满完成，对观众而言则尤为难能可贵，毕竟现在能让人看过之后还在乎的电影不多了。<br />
——《滚石》<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　间谍电影的粉丝<br />
<br />
　　作为公认的才女，影片的编剧和主演布丽特·马灵算是本片的灵魂人物。2011年的那部《另一个地球》让她走进了公众的视线，而这部电影的“横空出世”则让人们再一次惊呼，原来文艺系的女人，也会主演一部有着动作片元素的间谍片。<br />
<br />
　　谈及影片，布丽特·马灵说：“我和扎尔·巴特曼里是间谍片的粉丝，而且我们很想拍摄一部讲述女间谍的故事。而与此同时，我们还想着是不是能把动作片的元素加入到这个间谍故事之中－－我所谓的动作片，并不是像邦德或者是伯恩电影中有那么重的动作元素，而是轻描淡写的，把动作和枪战当做一点点配件来使用。比如说这部电影中的莫斯，她就会使用随手可得的报纸或者是牙线来突出重围。这个人物，是一个公司派出去的间谍，这是我们在以往的间谍片中所没有见过的。这似乎在表明，间谍行为已经是这个国家的公开的秘密了。她潜入的组织，是一个无政府主义者组成的组织，叫做‘东方’。而在这其中，她的所有的观念得到了颠覆，而且，最重要的是，她对自己的认知产生了变化和倾斜。所以，与其说，这是一部间谍片，还不如说，这是一个人发现自我的影片，间谍片不过是一个类型而已。况且，我们还在影片中探讨了很多大公司的腐败，政府官员的渎职等等问题。”<br />
<br />
　　只要涉及到反政府的影片，我们都会认为这是一部反乌托邦的电影，但是在这种其中展示无政府主义－－安那其主义－－还是很新鲜的。影片导演扎尔·巴特曼里说：“当我们在谈论安那其的时候，我们有时在谈论左派，而有的时候也是在谈论右派。其实，谈论政治并不是我们的本意，我们的本意是，展示出在美国大地上的人们的生活；他们对大公司和政府的失望－－我们用了安那其主义这种戏剧化的例子，来表达人们的这种失望和挫败。”<br />
<br />
　　文艺片内核<br />
<br />
　　其实，正如布丽特·马灵所说的，间谍片，只是这部电影的一个外壳，而影片的内核，则是文艺的，因为这个故事的核心主题，讲述的是莫斯个人的变化。布丽特·马灵说：“我感觉到，电影能让人们改变很多看法和观点。这是电影这个媒介的一个很有趣的作用。我对这点也很好奇。在这部电影中，莫斯走进了一个陌生的世界，在这个世界里的遭遇和经验，改变了她的心智，这好像就是一种旅行一样，它改变了角色。而问题是，角色的这种改变，能为角色或者说观众带来什么。这是角色本身的困顿，也是我们在观赏这部电影的时候所经历的困顿。而这也就是我想拍摄这部电影的关键所在－－因为我想知道，观众在看完这部电影之后，会有什么想法或者是改变。”<br />
<br />
　　导演扎尔·巴特曼里说：“影片里没有什么真相，真相就是人们自己也不知道自己是不是需要知道真相。我并不认为我们拍摄《东方》是以改变人们的观点为目的的。其实，我也不知道电影史上有几部电影是改变了人们的观点的。我只想这部电影能让人们警醒，并且思考一些问题。这种把惊悚片和令人们警醒的想法结合在一起，就成为了《东方》这部电影。这很令人兴奋。毕竟，要融合商业元素和文艺片的风格在一部电影里，还是不多见的。”而谈及这种风格，艾伦·佩姬则表示说，这只是一部电影。她说：“影片的故事很有趣，也很有戏剧性。其中不仅仅有阴谋论，还有无政府主义以及三角恋等等元素。但是我个人并不觉得这部电影有什么实际的参考和隐喻。我觉得，这部电影里的故事，发生在现实生活中的概率，小于百分之一。不过，必须承认，马灵所撰写的这个故事很精彩，很有特色。”<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·本片由主演布丽特·马灵与导演扎尔·巴特曼里共同编剧，他们之前合作了《倾听我的声音》。<br />
<br />
·影片在路易斯安那拍摄，拍摄时间前前后后一共只用了两个月。<br />
<br />
·艾伦·佩姬的角色最早是确定由菲丽希缇·琼斯出演的。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：莎拉·莫斯是一个前FBI的探员，从FBI退休之后，她来到了席勒·布鲁德公司工作，这是一个私人的安保公司。这个公司存在的目的就是保护一切他们的客户所要求要保护的东西，其中的成员都是个中精英。可是这个公司目前却遭受着挑战－－一个叫东方的神迷组织让这个公司非常烦恼。席勒·布鲁德公司的头子沙朗亲自把莫斯从员工中挑选了出来，让她渗透进了东方之中。东方是由一群无政府主义者自发组织而成的一个组织，他们的存在的目的是打击大公司的犯罪活动，并且把真相公布于众。因为接受过训练，并且发誓要完成这个任务。莫斯很快就渗透进了东方这个组织，并且和其中的成员打成了一片，赢得了他们的信任，并且有望参加他们下一次的行动。可是',N'美国/英国',N'动作/剧情/悬疑',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-616081-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898609&amp;k=4f4db7967841deef89f196f98de22baf&amp;t=1412261736&amp;sid=d14azK1Mc4DNKGUhL0VHSXbrWmpuYnZ0hW%2FupjGdKEwbeHo',N'2014/10/2 22:57:23',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 427,N'【美14票房惊悚大片】【奥核之眼】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/aohezhiyan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/aohezhiyan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　奥核之眼/鬼遮眼(台)/圆窗/复眼/眼/千眼魔<br />
片　　名　Oculus<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　惊悚/恐怖/悬疑<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.5/10 from 35,513 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2388715" target="_blank">http://www.imdb.com/title/tt2388715</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.57 GB<br />
片　　长　104 Min<br />
导　　演　迈克·弗拉纳根 Mike Flanagan<br />
主　　演　凯缇·萨克霍夫 Katee Sackhoff ....Marie Russell<br />
　　　　　凯伦·吉兰 Karen Gillan ....Kaylie Russell<br />
　　　　　罗利·科奇瑞恩 Rory Cochrane ....Alan Russell<br />
　　　　　詹姆斯·拉夫尔提 James Lafferty ....Michael<br />
　　　　　布兰顿·思怀兹 Brenton Thwaites ....Tim Russell<br />
　　　　　米格尔·桑多瓦尔 Miguel Sandoval ....Dr. Graham<br />
　　　　　安娜丽莎·巴索 Annalise Basso ....Young Kaylie Russell<br />
　　　　　Garrett Ryan ....Young Tim Russell<br />
　　　　　Katie Parker ....Annie<br />
　　　　　Courtney Bell ....Auctioneer<br />
　　　　　Kate Siegel ....Marisol</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　提姆和凯莉幼时目睹了父母惨死的悲剧，经过长年调查，凯莉相信老家中的古董镜有着邪恶诅咒，历代的拥有者都不得善终，也是导致他们家破人亡的原因，兄妹俩回到老家寻求证据，试图摧毁古董镜，不料，他们的记忆开始回溯，面对那段不堪回首的往事，惨痛地令人难以窒息，开始无法分辨现实和幻觉，身处记忆尘封中惨案发生的那一夜…<br />
<br />
　　蒂姆（布兰顿·思怀兹 Brenton Thwaites 饰）和凯丽（凯伦·吉兰 Karen Gillan 饰）背负着灰暗而又沉重的过去，眼睁睁地看着父母在面前悲惨地死去，这成为了兄妹两人记忆中无法痊愈的伤痕。时间飞快地流逝着，然而伤痛却没有因此而淡去，在此期间，蒂姆和凯丽一直都没有放弃过寻求真相的机会。终于，功夫不负有心人，两人发现，一切惨剧的始作俑者就藏在家中的古董镜子之中。<br />
<br />
　　为了终结悲剧，蒂姆和凯丽返回老家想要将镜子摧毁，令两人没有想到的是，他们的举动却在无意之间成为了打开地狱大门的钥匙。鲜血、恐惧、愤怒、悲哀，在排山倒海而来的回忆之中，他们开始搞不清楚，究竟什么是虚幻，什么是现实。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：提姆和凯莉幼时目睹了父母惨死的悲剧，经过长年调查，凯莉相信老家中的古董镜有着邪恶诅咒，历代的拥有者都不得善终，也是导致他们家破人亡的原因，兄妹俩回到老家寻求证据，试图摧毁古董镜，不料，他们的记忆开始回溯，面对那段不堪回首的往事，惨痛地令人难以窒息，开始无法分辨现实和幻觉，身处记忆尘封中惨案发生的那一夜…蒂姆（布兰顿·思怀兹 Brenton Thwaites 饰）和凯丽（凯伦·吉兰 Karen Gillan 饰）背负着灰暗而又沉重的过去，眼睁睁地看着父母在面前悲惨地死去，这成为了兄妹两人记忆中无法痊愈的伤痕。时间飞快地流逝着，然而伤痛却没有因此而淡去，在此期间，蒂姆和凯丽一直都没有放弃过寻求真',N'美国',N'惊悚/恐怖/悬疑',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616454-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899909&amp;k=5765be059f74f114551f8c6b0bd29f5c&amp;t=1412261737&amp;sid=35b2VlY9bsSotmUUggcZcfXSdmhAE%2F%2FGmEIrtpjVsUbv%2BTw',N'2014/10/2 22:57:24',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 428,N'【吴镇宇林心如14大制作】【京城81号】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/jingcheng81hao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.01/jingcheng81hao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　京城81号/朝内81号<br />
片　　名　The House That Never Dies<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　剧情/悬疑/惊悚<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
评　　分　6.7/10 from 57 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3816526" target="_blank">http://www.imdb.com/title/tt3816526</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　894 MB<br />
片　　长　90 Min<br />
导　　演　叶伟民 Wai Man Yip<br />
主　　演　吴镇宇 Francis Ng ....霍连修<br />
　　　　　林心如 Ruby Lin ....许若卿/陆蝶玉<br />
　　　　　杨佑宁 Tony Yang ....霍连齐<br />
　　　　　莫小棋 Monica Mok ....琉璃<br />
　　　　　夏文汐 Pat Ha ....大嫂<br />
　　　　　李菁 Jing Li ....霍连平<br />
　　　　　秦海璐 Hailu Qin ....心理医生<br />
　　　　　金燕玲 Elaine Jin<br />
　　　　　袁祥仁 Cheung-Yan Yuen<br />
　　　　　李晓川 Xiaochuan Li<br />
　　　　　韩志 Zhi Han</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　民国初年，位于京城八大胡同内的青楼歌舞升平，尤以头牌陆蝶玉艳惊四座，引得万人空巷。但她早已倾心京城大户霍家三少爷，几经波折，陆蝶玉嫁入霍家。怎料新婚之夜新郎却变成刚刚过世的霍家二少爷,冥婚后不久陆蝶玉离奇怀孕，一时鬼胎传言四起，家族上下不安，不久便举家惨遭灭门，留下阴宅保留至今……<br />
<br />
　　一百年后，81号古宅后人许若卿重返故居，百年前发生在这里的惨案历历在目。同时，她的出现也意外唤起了古宅内尘封已久的孤魂孽怨……<br />
<br />
　　台湾女作家许若卿（林心如 饰）为了与情人赵亦堂（吴镇宇 饰）生活在一起而迁居内地，临走前母亲（金燕玲 饰）给了她祖上留下来的老宅钥匙，于是若卿带着女儿小梦（张煜雯 饰）住进了传说中的凶宅——朝内81号。亦堂的妻子（夏文汐 饰）不肯离婚，加上他常因工作与秘书琉璃（莫小棋 饰）在一起，这让若卿心神不宁。诺大的宅子除了一名老佣人（袁祥仁 饰）便无他人，可是小梦却说自己常与一个红衣小姐姐玩耍，大胆的若卿想要一探究竟，却意外发现了宅子的尘封往事。原来这一切与老宅原来的主人霍家三兄弟息息相关，霍家三少爷霍连奇（杨佑宁 饰）一心想娶青楼头牌陆蝶玉为妻，陆蝶玉却阴差阳错与二少爷（李菁 饰）进行了冥婚，这一场闹剧直接导致了日后霍家的全面衰败……而现实中若卿愈发地感觉到了宅子的超自然力量。<br />
<br />
　　本片改编自民间传说的四大凶宅之首“朝内81号”的诡异故事。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·《朝内81号》是导演叶伟民、编剧文隽继《人在囧途》、《绣花鞋》之后再度联手之作。据了解，该片以近亿元的投资，长达三年的筹备期，一年的制作期，成为二人合作以来的“最大手笔”。<br />
<br />
·影片筹备期间剧组实地探访朝内81号内部收集第一手资料，素材多达3千页，超过100万字。影片先后在北京、无锡等地取实景拍摄，制作拍摄期长达一年。<br />
<br />
·文隽表示“影片中的故事都来源于非常真实的感受。许多人都表示在大胆走进朝内81号后，都会产生一种时空错位感，仿佛置身民国乱世，进入另一个时空。而我想这应该就是朝内81号的魅力所在。”<br />
<br />
·《朝内81号》剧组斥资千万，1:1实景还原&quot;鬼宅&quot;朝内81号。<br />
<br />
·《朝内81号》掷8000万巨额，请来吴镇宇、林心如等影帝鬼后领衔主演，金马金像双奖造型大师张世杰、《色o戒》美术指导刘世运等重量级幕后大师为影片打造磅礴大气的视觉特效。<br />
<br />
·2014年5月16日影片由《朝内81号》正式改名为《京城81号》。<br />
<br />
·片中使用多达12900个道具，如雕花的门框、奢华的木棺、古朴的摆设，这些道具很难搞定，里面有些是古董，需要到处去借用，而且要注意不能碰坏，很贵。<br />
<br />
·该片是第一部以“东方四大鬼宅之首”为故事载体的惊悚片，第一部3D呈现的惊悚片，以及第一部专注讲述“东方惊悚”的惊悚片。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：民国初年，位于京城八大胡同内的青楼歌舞升平，尤以头牌陆蝶玉艳惊四座，引得万人空巷。但她早已倾心京城大户霍家三少爷，几经波折，陆蝶玉嫁入霍家。怎料新婚之夜新郎却变成刚刚过世的霍家二少爷,冥婚后不久陆蝶玉离奇怀孕，一时鬼胎传言四起，家族上下不安，不久便举家惨遭灭门，留下阴宅保留至今……一百年后，81号古宅后人许若卿重返故居，百年前发生在这里的惨案历历在目。同时，她的出现也意外唤起了古宅内尘封已久的孤魂孽怨……台湾女作家许若卿（林心如 饰）为了与情人赵亦堂（吴镇宇 饰）生活在一起而迁居内地，临走前母亲（金燕玲 饰）给了她祖上留下来的老宅钥匙，于是若卿带着女儿小梦（张煜雯 饰）住进了传说中的凶宅——',N'中国',N'剧情/悬疑/惊悚',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-616080-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898608&amp;k=ad3f045dfa3710cd66ed79d511b85940&amp;t=1412261737&amp;sid=375ad2XNlK4i5a8pukakV6nqaDencgsPbCyYWOqNfiRKofA',N'2014/10/2 22:57:24',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 429,N'【美14超高分票房】【乐高大电影】【BluRay-720P.MKV】【三语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/legao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/legao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　乐高大电影/LEGO英雄传(港)/乐高玩电影(台)<br />
片　　名　The Lego Movie<br />
年　　代　2014<br />
国　　家　澳大利亚/美国/丹麦<br />
类　　别　喜剧/动作/动画/冒险<br />
语　　言　<font color="red"><font size="3">英语国语粤语三音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.9/10 from 142,504 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1490017" target="_blank">http://www.imdb.com/title/tt1490017</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.84 GB<br />
片　　长　100 Min<br />
导　　演　克里斯·米勒 Chris Miller<br />
　　　　　菲尔·罗德 Phil Lord<br />
主　　演　克里斯·帕拉特 Chris Pratt ....Emmet (voice)<br />
　　　　　摩根·弗里曼 Morgan Freeman ....Vitruvius (voice)<br />
　　　　　威尔·法瑞尔 Will Ferrell ....President Business (voice)<br />
　　　　　寇碧·史莫德斯 Cobie Smulders ....Wonder Woman (voice)<br />
　　　　　查宁·塔图姆 Channing Tatum ....Superman (voice)<br />
　　　　　乔纳·希尔 Jonah Hill ....Green Lantern (voice)<br />
　　　　　伊丽莎白·班克斯 Elizabeth Banks ....Wyldstyle (voice)<br />
　　　　　连姆·尼森 Liam Neeson ....Bad Cop / Good Cop (voice)<br />
　　　　　爱丽森·布里 Alison Brie ....Uni-Kitty (voice)<br />
　　　　　尼克·奥弗曼 Nick Offerman ....Craggy (voice)<br />
　　　　　查理·戴 Charlie Day ....Spaceman Benny (voice)<br />
　　　　　威尔·阿奈特 Will Arnett ....Batman (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片讲述了一个普通乐高小人艾米特（克里斯·帕拉特 配音）被错当成了“大师建造者”而加入进一支抵抗组织，与一位类似先知一样的人物（摩根·弗里曼 配音）一起力图阻止乐高世界邪恶暴君（威尔·法瑞尔 配音）的阴险计划。<br />
<br />
　　艾米特（克里斯·帕拉特 Chris Pratt 配音）是乐高世界中一个普通到没有任何存在感的建筑师，他每天精神饱满，乐观向上，按照说明书的指示从事一天的活动。某天收工后，他意外掉入一个深洞，后背还黏了奇怪的东西，随后就被兼具凶暴和善良两面的警察（利亚姆·尼森 Liam Neeson 配音）带走问话。原来统治乐高世界的总裁（威尔·法瑞尔 Will Ferrell 配音）对那些极富创造力的小人极为不满，他讨厌不同系列的乐高世界相互交叉，更讨厌脱离了说明书独辟蹊径的发明创造。因此他将所有世界隔开，囚禁了那些创意大师，还策划着一场可怕的阴谋。艾米特危机时刻被露西（伊丽莎白·班克斯 Elizabeth Banks 配音），并被先知维特鲁维斯（摩根·弗里曼 Morgan Freeman 配音）认定为救世主。<br />
<br />
　　暴风雨般的迫害袭向创意大师们，想象力贫乏的艾米特能否担此重任？<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　从2008年开始，华纳电影公司就在发展《乐高大电影》的项目。2010年，《天降美食》的导演菲尔·罗德和克里斯托弗·米勒在作品受到肯定后，被华纳看中请来撰写并执导《乐高大电影》。2011年，电影公司通过了他们的剧本，并敲定该片在2014年全面上映。澳大利亚的工作室“动物逻辑”签约负责制作将近80%的影片。由于华纳获得的版权许可，电影几乎用乐高玩具恶搞了所有人们所热爱的英雄角色和场景，包括哈利波特、指环王、辛普森、忍者神龟、超人和蝙蝠侠。克里斯·米勒说，他拿到了想要的一切许可，唯一的限制是他必须在100分钟内将一个故事讲出来，防止成吨的笑料和客串将观众的注意力分散。即便让华纳废了很多心思在版权法律方面的谈判，他们依旧借用了各路超级英雄的世界。“让那些从未有交集的世界能碰撞在一起，才是最重要的。因为这正是孩子们如何看待乐高的世界，他们就是这么玩的。我儿子常将蝙蝠侠和楚巴卡还有牛仔一起放进宇航船。”导演克里斯·米勒说如是说。当然，他还得考虑这些是否可以推动情节的发展，并且“是否真的有趣”。<br />
<br />
　　剩下的就是致力于如何让这些小方块堆起来的小人在镜头前具有生命力，菲尔·卢德让电脑动画师建构出每个小方块，然后再把人物集中在一起将他们绘制成乐高建造出来的样子。虽然最后的效果卓绝，但制作过程比他想象的要更难。银幕上的乐高总是有点不完美，好像根本没法在实际生活中成功组建起来一样，而且若是让乐高的表面有光泽只会让一切看起来很假。好在他们找到了让玩具更像家用乐高的方式，用真实的色彩和提线木偶一般的表演掩盖玩具缺乏表情的问题。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·影片虽然每一帧都是用电脑CGI完成，但风格上却刻意模仿“定格动画”的效果，为的是让片中的角色看起来就像真的乐高玩具。<br />
<br />
·本片是摩根·弗里曼参与配音的第一部动画电影。<br />
<br />
·尽管出现在片名中，但“乐高(Lego)”这个词在电影中一次也没有被用到。<br />
<br />
·在本片中客串出现的乐高玩具角色包括：Johnny Thunder、Johnny Thunder、Lloyd Garmadon、星战系列的C-3PO、Han Solo和Lando Calrissian、忍者神龟、邓布利多、甘道夫、NBA球星奥尼尔等等。<br />
<br />
·影片中的“中部新西兰世界”(Middle Zealand world)是为了向《魔戒》系列中的“中土”致敬。电影版《魔戒》的中土就是在导演杰克逊的家乡新西兰搭建取景的。<br />
<br />
·本片由华纳制作，当中不仅出现了DC漫画英雄中的角色，同时也出现了来自星战中的角色。星战系列版权目前归迪士尼公司所有，而迪士尼也是漫威的母公司。众所周知，DC与漫威是一对竞争对手。<br />
<br />
·影片中绿灯侠与蝙蝠侠组成了一对搭档。这两个角色分别由乔纳·希尔和查宁·塔图姆配音。这两人在联合主演的影片《龙虎少年队》中也是一对搭档。<br />
<br />
·艾玛·斯通(《超凡蜘蛛侠》)与小罗伯特·唐尼(《钢铁侠》)一开始打算为影片的主角配音，后因档期冲突而退出。<br />
<br />
·寇碧·史莫德斯在本片中客串为“神奇女侠”配音。她还在美剧《神盾局》中饰演希尔探员。这两个角色分别来相互竞争的DC和漫威动画，而乐高同时拥有两家漫画公司的许可权。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：影片讲述了一个普通乐高小人艾米特（克里斯·帕拉特 配音）被错当成了“大师建造者”而加入进一支抵抗组织，与一位类似先知一样的人物（摩根·弗里曼 配音）一起力图阻止乐高世界邪恶暴君（威尔·法瑞尔 配音）的阴险计划。艾米特（克里斯·帕拉特 Chris Pratt 配音）是乐高世界中一个普通到没有任何存在感的建筑师，他每天精神饱满，乐观向上，按照说明书的指示从事一天的活动。某天收工后，他意外掉入一个深洞，后背还黏了奇怪的东西，随后就被兼具凶暴和善良两面的警察（利亚姆·尼森 Liam Neeson 配音）带走问话。原来统治乐高世界的总裁（威尔·法瑞尔 Will Ferrell 配音）对那些极富创造力的',N'澳大利亚/美国/丹麦',N'喜剧/动作/动画/冒险',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616449-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899878&amp;k=8238526f7c087f5a3682dc2719d5e4fc&amp;t=1412261739&amp;sid=de47PrwEykIkRc5lGtJ3UUV4%2FmSHlAYDTHDek5KeC6A97HM',N'2014/10/2 22:57:24',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 430,N'【港14荒诞末世力作】【那夜凌晨】【BluRay-720P.MKV】【中字】',N'<font color="blue"><font size="5">本片片名很长，标题放不下，所以简略了！<br />
全名是：《那夜凌晨，我坐上了旺角开往大埔的红VAN》</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/nayelingchen/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/nayelingchen/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　那夜凌晨，我坐上了旺角开往大埔的红VAN<br />
片　　名　The Midnight After<br />
年　　代　2014<br />
国　　家　中国香港<br />
类　　别　悬疑/惊悚<br />
语　　言　粤语<br />
字　　幕　中文简繁<br />
评　　分　5.9/10 from 254 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3504824" target="_blank">http://www.imdb.com/title/tt3504824</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.73 GB<br />
片　　长　121 Min<br />
导　　演　陈果 Fruit Chan<br />
主　　演　任达华 Simon Yam<br />
　　　　　黄又南 You-Nam Wong<br />
　　　　　徐天佑 Ting Yau Tsui<br />
　　　　　薛凯琪 Fiona Sit<br />
　　　　　文咏珊 Janice Man<br />
　　　　　惠英红 Kara Hui<br />
　　　　　李灿森 Sam Lee<br />
　　　　　林雪 Suet Lam<br />
　　　　　卓韵芝 Goo-Bi GC<br />
　　　　　李成昌 Shing-Cheung Lee<br />
　　　　　颜卓灵 Cherry Ngan</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片讲述了主角游梓池坐上凌晨时分的红色小巴回大埔，当小巴穿越狮子山隧道后，彷佛进入另一个世界，除了车上十七个人外，整个世界的人好像都消失了，由此为开端展开的一连串惊险故事。<br />
<br />
　　故事讲述主角游梓池（阿池）于某天晚上和朋友“唱K”过后，于凌晨时份乘坐由九龙旺角前往新界大埔的红色公共小巴（俗称“红van”）回家，该小巴经过狮子山隧道后，主角发现车厢外的世界、所有汽车及人均消失，只剩下小巴本身及车厢内的17人（16名乘客和1名司机），仿佛进入了另外一 个时空。故事发展出一连串的神秘事件，乘客开始一个继一个地无故死亡，而随着头戴防毒面具的神秘人出现令故事谜团重重；主角需要解开一切谜团，以期望可以重回原来的世界。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　该影片改编自人气网络小说，由任达华、文咏珊、林雪、黄又南等主演，全片香港标志元素贯穿始终，在柏林电影节的全球首映上备受关注，也令提前看完片的人表示“值得期待的回归的港产片”。<br />
<br />
　　有着“草根导演”之称的香港陈果最新长片《那夜凌晨，我坐上了旺角开往大埔的红van》，则创下台北电影节闭幕片片名最长纪录！该片于柏林影展首映后，获得全场爆满观众两分多钟的掌声。剧情来自于人气网络小说，透过一群搭上红色车顶公共小巴(当地俗称“红van”)，离奇地穿过狮子山隧道后，众人发现车厢外的世界、所有汽车及人均消失，只剩下小巴本身及车厢内的十七人，融合悬疑、科幻、惊悚、荒谬、政治隐喻与黑色幽默，片中演员有大量粗口，又包含奸尸、核爆等敏感题材，更被外界解读影射政府无能，导演陈果坦言压力很大。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：影片讲述了主角游梓池坐上凌晨时分的红色小巴回大埔，当小巴穿越狮子山隧道后，彷佛进入另一个世界，除了车上十七个人外，整个世界的人好像都消失了，由此为开端展开的一连串惊险故事。故事讲述主角游梓池（阿池）于某天晚上和朋友“唱K”过后，于凌晨时份乘坐由九龙旺角前往新界大埔的红色公共小巴（俗称“红van”）回家，该小巴经过狮子山隧道后，主角发现车厢外的世界、所有汽车及人均消失，只剩下小巴本身及车厢内的17人（16名乘客和1名司机），仿佛进入了另外一 个时空。故事发展出一连串的神秘事件，乘客开始一个继一个地无故死亡，而随着头戴防毒面具的神秘人出现令故事谜团重重；主角需要解开一切谜团，以期望可以重回原来的',N'中国香港',N'悬疑/惊悚',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616018-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898542&amp;k=491d2484423a936b63a62b9b30f9b209&amp;t=1412261738&amp;sid=13c8h%2BqK6CihTGtTGbWv49qZIG5W4F14utcFm0jJX099x30',N'2014/10/2 22:57:24',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 431,N'【郑伊健周秀娜14大片】【不再说分手】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/fenshou100ci/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.06/fenshou100ci/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　不再说分手/分手100次<br />
片　　名　Break Up 100<br />
年　　代　2014<br />
国　　家　中国香港<br />
类　　别　剧情/爱情<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
评　　分　7.2/10 from 15 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3898860" target="_blank">http://www.imdb.com/title/tt3898860</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　1.03 GB<br />
片　　长　105 Min<br />
导　　演　郑丹瑞 Lawrence Cheng<br />
主　　演　郑伊健 Ekin Cheng ....阿森<br />
　　　　　周秀娜 Chrissie Chau ....小岚<br />
　　　　　王菀之 Ivana Wong ....瑞哥<br />
　　　　　梁钊峰 Andy Leung<br />
　　　　　吴崇铭 King Wu<br />
　　　　　陈健安 On Chan<br />
　　　　　何建曦 Jase Ho<br />
　　　　　温心 Swan ....莱莱<br />
　　　　　何浩鹏 Haopeng He ....飞云<br />
　　　　　杨千嬅 Miriam Yeung<br />
　　　　　葛民辉 Eric Kot<br />
　　　　　钱嘉乐 Kar Lok Chin<br />
　　　　　汤盈盈 Tong Ying-Ying<br />
　　　　　林海峰 Jan Lamb<br />
　　　　　刘仪伟 Yiwei Lau</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　阿森（郑伊健 饰）和小岚（周秀娜 饰）相恋8年，而他们用以维系感情的方法只得两个字——分手。每当小岚以分手作要胁时，阿森都会变成一条死狗去求和，令小岚更加得寸进尺。当他们经历了99次分手后，二人终于认定了彼此，因而许下不能再轻易分手的承诺，更决意要一起为未来打拼，自己当老板，合力经营咖啡店。<br />
<br />
　　一众猪朋狗友如茶餐厅太子女瑞哥（王菀之 饰）、阿森的小学同学飞云（何浩鹏 饰）及咖啡店员4大Boy （C All Star 饰）等人不但见证着咖啡店的成长，同时亦目击营运咖啡店对阿森和小岚这对小情侣所造成的冲击。尤其是当本来平平无奇的咖啡店因着阿森天马行空的鬼主意——《分手迷你仓》，一个可以让所有爱情暴露狂来寄存自己的分手遗物，好让全世界来偷窥的地方——而大受欢迎后，阿森变得不再只以玩乐为先，开始变得成熟，对未来也更有想法。<br />
<br />
　　咖啡店的成功令阿森跟小岚之间的距离愈拉愈远，这时候咖啡店的熟客莱莱（温心 饰）跟阿森的关系又变得暧昧不清，这一切彷佛都在引爆他们的第100次分手……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：阿森（郑伊健 饰）和小岚（周秀娜 饰）相恋8年，而他们用以维系感情的方法只得两个字——分手。每当小岚以分手作要胁时，阿森都会变成一条死狗去求和，令小岚更加得寸进尺。当他们经历了99次分手后，二人终于认定了彼此，因而许下不能再轻易分手的承诺，更决意要一起为未来打拼，自己当老板，合力经营咖啡店。一众猪朋狗友如茶餐厅太子女瑞哥（王菀之 饰）、阿森的小学同学飞云（何浩鹏 饰）及咖啡店员4大Boy （C All Star 饰）等人不但见证着咖啡店的成长，同时亦目击营运咖啡店对阿森和小岚这对小情侣所造成的冲击。尤其是当本来平平无奇的咖啡店因着阿森天马行空的鬼主意——《分手迷你仓》，一个可以让所有爱情暴露',N'中国香港',N'剧情/爱情',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-616448-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899877&amp;k=9be13ad44aa258159cd7a792d0fb8dd6&amp;t=1412261740&amp;sid=48af2LEZeTWCHLm8IwUCRmaAJXXOWM3hiHCMjC5K8PU2VFA',N'2014/10/2 22:57:25',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 432,N'【14票房爆笑】【像男人一样思考2】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/sikao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.31/sikao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　像男人一样思考2/男人行不行2(台)<br />
片　　名　Think Like a Man Too<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　喜剧/爱情<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　5.6/10 from 3,606 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2239832" target="_blank">http://www.imdb.com/title/tt2239832</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.62 GB<br />
片　　长　106 Min<br />
导　　演　蒂姆·斯托瑞 Tim Story<br />
主　　演　迈克尔·伊雷 Michael Ealy ....Dominic<br />
　　　　　杰瑞·费拉拉 Jerry Ferrara ....Jeremy<br />
　　　　　梅根·古德 Meagan Good ....Mya<br />
　　　　　雷吉娜·赫尔 Regina Hall ....Candace<br />
　　　　　塔拉吉·P·汉森 Taraji P. Henson ....Lauren<br />
　　　　　亚当·布罗迪 Adam Brody ....Isaac<br />
　　　　　丹尼斯·海斯伯特 Dennis Haysbert ....Uncle Eddie<br />
　　　　　Terrence Jenkins ....Michael<br />
　　　　　詹妮弗·路易斯 Jenifer Lewis ....Loretta<br />
　　　　　罗曼尼·马尔可 Romany Malco ....Zeke<br />
　　　　　温迪·麦克伦敦-考薇 Wendi McLendon-Covey ....Tish</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　所有的情侣都为了坎迪斯（雷吉娜-赫尔 饰演）和迈克尔（特伦斯-詹金斯 饰演）的婚礼聚集在拉斯维加斯。女孩们和男孩们的单身派对都陷入了大麻烦。本来计划好的浪漫周末因为几对情侣不同的问题面临崩溃的边缘。伴随着乌龙事件发生的是情侣们关系的裂痕：玛雅（梅根-古德 饰演）和泽克（罗曼尼-马尔可 饰演）一直相处的很好，不过泽克不堪回首的过去一直试图抬头破坏这一切。多米尼克和劳伦的关系向来很稳定，但他们都将面临各自的挑战。身为伴郎的塞德里克经历着又一次离婚，而他也是最差劲的伴郎，甚至威胁到了婚礼的正常进行。杰瑞米和克莉丝汀结婚了，这让他们面临着新的难题…<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　在第一部里，这个谈情说爱的喜剧故事在全球获得了将近一亿美元的票房。对于这个几乎全由黑人演员挑大梁的电影来说，这绝对是一项令人印象深刻的成绩。这个电影的灵感来源于史蒂夫-哈维的畅销小说《像女人一样活着，像男人一样思考》。在续集中，一场婚礼又将所有人聚集在了纸醉金迷的赌城。故事围绕雷吉纳-霍尔饰演的坎迪斯展开。坎迪斯是一名单身母亲，把一切都奉献给了六岁的儿子杜克。之后，她遇到了迈克尔，他接纳了她的一切。随后，迈克尔的母亲成了阻挠他们在一起的主要因素，而迈克尔果断地选择与坎迪斯在一起，这成就了他们如今即将步入婚姻殿堂的关系。在续集里，迈克尔的母亲洛雷塔又让他们的关系横生枝节，令迈克尔面临再次的选择。<br />
<br />
　　扮演迈克尔的特伦斯-詹金斯主要活跃在电视银幕上，在近些年于大银幕上有了突破。他把这次拍摄当作是一次放松的机会。他说，这部电影适合全家去观看，他们也在拍摄中获得了很多乐趣。固然影片发扬了“在赌城凡事都可能出错”的精神，但绝没有不能和家人一起分享的东西。虽然在故事里，作为母亲的珍妮弗-刘易斯给两个年轻人出了不少难题，但在片场中，她却让特伦斯学到了很多东西。在拍摄休息的空档，她会给其他演员讲述已逝演员兼歌手图派克-夏库尔的趣事，还有威尔-史密斯在22岁时候的样子。特伦斯感叹道：“她是一个令人难以置信的坚强女人。”让他感到庆幸的是，演员们之间相处的十分融洽，就好像暑假回来上课一般自然。为了能顺利拍摄，摄制组不得不在每天凌晨3点到4点之间赌场歇业的时候赶工。演员们凌晨1点就要梳妆待命，等待演出场地关门。有一场发生在脱衣舞俱乐部的戏，他们不得不拍到了凌晨五点，天将大亮。演员们看到的是往日人满为患的场地空无一人，这绝对是一次对拉斯维加斯的另类接触。<br />
<br />
<font color="red"><strong><font size="3">影片评价：</font></strong></font><br />
<br />
　　“以拉斯维加斯为背景的影片不在少数，《像男人一样思考2》同样祭出赌场、脱衣舞俱乐部以及大量的挑逗性游戏，不过最受欢迎的还是凯文-哈特”，“本片的质量远远超越了败烂的《宿醉3》，如果编剧和公司一直像制作人一样思考，那么系列第三部可定会独具魅力”，“凯文-哈特在这部影片中好似粘合剂一般，数次将游离涣散甚至有可能分崩离析的影片归拢并粘合在一起”<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：所有的情侣都为了坎迪斯（雷吉娜-赫尔 饰演）和迈克尔（特伦斯-詹金斯 饰演）的婚礼聚集在拉斯维加斯。女孩们和男孩们的单身派对都陷入了大麻烦。本来计划好的浪漫周末因为几对情侣不同的问题面临崩溃的边缘。伴随着乌龙事件发生的是情侣们关系的裂痕：玛雅（梅根-古德 饰演）和泽克（罗曼尼-马尔可 饰演）一直相处的很好，不过泽克不堪回首的过去一直试图抬头破坏这一切。多米尼克和劳伦的关系向来很稳定，但他们都将面临各自的挑战。身为伴郎的塞德里克经历着又一次离婚，而他也是最差劲的伴郎，甚至威胁到了婚礼的正常进行。杰瑞米和克莉丝汀结婚了，这让他们面临着新的难题…幕后制作：在第一部里，这个谈情说爱的喜剧故事在全球获',N'美国',N'喜剧/爱情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-616003-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898540&amp;k=2b7a1522bd57bfa7555cf95c4b8af3b6&amp;t=1412261739&amp;sid=451eozUjxQNVPg7LWEvCAgST3undElSRtcRgHkcl%2BtB699c',N'2014/10/2 22:57:25',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 433,N'【汤姆克鲁斯14万众期待】【明日边缘】【HD-1024.MP4】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/mingribianyuan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/mingribianyuan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　明日边缘/异空战士(港)/明日边界(台)/杀戮轮回<br />
片　　名　Edge of Tomorrow<br />
年　　代　2014<br />
国　　家　美国/澳大利亚<br />
类　　别　动作/科幻<br />
语　　言　英语<br />
字　　幕　中文字幕<br />
评　　分　<font color="red">8.1/10 from 103,815 users</font><br />
链　　接　<a href="http://www.imdb.com/title/tt1631867" target="_blank">http://www.imdb.com/title/tt1631867</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　1.10 GB<br />
片　　长　113 Min<br />
导　　演　道格·里曼 Doug Liman<br />
主　　演　汤姆·克鲁斯 Tom Cruise ....威廉·凯奇 Cage<br />
　　　　　艾米莉·布朗特 Emily Blunt ....丽塔·沃拉塔斯基 Rita<br />
　　　　　比尔·帕克斯顿 Bill Paxton ....士官长法瑞尔 Master Sergeant Farell<br />
　　　　　布莱丹·格里森 Brendan Gleeson ....布里格汉姆上将 General Brigham<br />
　　　　　夏洛特·莱李 Charlotte Riley ....兰斯 Nance<br />
　　　　　诺亚·泰勒 Noah Taylor ....卡特博士 Dr. Carter<br />
　　　　　劳拉·普沃 Lara Pulver ....卡伦·劳德 Karen Lord<br />
　　　　　约纳斯·阿姆斯特朗 Jonas Armstrong ....Skinner<br />
　　　　　托尼·魏 Tony Way ....Kimmel<br />
　　　　　奇克·盖瑞 Kick Gurry ....Griff<br />
　　　　　弗兰兹·德拉梅 Franz Drameh ....Ford<br />
　　　　　德拉古米尔·米希克 Dragomir Mrsic ....Kuntz<br />
　　　　　羽田昌义 Masayoshi Haneda ....Takeda</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片描述了一场与外星人的战争，主人公凯奇从未接受过军事训练，却被派到前线作战，这无疑是一场自杀行动。就在他频死的那一刻，他意外地获得穿越时空的能力，能够让他不断地重复生死轮回，一次次重新回到战场。而每经历一次死亡，凯奇的战斗力就增强一分……<br />
<br />
　　未来世界陷入外星人入侵的恐慌中，军事演说家凯奇中校（汤姆·克鲁斯 Tom Cruise 饰）畏惧上战场，他从没想过将军（布莱丹·格里森 Brendan Gleeson 饰）会让他去指挥即将开始的“诺曼底战役”，拒绝接受命令之后将军居然恶整了他，那就是把他当做逃兵扔进了军营中。凯奇被归入了J小队中进行战斗，战役的第一天就惨死在战场，没想到这一死让他拥有了时空循环的能力，而唯一相信他的人就是被称为“全金属战士”的丽塔·沃拉塔斯基（艾米莉·布朗特 Emily Blunt 饰）。二人开始了时空循环作战，在训练凯奇的同时他们发现了控制时间的奥秘，这与外星人“主脑”欧米茄有关，但是唯一能取得胜利的方法就是让凯奇不断死去、不断重启时间。在不断重复登陆那天的战斗的同时，凯奇越来越不想失去丽塔……<br />
<br />
　　本片改编自日本作家樱坂洋的轻小说《杀戮轮回 All you need is kill》。故事背景设定于近未来的地球，在一场全面性的外星物种入侵战争中，凯奇（汤姆·克鲁斯 饰）被送到登陆战的海滩，每天都在重复着必败的死亡激战。而他从未接受过任何军事训练，却奉派到前线与敌人作战，这无疑是一场自杀的作战行动。就在他频死的那一刻，他意外地获得穿越时空回廊的能力，能够让他不断地重复生死轮回，一次又一次地重新回到战场。随着每一次醒来，比尔对战争的经验就更深一层，他越来越了解敌人的弱点，在战场上的存活时间也越来越久。他在“战场女武神”丽塔（艾米丽·布朗特 饰）的魔鬼训练下，战斗能力突飞猛进，两人一同并肩作战，终于让这场毫无希望的战争露出一线胜利的曙光。但是凯奇也面临一项痛苦的抉择……<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·本片改编自日本作家樱坂洋的轻小说《杀戮轮回》。但一开始剧组就认为原著的标题过于残酷，与电影版偏喜剧的气氛不符，之后剧组曾用过“我们都是凡人”的标题，最终改为“明日边缘”。<br />
<br />
·影片大部分戏份在英国取景。拍摄地Leavesden Studio曾经是哈利·波特系列影片的片场。<br />
<br />
·影片中比尔·凯奇中士的角色原定由布拉德·皮特出演。他曾经与导演里曼合作过《史密斯夫妇》。<br />
<br />
·汤姆·克鲁斯自从2012年7月20日加入本片的剧组开始筹备工作。那距离他上一部电影《遗落战境》关机尚不到一周时间。<br />
<br />
·汤姆·克鲁斯自掏腰包，花了10万美元为剧组举办了一个盛大的关机派对。但他本人由于还有戏份需要拍摄未能前来参加。<br />
<br />
·丽塔的角色曾经考虑邀请《艺术家》的法国女星贝勒尼丝·贝乔出演。<br />
<br />
·华纳公司为本片开启了一场史无前例的“预告特辑马拉松”，在同一天之内，发布了7支《明日边缘》相关的预告及制作特辑。<br />
<br />
·拍摄本片期间，女主角艾米莉·布朗特怀孕了，因此她不得不拒绝拍摄一些动作戏，而剧组知道她拒绝的真正原因的人只有阿汤哥。<br />
<br />
·2013年8月，媒体报道了《明星伙伴》男星杰里米·皮文加盟本片的消息，但他最终没有出现在影片的上映版当中。<br />
<br />
·这并非是艾米莉·布朗特主演的第一部以时空穿梭为题材的科幻动作片，上一部是《环形使者》。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：影片描述了一场与外星人的战争，主人公凯奇从未接受过军事训练，却被派到前线作战，这无疑是一场自杀行动。就在他频死的那一刻，他意外地获得穿越时空的能力，能够让他不断地重复生死轮回，一次次重新回到战场。而每经历一次死亡，凯奇的战斗力就增强一分……未来世界陷入外星人入侵的恐慌中，军事演说家凯奇中校（汤姆·克鲁斯 Tom Cruise 饰）畏惧上战场，他从没想过将军（布莱丹·格里森 Brendan Gleeson 饰）会让他去指挥即将开始的“诺曼底战役”，拒绝接受命令之后将军居然恶整了他，那就是把他当做逃兵扔进了军营中。凯奇被归入了J小队中进行战斗，战役的第一天就惨死在战场，没想到这一死让他拥有了时空',N'美国/澳大利亚',N'动作/科幻',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-616363-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899667&amp;k=ec64e4c6a73f5159adf468579ac08901&amp;t=1412261745&amp;sid=e3a4UMUS1WD%2Fzoj4gTHVLaVfhzPZDZmyQAN6jxvpT5WQG2E',N'2014/10/2 22:57:25',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 434,N'【14最强巨兽票房巨制】【哥斯拉】【BluRay-1080P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　哥斯拉/哥吉拉(台)<br />
片　　名　Godzilla<br />
年　　代　2014<br />
国　　家　美国/日本<br />
类　　别　动作/科幻/冒险/惊悚<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.9/10 from 153,392 users<br />
链　　接　<a href="http://www.imdb.com/title/tt0831387" target="_blank">http://www.imdb.com/title/tt0831387</a><br />
文件格式　x264 + 5.1 DTS @ mkv<br />
视频尺寸　<font color="red"><font size="3">1920 x 1080</font></font><br />
文件大小　8.38 GB<br />
片　　长　123 Min<br />
导　　演　加里斯·爱德华斯 Gareth Edwards<br />
主　　演　亚伦·泰勒-约翰逊 Aaron Taylor-Johnson ....福特·布罗迪 Ford<br />
　　　　　伊丽莎白·奥尔森 Elizabeth Olsen ....艾丽·布罗迪 Elle Brody<br />
　　　　　渡边谦 Ken Watanabe ....芹泽教授 Daisuke Serizawa<br />
　　　　　布莱恩·科兰斯顿 Bryan Cranston ....乔·布罗迪 Joe Brody<br />
　　　　　朱丽叶·比诺什 Juliette Binoche ....Ford''s Mother / Stepmother<br />
　　　　　大卫·斯特雷泽恩 David Strathairn<br />
　　　　　莎莉·霍金斯 Sally Hawkins<br />
　　　　　维克多·罗塞克 Victor Rasuk ....Tre Morales<br />
　　　　　C.J·亚当斯 C.J. Adams ....Ford''s Stepbrother<br />
　　　　　理查德·琼斯 Richard T. Jones<br />
　　　　　布莱恩·马克金森 Brian Markinson ....Whalen<br />
　　　　　艾尔·斯帕恩扎 Al Sapienza ....Huddleston</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片围绕一位人类大兵的生活展开，讲述了沉睡的古代巨型怪兽被人们意外唤醒，醒来后的怪兽展现出强大的破坏能力，它的存在也震惊了世界。影片同时强调了原子弹对生物带来的直接影响。<br />
<br />
　　拥有幸福美满生活的大兵福德·布罗迪（亚伦·泰勒-约翰逊 Aaron Taylor-Johnson 饰），内心隐藏着一个挥之不去的阴影。15年前，他和父亲乔伊（布莱恩·科兰斯顿 Bryan Cranston 饰）、母亲桑德拉（朱丽叶·比诺什 Juliette Binoche 饰）生活在日本。父母供职于一座大型核电站。就在福德生日当天，一场突如其来的灾难摧毁了核电站，他的母亲在灾难中丧生，语焉不详的政府隐瞒真相，以防止核辐射的名义封锁了该地区。但是乔伊却从种种异状觉察到反常之处，十五年来他一直试图揭开当天的灾难之谜，终于发现这一切都是由一只如山一般巨大的怪兽所引起。<br />
<br />
　　怪兽哥斯拉从沉睡中苏醒，令人难以预测的灾难席卷而来……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　为了打造哥斯拉威猛霸气的外形和战斗力，制作团队7个摄制组，辗转6个城市，先后完成了98道布景和960个视效镜头。据了解，整个视效团队的工作人员多达762位，仅哥斯拉鳞片的完整纹理和细部的制作就花了6个月的时间。如果单用1台计算机渲染哥斯拉，需要445年；那么特效师就需要在16世纪(1570年)就开始工作了。为了打造完美声效，音效师动用了总功率达100000瓦、高3.7米、宽5.5米的音箱组放大哥斯拉的咆哮，现场录下“真实世界”的背景声。<br />
<br />
　　导演爱德华斯认为《哥斯拉》的侵袭之旅是一场“环球旅行”，哥斯拉袭击事件在全球各地陆续发生，电影中的场景包括日本、菲律宾、夏威夷、美国中西部以及旧金山等多个国家和地区。值得一提的是在影片结尾处史诗之战中，旧金山市被毁坏的街区有80个，由特效团队多角度捕捉的旧金山天际线的整体角度达到了360度，随后这些素材被融进影片史诗性结尾的3D城市背景中。<br />
<br />
　　新版《哥斯拉》由大热美剧《绝命毒师》男一号“老白”布莱恩·科兰斯顿、“海扁王”亚伦·泰勒-约翰逊、《双面玛莎》伊丽莎白·奥尔森联袂主演，法国女星朱丽叶·比诺什、日本男星渡边谦等大咖强势加盟。<br />
<br />
　　本片是由传奇影业和华纳兄弟电影公司联合制作的，拥有1.6亿美元的高预算，其中75%出自传奇影业，剩下的由华纳承担。这是华纳自1959年的《火焰怪兽》后拍的第一部哥斯拉系列的作品。在2004年《哥斯拉：最后的战争》发布后，象征着对于哥斯拉专营权五十周年的庆祝。日本东宝影业宣布在未来十年将不再制作任何与哥斯拉有关的电影，并随之拆除了水上舞台和很多专门为拍摄建造的水中布景。在1998年曾制作了哥斯拉系列的三星电影公司原本有权制作一个三部曲，但到了2003年，这个权限也过期了。2004年，执导过1971年《哥斯拉大战赫斗拉》的板野义光宣布由东宝授权，他将拍摄一部哥斯拉系列的3D IMAX短片，会翻拍1971年的故事。2005年，美国摄影师彼得-安德森加入该团队任摄影、视效总监和联合制片人。两年后，美国制片人布莱恩-罗杰斯也被签入剧组。通过布莱恩，也将最先进的3D技术带到了制作中。同一年，制片方会见了东宝影业，进行协商，将原先的短片拓展成了可以在影院上映的3D长片。后来，由于财政问题，整个项目被移交给了美国的制片厂。<br />
<br />
　　2010年，该片终于有了第一个剧本，大卫-卡拉汉说：“哥斯拉在人们印象中是巨型怪兽，总是进行各种破坏。但令我兴奋的是主题其是与现代世界的紧密关系。”在他之后又有四任编剧进行剧本的改编，直到2013年，弗兰克-德拉邦特（曾创作《肖申克的救赎》）加入到最后的创作。德拉邦特将哥斯拉定义为“自然的可怕力量”，影片将加入一个非常“引人注目的剧中人”，哥斯拉也将被引入一个截然不同的当代问题中，并不只限于原作中的核试验。除此之外，他还为人物关系注入了许多灵魂和情感联系。比如布罗迪夫妇的生离死别。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·“哥斯拉”是影史最著名的怪兽形象之一，也是日本战后流行文化的标志性符号之一，并对日本、欧美等诸多怪兽作品影响深远。<br />
<br />
·影片将按照1954年的日本著名电影《哥斯拉》改编而来。<br />
<br />
·截止到2004年，日本东宝公司共拍摄过28部“哥斯拉”电影。<br />
<br />
·新版《哥斯拉》由凭借低成本长片处女作《怪兽》崭露头角的英国导演加里斯·爱德华斯执导，《复仇者联盟》摄影师西穆斯·迈克加维掌镜，先后有五任编剧修改过剧本，包括诺兰的御用编剧大卫·S·高耶。<br />
<br />
·新版《哥斯拉》并非是老版《哥斯拉》的续集，而是开启的全新故事。影片将按照1954年的日本著名电影《哥斯拉》改编而来，在灾难场景的还原上将采用3D技术，给观众以身临其境之感。<br />
<br />
·对于《哥斯拉》是一部“公路片”的说法，导演爱德华斯称他更倾向于将它看成是一场“环球旅行”，电影中的场景包括日本、菲律宾、夏威夷、美国中西部以及旧金山等多个国家和地区，场景多达95个。<br />
<br />
·电影在时间上的跨度也很大，故事将从1954年（事件的起源）、1999年（事件发生）和2014年（再次发生）这三个时间点来展开叙事。<br />
<br />
·布莱恩·科兰斯顿和亚伦·泰勒-约翰逊将饰演一对父子，人类社会的家庭关系也是影片的重点之一。谈起来两人的合作，亚伦大赞老白非常专业而且充满活力，拍摄时总能贡献出很多自己的新点子。<br />
<br />
·布莱恩·科兰斯顿爆料，自己经常给剧本提很多建议，不管导演最后是否采纳。一次他写了一场他与饰演其妻子的朱丽叶·比诺什的床戏提交，不过最后没被采用，老白却转身说“你想在现实中来一场吗？”<br />
<br />
·亚伦·泰勒-约翰逊在片中饰演一名海军中士，为此他努力进行举重训练保持体形。片场还有一名海军中士来把控演员们的表现， 他也曾参加过《黑鹰坠落》等电影的制作，亚伦说这样的经历让他觉得很棒。<br />
<br />
·哥斯拉的吼声，来源于皮手套抚弄低音提琴，当然有后期变调混音。传奇影业总裁塔尔和导演爱德华兹接受采访时都确认了这一点。<br />
<br />
·片场录回声时，用了高4米宽约一条街总功率10万瓦的巨无霸音箱阵列。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/gesila/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/gesila/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/gesila/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'：影片围绕一位人类大兵的生活展开，讲述了沉睡的古代巨型怪兽被人们意外唤醒，醒来后的怪兽展现出强大的破坏能力，它的存在也震惊了世界。影片同时强调了原子弹对生物带来的直接影响。拥有幸福美满生活的大兵福德·布罗迪（亚伦·泰勒-约翰逊 Aaron Taylor-Johnson 饰），内心隐藏着一个挥之不去的阴影。15年前，他和父亲乔伊（布莱恩·科兰斯顿 Bryan Cranston 饰）、母亲桑德拉（朱丽叶·比诺什 Juliette Binoche 饰）生活在日本。父母供职于一座大型核电站。就在福德生日当天，一场突如其来的灾难摧毁了核电站，他的母亲在灾难中丧生，语焉不详的政府隐瞒真相，以防止核辐射的名',N'美国/日本',N'动作/科幻/冒险/惊悚',N'1920 x 1080',N'2014',N'http://www.lwgod.com/thread-615950-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898451&amp;k=29b41ce2ff41bb816e29c995c0d07774&amp;t=1412261741&amp;sid=0effzSF8wzND0GIj9nm%2BIrvPbkyO6CmPvMYS3wh6GHS5rhY',N'2014/10/2 22:57:25',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 435,N'【中14新最受争议票房神话】【小时代3】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/xiaoshidai3/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/09.05/xiaoshidai3/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　小时代3：刺金时代/小时代3/小时代3：锋银时代<br />
片　　名　Tiny Times 3.0<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　剧情/爱情/喜剧<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
评　　分　2.9/10 from 172 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3861006" target="_blank">http://www.imdb.com/title/tt3861006</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　1.21 GB<br />
片　　长　125 Min<br />
导　　演　郭敬明 Jingming Guo<br />
主　　演　杨幂 Mini Yang ....林萧<br />
　　　　　郭采洁 Amber Kuo ....顾里<br />
　　　　　郭碧婷 Biting Guo ....南湘<br />
　　　　　谢依霖 Sie Yi-Lin ....唐宛如<br />
　　　　　锦荣 Vivian Dawson ....宫洺<br />
　　　　　柯震东 Zhendong Ke ....顾源<br />
　　　　　陈学冬 Xuedong Chen ....周崇光<br />
　　　　　任佑明 Ming ....顾准<br />
　　　　　李贤宰 Hyun-Jae Lee ....Neil<br />
　　　　　姜潮 Jo ....席城<br />
　　　　　杜天皓 Tianhao Du ....卫海<br />
　　　　　王琳 Lin Wang ....叶传萍<br />
　　　　　商侃 Kan Shang ....Kitty</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　林萧（杨幂 饰）、顾里（郭采洁 饰）、南湘（郭碧婷 饰）、唐宛如（谢依霖 饰）四个从小一起长大的好姐妹大学毕业进入职场，开始了新的旅程。<br />
<br />
　　原本离开了姐妹们，准备和堕落的男友席城（姜潮 饰）离开上海的南湘重新回归到姐妹们身边。顾里率领众人搬进了新的别墅，大家继续着同一屋檐下的乌托邦生活。林萧、顾里陪同宫洺（锦荣 饰）参加罗马的时尚活动，还叫上了南湘和唐宛如，又在罗马遇上了顾里的混血表弟Neil（李贤宰 饰）。然而当林萧回到上海，却接到了男友崇光（陈学冬 饰）癌症复发不幸去世的噩耗。<br />
<br />
　　几个月后，终于振作起来重新开始新生活的林萧却遇到了一个总是让她莫名想起崇光的外国模特陆烧（陈学冬 饰）。与此同时，顾里从未见过面的亲生弟弟顾准（任佑明 饰）突然出现，手握顾家20%的隐藏股份，他告诉顾里M.E有一个巨大的财务漏洞，姐弟两人联手想要夺回被M.E收购的盛古公司。顾里说服姐妹们借着宫洺生日暨M.E周年庆的机会去宫家老宅偷取关键文件，一切会如她们预想的那样顺利吗？一个最漫长难熬的夜晚在静静等待着她们……<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·片中有杨幂的包被一男子抢走，随后杨幂追逐他的戏份。拍这场戏时，尽管杨幂有孕在身，还是按照导演的要求敬业的穿着高跟鞋，亲自上阵快跑追男子。<br />
<br />
·陈学冬将突破挑战“周崇光”、“陆烧”两个角色，从亚洲人变身欧洲人，要花费7小时在化妆上面，造型也相当惹眼。<br />
<br />
·该片服装多达七千多件。剧组打造了棚内试衣间，上下两层。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：林萧（杨幂 饰）、顾里（郭采洁 饰）、南湘（郭碧婷 饰）、唐宛如（谢依霖 饰）四个从小一起长大的好姐妹大学毕业进入职场，开始了新的旅程。原本离开了姐妹们，准备和堕落的男友席城（姜潮 饰）离开上海的南湘重新回归到姐妹们身边。顾里率领众人搬进了新的别墅，大家继续着同一屋檐下的乌托邦生活。林萧、顾里陪同宫洺（锦荣 饰）参加罗马的时尚活动，还叫上了南湘和唐宛如，又在罗马遇上了顾里的混血表弟Neil（李贤宰 饰）。然而当林萧回到上海，却接到了男友崇光（陈学冬 饰）癌症复发不幸去世的噩耗。几个月后，终于振作起来重新开始新生活的林萧却遇到了一个总是让她莫名想起崇光的外国模特陆烧（陈学冬 饰）。与此同时，顾',N'中国',N'剧情/爱情/喜剧',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-616362-1-1.html',N'http://www.lwgod.com/attachment.php?aid=899668&amp;k=d355b2f5f5093e9be700f3353a18a2a3&amp;t=1412261746&amp;sid=7d2aJeKYc5QN81CYT%2Fj58v2u3TvbP4ZWBLIXOKQt1JUQTNU',N'2014/10/2 22:57:26',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 436,N'【日大尺度】【裸体之夜掠夺狂爱】【BluRay-720P.MKV】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/luoti/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.30/luoti/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　裸体之夜：掠夺狂爱<br />
片　　名　A Night in Nude Salvation<br />
年　　代　2010<br />
国　　家　日本<br />
类　　别　剧情/惊悚/犯罪<br />
语　　言　日语<br />
字　　幕　中文简繁<br />
评　　分　6.6/10 from 95 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1653916" target="_blank">http://www.imdb.com/title/tt1653916</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　4.06 GB<br />
片　　长　145 Min<br />
导　　演　石井隆 Takashi Ishii<br />
主　　演　竹中直人 Naoto Takenaka<br />
　　　　　佐藤宽子 Hiroko Sato ....Nami<br />
　　　　　井上晴美 Harumi Inoue<br />
　　　　　宍户锭 Jo Shishido ....(as Jo Shishido)<br />
　　　　　大竹忍 Shinobu Ootake<br />
　　　　　真中瞳 Hitomi Manaka</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　在城市的某个角落，姓佐藤美貌母女经营着一间酒吧。 <br />
<br />
　　这天，小女儿佐藤怜来到红次郎的杂务代办事务所，请他帮忙寻找一块劳力士表，这块表是父亲的遗物，在撒骨灰时不慎失落。 <br />
<br />
　　红次郎觉得这项委托有点奇怪，却怎么也放不下有着天使面孔的怜，便接下了差事。红次郎撞大运般地找到了劳力士，同时还发现了疑似碎尸块的物体。他请相熟的女警察安斋千寻鉴定此物，得到的结果为老鼠肉。然而，这的确是人肉，红次郎并不知道自己已经成了安斋的监视对象。 <br />
<br />
　　怜很高兴红次郎完成了任务，又委托他办别的事情。渐渐地，红次郎卷入了三个女人为了欲望而实施的完美犯罪。在怜心中有着可怕的黑暗。红次郎决定要将她从黑暗中拯救出来，由此步入了幽深的密林…… <br />
<br />
　　在充满腐败气息的破落街区，居住着一个平凡无奇的男子，他名叫红次郎（竹中直人 饰），干着号称替人代办各种事情的营生。某天，自称加藤怜（佐藤寛子 饰）的女孩找到红次郎，请求他帮忙寻找抛撒父亲骨灰时不慎丢失的劳力士手表。怜和母亲亚由美（大竹しのぶ 饰）、姐姐小桃（井上晴美 饰）经营着一家艳舞夜店，所谓抛撒骨灰不过是一个谎言，加藤母女暗中干着保险金杀人的勾当。不久，怜再次找到红次郎，请求他寻找名叫多绘的女人。为这个天使般的女孩所吸引，红次郎不知不觉进入一个充满危机的粉红漩涡中……<br />
<br />
　　本片为1993年石井隆执导的同名作品《裸体之夜》的续篇，荣获2010年电影旬报十佳影片第10名、第32回横滨电影节十佳影片第8名。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：在城市的某个角落，姓佐藤美貌母女经营着一间酒吧。 这天，小女儿佐藤怜来到红次郎的杂务代办事务所，请他帮忙寻找一块劳力士表，这块表是父亲的遗物，在撒骨灰时不慎失落。 红次郎觉得这项委托有点奇怪，却怎么也放不下有着天使面孔的怜，便接下了差事。红次郎撞大运般地找到了劳力士，同时还发现了疑似碎尸块的物体。他请相熟的女警察安斋千寻鉴定此物，得到的结果为老鼠肉。然而，这的确是人肉，红次郎并不知道自己已经成了安斋的监视对象。 怜很高兴红次郎完成了任务，又委托他办别的事情。渐渐地，红次郎卷入了三个女人为了欲望而实施的完美犯罪。在怜心中有着可怕的黑暗。红次郎决定要将她从黑暗中拯救出来，由此步入了幽深的密林……',N'日本',N'剧情/惊悚/犯罪',N'1280 x 720',N'2010',N'http://www.lwgod.com/thread-615944-1-1.html',N'http://www.lwgod.com/attachment.php?aid=898424&amp;k=618850149cfbc515e8587c83147e1e61&amp;t=1412261742&amp;sid=c6c1BMR3y1tdMBYbZX4hmeot4%2FFpY%2BSvwEW0ja%2BdZk0VM9Y',N'2014/10/2 22:57:26',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 437,N'【为第2部预热】【猩球崛起1重压】【BluRay-720P.MKV】【双语】',N'<font color="blue"><font size="5">蓝光原盘高码重新压制！<br />
质量比以前好很多！建议大家重下收藏！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/xingqiujueqi/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　猩球崛起/猿族崛起/猩团的崛起/猿人争霸战：猩凶革命(港)<br />
片　　名　Rise of the Planet of the Apes<br />
年　　代　2011<br />
国　　家　美国<br />
类　　别　动作/剧情/科幻/惊悚<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.6/10 from 311,999 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1318514" target="_blank">http://www.imdb.com/title/tt1318514</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.36 GB<br />
片　　长　105 Min<br />
导　　演　鲁伯特·瓦耶特 Rupert Wyatt<br />
主　　演　詹姆斯·弗兰科 James Franco&nbsp;&nbsp;....Will Rodman<br />
　　　　　芙蕾达·平托 Freida Pinto&nbsp;&nbsp;....Caroline Aranha<br />
　　　　　安迪·瑟金斯 Andy Serkis&nbsp;&nbsp;....Caesar<br />
　　　　　约翰·利特高 John Lithgow&nbsp;&nbsp;....Charles Rodman<br />
　　　　　布莱恩·考克斯 Brian Cox&nbsp;&nbsp;....John Landon<br />
　　　　　汤姆·费尔顿 Tom Felton&nbsp;&nbsp;....Dodge Landon<br />
　　　　　大卫·奥伊罗 David Oyelowo&nbsp;&nbsp;....Steven Jacobs<br />
　　　　　泰勒·拉拜 Tyler Labine&nbsp;&nbsp;....Robert Franklin<br />
　　　　　杰米·哈里斯 Jamie Harris&nbsp;&nbsp;....Rodney<br />
　　　　　大卫·休莱特 David Hewlett&nbsp;&nbsp;....Hunsiker<br />
　　　　　泰·奥尔森 Ty Olsson&nbsp;&nbsp;....Chief John Hamil<br />
　　　　　麦迪逊·贝尔 Madison Bell&nbsp;&nbsp;....Alice Hunsiker<br />
　　　　　Makena Joy&nbsp;&nbsp;....Alice Hunsiker (Teen)<br />
　　　　　肖恩·泰森 Sean Tyson&nbsp;&nbsp;....Animal Control Officer #2<br />
　　　　　杰克·库里斯 Jack Kuris&nbsp;&nbsp;....Boy in Muir Woods</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　2011年，旧金山。<br />
<br />
　　为了研究如何治疗老年痴呆症，行内知名的科学家威尔·罗曼（詹姆斯·弗兰科饰）已经攻关研究了多年。试验一直没有取得太大的起色，虽然他和灵长类学家卡洛琳（芙蕾达·平托饰）一起研制了一种名为“Cure”的新药物，这种药物能改变基因，但由于极其危险的副作用，使得他找不到合适的临床试验对象来验证Cure的药性。终于，在科研所的所长（布莱恩·考克斯饰）的怂恿之下，他将药物放在了大猩猩身上。<br />
<br />
　　Cure具有自我修复大脑的作用，这在大猩猩身上得到了验证。有了Cure的疗效，大猩猩开始变得超级有智慧，常年被所长虐待的动物们开始报复人类，最先恢复智力的大猩猩凯撒（安迪·瑟金斯饰）开始率领其他猩猩对人类进行反攻倒算，人类不再是地球唯一的统治者，猿族开始逐渐崛起。闯下大祸的威尔·罗曼，决定用他自己的方式来化解这一场人类和猿族之间的战争……<br />
<br />
<font color="red"><strong><font size="3">一句话评论：</font></strong></font><br />
<br />
既包含了对人类的隐喻又有对科技的质疑，《猿族崛起》完全可以和老版的《金刚》并列影史。<br />
——《时代杂志》<br />
<br />
强力的动作戏，出色的特效，至今为止最可信的人猿“表演”，这些捶胸不已的大猩猩会震撼票房的。<br />
——《好莱坞报道者》<br />
<br />
《猿族崛起》做得很不错。聪明、有趣，非常富于娱乐性。这应该是暑期大片的一个模范之作，绝无侮辱观众智商的行为。<br />
——《洛杉矶时报》<br />
<br />
《猿族崛起》令人印象深刻，尤其是你知道这个前传发展到《人猿星球》系列最后会产生什么样的悲剧结尾。<br />
——《综艺》<br />
<br />
《猿族崛起》是这个夏天最值得观众去影院观看的最佳电影。<br />
——《纽约每日新闻》<br />
<br />
猿类横冲直撞的动作形象，非常震撼人心，堪称好莱坞目前最高水平的电影制作。<br />
——《娱乐周刊》<br />
<br />
故事简单明了，由演员通过动作捕捉完成的猿族的表演，不夸张又令人印象深刻，这部电影很能让观众产生共鸣。<br />
——《环球邮报》<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　反乌托邦的人猿决战<br />
<br />
　　末日科幻题材的电影很多，描述人类和入侵的异族作战的电影也不胜枚举，其中《异种》《异形》《星河战队》等影片都是其中的佼佼者。而在这当中，1999年的《人猿猩球》也是值得一提的亮色佳作。这部改编自1968年同名作品的电影，描述一位探索宇宙的宇航员随着飞船坠落在猿人星球中，随后进行的一系列生死冒险。故事的黑暗与结局的震惊使得这部电影成为科幻迷津津乐道的电影，十年过后，《猿族崛起》则以前传的姿态开始对故事进行梳理。对于这个充满了末日情怀的故事，曾经担任过《以眼还眼》《变种》等片的编剧里克·杰法说道：“我很喜欢1968年的《决战猩球》，在那个故事里，人类显得非常无助，猩猩统治了整个社会，人类相反却成为了少数的、被展览的稀有生物，电影要讽刺的东西很明显，我们不尊重动物，若换一个角度，则会感受到它们的痛苦。在那个年代，《决战猩球》的理念显得很超前，如今在《猿族崛起》里，我们保持了《决战猩球》的世界观，同时将整个悲剧的发生描述得更详细，大家会在故事里看到，地球上的人类是如何在各种自私自利下，一步一步的走向灭亡。”<br />
<br />
　　《猿族崛起》是一部前传，故事发生在《决战猩球》之前。由于观众早已知道结局，那么这次会否没有像《决战猩球》的结局那样，带给人这么大的震撼呢？对此，编剧里克·杰法继续说道：“在结局上，当然不可能重现《决战猩球》那样的震撼。但我换了一个角度，既然结局已经众所周知，何不用另一种方式去讲述呢？大家都知道猩猩占据了整个星球，那么我们就会在这部电影里，揭示出为什么会被猩猩占领，人类都做了些什么样的事。《决战猩球》保持着一种高度的现实讽刺，《猿族崛起》也不例外，它在这方面和《12猴子》有点类似，故事里会讲述人和猩猩之间的关系。我曾经看过一个报道，里面讲述有一些科研机构拿猩猩做一些非常不人道的实验，画面触目惊心，这给我留下了非常深刻的印象，在被科学家捆在实验台上的时候，猩猩露出了一种非常怨恨的眼神，它根本不像一个动物所发出的眼神，那眼神给我很长时间里留下了印象，当我开始写《猿族崛起》的时候，我就已经想把这眼神的故事写进电影当中。”<br />
<br />
　　执导《猿族崛起》的鲁伯特·瓦耶特入行十多年，但产量并不多，前作还是2008年的《逃狱》，那是一部低成本的小制作。这次执导《猿族崛起》，是他入行以来操作的最为大型的项目，谈起执导《猿族崛起》的经历，鲁伯特·瓦耶特说道：“我在这之前对《决战猩球》了解得并不算深，当年看这部电影的时候只觉得它很吓人，猩猩的服装做得很逼真。2001年的版本是这次我接拍之前的重点研究对象，在这部电影里，我领悟到了一个词，就是绝望。《决战猩球》是一部让人绝望的电影，因为主角永远没有出路，一切的抗争都是徒劳。这其实是很让人沮丧的一件事，但它却让人看清事实，让观众能够正视人类自身的缺点。在《猿族崛起》里，我尝试把这种绝望做为故事的最终点，一切的剧情铺垫都为最后的结局做服务，那个充满了宿命的悲凉结局。当我看到《猿族崛起》的故事，我便觉得这电影是自己必须去拍摄的，因为它虽然有着一层科幻电影的外壳，但内里讲述的情感却十分朴素，那就是人类应该平等的对待地球上的其他生物，否则，我们会受到非常严重的、致命的惩罚。本质上，这是一部反乌托邦式的电影。”<br />
<br />
　　焕然一新的技术革命<br />
<br />
　　《猿族崛起》里，最惹人注目的自然是众多的猩猩，而这些猩猩都由CG技术所打造，曾经参加过《阿凡达》制作的特效团队为本片制造出了上百个逼真的猩猩。对于《猿族崛起》里的CG特效场面，导演鲁伯特·瓦耶特说道：“在这部电影里，成败的关键是在于对猩猩们的刻画。在《金刚》等片为了我们做了一次伟大的尝试和突破之后，《猿族崛起》里我想再用一些能令观众耳目一新的技术，《阿凡达》的CG技术非常成功，因此在2010年中，我和他们的特效团队一起，开始对《猿族崛起》的CG技术进行探讨。我们想在这部电影里尝试更多的可能性。我们在这之前参阅了大量自然野生的录像，探索频道几乎成为了我们的合作伙伴，在这个过程里我们积累了不少的经验，最终让安迪·瑟金斯真的成为了一个令人恐惧的大猩猩。”<br />
<br />
　　在影片里扮演猩猩首领凯撒的安迪·瑟金斯，这次虽然没有以自己的形象出现在银幕前，却完成了大量的动作捕捉。对于在《猿族崛起》里的表演，安迪o瑟金斯说道：“这是我从影以来拍得很辛苦的一部电影，虽然我99％的时间都是在特效工作室里进行表演，但我所花费的心力却要比普通电影大得多。我需要按照特效团队的要求做出各种动作，并且按照不同的故事幻想不同的场景，和不存在的角色们进行对戏，这几乎是一场由我一个人完成的话剧。而且让我感到很郁闷的一点是，我所做出的动作通常和特效团队所想象的有差距，因此我必须和他们在每个动作完成的过程里进行反复的沟通。这是一个漫长而折磨人的过程，让我几乎想放弃。但最后让我看到屏幕上凯撒的动作，我知道这些辛苦是值得的，凯撒就好像另一个世界的我一样，这种感觉让人觉得神奇美妙。”<br />
<br />
　　在《猿族崛起》里扮演男主角的詹姆斯·弗兰科，是近年来银幕上当红的好莱坞小生，奥斯卡的影帝提名更让他风生水起。谈及这次在《猿族崛起》里的表现，詹姆斯·弗兰科说道：“这是一部让我感觉很过瘾的电影，因为我很喜欢过去的《决战猩球》。在这部电影里，我扮演的科学家将会成为整个事件的核心人物，观众会跟着他，了解整个故事的起源。在电影里，这个科学家其实完全是抱着让人类受益的好心去研制药物，但最后却正好因为这份好心造成了一场不可挽回的灾难，而他也为这场灾难付出了代价。故事的基调比较黑色，但也有让人会心一笑的地方，这个故事的着重点将体现出凯撒如何带领猩猩们反抗人类。”<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·本片的特效技术直接延伸自《阿凡达》，但这是动作捕捉技术首次在日光下进行。<br />
<br />
·凯撒的“猩猩性格”有很大的跨越性，从一个无辜者到一个革命领袖，安迪·瑟金斯为了提高表演技巧，观摩了很多非洲黑猩猩的活动。<br />
<br />
·安迪·瑟金斯还为影片的音效出力不少，主要是模仿黑猩猩的噪音。<br />
<br />
·扮演凯撒不同于之前在《金刚》中“扮演”大猩猩金刚，因为凯撒在性格上更具宽度。<br />
<br />
·影片包含了大量特效，不过，由于其在真实世界取景、所以不会让人感到虚假，很有现实感。<br />
<br />
·影片的技术模糊了特效电影和动作捕捉动画电影的界限，或许《猿族崛起》的技术可以被概括为一群真实的演员、在真实的时间、现实的世界中，以动作捕捉的方式互动。<br />
<br />
·本片的制作成本约为9000万美元。<br />
<br />
·2011年初，出品方20世纪福斯公司曾宣布将《猿族崛起》的档期从2011年6月24日推至11月23日，但在3月下旬，20世纪福斯公司又决定将本片的公映时间提前至8月3日，这样本片最终还是成为杀入暑期档的一部大片。<br />
<br />
·《猿族崛起》的世界观和《决战猩球》保持一致，但在电影里的发生时间上是整个故事的起源。<br />
<br />
·本片主要在加拿大进行拍摄。<br />
<br />
·因为本片要将分级定为PG-13，所以很多涉及到猩猩和人类大战的暴力镜头都进行了删减。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：2011年，旧金山。为了研究如何治疗老年痴呆症，行内知名的科学家威尔·罗曼（詹姆斯·弗兰科饰）已经攻关研究了多年。试验一直没有取得太大的起色，虽然他和灵长类学家卡洛琳（芙蕾达·平托饰）一起研制了一种名为“Cure”的新药物，这种药物能改变基因，但由于极其危险的副作用，使得他找不到合适的临床试验对象来验证Cure的药性。终于，在科研所的所长（布莱恩·考克斯饰）的怂恿之下，他将药物放在了大猩猩身上。Cure具有自我修复大脑的作用，这在大猩猩身上得到了验证。有了Cure的疗效，大猩猩开始变得超级有智慧，常年被所长虐待的动物们开始报复人类，最先恢复智力的大猩猩凯撒（安迪·瑟金斯饰）开始率领其他猩猩对',N'美国',N'动作/剧情/科幻/惊悚',N'1280 x 720',N'2011',N'http://www.lwgod.com/thread-615888-1-2.html',N'http://www.lwgod.com/attachment.php?aid=898348&amp;k=d859ad98c39e464e2883e7a6cafd0bc7&amp;t=1412261748&amp;sid=176e2djf7Zl6RjQ0QtX8U8CmzPLBdcZoe%2B9ypu3tHerK0mQ',N'2014/10/2 22:57:27',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 438,N'【超视效珍藏】【超凡蜘蛛侠1+2】【BluRay-1080P.MKV】【双语】',N'<font color="blue"><font size="5">龙网开始压制1080p全高清！<br />
高码高参，DTS音轨！珍藏首选！<br />
服务器资源有限，只有超级大片才会压制1080p</font></font><br />
<br />
<br />
<br />
<font color="red"><font size="6">蜘蛛侠1</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img.lwgod.com/-5-/10.28/chaofanzhizhuxia/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img.lwgod.com/-5-/10.21/spiderman/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　超凡蜘蛛侠/3D蜘蛛侠：惊世现新(港)/蜘蛛人：惊奇再起(台)/神奇蜘蛛侠/蜘蛛侠4/新蜘蛛侠/蜘蛛侠前传<br />
片　　名　The Amazing Spiderman<br />
年　　代　2012<br />
国　　家　美国<br />
类　　别　动作/冒险/幻想<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.1/10 from 310,711 users<br />
链　　接　<a href="http://www.imdb.com/title/tt0948470" target="_blank">http://www.imdb.com/title/tt0948470</a><br />
文件格式　x264 + 5.1 DTS @ mkv<br />
视频尺寸　<font color="red"><font size="3">1920 x 1080</font></font><br />
文件大小　8.71 GB<br />
片　　长　136 Min<br />
导　　演　马克·韦布 Marc Webb<br />
主　　演　安德鲁·加菲尔德 Andrew Garfield&nbsp;&nbsp;....Peter Parker / Spider-Man<br />
　　　　　艾玛·斯通 Emma Stone&nbsp;&nbsp;....Gwen Stacy<br />
　　　　　瑞斯·伊凡斯 Rhys Ifans&nbsp;&nbsp;....Dr. Curt Connors / The Lizard<br />
　　　　　马丁·辛 Martin Sheen&nbsp;&nbsp;....Ben Parker<br />
　　　　　艾伯丝·戴维兹 Embeth Davidtz&nbsp;&nbsp;....Mary Parker<br />
　　　　　莎莉·菲尔德 Sally Field&nbsp;&nbsp;....May Parker<br />
　　　　　克里斯·泽尔卡 Chris Zylka&nbsp;&nbsp;....Flash Thompson<br />
　　　　　丹尼斯·利瑞 Denis Leary&nbsp;&nbsp;....George Stacy<br />
　　　　　C·托马斯·豪威尔 C. Thomas Howell&nbsp;&nbsp;....Ray<br />
　　　　　安妮·帕里西 Annie Parisse&nbsp;&nbsp;....Mrs. Van Adder<br />
　　　　　坎贝尔·斯科特 Campbell Scott&nbsp;&nbsp;....Richard Parker<br />
　　　　　凯尔西·周&nbsp;&nbsp;Kelsey Chow&nbsp;&nbsp;....Sally Avril</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　《超凡蜘蛛侠》的故事发生在彼得·帕克念高中的时候，他在小的时候就被自己的亲生父亲和母亲遗弃了。从小到大，都是他的叔叔本和姑姑梅在抚养他。而帕克自己，也在孜孜不倦地寻找着和自己身世相关的线索。<br />
<br />
　　终于，帕克发现了一个父亲的一个公文包，这个公文包里的线索似乎让他看到了当年他的父母遗弃自己的理由。按照公文包里的东西的提示，帕克找到了奥斯考博和科特·康纳斯博士的实验室。这个康纳斯博士是他父亲的前合作伙伴，他和帕克父母的失踪有着千丝万缕的联系。<br />
<br />
　　可是，他却并不着急要告诉帕克关于他父母的事情，而是要帕克变成了蜘蛛侠，而他自己则变成了蜥蜴人--他要帕克自己来寻找真相。背负着使命的帕克在正义和信念的驱使下，利用自己获得的力量，变成了一个超级英雄。<br />
<br />
&nbsp; &nbsp;&nbsp;&nbsp;不同于此前山姆·雷米执导的《蜘蛛侠》三部曲，《超凡蜘蛛侠》将视角拉回到彼得·帕克的高中时代，年轻的他一方面要同自己的初恋格温共同经历爱情与承诺的考验，另一方面还要揭开双亲神秘失踪的真相，在人生最大的挑战中完成从常人到英雄的命运性蜕变。<br />
<br />
　 《超凡蜘蛛侠》讲述的是一个从小被父母遗弃，寄居在本叔（马丁·辛饰）和梅姨（莎莉·菲尔德饰）家中的孤儿高中生彼得·帕克（加菲尔德饰）的故事。如同大多数的青少年，彼得想知道他是谁，他是如何成为今天的他。彼得在高中找到了他的纯纯初恋，格温·史黛西（艾玛·斯通饰），他们一同为爱奋斗、相互许诺、分享秘密。当彼得发现他父亲留下的一个神秘的公文包后，他开始寻找当年双亲离奇失踪的线索，并因此找上他父亲当年的实验室伙伴科特·康纳斯博士（瑞斯·伊凡斯饰）。作为蜘蛛侠，他需要同康纳斯的化身，蜥蜴教授进行强劲的对决，彼得将利用他的力量做出改变命运的抉择，塑造出一个英雄的命运。<br />
<br />
　 童年的一起突发事件，令彼得·帕克（安德鲁·加菲尔德 Andrew Garfield 饰）和父母生离死别。转眼彼得成为一名高中生，他偶然发现父亲的公文包，并从叔父本（马丁·辛 Martin Sheen 饰）处得到线索，于是启程前往奥斯库公司拜访父亲当年的合作伙伴——科特·康纳斯博士（瑞斯·伊凡斯 Rhys Ifans 饰）。在公司内四处寻找线索的彼得意外被蜘蛛咬了一口，回程途中他的身体发生奇异的变化。在康纳斯博士德引导下，彼得不断了解并发掘体内着超乎寻常的能力，喜怒哀乐，各种意想不到的事情迅速向他袭来。直到某日，他便成了影响深远的超级战士蜘蛛侠。<br />
<br />
　 而城市内也出现了凶恶的蜥蜴人，彼得不平凡的人生就此展开…… <br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/zhizhuxia/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/zhizhuxia/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />
<br />
<font color="red"><font size="6">蜘蛛侠2</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　超凡蜘蛛侠2/蜘蛛人惊奇再起2：电光之战(台)/蜘蛛侠2 : 决战电魔(港)/超凡蜘蛛侠2：电光人崛起<br />
片　　名　The Amazing Spider-Man 2<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　动作/科幻/奇幻/冒险<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.1/10 from 158,732 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1872181" target="_blank">http://www.imdb.com/title/tt1872181</a><br />
文件格式　x264 + 5.1 DTS @ mkv<br />
视频尺寸　<font color="red"><font size="3">1920 x 1080</font></font><br />
文件大小　9.05 GB<br />
片　　长　142 Min<br />
导　　演　马克·韦布 Marc Webb<br />
主　　演　安德鲁·加菲尔德 Andrew Garfield ....彼得·帕克/蜘蛛侠 Peter Parker/Spider-Man<br />
　　　　　艾玛·斯通 Emma Stone ....格温·斯黛西 Gwen Stacy<br />
　　　　　杰米·福克斯 Jamie Foxx ....迈克斯·狄龙/电光人<br />
　　　　　戴恩·德哈恩 Dane DeHaan ....哈利·奥斯本/小绿魔<br />
　　　　　保罗·吉亚玛提 Paul Giamatti ....阿列克谢·西斯艾维奇/犀牛人<br />
　　　　　莎莉·菲尔德 Sally Field ....梅伯母 Aunt May<br />
　　　　　克里斯·库柏 Chris Cooper ....诺曼·奥斯本/绿魔 Norman Osborn<br />
　　　　　坎贝尔·斯科特 Campbell Scott ....理查德·帕克 Richard Parker<br />
　　　　　艾伯丝·戴维兹 Embeth Davidtz ....玛丽·帕克 Mary Parker<br />
　　　　　麦克斯·查尔斯 Max Charles ....童年彼得·帕克 Young Peter Parker<br />
　　　　　丹尼斯·利瑞 Denis Leary ....格温父亲 Captain Stacy (uncredited)<br />
　　　　　科鲁姆·费奥瑞 Colm Feore ....唐纳德·梅肯 Donald Menken</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　彼得·帕克（安德鲁·加菲尔德饰）依然很忙，而格温（艾玛·斯通饰）毕业后考虑去牛津大学继续深造。“电光人”（杰米·福克斯饰）出现后，生活更不得安宁。老朋友哈利·奥斯本（戴恩·德哈恩饰）回归，帕克发现了关于自己身世的新线索。<br />
<br />
　　能力越大，责任越大。蜘蛛侠彼得·帕克（安德鲁·加菲尔德 Andrew Garfield 饰）在全力和犯罪、灾难做斗争的同时，终于迎来了毕业的时刻。可是曾经的一段心结，让他和女友格温·斯坦西（艾玛·斯通 Emma Stone 饰）的关系降至冰点。格温应聘于为全城提供电力的 奥斯本集团公司，同一期间发生的两件事，不由得左右这家公司和彼得等人的命运。奥斯本的掌门人病故，他的儿子哈利（戴恩·德哈恩 Dane DeHaan 饰）以20岁的年龄接受这家市值2000亿美元的巨无霸。另一方面，极度崇拜蜘蛛侠的电力工程师麦克斯·威尔·迪伦（杰米·福克斯 Jamie Foxx 饰）在维修机组时意外身亡，当他再度醒来时发现自己变成了全身充满电能的超人类。<br />
<br />
　　感到受了欺骗的麦克斯与蜘蛛侠在时代广场展开对决，而彼得和哈利的友情也将遭到命运的戏弄……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/zhizhuxia/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/zhizhuxia/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'：《超凡蜘蛛侠》的故事发生在彼得·帕克念高中的时候，他在小的时候就被自己的亲生父亲和母亲遗弃了。从小到大，都是他的叔叔本和姑姑梅在抚养他。而帕克自己，也在孜孜不倦地寻找着和自己身世相关的线索。终于，帕克发现了一个父亲的一个公文包，这个公文包里的线索似乎让他看到了当年他的父母遗弃自己的理由。按照公文包里的东西的提示，帕克找到了奥斯考博和科特·康纳斯博士的实验室。这个康纳斯博士是他父亲的前合作伙伴，他和帕克父母的失踪有着千丝万缕的联系。可是，他却并不着急要告诉帕克关于他父母的事情，而是要帕克变成了蜘蛛侠，而他自己则变成了蜥蜴人--他要帕克自己来寻找真相。背负着使命的帕克在正义和信念的驱使下，利用自',N'美国',N'动作/冒险/幻想',N'1920 x 1080',N'2012',N'http://www.lwgod.com/thread-615206-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896296&amp;k=565678308712ac2e4e295b1b25b4bcdc&amp;t=1412261748&amp;sid=5ddae2XUwMqsibiA4%2F3tS2cRhqFLue1gGGN9Ek3GF1Qzexg',N'2014/10/2 22:57:27',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 439,N'【保罗沃克14超火爆动作】【暴力街区】【HD-1024.MP4】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/baolijiequ/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/baolijiequ/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　暴力街区/玩命特区(台)/暴力禁区(港)/公寓追凶<br />
片　　名　Brick Mansions<br />
年　　代　2014<br />
国　　家　法国/加拿大<br />
类　　别　动作/犯罪/剧情<br />
语　　言　英语<br />
字　　幕　中文字幕<br />
评　　分　5.8/10 from 9,586 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1430612" target="_blank">http://www.imdb.com/title/tt1430612</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　863 MB<br />
片　　长　87 Min<br />
导　　演　卡米勒·德拉马雷 Camille Delamarre<br />
主　　演　保罗·沃克 Paul Walker ....Damien<br />
　　　　　大卫·贝尔 David Belle ....Lino<br />
　　　　　罗伯特·菲茨杰拉德·迪格斯 RZA ....Tremaine<br />
　　　　　卡塔利娜·丹尼斯 Catalina Denis ....Lola<br />
　　　　　Gouchy Boy ....K2<br />
　　　　　Ayisha Issa ....Rayzah<br />
　　　　　卡尔洛·罗塔 Carlo Rota ....George the Greek<br />
　　　　　Andreas Apergis ....Berringer<br />
　　　　　Richard Zeman ....Major Reno<br />
　　　　　罗伯特·梅耶 Robert Maillet ....Yeti<br />
　　　　　布鲁斯·拉姆塞 Bruce Ramsay ....Mayor</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　该片是国际著名导演吕克·贝松所指导的经典动作电影《暴力街区13》的升级加强版，讲述了芝加哥一批大规模杀伤性武器被一名贫民窟的毒贩偷窃，于是由保罗·沃克饰演的警探与卧底（大卫·贝尔）深入贫民窟调查，最终揭露了一个被隐瞒多年的惊天大阴谋。<br />
<br />
　　美国底特律罪恶横行，为了保障市民安全，当局将市内最危险的罪犯隔离，安置他们在令人闻风丧胆的罪恶禁区“红砖特区”（Brick Mansions）。<br />
<br />
　　在弱肉强食的“红砖特区”内，残暴冷酷的大毒枭特里梅因（RZA 饰）为邪恶核心，卧底探员达米安（保罗·沃克 Paul Walker 饰）一直希望将他绳之于法。另一方面，希望离开禁区重过新生活的利诺（大卫·贝尔 David Belle 饰），因为女友罗拉被特里梅因掳走而心急如焚。拥有共同敌人，来自不同世界，背景各异的达米安与利诺决定联手对付特里梅因……<br />
<br />
　　本片翻拍自2004年同名法国动作电影《暴力街区13》，也是保罗·沃克最后的完整作品。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
《暴力街区》英雄救美引爆七夕&nbsp;&nbsp;票房口碑双爆棚<br />
<br />
　　由基美影业与法国欧罗巴联合出品，法国著名导演吕克·贝松担纲监制、制片、编剧的动作电影《暴力街区》于8月1日七夕节前夕登陆全国院线。自上映之日起，该片场场爆满、口碑爆棚，三天上座率均为全国第一，票房近5000万，颠覆了很多情侣七夕节只看爱情片的传统，打造了史上最酷炫激情的七夕档期！<br />
<br />
　　作为保罗·沃克生前最后一部完整作品，电影集结了飞车、跑酷、枪战、嘻哈等多种元素，片中保罗与“跑酷之王”大卫·贝尔的默契配合成为本片最大看点，二者英雄救美的情节也让该片成为七夕档的热门之选。<br />
<br />
七夕节全国上座率第一&nbsp;&nbsp;票房与口碑齐飞<br />
<br />
　　《暴力街区》首日票房高达1100万元，30余万人前去观影，一线城市场均人次超《小时代3》《闺蜜》和《龙之谷：破晓奇兵》等一众热映影片；8月2日第二天，《暴力街区》上座率高达84.34%，位居全国第一，可谓场场爆满，很多影迷反映无票可买，这一现象让很多影院都始料未及，于是在周日纷纷暴力街区2014为《暴力街区》加大排片量。在排片量增加的情况下，《暴力街区》的上座率依然稳居第一，三天票房破5000万，预计院线排片会进一步增加。不少情侣选择观看此片过节，掀起七夕另类观影热潮。<br />
<br />
　　该片在豆瓣网的评分为7.1，同档期的《闺蜜》评分只有5.9分，《白发魔女传之明月天国》仅有4.1分，而敢于单挑变四的《分手大师》也只有5.6分。<br />
<br />
　　从观众的反响可以看出，这部影片口碑相当不错，而首日之后的口碑对影片以后的票房走势至关重要，有如此高的评分和高上座率作保障，可以预计该片的票房会持续攀升。<br />
<br />
短裙长腿美女肉搏&nbsp;&nbsp;英雄救美引爆七夕<br />
<br />
　　《暴力街区》之所以能在七夕创造票房奇迹，除了影片本身质量过硬外、填补市场空白外，英雄救美的情节也是非常重要的加分项。该片除了拥有铁血钢拳的硬汉激情外，还尽显英雄救美的侠骨柔情。<br />
<br />
　　为了让观众一饱眼福，本周片方曝光一款英雄救美视频特辑。为了挽救被黑帮老大抓走的大卫·贝尔的前女友，保罗·沃克和大卫·贝尔双剑合璧，深入虎穴，一路过关斩将。最后时刻，面临整个城市人的生命和女友的生命，大卫·贝尔产生了激烈的思想斗争，甚至与之前的好搭档保罗·沃克反目，二人陷入被设计好的阴谋中，一边是女友，一边是千万人生命，如何拨云见日？将兄弟情义、家国恩怨混入英雄救美的情节中，让故事更加饱满，最终大卫·贝尔将卡塔利娜·丹尼斯饰演的“女友”从生死边缘救回。虽然分手多年，不得相见，但大卫·贝尔依然对卡塔利娜念念不忘，关键时刻舍命相救，与七夕的节日主题不谋而合。这份柔情蜜意怕是会让很多在电影院中观影的小情侣们，会心一笑、五指暗合。<br />
<br />
　　除了让人暖心的英雄救美情节，这部雄性荷尔蒙十足的电影中，两位女演员的打斗戏也非常精彩。两位女演员巾帼不让须眉，摇身一变成“霹雳娇娃”，长发美腿贴身肉搏，让人顿起怜香惜玉之心。这两位美艳与危险并存的女汉子是剧中亮点，卡塔利娜·丹尼斯来自盛产美女的哥伦比亚，是演员兼模特，身高为182cm，一袭飘逸黑发+短裙长腿成剧中一大看点；另一位是加拿大黑人女星阿伊莎·伊萨，身高与前者不相上下，身材火辣。<br />
<br />
　　火辣高挑的长腿美女和危难时刻的英雄救美，兼顾了男性观众和女性观众的不同的观影需求，解救爱人使有情人终成眷属，这不恰好吻合七夕节的主题吗。<br />
<br />
飞车跑酷枪战肉搏&nbsp;&nbsp;激情大片填补暑期档空白<br />
<br />
　　作为一部标准时长的影片，《暴力街区》恰到好处地容纳了：极限跑酷、动作格斗、追车枪战等“大片气象”，甚至还有“喋血双雄”般不打不相识的欢乐基情等，无不妥帖有序地安置在紧凑的戏剧冲突结构之中。更重要的是，这些元素混合之后，以一种带有B级cult电影的趣味和气质呈现出来，既能赢取暴力街区2014动作电影固定粉丝的心，又能颇为讨巧地扩大征服观众的地盘。此外，保罗·沃克斯人已逝，音容尤在，为电影增添一层温暖、怀旧的美好光环。<br />
<br />
　　纵观整个暑期档电影市场不难发现，2014年夏天的国内影视虽然已经创造了众多的“奇迹”和“纪录”，但影片同质化也十分明显，如《分手大师》、《闺蜜》、《后会无期》、《小时代》等影片类型多是青春、爱情题材的中小成本影片，影片类型较为单一，若不算一枝独秀的《变形金刚4》，难觅海外大片身影。在这样市场环境下，《暴力街区》这种集飙车、跑酷、枪战、肉搏、嘻哈多种热门元素为一身的动作大片必将会给萎靡不振的电影市场注入一针强心剂，填补暑期影市的一大空白，仅仅是前三天《暴力街区》就取得了如此令人欣喜的成绩，高上座率必会带来院线的排片增加，下周票房有望持续快速增长，让观众真正感受到夏日火爆大片带来的酣畅淋漓。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：该片是国际著名导演吕克·贝松所指导的经典动作电影《暴力街区13》的升级加强版，讲述了芝加哥一批大规模杀伤性武器被一名贫民窟的毒贩偷窃，于是由保罗·沃克饰演的警探与卧底（大卫·贝尔）深入贫民窟调查，最终揭露了一个被隐瞒多年的惊天大阴谋。美国底特律罪恶横行，为了保障市民安全，当局将市内最危险的罪犯隔离，安置他们在令人闻风丧胆的罪恶禁区“红砖特区”（Brick Mansions）。在弱肉强食的“红砖特区”内，残暴冷酷的大毒枭特里梅因（RZA 饰）为邪恶核心，卧底探员达米安（保罗·沃克 Paul Walker 饰）一直希望将他绳之于法。另一方面，希望离开禁区重过新生活的利诺（大卫·贝尔 David',N'法国/加拿大',N'动作/犯罪/剧情',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-614767-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895181&amp;k=f593bc21a46559f7069ebb29485ccae1&amp;t=1412261748&amp;sid=c4a9si0uIepDOxlrkYx4h0ab4KrotHbYSRYL9bVZnVPaueQ',N'2014/10/2 22:57:27',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 440,N'【美14爆笑票房黑马】【邻居大战】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/linjudazhan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/linjudazhan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　邻居大战/贱邻50(港)/恶邻缠身(台)/恶邻居/那小子有点坏<br />
片　　名　Neighbors<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　喜剧<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.7/10 from 75,330 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2004420" target="_blank">http://www.imdb.com/title/tt2004420</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.59 GB<br />
片　　长　97 Min<br />
导　　演　尼古拉斯·斯托勒 Nicholas Stoller<br />
主　　演　塞斯·罗根 Seth Rogen ....Mac Radner<br />
　　　　　萝丝·拜恩 Rose Byrne ....Kelly Radner<br />
　　　　　扎克·埃夫隆 Zac Efron ....Teddy Sanders<br />
　　　　　戴夫·弗兰科 Dave Franco ....Pete<br />
　　　　　杰洛·卡迈克尔 Jerrod Carmichael ....Garf<br />
　　　　　莉莎·库卓 Lisa Kudrow ....Dean Carol Gladstone<br />
　　　　　克里斯托夫·梅兹-普莱瑟 Christopher Mintz-Plasse ....Scoonie<br />
　　　　　杰克·M·约翰森 Jake M. Johnson ....Sebastian Cremmington<br />
　　　　　Elise Vargas ....Stella<br />
　　　　　Zoey Vargas ....Stella<br />
　　　　　布莱恩·赫斯基 Brian Huskey ....Bill Wazowkowski</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片讲述了一个热血又放荡不羁的青年在几次巧合之下无意中影响了邻居一家生活的故事。塞斯·罗根与萝丝·拜恩在片中饰演这对新生儿年轻夫妇，而扎克·埃夫隆饰演的公子哥这二货的节奏将会给罗根夫妇惹不少麻烦。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　如今在好莱坞，“大胖儿”塞斯·罗根加盟的喜剧片，已然是高票房的代名词。再加上当红偶像男星扎克·埃夫隆的“变态”出演，让这部高举“邻里关系”大旗的恶搞喜剧片，看点十足。导演尼古拉斯·斯托勒，这位在英伦出生美国长大的年轻电影人，早前在《前往希腊剧院》、《新抢钱夫妻》以及《忘掉莎拉·马歇尔》等片中搞笑才华尽显。尤其是在《前往希腊剧院》中，将英美搞笑风格的大碰撞，令观众耳目一新。如今，在邻里关系的大背景下，让一个温馨的三口之家与一个“无恶不作”的坏小子在几近相连的同一块草皮上上演了一幕幕邻里大战。而已扎克·埃夫隆为首的一群狐朋狗党们，更是在这个原本宁静的街区里奉献出一个个令人啼笑皆非甚至呕中带乐的爆笑点来。<br />
<br />
　　再说主演，作为“烂仔帮”的灵魂人物塞斯·罗根的号召力与演技自不必赘述。反倒是偶像级大明星扎克·埃夫隆的此番却打破以往校园小帅哥的高富帅形象：完全是不学无术、市井痞子的模样，甚至有时更展现出一幅“2”到可以的劲头儿来，让邻居们和观众们几乎难以接受：一会是球打塞斯·罗根，一会是卸下车上的气囊装在塞斯·罗根的办公椅上让其上天，一会又COSPLAY《出租车司机》中的德尼罗的莫西干形象，甚至连塞斯·罗根家的小孩儿都要整蛊一下，简直是爆笑恶搞无底限。另外，《老友记》中的“菲比”莉莎·库卓和《海扁王》中坏小子克里斯托夫·梅兹-普莱瑟等明星也都将在本片中有惊艳亮相，令人期待。<br />
<br />
<font color="red"><strong><font size="3">影片评价：</font></strong></font><br />
<br />
　　媒体综评68分，烂番茄方面新鲜度74%，130人投出新鲜番45人砸出烂番茄，CinemaScore评分B，出乎意料地收获好评。<br />
<br />
　　其中《The Wrap》、《HitFix》两家媒体出具满分，“《邻居大战》让人倍感期待的并不是因为它有多伟大，而是因为它是一部扎扎实实的工作室式R喜剧”，“不仅是喧闹地恶搞和夸张地dirty，《邻居大战》的剧本水准之高显然已经超出了影片原有的定位”，“在我的印象中，《邻居大战》是近年来不论搞笑程度还是可视看性最出色的影片之一”，“剧本精妙地设定弥补了影片低级趣味的三俗感，所有观众都能在开怀大笑中感受到不一样的生活理念”，“本片绝对是你想要的那种疯狂派对，当然除了尖叫和呕吐也别忘了思考”，“安德鲁-科恩和布兰登-奥布莱恩出色地完成了剧本主旨的升华——从爆笑的影片开端到角色情感的稳健提升，对新人编剧来说难能可贵”，“两位主演比较顺利完成了各自任务，塞斯-罗根依然插科打诨，扎克-埃夫隆照常卖肉耍帅，之前为什么就没人想到这俩人还能如此“有机”地结合在一起呢？”，“影片离经典还很远(哪怕是低俗喜剧的经典)，不过我们还是能从影片中体会到各位主创人员的努力。大多数时间本片都贡献着惊爆笑料，只不过片段的衔接并非预期的那般行云流水”。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：影片讲述了一个热血又放荡不羁的青年在几次巧合之下无意中影响了邻居一家生活的故事。塞斯·罗根与萝丝·拜恩在片中饰演这对新生儿年轻夫妇，而扎克·埃夫隆饰演的公子哥这二货的节奏将会给罗根夫妇惹不少麻烦。幕后制作：如今在好莱坞，“大胖儿”塞斯·罗根加盟的喜剧片，已然是高票房的代名词。再加上当红偶像男星扎克·埃夫隆的“变态”出演，让这部高举“邻里关系”大旗的恶搞喜剧片，看点十足。导演尼古拉斯·斯托勒，这位在英伦出生美国长大的年轻电影人，早前在《前往希腊剧院》、《新抢钱夫妻》以及《忘掉莎拉·马歇尔》等片中搞笑才华尽显。尤其是在《前往希腊剧院》中，将英美搞笑风格的大碰撞，令观众耳目一新。如今，在邻里关系的',N'美国',N'喜剧',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-615853-1-2.html',N'http://www.lwgod.com/attachment.php?aid=898254&amp;k=7760a7940bae8fa176341c8c21f94905&amp;t=1412261749&amp;sid=a72c4w4q5%2FJ7nnJKp3iI56cHaJpI5FJNRa8aDbQ49W4QAwY',N'2014/10/2 22:57:28',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 441,N'【14万众期待巨制】【超凡蜘蛛侠2】【BluRay-720P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/chaofanzhizhuxia2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　超凡蜘蛛侠2/蜘蛛人惊奇再起2：电光之战(台)/蜘蛛侠2 : 决战电魔(港)/超凡蜘蛛侠2：电光人崛起<br />
片　　名　The Amazing Spider-Man 2<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　动作/科幻/奇幻/冒险<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.1/10 from 158,732 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1872181" target="_blank">http://www.imdb.com/title/tt1872181</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.85 GB<br />
片　　长　142 Min<br />
导　　演　马克·韦布 Marc Webb<br />
主　　演　安德鲁·加菲尔德 Andrew Garfield ....彼得·帕克/蜘蛛侠 Peter Parker/Spider-Man<br />
　　　　　艾玛·斯通 Emma Stone ....格温·斯黛西 Gwen Stacy<br />
　　　　　杰米·福克斯 Jamie Foxx ....迈克斯·狄龙/电光人<br />
　　　　　戴恩·德哈恩 Dane DeHaan ....哈利·奥斯本/小绿魔<br />
　　　　　保罗·吉亚玛提 Paul Giamatti ....阿列克谢·西斯艾维奇/犀牛人<br />
　　　　　莎莉·菲尔德 Sally Field ....梅伯母 Aunt May<br />
　　　　　克里斯·库柏 Chris Cooper ....诺曼·奥斯本/绿魔 Norman Osborn<br />
　　　　　坎贝尔·斯科特 Campbell Scott ....理查德·帕克 Richard Parker<br />
　　　　　艾伯丝·戴维兹 Embeth Davidtz ....玛丽·帕克 Mary Parker<br />
　　　　　麦克斯·查尔斯 Max Charles ....童年彼得·帕克 Young Peter Parker<br />
　　　　　丹尼斯·利瑞 Denis Leary ....格温父亲 Captain Stacy (uncredited)<br />
　　　　　科鲁姆·费奥瑞 Colm Feore ....唐纳德·梅肯 Donald Menken</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　彼得·帕克（安德鲁·加菲尔德饰）依然很忙，而格温（艾玛·斯通饰）毕业后考虑去牛津大学继续深造。“电光人”（杰米·福克斯饰）出现后，生活更不得安宁。老朋友哈利·奥斯本（戴恩·德哈恩饰）回归，帕克发现了关于自己身世的新线索。<br />
<br />
　　能力越大，责任越大。蜘蛛侠彼得·帕克（安德鲁·加菲尔德 Andrew Garfield 饰）在全力和犯罪、灾难做斗争的同时，终于迎来了毕业的时刻。可是曾经的一段心结，让他和女友格温·斯坦西（艾玛·斯通 Emma Stone 饰）的关系降至冰点。格温应聘于为全城提供电力的 奥斯本集团公司，同一期间发生的两件事，不由得左右这家公司和彼得等人的命运。奥斯本的掌门人病故，他的儿子哈利（戴恩·德哈恩 Dane DeHaan 饰）以20岁的年龄接受这家市值2000亿美元的巨无霸。另一方面，极度崇拜蜘蛛侠的电力工程师麦克斯·威尔·迪伦（杰米·福克斯 Jamie Foxx 饰）在维修机组时意外身亡，当他再度醒来时发现自己变成了全身充满电能的超人类。<br />
<br />
　　感到受了欺骗的麦克斯与蜘蛛侠在时代广场展开对决，而彼得和哈利的友情也将遭到命运的戏弄……<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·本片是首部完全在纽约拍摄的《蜘蛛侠》电影，也是在纽约拍摄的最大预算的影片。<br />
<br />
·本集的配乐由大师汉斯·季默与美国创作型说唱歌手法瑞尔·威廉姆斯联手打造。<br />
<br />
·奥斯卡影帝杰米·福克斯在片中扮演的是电光人，奥斯卡最佳男配角克里斯·库珀扮演的是奥斯本，这是奥斯卡获奖演员第一次扮演蜘蛛侠的死对头。<br />
<br />
·漫画中，格温被老绿魔（诺曼奥斯本）扔下布鲁克林大桥。小蜘蛛发射蛛丝一下子拉住她，下坠的冲力将她的颈椎骨硬生生扯断。格温从此与世长辞。电影最后格温穿了和漫画中死亡场景一模一样的衣服。<br />
<br />
·谢琳·伍德蕾原本在片中扮演了玛丽·简的角色，并且还拍摄了一些镜头。但是在剪辑的时候，她的戏份全部被剪切掉了。原因是导演希望蜘蛛侠和格温·斯黛西之间的爱情能保留到最后。<br />
<br />
·马克·韦伯在福克斯探照灯影业还有片约未完成。探照灯同意马克·韦伯执导索尼的《蜘蛛侠》，但条件就是要帮《X战警》宣传一下，所以就有了今年《X战警》的这个彩蛋。国内版无该片尾彩蛋。<br />
<br />
·在电梯前支走Max去修电路的那名Oscorp员工，Max管他叫“斯迈思”（Smythe）。漫画中Smythe是“蜘蛛杀手”的创造者，后来他改造自己的身体，成为了“终极蜘蛛杀手”。<br />
<br />
·Oscorp那名低调的秘书Felicia就是漫画中的黑猫，一个魅惑的亦正亦邪的角色，Peter在作为蜘蛛侠时的暧昧对象。<br />
<br />
·Oscorp的地下仓库除了小绿魔和犀牛人的盔甲还有秃鹫和章鱼博士的装备。章鱼博士、秃鹫、电光人、猎人克拉文、致幻客与沙人在漫画中合称“Sinister Six”（邪恶六人组）。<br />
<br />
·Peter的手机铃声是老版蜘蛛侠第一部中在地铁站扛着吉他卖艺的那哥们儿唱的歌“Spiderman”。 此旋律最初出处为1967年动画版蜘蛛侠的主题曲。<br />
<br />
·《超凡蜘蛛侠》是一部用数码拍摄的影片，但导演选择了使用35mm胶片拍摄续集《超凡蜘蛛侠2》。而在拍摄结束之后，他会使用数字技术将胶片转换成数码影像，并用后期转制的方法把影片变成3D格式。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：彼得·帕克（安德鲁·加菲尔德饰）依然很忙，而格温（艾玛·斯通饰）毕业后考虑去牛津大学继续深造。“电光人”（杰米·福克斯饰）出现后，生活更不得安宁。老朋友哈利·奥斯本（戴恩·德哈恩饰）回归，帕克发现了关于自己身世的新线索。能力越大，责任越大。蜘蛛侠彼得·帕克（安德鲁·加菲尔德 Andrew Garfield 饰）在全力和犯罪、灾难做斗争的同时，终于迎来了毕业的时刻。可是曾经的一段心结，让他和女友格温·斯坦西（艾玛·斯通 Emma Stone 饰）的关系降至冰点。格温应聘于为全城提供电力的 奥斯本集团公司，同一期间发生的两件事，不由得左右这家公司和彼得等人的命运。奥斯本的掌门人病故，他的儿子哈利',N'美国',N'动作/科幻/奇幻/冒险',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-614673-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895004&amp;k=3cf050f3264c13a02dcc03fe4cf993bb&amp;t=1412261750&amp;sid=701cUHDClBV%2FLS3oty6KWw8YepyMZ2s9iW6rjjBeojVxgk4',N'2014/10/2 22:57:28',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 442,N'【14新火爆】【苹果核战记阿尔法】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/aerfa/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/aerfa/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　苹果核战记：阿尔法<br />
片　　名　Appleseed Alpha<br />
年　　代　2014<br />
国　　家　日本/美国<br />
类　　别　动作/科幻/动画<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.6/10 from 1,737 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3638012" target="_blank">http://www.imdb.com/title/tt3638012</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.44 GB<br />
片　　长　93 Min<br />
导　　演　荒牧伸志 Shinji Aramaki<br />
主　　演　Luci Christian …Deunan Knute<br />
　　　　　David Matranga …Briareos Hecatonchires<br />
　　　　　Brina Palencia …Iris (voice)<br />
　　　　　Elizabeth Bunch …Nyx (voice)<br />
　　　　　Wendel Calvert …Two Horns (voice)<br />
　　　　　Adam Gibbs …Olson (voice)<br />
　　　　　Chris Hutchinson …Matthews (voice)<br />
　　　　　Josh Sheltz …Talos (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　公元2131年，一场非核大战让地球成为一片废墟。雇佣兵战士——杜南·纳兹（Deunan Knute）和前男友兼搭档布里艾诺斯（Briareos）作为战后幸存者，被派往饱受战争蹂躏的城郊。执勤过程中，他们遇到了两名来自神秘乌托邦——奥林匹斯的居民——伊里斯（Iris） 和 奥尔森（Olson）。<br />
<br />
　　伊里斯（Iris） 和 奥尔森（Olson）可能有办法拯救世界，但无情的塔罗斯和诡计多端的军阀都各自盘算着自己的计划。杜南·纳兹（Deunan Knute）和布里艾诺斯（Briareos）必须守护好他们的新盟友，以保留人类最后的希望...<br />
<br />
　　在并不遥远的未来，愚蠢的人类发动大规模战争，将赖以生存的世界变成废墟。昔日的国际大都会纽约，破破烂烂的街上走来了杜南·纳兹（Luci Christian 配音）及其半机械人男友布里艾诺斯（David Matranga 配音），他们刚刚搞砸贪婪大佬双角（Wendel Calvert 配音），无奈只得再度延后前往奥林帕斯的日期。双角承诺交给二人最后一次任务，谁知杜南他们却意外救下了被鸵鸟人战斗机器追杀的艾瑞丝（Brina Palencia 配音） 和 奥尔森（Adam Gibbs 配音）。后者来自奥林帕斯，此行他们肩负了关系全人类命运的绝密使命。谁知战争狂人塔洛斯（Josh Sheltz 配音）带着手下精兵悍将尾随而至，企图掌握艾瑞丝她们的秘密。杜南、布里乃至双角都被卷入这场难以预料的战斗中去……<br />
<br />
　　本片根据士郎正宗的经典名作改编。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：公元2131年，一场非核大战让地球成为一片废墟。雇佣兵战士——杜南·纳兹（Deunan Knute）和前男友兼搭档布里艾诺斯（Briareos）作为战后幸存者，被派往饱受战争蹂躏的城郊。执勤过程中，他们遇到了两名来自神秘乌托邦——奥林匹斯的居民——伊里斯（Iris） 和 奥尔森（Olson）。伊里斯（Iris） 和 奥尔森（Olson）可能有办法拯救世界，但无情的塔罗斯和诡计多端的军阀都各自盘算着自己的计划。杜南·纳兹（Deunan Knute）和布里艾诺斯（Briareos）必须守护好他们的新盟友，以保留人类最后的希望...在并不遥远的未来，愚蠢的人类发动大规模战争，将赖以生存的世界变成废',N'日本/美国',N'动作/科幻/动画',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-615190-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896265&amp;k=7189396e1ad54648e1b8bd3022b05f75&amp;t=1412261749&amp;sid=56bdSoFqvqJ0Db82a3zdforH6vZ7qiOqDsTkJ6Qn9AOmVfI',N'2014/10/2 22:57:28',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 443,N'【中14最新谍战动作悬疑】【一号目标】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/yihaomubiao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.29/yihaomubiao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　一号目标/梅园岁月<br />
片　　名　Who is Undercover<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　剧情/动作/悬疑<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　0.99 GB<br />
片　　长　102 Min<br />
导　　演　翟俊杰 Junjie Zhai<br />
　　　　　翟小兴 Xiaoxing Zhai<br />
主　　演　蒋勤勤 Qinqin Jiang ....吕一然<br />
　　　　　刘小锋 Xiaofeng Liu ....熊向晖<br />
　　　　　孙茜 Qian Sun ....何海宁<br />
　　　　　穆雷克 Murray Clive ....白劳德<br />
　　　　　张瑶 Yao Zhang&nbsp;&nbsp;....谌筱华<br />
　　　　　黄薇 Wei Huang ....邓颖超<br />
　　　　　林栋甫 Dongfu Lin ....蒋介石<br />
　　　　　秦梵翔 Fanxiang Qin ....蒋经国<br />
　　　　　侯勇 Yong Hou<br />
　　　　　倪大红 Dahong Ni<br />
　　　　　张晨光 Chenguang Zhang<br />
　　　　　果静林 Jinglin Guo<br />
　　　　　刘欣 Xin Liu<br />
　　　　　翟万臣 Wanchen Zhai<br />
　　　　　薛山 Shan Xue</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　电影背景设定在解放战争年代，在风诡云谲的动荡局势下，各方力量暗潮涌动不断交锋，在影片中由蒋勤勤等组成的特工团队设下天罗地网，掘地三尺就为寻找“一号目标”的蛛丝马迹。<br />
<br />
　　1946年，国内局势变幻动荡，内战一触即发。一拨38 人的顶尖军事精英正启航赴美，然而一本意外遗失的笔记，揭露了这份名单中存在卧底。在特工遍布的南京，美蒋特务暗中勾结，计划除掉名单中的卧底 “一号目标”。两军围绕“谁是卧底”进行着一场惊心动魄的博弈。潜伏暗处的“一号目标”何时现身？能否扭转内战乾坤？生死攸关的暗战较量，令人窒息……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：电影背景设定在解放战争年代，在风诡云谲的动荡局势下，各方力量暗潮涌动不断交锋，在影片中由蒋勤勤等组成的特工团队设下天罗地网，掘地三尺就为寻找“一号目标”的蛛丝马迹。1946年，国内局势变幻动荡，内战一触即发。一拨38 人的顶尖军事精英正启航赴美，然而一本意外遗失的笔记，揭露了这份名单中存在卧底。在特工遍布的南京，美蒋特务暗中勾结，计划除掉名单中的卧底 “一号目标”。两军围绕“谁是卧底”进行着一场惊心动魄的博弈。潜伏暗处的“一号目标”何时现身？能否扭转内战乾坤？生死攸关的暗战较量，令人窒息……影片',N'中国',N'剧情/动作/悬疑',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-615848-1-2.html',N'http://www.lwgod.com/attachment.php?aid=898252&amp;k=953b6b7381e741b71c68529893d7c47e&amp;t=1412261750&amp;sid=6983FSgCooqWDo9pUKYA47GUw4BWJgBOUgALnvaY2XNYt%2Fw',N'2014/10/2 22:57:28',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 444,N'【13超好评高分力作】【唯爱永生】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/weiaiyongsheng/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/weiaiyongsheng/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　唯爱永生/永生情人(港)/噬血恋人(台)/为情永生/唯有情人永生<br />
片　　名　Only Lovers Left Alive<br />
年　　代　2013<br />
国　　家　德国/美国/英国/法国/塞浦路斯<br />
类　　别　剧情/爱情/奇幻<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.5/10 from 23,550 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1714915" target="_blank">http://www.imdb.com/title/tt1714915</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.96 GB<br />
片　　长　123 Min<br />
导　　演　吉姆·贾木许 Jim Jarmusch<br />
主　　演　汤姆·希德勒斯顿 Tom Hiddleston ....Adam<br />
　　　　　蒂尔达·斯文顿 Tilda Swinton ....Eve<br />
　　　　　米娅·华希科沃斯卡 Mia Wasikowska ....Ava<br />
　　　　　约翰·赫特 John Hurt ....Marlowe<br />
　　　　　安东·尤金 Anton Yelchin ....Ian<br />
　　　　　Slimane Dazi ....Bilal<br />
　　　　　Aurelie Thepaut ....Flight Attendant<br />
　　　　　杰弗里·怀特 Jeffrey Wright ....Dr. Watson<br />
　　　　　Carter Logan ....Scott<br />
　　　　　Ali Amine ....Taxi Driver</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　电影讲述有一对相爱的恋人叫亚当和夏娃，他们总是在晚上才出来。表面上他们是地下音乐人，其实他们是吸血鬼，需要可靠而稳定的血源才能维持生命。在数百年的生命中，他们已经学会了很多人类的生存方式，但也依旧保持着自己的动物性本能。直到有一天夏娃的妹妹出现，才让一切都开始发生改变。<br />
<br />
　　亚当（汤姆·希德勒斯顿 Tom Hiddleston 饰）和夏娃（蒂尔达·斯文顿 Tilda Swinton 饰）是一对携手共同穿越了数百年时光的吸血鬼恋人，从中古走到现代，两人经历了人类社会的数度大起大落，目前分居底特律和坦吉尔两地。<br />
<br />
　　亚当是一名地下音乐人，他厌恶无能又残暴的人类，将他们称作“僵尸”，陷入了抑郁的情绪中无法自拔的亚当甚至购买了木质子弹，打起了自行了断的念头，得知了恋人的糟糕状态，夏娃千里迢迢赶到了亚当的身边。短暂的重逢为亚当带来了新的希望，但令他感到不快的是，夏娃那臭名昭著的妹妹艾娃（米娅·华希科沃斯卡 Mia Wasikowska 饰）亦闯入了他们的生活之中。艾娃的到来带来的是灾难和诅咒，她不仅杀死了亚当唯一的人类朋友伊兰（安东·尤金 Anton Yelchin 饰），更将姐姐和姐夫两人的生活搅得一团糟。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　蒂尔达·斯文顿、“抖森”汤姆·希德勒斯顿两位主角演绎出史上最酷的吸血鬼，他们相恋了几个世纪，分离又重逢，冷眼目睹着人类的衰退和消亡。亚当和夏娃这对名字象征脆弱的人类生命，片中随处可见文学、音乐、自然科学等典故，暗藏珠玑的台词回味无穷。天马行空的未来场景令人眼花缭乱，摇滚配乐再次显示出贾木许的独特音乐品位。<br />
<br />
<font color="red"><strong><font size="3">导演自述：</font></strong></font><br />
<br />
　　《唯爱永生》是一部讲述一个叫做亚当的男人和一个叫做夏娃的女人之间的非常传统的爱情故事的电影。我的剧本，在某种程度上，得到了马克·吐温所出版的最后一本书《亚当夏娃日记》的启发才写出来的——当然，这里并没有直接引用这本书里的情节和故事，只是把角色的名字安排成了和书里的一样而已。这两个人物，是原型一般的局外人；是经典的波西米亚人；是非常聪明和久经世故的人——而且，他们还被自己的动物性的本能所驱使。他们行走遍了全球，经历了几乎所有值得经历的事物。并且总是在社会极端的边缘和灰色地带里生存。和他们的爱情一样，他们经历了几个世纪的变迁，对人类的社会很有自己的观点和看法，因为这两个人，碰巧是吸血鬼。<br />
<br />
　　但是，这部电影并不是你们所熟悉的那种吸血鬼电影。影片的故事被放在了两个截然不同的城市里：底特律和谭吉尔。影片的故事总是发生在夜晚。亚当和夏娃需要人类的血液才能存活下去。但是，在二十一世纪的美国，随便咬别人的脖子可是一件犯法的事情；况且，对于吸血鬼来说，喝下来路不明的血液，还很危险。所以，为了生存，他们只能尽可能地保证自己的血液来源是纯净的，是没有病菌和病毒的。和很多生活在黑色区域里的人一样，他们总是很有技巧地生活在城市的最边缘，并且悄无声息，不会引起当局的注意。<br />
<br />
　　在我的影片中，吸血鬼其实就是很明显的隐喻和象征——带领我们去追寻故事更深层次愈图的一种路径。影片首先是一部爱情电影，其次是一部讲述两个社会边缘人的影片。这两个人拥有特殊的身份、生存环境特殊、对社会发展和人类历史有着相当的观点和经验。而且，在他们的生活过程中，他们还经历过各种悲剧、成功和失败。亚当和夏娃这两个人，就是现今人类生活和人类社会的隐喻。他们脆弱而多思，处在危险的情况之下，对自然充满了无知和恐惧，而且目光短浅，根本不明白世界的运作方式和规律。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：电影讲述有一对相爱的恋人叫亚当和夏娃，他们总是在晚上才出来。表面上他们是地下音乐人，其实他们是吸血鬼，需要可靠而稳定的血源才能维持生命。在数百年的生命中，他们已经学会了很多人类的生存方式，但也依旧保持着自己的动物性本能。直到有一天夏娃的妹妹出现，才让一切都开始发生改变。亚当（汤姆·希德勒斯顿 Tom Hiddleston 饰）和夏娃（蒂尔达·斯文顿 Tilda Swinton 饰）是一对携手共同穿越了数百年时光的吸血鬼恋人，从中古走到现代，两人经历了人类社会的数度大起大落，目前分居底特律和坦吉尔两地。亚当是一名地下音乐人，他厌恶无能又残暴的人类，将他们称作“僵尸”，陷入了抑郁的情绪中无法自拔',N'德国/美国/英国/法国/塞浦路斯',N'剧情/爱情/奇幻',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-614668-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895003&amp;k=b2329ea01f82d90df6336deef09e2d94&amp;t=1412261751&amp;sid=d037Qlt31vd%2BlgqX%2BnpUmX7rpI4jVUrV%2B3twrMpTJXQR%2FQQ',N'2014/10/2 22:57:29',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 445,N'【中14最新票房悬疑惊悚大片】【笔仙3】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/bixian/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/bixian/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.20/bixian/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　笔仙3/笔仙III<br />
片　　名　Bunshinsaba 3<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　惊悚/悬疑/恐怖<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　0.99 GB<br />
片　　长　102 Min<br />
导　　演　安兵基 Byeong-ki Ahn<br />
主　　演　江一燕 Yiyan Jiang ....丽娜<br />
　　　　　焦俊艳 Junyan Jiao ....媛媛<br />
　　　　　董子健 ZiJian Dong ....子键<br />
　　　　　王龙华 Longhua Wang ....主治医生<br />
　　　　　徐昂 Ang Xu ....美术老师<br />
　　　　　赵紫萱 Zixuan Zhao<br />
　　　　　荣益 Yi Rong</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　患病入院的丽娜因为惦念自己的女儿小艾从医院逃出，回到阔别数年的家中想领回女儿一同生活。爷爷奶奶在争夺小艾的途中遇车祸去世后，丽娜母女搬进爷爷留下的老宅，却遭遇到一桩桩恐怖事件，邻居们也变得奇怪起来。<br />
<br />
　　由江一燕饰演的丽娜患病在医院治疗时，她总是惦念着自己、有一个名叫小艾的女儿。为去看望女儿，她从医院逃出，回到阔别数年的家中想要领回女儿一同生活，爷爷奶奶在争夺小艾的路途中遭遇车祸去世，丽娜母女搬进了爷爷留下的老宅，每天晚上总能听到小女孩数数和弹钢琴的声音，楼道里挂着一幅脸被烧伤的小女孩的画，她觉得一切恐怖来源于这幅画，于是她想法烧了这幅画。但是却引起了一系列更恐怖的事件……<br />
<br />
　　因精神问题住院治疗的丽娜（江一燕 饰）丢失了部分记忆，她虽然没有结婚，却声称有一个怀胎十月生下的女儿小艾（荣益 饰）。丽娜的恢复情况良好，只差身为医学泰斗的爷爷徐东哲能够签字就可以出院。表情凄楚的丽娜再也无法忍受对女儿的思念，她想方设法从医院逃了出去，回到家中。然而奶奶口口声声说她从未生过孩子，丽娜却目睹爷爷和奶奶带着女儿开车逃走的一幕。谁知途中他们遭遇严重车祸，两位老人当场死亡，小艾则侥幸逃生。丽娜如愿见到了女儿，并且继承了爷爷留下的房产和遗物。<br />
<br />
　　她带着小艾来到远离城市喧嚣的别墅生活，快乐的时光并未持续太久，难以预料的恐怖则席卷而来……<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·《笔仙3》再度归来，投资由前两部的1500万、2000万增长到3000万。<br />
<br />
·笔仙是一种招灵游戏，通过笔来和一种称之为笔仙的生物交流。在实际上，笔仙可招鬼魂之说纯属乃人为因素，由于人们都有好故作玄虚的本性，在玩的过程中总有一人会使劲用手去移动到某个地方来达到某种目的。<br />
<br />
·2014年5月5日，《笔仙3》官方微博宣布以“不正当竞争”为由将“寄生营销”的《笔仙惊魂3》告上法庭。2014年7月1日，北京市第三年中级人民法院宣判《笔仙3》片方胜诉，判决《笔仙惊魂3》片方赔钱50万元之余，在媒体上公开道歉。该裁决一出，意味着长达三年的“真假笔仙”之争以“《笔仙》系列”获胜告终。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：患病入院的丽娜因为惦念自己的女儿小艾从医院逃出，回到阔别数年的家中想领回女儿一同生活。爷爷奶奶在争夺小艾的途中遇车祸去世后，丽娜母女搬进爷爷留下的老宅，却遭遇到一桩桩恐怖事件，邻居们也变得奇怪起来。由江一燕饰演的丽娜患病在医院治疗时，她总是惦念着自己、有一个名叫小艾的女儿。为去看望女儿，她从医院逃出，回到阔别数年的家中想要领回女儿一同生活，爷爷奶奶在争夺小艾的路途中遭遇车祸去世，丽娜母女搬进了爷爷留下的老宅，每天晚上总能听到小女孩数数和弹钢琴的声音，楼道里挂着一幅脸被烧伤的小女孩的画，她觉得一切恐怖来源于这幅画，于是她想法烧了这幅画。但是却引起了一系列更恐怖的事件……因精神问题住院治疗的丽娜',N'中国',N'惊悚/悬疑/恐怖',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-615188-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896264&amp;k=13c7608b2d6cbc915c7bbc81cafc5cc1&amp;t=1412261750&amp;sid=5a99%2ByhJc1q%2FZ8ugPc7R%2Fl5RPhEm5KEQWWFo4yktNrzARVY',N'2014/10/2 22:57:29',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 446,N'【14最强巨兽票房巨制】【哥斯拉】【BluRay-720P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/gesila/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　哥斯拉/哥吉拉(台)<br />
片　　名　Godzilla<br />
年　　代　2014<br />
国　　家　美国/日本<br />
类　　别　动作/科幻/冒险/惊悚<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.9/10 from 153,392 users<br />
链　　接　<a href="http://www.imdb.com/title/tt0831387" target="_blank">http://www.imdb.com/title/tt0831387</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.69 GB<br />
片　　长　123 Min<br />
导　　演　加里斯·爱德华斯 Gareth Edwards<br />
主　　演　亚伦·泰勒-约翰逊 Aaron Taylor-Johnson ....福特·布罗迪 Ford<br />
　　　　　伊丽莎白·奥尔森 Elizabeth Olsen ....艾丽·布罗迪 Elle Brody<br />
　　　　　渡边谦 Ken Watanabe ....芹泽教授 Daisuke Serizawa<br />
　　　　　布莱恩·科兰斯顿 Bryan Cranston ....乔·布罗迪 Joe Brody<br />
　　　　　朱丽叶·比诺什 Juliette Binoche ....Ford''s Mother / Stepmother<br />
　　　　　大卫·斯特雷泽恩 David Strathairn<br />
　　　　　莎莉·霍金斯 Sally Hawkins<br />
　　　　　维克多·罗塞克 Victor Rasuk ....Tre Morales<br />
　　　　　C.J·亚当斯 C.J. Adams ....Ford''s Stepbrother<br />
　　　　　理查德·琼斯 Richard T. Jones<br />
　　　　　布莱恩·马克金森 Brian Markinson ....Whalen<br />
　　　　　艾尔·斯帕恩扎 Al Sapienza ....Huddleston</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片围绕一位人类大兵的生活展开，讲述了沉睡的古代巨型怪兽被人们意外唤醒，醒来后的怪兽展现出强大的破坏能力，它的存在也震惊了世界。影片同时强调了原子弹对生物带来的直接影响。<br />
<br />
　　拥有幸福美满生活的大兵福德·布罗迪（亚伦·泰勒-约翰逊 Aaron Taylor-Johnson 饰），内心隐藏着一个挥之不去的阴影。15年前，他和父亲乔伊（布莱恩·科兰斯顿 Bryan Cranston 饰）、母亲桑德拉（朱丽叶·比诺什 Juliette Binoche 饰）生活在日本。父母供职于一座大型核电站。就在福德生日当天，一场突如其来的灾难摧毁了核电站，他的母亲在灾难中丧生，语焉不详的政府隐瞒真相，以防止核辐射的名义封锁了该地区。但是乔伊却从种种异状觉察到反常之处，十五年来他一直试图揭开当天的灾难之谜，终于发现这一切都是由一只如山一般巨大的怪兽所引起。<br />
<br />
　　怪兽哥斯拉从沉睡中苏醒，令人难以预测的灾难席卷而来……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　为了打造哥斯拉威猛霸气的外形和战斗力，制作团队7个摄制组，辗转6个城市，先后完成了98道布景和960个视效镜头。据了解，整个视效团队的工作人员多达762位，仅哥斯拉鳞片的完整纹理和细部的制作就花了6个月的时间。如果单用1台计算机渲染哥斯拉，需要445年；那么特效师就需要在16世纪(1570年)就开始工作了。为了打造完美声效，音效师动用了总功率达100000瓦、高3.7米、宽5.5米的音箱组放大哥斯拉的咆哮，现场录下“真实世界”的背景声。<br />
<br />
　　导演爱德华斯认为《哥斯拉》的侵袭之旅是一场“环球旅行”，哥斯拉袭击事件在全球各地陆续发生，电影中的场景包括日本、菲律宾、夏威夷、美国中西部以及旧金山等多个国家和地区。值得一提的是在影片结尾处史诗之战中，旧金山市被毁坏的街区有80个，由特效团队多角度捕捉的旧金山天际线的整体角度达到了360度，随后这些素材被融进影片史诗性结尾的3D城市背景中。<br />
<br />
　　新版《哥斯拉》由大热美剧《绝命毒师》男一号“老白”布莱恩·科兰斯顿、“海扁王”亚伦·泰勒-约翰逊、《双面玛莎》伊丽莎白·奥尔森联袂主演，法国女星朱丽叶·比诺什、日本男星渡边谦等大咖强势加盟。<br />
<br />
　　本片是由传奇影业和华纳兄弟电影公司联合制作的，拥有1.6亿美元的高预算，其中75%出自传奇影业，剩下的由华纳承担。这是华纳自1959年的《火焰怪兽》后拍的第一部哥斯拉系列的作品。在2004年《哥斯拉：最后的战争》发布后，象征着对于哥斯拉专营权五十周年的庆祝。日本东宝影业宣布在未来十年将不再制作任何与哥斯拉有关的电影，并随之拆除了水上舞台和很多专门为拍摄建造的水中布景。在1998年曾制作了哥斯拉系列的三星电影公司原本有权制作一个三部曲，但到了2003年，这个权限也过期了。2004年，执导过1971年《哥斯拉大战赫斗拉》的板野义光宣布由东宝授权，他将拍摄一部哥斯拉系列的3D IMAX短片，会翻拍1971年的故事。2005年，美国摄影师彼得-安德森加入该团队任摄影、视效总监和联合制片人。两年后，美国制片人布莱恩-罗杰斯也被签入剧组。通过布莱恩，也将最先进的3D技术带到了制作中。同一年，制片方会见了东宝影业，进行协商，将原先的短片拓展成了可以在影院上映的3D长片。后来，由于财政问题，整个项目被移交给了美国的制片厂。<br />
<br />
　　2010年，该片终于有了第一个剧本，大卫-卡拉汉说：“哥斯拉在人们印象中是巨型怪兽，总是进行各种破坏。但令我兴奋的是主题其是与现代世界的紧密关系。”在他之后又有四任编剧进行剧本的改编，直到2013年，弗兰克-德拉邦特（曾创作《肖申克的救赎》）加入到最后的创作。德拉邦特将哥斯拉定义为“自然的可怕力量”，影片将加入一个非常“引人注目的剧中人”，哥斯拉也将被引入一个截然不同的当代问题中，并不只限于原作中的核试验。除此之外，他还为人物关系注入了许多灵魂和情感联系。比如布罗迪夫妇的生离死别。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·“哥斯拉”是影史最著名的怪兽形象之一，也是日本战后流行文化的标志性符号之一，并对日本、欧美等诸多怪兽作品影响深远。<br />
<br />
·影片将按照1954年的日本著名电影《哥斯拉》改编而来。<br />
<br />
·截止到2004年，日本东宝公司共拍摄过28部“哥斯拉”电影。<br />
<br />
·新版《哥斯拉》由凭借低成本长片处女作《怪兽》崭露头角的英国导演加里斯·爱德华斯执导，《复仇者联盟》摄影师西穆斯·迈克加维掌镜，先后有五任编剧修改过剧本，包括诺兰的御用编剧大卫·S·高耶。<br />
<br />
·新版《哥斯拉》并非是老版《哥斯拉》的续集，而是开启的全新故事。影片将按照1954年的日本著名电影《哥斯拉》改编而来，在灾难场景的还原上将采用3D技术，给观众以身临其境之感。<br />
<br />
·对于《哥斯拉》是一部“公路片”的说法，导演爱德华斯称他更倾向于将它看成是一场“环球旅行”，电影中的场景包括日本、菲律宾、夏威夷、美国中西部以及旧金山等多个国家和地区，场景多达95个。<br />
<br />
·电影在时间上的跨度也很大，故事将从1954年（事件的起源）、1999年（事件发生）和2014年（再次发生）这三个时间点来展开叙事。<br />
<br />
·布莱恩·科兰斯顿和亚伦·泰勒-约翰逊将饰演一对父子，人类社会的家庭关系也是影片的重点之一。谈起来两人的合作，亚伦大赞老白非常专业而且充满活力，拍摄时总能贡献出很多自己的新点子。<br />
<br />
·布莱恩·科兰斯顿爆料，自己经常给剧本提很多建议，不管导演最后是否采纳。一次他写了一场他与饰演其妻子的朱丽叶·比诺什的床戏提交，不过最后没被采用，老白却转身说“你想在现实中来一场吗？”<br />
<br />
·亚伦·泰勒-约翰逊在片中饰演一名海军中士，为此他努力进行举重训练保持体形。片场还有一名海军中士来把控演员们的表现， 他也曾参加过《黑鹰坠落》等电影的制作，亚伦说这样的经历让他觉得很棒。<br />
<br />
·哥斯拉的吼声，来源于皮手套抚弄低音提琴，当然有后期变调混音。传奇影业总裁塔尔和导演爱德华兹接受采访时都确认了这一点。<br />
<br />
·片场录回声时，用了高4米宽约一条街总功率10万瓦的巨无霸音箱阵列。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：影片围绕一位人类大兵的生活展开，讲述了沉睡的古代巨型怪兽被人们意外唤醒，醒来后的怪兽展现出强大的破坏能力，它的存在也震惊了世界。影片同时强调了原子弹对生物带来的直接影响。拥有幸福美满生活的大兵福德·布罗迪（亚伦·泰勒-约翰逊 Aaron Taylor-Johnson 饰），内心隐藏着一个挥之不去的阴影。15年前，他和父亲乔伊（布莱恩·科兰斯顿 Bryan Cranston 饰）、母亲桑德拉（朱丽叶·比诺什 Juliette Binoche 饰）生活在日本。父母供职于一座大型核电站。就在福德生日当天，一场突如其来的灾难摧毁了核电站，他的母亲在灾难中丧生，语焉不详的政府隐瞒真相，以防止核辐射的名',N'美国/日本',N'动作/科幻/冒险/惊悚',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-615799-1-2.html',N'http://www.lwgod.com/attachment.php?aid=898242&amp;k=6f1c938a11f6bef3b7045abcdbc78aba&amp;t=1412261751&amp;sid=43fdOFfS1Q1GmmASYj6TeLaL0RDC1TVF2PXMsHII8ADmbcs',N'2014/10/2 22:57:29',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 447,N'【徐峥莫文蔚14万众期待】【催眠大师】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/cuimiandashi/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/cuimiandashi/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.14/cuimiandashi/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　催眠大师/催眠档案之彻夜未眠<br />
片　　名　The Great Hypnotist<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　剧情/悬疑/惊悚<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
评　　分　6.9/10 from 141 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3720058" target="_blank">http://www.imdb.com/title/tt3720058</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　0.99 GB<br />
片　　长　102 Min<br />
导　　演　陈正道 Zhengdao Chen<br />
主　　演　徐峥 Zheng Xu ....徐瑞宁 <br />
　　　　　莫文蔚 Karen Mok ....任小妍<br />
　　　　　吕中 Zhong Lv ....方教授<br />
　　　　　王耀庆 Yaoqing Wang ....骆雨淞<br />
　　　　　胡静 Jing Hu ....陈婷<br />
　　　　　管乐 Yue Guan ....沈立<br />
　　　　　杨凯迪 Kai Di Yang ....Amy<br />
　　　　　李芳淙 Fangcong Li ....任小妍幼年<br />
　　　　　蒋佳雨彤 Jiayutong Jiang ....一岁任晓妍<br />
　　　　　戴明 Ming Dai ....徐父<br />
　　　　　宋慈 Ci Song ....徐母</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　知名心理治疗师徐瑞宁正值事业风生水起之时，遭遇棘手的女病人任小妍。这起医生和病人的较量并没有想象中那么简单，看似弱不禁风的任小妍处处与他针锋相对。徐瑞宁最终揭开任小妍的真实身份，自己也因爱而得到救赎。<br />
<br />
　　著名的心理治疗师徐瑞宁（徐峥 饰）擅长催眠治疗，深得业界的赞扬。但是心高气傲的他却遭遇了职业生涯中最棘手的案件，那就是恩师方教授（吕中 饰）推荐给他的女病人任小妍（莫文蔚 饰）。一天晚上，女助手Amy（杨凯迪 饰）引见来了任小妍，但是这个女病人似乎一直都不太配合，对待医生态度强硬，而且坚信自己能有超自然的能力，瑞宁觉得她没有说出真相，于是开始了催眠疗法。意想不到的是任小妍反而掌控了局面，而真相居然与瑞宁的妻子（胡静 饰）以及好友洛雨凇（王耀庆 饰）有关，任小妍的身份真正是什么？瑞宁似乎掉进了一个设计好的陷阱里……<br />
<br />
　　本片是陈正道导演自《101次求婚》之后的一部力作，徐峥担任了本片监制及主演。<br />
<br />
　　国内擅长催眠疗法的知名心理治疗师徐瑞宁（徐峥 饰）正值事业风生水起之时，由他治疗过的病人全都痊愈出院，这也使得徐瑞宁信心倍增，直至骄傲自大。就连自己的学生在课堂上对他理论的质疑，都毫不收敛的回击过去，这些都被徐瑞宁的大学老师方教授看在眼里。在徐瑞宁一次讲课后，方教授受到其学生的请求，让徐瑞宁诊断一位特殊的病人任小妍（莫文蔚 饰），但方教授嘱咐徐瑞宁，称这位病人的十分怪异，她看过的心理医师没有一名能够治疗她的病情，任小妍讲话虚实难辨而且懂得如何回击治疗师。方教授口中所说的这名病人，让徐瑞宁对她产生了极大的兴趣，并且自大的认为没有治不好的病人。<br />
<br />
　　当任小妍来到徐瑞宁的诊疗室时，徐瑞宁发现这位病患确实如同方教授所说很有古怪。任小妍声称自己能够看到已经死去的人，并且寻求她的帮助完成生前没有做过的事，徐瑞宁听后不以为然，但任小妍解释自己根本就没有心理疾病，她所看到的都是真实存在的。徐瑞宁在任小妍一顿&quot;疯语&quot;过后，决定采用催眠疗法进行治疗。而当任小妍成功进入催眠状态后，徐瑞宁想要找出任小妍的心理阴影所在，却不曾想自己被带入了一个可怕的陷阱。这场医生和病人的较量似乎没有徐瑞宁想象得那么简单，看似弱不禁风的任小妍处处与他针锋相对。是什么让任小妍心灵紧锁，是童年痛苦的回忆？还是中指上依然可见的戒痕？一切静待催眠大师揭晓谜局……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　早在十年前由陈正道执导的《宅变》就曾在台湾创下1800万的票房佳绩。徐峥在接受记者采访时也表示，《催眠大师》这种题材的电影其实才是陈正道的菜。陈正道也表示：“在自己从影10周年的时刻，回归一部自己钟爱的题材作品，力求做到完美，让观众见证到自己这10年来的成长。”<br />
<br />
　　陈正道表示：“其实我觉得，不止是梦境世界，电影中的整个催眠世界其实都是用一砖一瓦一个小的细节构建起来的，所以我们在美术和道具上做得很细致。房子里的每一块地板的纹路，墙上每一张画的摆放，桌上的每一个道具，我们通过这种细节去呼应我们这一次电影之中一层又一层的这个概念。”<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·拍摄时，徐峥和莫文蔚每天下午过一遍台词，华灯初上就开工，全是夜戏，所以徐峥也调侃，他就这样与莫文蔚“度过了一夜又一夜”。<br />
<br />
·影片故事由陈正道原创，他在天涯社区找到了作家任鹏，两人共同撰写、改写7版才形成最终剧本。只是抱着试试看的心态，将剧本寄给了徐峥，没想到徐峥不但答应出演，并且还欣然担任了监制。<br />
<br />
·徐峥透露拍水中戏是这部影片最大的挑战。他向妻子前花样游泳运动员陶虹请教，陶虹建议徐峥戴鼻夹，但导演却以后期无法处理拒绝了徐峥的提议，“所以我最后拍到脑子进水了”，徐峥自嘲道。<br />
<br />
·导演陈正道介绍，电影中的催眠世界其实都是用一砖一瓦的细节构建起来的，所以美术和道具上做得很细致。房子里的地板的纹路，墙上画的摆放，桌上的道具等细节去呼应电影中一层又一层的这个概念。<br />
<br />
·《催眠大师》的场景不多，主要集中在那间复古阴郁的心理诊疗室中。而这个小小的空间里，容纳了超过1000多个道具及细节的设计。<br />
<br />
·为体现人物关系反转，演员会有现场走位的“路线图”；为保证道具联系严密，如录音笔的位置，杯子的转向，场记和道具师会做定点和拍照；不管入镜与否，现场有三个钟表必定对应剧情发生时间。<br />
<br />
·导演解释说，片中的道具沙漏是对时间的暗示，方正的办公桌代表权威、保守和压抑，桌上锐利的办公用具(如尺、拆信刀)隐喻一种自残危险的状态，欧普艺术画暗喻“无法看清其真正的状态”的神秘感。<br />
<br />
·莫文蔚的项链坠子一开始是弹簧形状，后来变成了弹珠项链。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：知名心理治疗师徐瑞宁正值事业风生水起之时，遭遇棘手的女病人任小妍。这起医生和病人的较量并没有想象中那么简单，看似弱不禁风的任小妍处处与他针锋相对。徐瑞宁最终揭开任小妍的真实身份，自己也因爱而得到救赎。著名的心理治疗师徐瑞宁（徐峥 饰）擅长催眠治疗，深得业界的赞扬。但是心高气傲的他却遭遇了职业生涯中最棘手的案件，那就是恩师方教授（吕中 饰）推荐给他的女病人任小妍（莫文蔚 饰）。一天晚上，女助手Amy（杨凯迪 饰）引见来了任小妍，但是这个女病人似乎一直都不太配合，对待医生态度强硬，而且坚信自己能有超自然的能力，瑞宁觉得她没有说出真相，于是开始了催眠疗法。意想不到的是任小妍反而掌控了局面，而真相居',N'中国',N'剧情/悬疑/惊悚',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-614663-1-2.html',N'http://www.lwgod.com/attachment.php?aid=894997&amp;k=06a831bbc4c78633756ce6061f8655df&amp;t=1412261752&amp;sid=bdcdGZtiVIltfZlUP%2BKO8Xq5RsIG3t7A%2F8Zvo4pV65uVFZ0',N'2014/10/2 22:57:29',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 448,N'【珍藏】【驯龙高手1+短片+番外篇】【BluRay-720P.MKV】【四语】',N'<font color="blue"><font size="5">原盘高码重新压制，效果比几年前版本好太多！<br />
建议重下收藏！种子内包含两部番外篇和一部短片<br />
分别是《驯龙高手短片：骨碎龙传说》<br />
《驯龙高手番外篇：龙的礼物》和《驯龙高手番外篇：驯龙宝典》</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/xunlonggaoshou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/xunlonggaoshou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/xunlonggaoshou/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　驯龙高手/驯龙记/驯龙<br />
片　　名　How To Train Your Dragon<br />
年　　代　2010<br />
国　　家　美国<br />
类　　别　奇幻/家庭/冒险/喜剧/动画<br />
语　　言　<font color="red"><font size="3">英语/大陆国语/台版国语/粤语四音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　<font color="red">8.2/10 from 320,224 users&nbsp;&nbsp;Top 250 #152</font><br />
链　　接　<a href="http://www.imdb.com/title/tt0892769" target="_blank">http://www.imdb.com/title/tt0892769</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　4.65 GB<br />
片　　长　98 Min<br />
导　　演　迪恩·德布洛斯 Dean DeBlois<br />
　　　　　克里斯·桑德斯 Chris Sanders<br />
主　　演　杰伊·巴鲁切尔 Jay Baruchel&nbsp;&nbsp;....Hiccup (voice)<br />
　　　　　杰拉德·巴特勒 Gerard Butler&nbsp;&nbsp;....Stoick (voice)<br />
　　　　　亚美莉卡·费雷拉 America Ferrera&nbsp;&nbsp;....Astrid (voice)<br />
　　　　　克雷格·费格森 Craig Ferguson&nbsp;&nbsp;....Gobber (voice)<br />
　　　　　乔纳·希尔 Jonah Hill&nbsp;&nbsp;....Snotlout (voice)<br />
　　　　　克里斯托夫·梅兹-普莱瑟 Christopher Mintz-Plasse&nbsp;&nbsp;....Fishlegs (voice)<br />
　　　　　克里斯汀·韦格 Kristen Wiig&nbsp;&nbsp;....Ruffnut (voice)<br />
　　　　　T·J·米勒 T.J. Miller&nbsp;&nbsp;....Tuffnut (voice)<br />
　　　　　Kieron Elliott&nbsp;&nbsp;....Viking (uncredited)<br />
　　　　　Robin Atkin Downes&nbsp;&nbsp;....Ack<br />
　　　　　Philip McGrade&nbsp;&nbsp;....Starkard (voice)<br />
　　　　　阿什丽·詹森 Ashley Jensen&nbsp;&nbsp;....Phlegma the Fierce (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　维京少年小嗝嗝住在博克岛，那里对抗巨龙是常事。为了证明自己，小嗝嗝和其他少年一起参加屠龙训练营。但是当他遇到一只受伤的龙后，他的人生完全改变，而原本是小嗝嗝证明自己的机会，却成为改变整个部落的未来的机会。<br />
<br />
　　维京岛国的少年小嗝嗝（杰伊·巴鲁切尔 Jay Baruchel 配音）是部落统领伟大的斯托里克（杰拉德·巴特勒 Gerard Butler 配音）的儿子，他非常想像自己的父亲一样亲手屠龙——这些飞龙是岛上维京人放牧羊群的主要天敌——但他每次出现在部落屠龙的战斗中都只给大家徒增烦恼。在一次对抗飞龙的战斗中，希卡普偷偷用射龙器击伤了一只最神秘的“夜之怒龙”，并背着族人放生、豢养，甚至驯服了这只龙，还给它起名“无牙”。希卡普的神秘行径引起了一同训练屠龙技巧的女孩阿斯特丽德（亚美莉卡·费雷拉 America Ferrera 配音）的怀疑。阿斯特丽德发现了希卡普的秘密，却同时被身骑“无牙”御风而飞的美妙体验所震撼。格雷决定在屠龙成人礼上向远征归来的斯托里克和族人讲明真相，说服大家放弃屠龙，却偏偏弄巧成拙，害得“无牙”被俘，一场更大的灾难就在眼前……<br />
<br />
<font color="red"><strong><font size="3">一句话评论：</font></strong></font><br />
<br />
动画技术非常华丽，而最吸引观众的则是精彩的故事！<br />
——《综艺》<br />
<br />
非常漂亮清新的一部动画片，而且相当的有内涵。<br />
——《芝加哥太阳时报》<br />
<br />
一部有关龙的电影，拥有非常具有智商的剧本、动画效果和配音演员，这些让本片非常棒！<br />
——娱乐在线<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
一年一度的梦工厂<br />
<br />
　　梦工厂的动画向来都是以欢乐闹腾的喜剧题材为主心骨，例如《怪物史莱克》或者《功夫熊猫》都是令人捧腹不已的卖座动画片。在去年的《大战外星人》乱炖了外星人进攻、地球怪物变异等经典科幻情节之后，今年梦工厂推出的是这部改编自畅销文学作品的《驯龙记》。对于这部动画片的制作缘起，监制邦尼·阿诺德说：“我们最初定下的计划是以一本读者很多的小说作为原著来改写它，当时我们参考了市面上许多的儿童文学，其中就有这部《驯龙记》。我们在一堆图书里发现了它，很快就感到它具有极强的影像化，观众们应该会感到很有兴趣，因为《驯龙记》里的神龙形象颠覆了过去我们常常见到的那些龙的特征，实际上这是一头很没有战斗力和威慑力的小龙，观众可以随着影片一起见证它的成长，龙的成长过程，就是电影要表达的重点。我想观众很会喜欢看到这种题材，《驯龙记》是一个典型的冒险故事，也符合梦工厂一贯的动画风格，所以我们很快就开始和原作者洽谈，进入动画的筹备阶段。”<br />
<br />
　　担任《驯龙记》导演一职的，是迪恩·德布洛斯与克里斯·桑德斯，两者起初是在2002年的迪斯尼动画片《星际宝贝》里合作而认识，对于这部新作，克里斯·桑德斯说：“《驯龙记》是一部较之梦工厂过去的作品有一些风格区别的电影，我们在制作的过程里参考了许多中世纪的书籍和电影，想把这部电影的奇幻色彩做得不那么卡通化，也就是说观众也许会感到，《驯龙记》有些像《加勒比海盗》或者《指环王》，但不会像《怪物史莱克》。我们按照制作一部真人奇幻电影的心态来制作这部《驯龙记》，当然喜剧色彩并未衰退，剧本依然有很多让人大笑不已的桥段，只是在整部动画的表达层面上变得更加真实而已。”<br />
<br />
　　为什么会以“真实”作为影片的制作标准呢？对于这一点，克里斯·桑德斯说：“这是一部讲述年轻海盗小伙如何征服一条神龙的故事，龙是存在于各国神话故事里的生物，它的传奇色彩很浓，相反我们却对海盗感到很亲切，而除了龙之外，整个《驯龙记》的故事都是和真实的历史较为接近的，所以我们在创作的时候确立了这么一点，要让观众觉得故事很真实，龙的出现是故事在真实和奇幻中的一个连接桥梁，能够让观众觉得，我们的历史上也曾经出现了这么一个拐点，如果能达到这个效果，说明我们的念头做成功了。制作《驯龙记》的时候，制作人员找来了大量中世纪时期海盗的资料，整个工作室里满墙都是这些玩意，每天让我走进工作室的时候，我都会意识到，我们是在讲述历史，不过是用动画的方式来表达而已。瞧，我们自己都把自己给瞒住了。”<br />
<br />
　　本片还在冬奥会期间特别制作了七段和奥运会有关的短片，对于这个短片的由来，导演克里斯·桑德斯说：“一开始我们就想制作一些有趣的短片，来让大家明白本片的魅力，而后就有了冬奥会的这几个片段。我们的灵感来源于本届冬奥会的北欧元素，这部电影所讲述的也是北欧的故事，而片中跟运动有关的素材也很多，所以就产生了这样几段11世纪的‘维京冬奥会’短片。”<br />
<br />
与小龙一起成长<br />
<br />
　　梦工厂制作的动画的一大特色就是，以大牌演员做声优，这次《驯龙记》请到了杰伊·巴鲁切尔、杰拉德·巴特勒和“丑女贝蒂”亚美莉卡·费雷拉等明星。为本片男主角海卡普配音的是杰伊·巴鲁切尔，这位来自加拿大的年轻演员新路颇顺，在多部影片中展现了其不俗的喜剧功力，前不久还主演了《我配不上她》。这次首度为动画献声，杰伊·巴鲁切尔说：“我比这部动画里配音的角色要大十岁，但是我却不觉得和他有代沟，这个角色其实是所有人年轻时候的一个投影，他有严厉的父亲，有惰性，当他面临责任和危机的时候，他才会真正的成长起来。表面上看《驯龙记》讲述的是海卡普的小龙成长的过程，其实，也是海卡普自己的成长，我想这些人人都曾经经历过的故事，会引起大家的共鸣吧。”<br />
<br />
　　本片里当仁不让的明星角色，自然就是这条连牙都没长齐的小龙了，向来不按牌理出牌的梦工厂，将宝都押在这条小龙上自然是信心十足，对于这个角色的刻画，导演克里斯·桑德斯说：“这部电影讲述的不是一个英雄如何征服世界，而是一个普通人如何被世界所改变。影片或多或少借鉴了一些《功夫熊猫》的概念，《功夫熊猫》观众可以很明白的感受到影片里那只熊猫是如何成长的，同样，在《驯龙记》里，观众也可以随主角海卡普一起见证龙的成长。这条龙的外形集合了大家的智慧，它要足够可爱，要让观众觉得亲切，小孩子看见也会想去抱一抱……就像《功夫熊猫》的阿宝一样。”<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·影片改编自克蕾熙达·柯维尔的同名儿童图书。<br />
<br />
·本片导演克里斯·桑德斯在2006年末因为在《闪电狗》创作上与《闪电狗》的监制约翰·拉塞特产生分歧而离开迪士尼动画部，后来改投梦工厂，本片是他在梦工厂的第一部导演作品。<br />
<br />
·影片里的无齿龙的角色设定，部分灵感来源于2002年的《星际宝贝》，而这部动画片的导演正是《驯龙记》的导演克里斯·桑德斯。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：维京少年小嗝嗝住在博克岛，那里对抗巨龙是常事。为了证明自己，小嗝嗝和其他少年一起参加屠龙训练营。但是当他遇到一只受伤的龙后，他的人生完全改变，而原本是小嗝嗝证明自己的机会，却成为改变整个部落的未来的机会。维京岛国的少年小嗝嗝（杰伊·巴鲁切尔 Jay Baruchel 配音）是部落统领伟大的斯托里克（杰拉德·巴特勒 Gerard Butler 配音）的儿子，他非常想像自己的父亲一样亲手屠龙——这些飞龙是岛上维京人放牧羊群的主要天敌——但他每次出现在部落屠龙的战斗中都只给大家徒增烦恼。在一次对抗飞龙的战斗中，希卡普偷偷用射龙器击伤了一只最神秘的“夜之怒龙”，并背着族人放生、豢养，甚至驯服了这只龙',N'美国',N'奇幻/家庭/冒险/喜剧/动画',N'1280 x 720',N'2010',N'http://www.lwgod.com/thread-614955-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895676&amp;k=fa8bf92eea137e73ffc823ee922a56ac&amp;t=1412261751&amp;sid=16acTAPR9APYAQiZe%2FsokyfRURMTI7EHHwEUQIZMo9FcgmY',N'2014/10/2 22:57:29',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 449,N'【古天乐14社会犯罪】【反贪风暴】【BluRay-720P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/fantanfengbao/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.28/fantanfengbao/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　反贪风暴/Z风暴/Z风云/反贪风暴2014<br />
片　　名　Z Storm<br />
年　　代　2014<br />
国　　家　中国香港<br />
类　　别　剧情/动作/犯罪<br />
语　　言　<font color="red"><font size="3">国语粤语双音轨</font></font><br />
字　　幕　中文简繁<br />
评　　分　5.2/10 from 120 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3469440" target="_blank">http://www.imdb.com/title/tt3469440</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.43 GB<br />
片　　长　92 Min<br />
导　　演　林德禄 David Lam<br />
主　　演　古天乐 Louis Koo ....陆志廉<br />
　　　　　林家栋 Ka Tung Lam ....黄文彬<br />
　　　　　陈静 Dada Chan ....梁安莹<br />
　　　　　王敏德 Michael Wong ....胡志勇<br />
　　　　　卢海鹏 Hoi-Pang Lo ....罗德永<br />
　　　　　骆应钧 Felix Lok ....徐怀景<br />
　　　　　曾国祥 Kwok Cheung Tsang ....马耀祖<br />
　　　　　张兆辉 Siu-Fai Cheung ....余洪盛<br />
　　　　　盛君 Jun Sheng ....谭美莉<br />
　　　　　姜皓文 Patrick Keung ....阿何<br />
　　　　　廖启智 Kai Chi Liu ....张强<br />
　　　　　欧锦棠 Stephen Au ....安达</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　《Z风暴》将以廉政公署打击贪污为主题，讲述由古天乐领衔的廉政公署调查员，包括欧锦棠、曾国祥、张松枝、盛君和田学维，携手将罪犯绳之以法。而林家栋带领的警方团队亦正亦邪，与属下姜皓文等，周旋于古天乐与罪犯之间。<br />
<br />
　　影片依据港岛真实重大贪腐案件改编，以ICAC打击罪犯为故事内核，讲述了以陆志廉（古天乐 饰）领导的香港廉政公署在接到对黄文彬警官（林家栋 饰）的贪污指控后展开调查，在一番抽丝剥茧的侦查之后，发现一个更大的贪腐案情，而这如果不能及时处理将引发一场毁灭性的“金融风暴”。就此，一场肩负挽救香港重大使命、空前的“反贪风暴”滚滚来袭。<br />
<br />
　　一日，眼部受伤的女人突然出现在廉政公署总部，扬言要控告商业罪案调查科警司黄文彬（林家栋 饰）贪污，廉政公署执行处首席调查主任陆志廉（古天乐 饰）与队员接手调查，在追查过程中，陆志廉发现事情并不简单，因为身为警司的黄文彬在执行职务时，不止没有阻止罪案发生，更利用职权参与犯罪。<br />
<br />
　　正当调查渐渐有头绪时，重要证人一个一个被杀，包括罗德永（卢海鹏 饰），所有线索以及证据亦告失去，但有勇有谋的陆志廉并未放弃，随着神秘少女Angel（陈静 饰）的出现，他发现律师胡志勇（王敏德 饰）与“关怀基金”主席徐怀景（骆应钧 饰）有不可告人的秘密。<br />
<br />
　　陆志廉今次将要面对一个庞大的贪污集团：当中包括了退休高官、警队高层、商界富豪、资深律师、会计师等，事件更牵涉到香港政府用作扶贫的150亿“关怀基金”……<br />
<br />
　　商业犯罪搜查科警司黄文彬（林家栋 饰）的妻子前往廉政公署举报丈夫巨额先进来路不明，廉记首席调查主任陆志廉（古天乐 饰）奉命传唤黄到署问话，然而对手老奸巨猾，深谙暗箱一切套路，最终平安脱险。此前不久，黄曾调查素有香港会计界教父之称的罗德永（卢海鹏 饰）未果，视频中二人的反常举止引起陆的怀疑。与此同时，身份难辨的Z基金在道貌岸然的律师胡志勇（王敏德 饰）的推动下即将上市，该基金打着扶贫旗号，有望吸引港府150亿的专项关怀基金投入其中。陆敏感察觉其中的蹊跷，他和同事利用有限的时间展开全面调查。<br />
<br />
　　金钱巨大的诱惑之下，贪婪之徒铤而走险，更不惜为此杀人嗜血。狂扫污秽的Z风暴即将到来，黑云压城城欲摧……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：《Z风暴》将以廉政公署打击贪污为主题，讲述由古天乐领衔的廉政公署调查员，包括欧锦棠、曾国祥、张松枝、盛君和田学维，携手将罪犯绳之以法。而林家栋带领的警方团队亦正亦邪，与属下姜皓文等，周旋于古天乐与罪犯之间。影片依据港岛真实重大贪腐案件改编，以ICAC打击罪犯为故事内核，讲述了以陆志廉（古天乐 饰）领导的香港廉政公署在接到对黄文彬警官（林家栋 饰）的贪污指控后展开调查，在一番抽丝剥茧的侦查之后，发现一个更大的贪腐案情，而这如果不能及时处理将引发一场毁灭性的“金融风暴”。就此，一场肩负挽救香港重大使命、空前的“反贪风暴”滚滚来袭。一日，眼部受伤的女人突然出现在廉政公署总部，扬言要控告商业罪案调查',N'中国香港',N'剧情/动作/犯罪',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-615798-1-2.html',N'http://www.lwgod.com/attachment.php?aid=898241&amp;k=4031298fafd82bdae3bd706602f50ac8&amp;t=1412261752&amp;sid=3ef7crUbBYqiQkwIXUGcIk1q5eRruehVym22ieEN0AUq8Hc',N'2014/10/2 22:57:29',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 450,N'【14高分票房科幻动作】【分歧者】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/fenqizhe/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/fenqizhe/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　分歧者：异类觉醒/分歧者：异类叛逃(港)/分歧者(台)<br />
片　　名　Divergent<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　动作/科幻/冒险/爱情<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.2/10 from 82,236 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1840309" target="_blank">http://www.imdb.com/title/tt1840309</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.36 GB<br />
片　　长　139 Min<br />
导　　演　尼尔·博格 Neil Burger<br />
主　　演　谢琳·伍德蕾 Shailene Woodley ....Beatrice ''Tris'' Prior<br />
　　　　　提奥·詹姆斯 Theo James ....Four<br />
　　　　　凯特·温丝莱特 Kate Winslet ....Jeanine Matthews<br />
　　　　　迈尔斯·特勒 Miles Teller ....Peter<br />
　　　　　安塞尔·埃尔格特 Ansel Elgort ....Caleb Prior<br />
　　　　　佐伊·克拉维兹 Zoe Kravitz ....Christina<br />
　　　　　雷·史蒂文森 Ray Stevenson ....Marcus Eaton<br />
　　　　　托尼·戈德温 Tony Goldwy ....Andrew Prior<br />
　　　　　李美琪 Maggie Q ....Tori<br />
　　　　　艾什莉·贾德 Ashley Judd ....Natalie Prior<br />
　　　　　杰·科特尼 Jai Courtney ....Eric<br />
　　　　　梅奇·费法 Mekhi Phifer ....Max<br />
　　　　　克里斯蒂安·马德森 Christian Madsen ....Al</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　未来社会的人类被分为五个派系，人们必须加入符合自己特征的派系，而翠丝却惊讶地发现她是“分歧者”，不属于任何派系。而分歧者这样的异类也将遭到杀害，翠丝必须争分夺秒躲避危难并扳倒邪恶势力。<br />
<br />
　　故事的女主角名叫碧翠丝，生活在反乌托邦背景下的芝加哥，那时的社会已经被分成了五个派系，每个派系都是纯粹的美德，每个人都将进入一个派系被培养，这五个派系是：诚实、无私、勇敢、平和、聪明。每年都有一个固定的日期，所有16岁的人必须在这一天选择他们余生将要奉献给的派别。对于碧翠丝，她更想跟家人在一起，于是她做出了一个令所有人（包括她自己在内）惊讶的选择……<br />
<br />
　　该片根据维罗尼卡·罗斯（Veronica Roth）同名小说改编，故事讲述了在未来的芝加哥，人们被分成五大派别，分别是：诚实（Candor）、智慧（Erudite）、和平（Amity）、无畏（Dauntless）、无私（Abnegation）。每一个孩子在16岁的时候都要选择一个派别加入，并经受考验。女主角比阿特丽斯（Beatrice “Tris” Prior）正面临这样的选择，然而她与别人不同，她同时具备无畏、无私、智慧三种特质，她是一个“分歧者”……<br />
<br />
　　年后的未来：芝加哥成为一个与世隔绝的城市，在这个乌托邦社会里，存在五个派系。在所有公民16岁的时候，他们都要做出选择，决定继续留在自己出生时所在的派系，还是重新选择新的派系。五大派系代表了不同的美德，分别是：无私派（Abnegation）、诚实派（Candor）、无畏派（Dauntless）、友好派（Amity）和博学派（Erudite）。<br />
<br />
　　每个人都能与派系中的一种美德相匹配，当一个人选择离开他所在的派系并且不被他所选择的派系接受时，他就会成为流浪者，度过贫困凄惨的一生。<br />
<br />
　　女主角碧翠丝（谢琳·伍德蕾 Shailene Woodley 饰）从小受到严格的“无私”派家教的教育，她的父亲是一个特别忠诚的“无私”派支持者，他希望子女也和他一样。但令他震惊的是，碧翠丝的兄弟选择了“博学”派，碧翠丝最后选择了“无畏”派。<br />
<br />
　　青年们被分配到自己选择的派系，并送到各自的训练中心。碧翠丝改名为翠丝，她和同派的成员要通过一系列困难重重的竞争，来证明他们适合留在这个派系中，避免沦落到被驱逐的下场。这些年青人都必须通过高强度的体能和心理测试来完成派系的转化。但是翠丝有个不可告人的秘密，这个秘密一旦泄露，会给她带来杀身之祸。<br />
<br />
　　随着剧情的发展，这个秘密被泄露的可能性也变得越来越大，看似完美的社会也面临着被彻底颠覆的危机。这个秘密有可能可以拯救她爱的人，但也足以毁灭她。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·在《星运里的错》中，谢琳和安塞尔扮演一对情侣，而在该片中，他们扮演兄妹。<br />
<br />
·凯特·温丝莱特在拍摄期间怀孕五个月了。尽管她在片场的时间仅有四周，但还是得拍她腰部以上，在主镜头中，她用文件夹、文件和ipad挡住她隆起的肚子。<br />
<br />
·在拍摄电影中的公共场景时，导演用了假片名“Catbird”。<br />
<br />
·卢卡斯·提尔、杰克·莱诺、杰瑞米·艾文、亚历克斯·帕蒂弗、布兰顿·思怀兹、亚历山大·路德韦格和卢克·布雷西都曾是主演人选。<br />
<br />
·迈尔斯·特勒最初试镜的是Four这个角色，但被告知没有得到该角色。几个月后，制片人看了他演的《美好的现在》而被打动，让他出演与Four为敌的Eric，他拒绝了。最后他同意出演Peter。<br />
<br />
·杰瑞米·艾文是饰演Four的首选，但他拒绝了，因为他不想被人视作青少年偶像。<br />
<br />
·谢琳和迈尔斯是好朋友，因此在拍打戏时，谢琳不敢出手太重，迈尔斯不得不把她叫到一边谈了谈，好让她对自己出手更狠些。<br />
<br />
·Tris（谢琳）打Peter（迈尔斯）脖子时，Peter发出的声音是真的。谢琳不想伤害迈尔斯，所以她畏手畏脚的。随着拍摄的进行，两人打得越来越激烈，在一次拍摄中，谢琳真的打中了迈尔斯的脖子。<br />
<br />
·开拍前，全体演员参加了两个月的新兵训练营。<br />
<br />
·艾伦·艾克哈特原本是Andrew Prior的扮演者，但开拍前他退出了。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：未来社会的人类被分为五个派系，人们必须加入符合自己特征的派系，而翠丝却惊讶地发现她是“分歧者”，不属于任何派系。而分歧者这样的异类也将遭到杀害，翠丝必须争分夺秒躲避危难并扳倒邪恶势力。故事的女主角名叫碧翠丝，生活在反乌托邦背景下的芝加哥，那时的社会已经被分成了五个派系，每个派系都是纯粹的美德，每个人都将进入一个派系被培养，这五个派系是：诚实、无私、勇敢、平和、聪明。每年都有一个固定的日期，所有16岁的人必须在这一天选择他们余生将要奉献给的派别。对于碧翠丝，她更想跟家人在一起，于是她做出了一个令所有人（包括她自己在内）惊讶的选择……该片根据维罗尼卡·罗斯（Veronica Roth）同名小说改',N'美国',N'动作/科幻/冒险/爱情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-613131-1-2.html',N'http://www.lwgod.com/attachment.php?aid=891348&amp;k=5057d42b18ef4b2113f9d93a7cb2df2c&amp;t=1412261756&amp;sid=2bccrljabmOqlQ9WKP5R0PJ17wLl%2F5ATDISbyY9vNdIenyE',N'2014/10/2 22:57:30',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 451,N'【香港14最新温碧霞参演】【微交少女】【HD-1024.MP4】【国语】',N'<font color="blue"><font size="5">清晰度一般，并且应该是删减版，大家酌情下载！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/weijiaoshaonv/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/weijiaoshaonv/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.17/weijiaoshaonv/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　微交少女<br />
片　　名　Shall We Chat?<br />
年　　代　2014<br />
国　　家　中国香港<br />
类　　别　剧情<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　828 MB<br />
片　　长　83 Min<br />
导　　演　翁子光<br />
主　　演　温碧霞<br />
　　　　　许雅婷<br />
　　　　　蔚雨芯<br />
　　　　　何浩文<br />
　　　　　麦德和<br />
　　　　　王施千<br />
　　　　　郭子健<br />
　　　　　冯志强<br />
　　　　　余雨<br />
　　　　　李静仪<br />
　　　　　陈妙</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　三十年前，《靓妺仔》充份反映当时叛逆未成年少女实况，时至今日，时代变迁，2013年的未成年少女出卖身体的情况变本加厉，由“鱼蛋妺”、“老泥妹”到现在的“援交妹”、“Part-time girlfriend”，她们已不是过去的“迫良为娼”、“为势所迫”，而是更加“我行我素”、“没有包袱”、“放纵失控”。<br />
<br />
　　延续1982年卖座电影《靓妹仔》奇迹，由《明媚时光》香港电影金像奖最佳新晋导演提名翁子光编导、《天水围的日与夜》香港电影金像奖最佳编剧吕筱华编剧、《囡囡》《喜爱夜蒲》系列伍健雄监制，将当代社会委靡面貌及迷失少女的叛逆青春，再一次真实呈现。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：三十年前，《靓妺仔》充份反映当时叛逆未成年少女实况，时至今日，时代变迁，2013年的未成年少女出卖身体的情况变本加厉，由“鱼蛋妺”、“老泥妹”到现在的“援交妹”、“Part-time girlfriend”，她们已不是过去的“迫良为娼”、“为势所迫”，而是更加“我行我素”、“没有包袱”、“放纵失控”。延续1982年卖座电影《靓妹仔》奇迹，由《明媚时光》香港电影金像奖最佳新晋导演提名翁子光编导、《天水围的日与夜》香港电影金像奖最佳编剧吕筱华编剧、《囡囡》《喜爱夜蒲》系列伍健雄监制，将当代社会委靡面貌及迷失少女的叛逆青春，再一次真实呈现。影片',N'中国香港',N'剧情',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-614953-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895675&amp;k=4c226031e3d661bbca0886a40e80521c&amp;t=1412261752&amp;sid=674aHGAExJjEGwf2zaesuI5E4gMfRoVPItQDcg%2FO62p%2B%2BcA',N'2014/10/2 22:57:30',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 452,N'【万众期待巨制】【美国队长1+2】【BluRay-1080P.MKV】【双语】',N'<font color="blue"><font size="5">龙网1080p第二弹！</font></font><br />
<br />
<br />
<br />
<font color="red"><font size="6">美国队长1</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/04.12/meiguoduizhang1/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/04.12/meiguoduizhang1/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　美国队长/美国队长：复仇者先锋(港)/复仇者先锋<br />
片　　名　Captain America The First Avenger<br />
年　　代　2011<br />
国　　家　美国<br />
类　　别　动作/科幻/冒险<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.8/10 from 287,283 users<br />
链　　接　<a href="http://www.imdb.com/title/tt0458339" target="_blank">http://www.imdb.com/title/tt0458339</a><br />
文件格式　x264 + 5.1 DTS @ mkv<br />
视频尺寸　<font color="red"><font size="3">1920 x 1080</font></font><br />
文件大小　8.03 GB<br />
片　　长　124 Mins<br />
导　　演　乔·庄斯顿 Joe Johnston<br />
主　　演　克里斯·埃文斯 Chris Evans&nbsp;&nbsp;....Captain America / Steve Rogers<br />
　　　　　海莉·阿特维尔 Hayley Atwell&nbsp;&nbsp;....Peggy Carter<br />
　　　　　雨果·维文 Hugo Weaving&nbsp;&nbsp;....Johann Schmidt / Red Skull<br />
　　　　　塞巴斯蒂安·斯坦 Sebastian Stan&nbsp;&nbsp;....James Buchanan ''Bucky'' Barnes<br />
　　　　　汤米·李·琼斯 Tommy Lee Jones&nbsp;&nbsp;....Colonel Chester Phillips<br />
　　　　　多米尼克·库珀 Dominic Cooper&nbsp;&nbsp;....Howard Stark<br />
　　　　　理查德·阿米塔格 Richard Armitage&nbsp;&nbsp;....Heinz Kruger<br />
　　　　　史坦利·图齐 Stanley Tucci&nbsp;&nbsp;....Dr. Abraham Erskine<br />
　　　　　塞缪尔·杰克逊 Samuel L. Jackson&nbsp;&nbsp;....Nick Fury<br />
　　　　　托比·琼斯 Toby Jones&nbsp;&nbsp;....Dr. Arnim Zola<br />
　　　　　尼尔·麦克唐纳 Neal McDonough&nbsp;&nbsp;....Timothy ''Dum Dum'' Dugan<br />
　　　　　德瑞克·卢克 Derek Luke&nbsp;&nbsp;....Gabe Jones<br />
　　　　　肯尼斯·崔 Kenneth Choi&nbsp;&nbsp;....Jim Morita</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　本片由漫画改编而成。在二战时期，美国政府为了对付纳粹德国，特别研制出一种名为“超级士兵”的血清。这种血清能够提升士兵的体力、速度、耐力及意志力。正当美国政府苦于寻找作为试验的人选时，一位名叫斯蒂芬的年青人虽然有志投身军队，可惜却因身体过份孱弱而被拒绝入伍。后来军部游说斯蒂芬参加“超级士兵”的实验计划。虽然知道这项实验非常危险，但这是唯一能够为国家效力的机会，因此斯蒂芬决心接受成为这计划的实验品。实验效果非常理想，斯蒂芬由一位骨瘦如柴的年青人变成了虎背熊腰的超级士兵。不过在实验成功后不久，一切和实验有关的人和资料都被一名纳粹德国的间谍所摧毁，只有斯蒂芬逃出生天，所以“超级士兵”计划以后也不能再实行。后来美国政府正式为斯蒂芬这位唯一的超级士兵命名为Captain America（美国队长）。斯蒂芬就此开始了扬善惩恶的征程。<br />
<br />
　　斯蒂夫·罗杰斯是出生于经济大萧条时期的一个家境贫寒的脆弱青年。因为看到纳粹在欧洲肆虐侵略的新闻而想入伍参军。但因为体弱多病被拒绝了。无意中得知了斯蒂夫·罗杰斯真心愿望的切斯特·菲利普斯将军决定给他一个机会，让他参加“重生计划”。经过几个星期的测试，斯蒂夫·罗杰斯被注射了超级士兵的血清并被用紫外线照射轰击，终于拥有了人类可能拥有的最完美躯体。接着他接受了身体和战术上的训练。三个月后，他得到了作为“美国队长”的第一份任务，带着坚不可摧的盾牌和深谙战术的头脑，他投入了与邪恶势力的斗争，捍卫自由，并成为了超级英雄团体“复仇者”的领导者。<br />
<br />
　　二次大战期间，斯蒂夫·罗杰斯想参军替美国打倒纳粹德军，可是他未能通过体能检查，于是他参加了军方一个秘密实验计划—重生计划（Rebirth），参加者会被改造成为超级战士，斯蒂夫被改造后成为了唯一成功的实验品，自此之后，他身穿红、白、蓝三色战斗服为国效力，成为了美国队长。<br />
<br />
　　1941年，全世界都陷入第二次世界大战的战火，一个来自布鲁克林的瘦弱小子斯蒂芬（克里斯·埃文斯饰）也想要从军报国，却因为体弱多病不断受到军方拒绝，但是他在偶然的情况下受到征召，参加美国军方的一项秘密计划，把这个瘦弱小子变成一名超级战士－美国队长。美国队长和他的队友詹姆斯巴恩斯中士（塞巴斯蒂安·斯坦饰）以及佩姬（海莉·阿特维尔饰）在菲利普斯将军（汤米·李·琼斯饰）的指挥之下向邪恶的九头蛇军团宣战，九头蛇军团是纳粹党的一个神秘科学组织，首领则是邪恶的红骷髅（雨果·维文饰）。 <br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.27/meiguoduizhang/1.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.27/meiguoduizhang/2.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />
<br />
<font color="red"><font size="6">美国队长2</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　美国队长2/美国队长2：冬日战士/美国队长2：酷寒战士(台)/美国队长2：寒冬战士/美国队长：冬兵<br />
片　　名　Captain America: The Winter Soldier<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　动作/科幻/冒险<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　<font color="red">8.0/10 from 202,807 users</font><br />
链　　接　<a href="http://www.imdb.com/title/tt1843866" target="_blank">http://www.imdb.com/title/tt1843866</a><br />
文件格式　x264 + 5.1 DTS @ mkv<br />
视频尺寸　<font color="red"><font size="3">1920 x 1080</font></font><br />
文件大小　8.68 GB<br />
片　　长　136 Min<br />
导　　演　安东尼·罗素 Anthony Russo<br />
　　　　　乔·罗素 Joe Russo<br />
主　　演　克里斯·埃文斯 Chris Evans ....美国队长/史蒂夫·罗杰斯<br />
　　　　　斯嘉丽·约翰逊 Scarlett Johansson ....娜塔莎·罗曼诺夫/黑寡妇<br />
　　　　　塞巴斯蒂安·斯坦 Sebastian Stan ....巴奇·巴恩斯/冬日战士<br />
　　　　　安东尼·麦凯 Anthony Mackie ....猎鹰/山姆·威尔逊 Sam Wilson/The Falcon<br />
　　　　　塞缪尔·杰克逊 Samuel L. Jackson ....尼克·弗瑞 Nick Fury<br />
　　　　　罗伯特·雷德福 Robert Redford ....亚历山大·皮尔斯&nbsp;&nbsp;Alexander Pierce<br />
　　　　　寇碧·史莫德斯 Cobie Smulders ....玛丽亚-希尔 Maria Hill<br />
　　　　　艾米丽·万凯普 Emily VanCamp ....莎朗·卡特 Sharon Carter<br />
　　　　　海莉·阿特维尔 Hayley Atwel ....佩吉·卡特 Peggy Carter<br />
　　　　　弗兰克·格里罗 Frank Grillo ....布洛克-朗姆洛/叉骨 Brock Rumlow/Crossbones<br />
　　　　　麦克斯米利安诺·贺 Maximiliano Herna ....西特维尔特工 Jasper Sitwell</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　故事发生在《复仇者联盟》两年后，史蒂夫已定居华盛顿，努力适应现代社会的生活。然而当一起神秘袭击事件伤害到神盾局的重要人物时，美国队长必须重新出马，联合黑寡妇击退前来刺杀他的刺客，找出幕后真凶。<br />
<br />
　　在经历了《复仇者联盟》的纽约大战后，美国队长史蒂夫·罗杰斯如今在华盛顿过着恬淡的生活，努力尝试着融入现代社会。然而当一名神盾局同事遭遇袭击后，史蒂夫被迫卷入了一场威胁全球安危的阴谋。他与黑寡妇携手出击，一边防备欲将自己灭口的杀手，一边努力揭露这个巨大阴谋的真面目。而当敌人的邪恶计划全局曝光后，美国队长和黑寡妇得到了一位新同盟“猎鹰”的协助。然而他们也发现自己将要面临的，是前所未遇、出乎意料的黑暗劲敌——冬兵。<br />
<br />
　　渐渐习惯了现代生活的美国队长史蒂夫·罗杰斯（克里斯·埃文斯 Chris Evans 饰），在一次行动后隐隐嗅到神盾局内部所弥漫出来的凶险气味。而当得知神盾局正秘密进行的“洞察计划”后，他更为此感到愤怒。某天，神盾局指挥官尼克-法瑞（塞缪尔·杰克逊 Samuel L. Jackson 饰）遭到一群武装分子袭击，他拼尽全力将一支U盘交到美国队长手中，这里面藏着该局二战以来最重要且最可怕的秘密。在此之后，美国队长因涉嫌杀害尼克而遭到前局长亚历山大·皮尔斯（罗伯特·雷德福/Robert Redford 饰）的通缉和追杀，逃亡中他得到黑寡妇（斯嘉丽·约翰逊 Scarlett Johansson 饰）和退伍老兵“猎鹰”（安东尼·麦凯 Anthony Mackie 饰）的帮助。<br />
<br />
　　他们必须争分夺秒解开神盾局的秘密，阻止“洞察计划”的施行……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.27/meiguoduizhang/3.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.27/meiguoduizhang/4.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<br />',N'：本片由漫画改编而成。在二战时期，美国政府为了对付纳粹德国，特别研制出一种名为“超级士兵”的血清。这种血清能够提升士兵的体力、速度、耐力及意志力。正当美国政府苦于寻找作为试验的人选时，一位名叫斯蒂芬的年青人虽然有志投身军队，可惜却因身体过份孱弱而被拒绝入伍。后来军部游说斯蒂芬参加“超级士兵”的实验计划。虽然知道这项实验非常危险，但这是唯一能够为国家效力的机会，因此斯蒂芬决心接受成为这计划的实验品。实验效果非常理想，斯蒂芬由一位骨瘦如柴的年青人变成了虎背熊腰的超级士兵。不过在实验成功后不久，一切和实验有关的人和资料都被一名纳粹德国的间谍所摧毁，只有斯蒂芬逃出生天，所以“超级士兵”计划以后也不能再',N'美国',N'动作/科幻/冒险',N'1920 x 1080',N'2011',N'http://www.lwgod.com/thread-615702-1-2.html',N'http://www.lwgod.com/attachment.php?aid=898082&amp;k=e03960908c216fd8c260e3098ac79efc&amp;t=1412261753&amp;sid=8440uwxUQu1LkQmmiFcKq5chSNfaBrLbVBvB%2BPwC4uilO2c',N'2014/10/2 22:57:30',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 453,N'【迪士尼14新众星】【布偶大电影2】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/buou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/buou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　布偶大电影之最高通缉/布偶大电影2/布偶历险记：全面追缉<br />
片　　名　Muppets Most Wanted<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　喜剧/歌舞/犯罪/冒险<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.7/10 from 10,061 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2281587" target="_blank">http://www.imdb.com/title/tt2281587</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.58 GB<br />
片　　长　107 Min<br />
导　　演　詹姆斯·波宾 James Bobin<br />
主　　演　瑞奇·热维斯 Ricky Gervais ....Dominic<br />
　　　　　泰·布利尔 Ty Burrell ....Jean Pierre Napoleon<br />
　　　　　蒂娜·菲 Tina Fey ....Nadya<br />
　　　　　斯蒂夫·惠特米勒 Steve Whitmire ....Kermit/Beaker/Statler/Rizzo/Newsman/Foo-Foo(voice)<br />
　　　　　克里斯托弗·瓦尔兹 Christoph Waltz<br />
　　　　　汤姆·希德勒斯顿 Tom Hiddleston ....Great Escapo<br />
　　　　　女神卡卡 Lady GaGa<br />
　　　　　萨尔玛·海耶克 Salma Hayek<br />
　　　　　黛比·莱恩 Debby Ryan<br />
　　　　　斯坦利·图齐 Stanley Tucci<br />
　　　　　丹尼·特乔 Danny Trejo<br />
　　　　　扎克·加利费安纳基斯 Zach Galifianakis ....Hobo Joe<br />
　　　　　雷·利奥塔 Ray Liotta<br />
　　　　　罗斯·林奇 Ross Lynch<br />
　　　　　杰梅·克莱门特 Jemaine Clement<br />
　　　　　席琳·狄翁 Céline Dion<br />
　　　　　吹牛老爹 Sean ''P. Diddy'' Combs</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　科米蛙将面对最大的挑战：布偶团正在进行欧洲巡演，到达了柏林、马德里、伦敦等令人兴奋的城市。但很快一个和科米蛙长得几乎一模一样，却操着一口带有浓重俄国口音英语的青蛙大盗康斯坦丁，摇身一变，和他的搭档多米尼克(瑞奇·热维斯饰演)混入了布偶团，而可怜的科米蛙则被蒂娜·菲饰演的狱警娜佳打入大牢，身陷囹圄。此外，《摩登家庭》男星泰·布利尔将饰演国际刑警，调查这桩奇怪的案件。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　在前一部《布偶大电影》获得商业和口碑的双丰收后，迪士尼公司就与导演詹姆斯-波宾、编剧尼古拉斯-斯托勒协商拍摄续集。2012年，迪士尼为这个项目大开绿灯，很快确认了英国喜剧演员瑞奇-热维斯的加盟，而后是好莱坞喜剧明星蒂娜-菲和泰-布利尔。詹姆斯-波宾并不太想把太多经典布偶剧的元素融入到新作中，他想为这个系列注入更新的创意。当然，他并不会把布偶的形象搞得面目全非，依旧会让老影迷们看到熟悉的身影，他说：“我们真的想重现那些老电影的魅力，这是一个混合了快乐、混乱与疯狂的电影。它就像是六十年代的老派犯罪片，只不过主角是青蛙、熊和猪。与布偶剧里相同，他们给观众带来音乐和欢笑。与此同时，电影还包含了以家庭为内核的情感戏，会让电影在嬉闹之余得到平衡，就像第一部我们以两位主角的爱情为主线一样。”<br />
<br />
　　为电影配乐的是新西兰喜剧演员兼音乐人布雷特-麦肯齐，他个性鲜明的音乐、古怪的风格都与布偶的特点十分搭配。他为前一部布偶电影创作的主题曲拿到了奥斯卡奖。除了麦肯齐，还有众多好莱坞大腕客串，只为给科米蛙和猪小姐助阵，这其中包括吹牛老爹，席琳-迪翁，Ladygaga和詹姆斯-麦卡沃伊等等。不过根据波宾得说法，演员根本没法通过走后门在影片中出现，他们每个人都必须符合电影的氛围：“电影中没有任何场景是为客串明星单独打造的，他们必须出自我们的创作而且必须对味……我觉得客串最有趣的是，观众根本不知道谁在何时会出现，突然就有一个非常熟悉的面孔现身，而他（她）扮演的角色却与你的预期南辕北辙。我们请来了许多格莱美获奖者和奥斯卡级别的演员，对他们进行了别出心裁的组合。”<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：科米蛙将面对最大的挑战：布偶团正在进行欧洲巡演，到达了柏林、马德里、伦敦等令人兴奋的城市。但很快一个和科米蛙长得几乎一模一样，却操着一口带有浓重俄国口音英语的青蛙大盗康斯坦丁，摇身一变，和他的搭档多米尼克(瑞奇·热维斯饰演)混入了布偶团，而可怜的科米蛙则被蒂娜·菲饰演的狱警娜佳打入大牢，身陷囹圄。此外，《摩登家庭》男星泰·布利尔将饰演国际刑警，调查这桩奇怪的案件。幕后制作：在前一部《布偶大电影》获得商业和口碑的双丰收后，迪士尼公司就与导演詹姆斯-波宾、编剧尼古拉斯-斯托勒协商拍摄续集。2012年，迪士尼为这个项目大开绿灯，很快确认了英国喜剧演员瑞奇-热维斯的加盟，而后是好莱坞喜剧明星蒂娜-菲',N'美国',N'喜剧/歌舞/犯罪/冒险',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-613128-1-2.html',N'http://www.lwgod.com/attachment.php?aid=891346&amp;k=7d38224792f110c9cecb680d627a5ec5&amp;t=1412261757&amp;sid=d011ZdAvocBFYNfibv1pf7%2B2bT3cOfbQliP8tFWAr2yzzuo',N'2014/10/2 22:57:30',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 454,N'【美14超火爆战争动作】【锅盖头2】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/guogaitou2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　锅盖头2/锅盖头2：战火之地/锅盖头2：雷霆救援<br />
片　　名　Jarhead 2: Field of Fire<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　战争/动作<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　5.6/10 from 246 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3699508" target="_blank">http://www.imdb.com/title/tt3699508</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.47 GB<br />
片　　长　103 Min<br />
导　　演　唐·迈克尔·保罗 Don Michael Paul<br />
主　　演　Jason Wong ....Justin Li<br />
　　　　　Asen Asenov ....Policman<br />
　　　　　Daniel Coetzer ....One of the Marines<br />
　　　　　Amr El-Bayoumi ....Police Captain<br />
　　　　　杰西·加西亚 Jess Garcia ....Rafael Soto<br />
　　　　　科尔·豪瑟 Cole Hauser ....Fox<br />
　　　　　Ronny Jhutti ....Khalid<br />
　　　　　乔什·凯利 Josh Kelly ....Merrimette<br />
　　　　　Alexander Krustev ....Another Marine<br />
　　　　　史蒂芬·朗 Stephen Lang ....Major Gavins</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　久经沙场的老将Chris Merriman下士领导着一支小分队执行一项为一座靠近塔利班势力控制范围的前哨站提供补给的任务，在经过赫尔曼德省敌对势力占领区的时候，车队被一位海豹突击队员拦了下来，并阴差阳错的卷进了一个国际性救援行动中，护送一位反塔利班组织的重要女性成员逃出阿富汗。在没有坦克和重型火力支援的条件下，他们将竭尽所能从这个被战火蹂躏的国家中逃出生天。<br />
<br />
　　身经百战的克里斯下士（Josh Kelly 饰）晋升为小队的指挥官，该小队的下一个任务是给位于塔利班控制边缘地区的前线哨所提供补给。当车队行经敌对的赫尔德曼省时，他们遇到了寻求帮助的海豹突击队，双方将合作完成一项重要任务——护送一名因反抗塔利班而闻名的妇女逃离该国……<br />
<br />
　　没有坦克装甲车和空中支援，克里斯下士和他的团队必须鼓足全部勇气，拼尽所有弹药，横穿这个被战争蹂躏的国家，直至护送该妇女到安全地点……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：久经沙场的老将Chris Merriman下士领导着一支小分队执行一项为一座靠近塔利班势力控制范围的前哨站提供补给的任务，在经过赫尔曼德省敌对势力占领区的时候，车队被一位海豹突击队员拦了下来，并阴差阳错的卷进了一个国际性救援行动中，护送一位反塔利班组织的重要女性成员逃出阿富汗。在没有坦克和重型火力支援的条件下，他们将竭尽所能从这个被战火蹂躏的国家中逃出生天。身经百战的克里斯下士（Josh Kelly 饰）晋升为小队的指挥官，该小队的下一个任务是给位于塔利班控制边缘地区的前线哨所提供补给。当车队行经敌对的赫尔德曼省时，他们遇到了寻求帮助的海豹突击队，双方将合作完成一项重要任务——护送一名因反抗',N'美国',N'战争/动作',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-614877-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895434&amp;k=f6ff616dc001948cece4c133a84277ca&amp;t=1412261754&amp;sid=6da9atYfmVdCXedf3pTMGncakvRzFq6AQ3FARaVdI7KhUgM',N'2014/10/2 22:57:30',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 455,N'【保罗沃克14超火爆】【暴力街区】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/baolijiequ/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/baolijiequ/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　暴力街区/玩命特区(台)/暴力禁区(港)/公寓追凶<br />
片　　名　Brick Mansions<br />
年　　代　2014<br />
国　　家　法国/加拿大<br />
类　　别　动作/犯罪/剧情<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　5.7/10 from 11,206 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1430612" target="_blank">http://www.imdb.com/title/tt1430612</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.48 GB<br />
片　　长　90 Min<br />
导　　演　卡米勒·德拉马雷 Camille Delamarre<br />
主　　演　保罗·沃克 Paul Walker ....Damien<br />
　　　　　大卫·贝尔 David Belle ....Lino<br />
　　　　　罗伯特·菲茨杰拉德·迪格斯 RZA ....Tremaine<br />
　　　　　卡塔利娜·丹尼斯 Catalina Denis ....Lola<br />
　　　　　Gouchy Boy ....K2<br />
　　　　　Ayisha Issa ....Rayzah<br />
　　　　　卡尔洛·罗塔 Carlo Rota ....George the Greek<br />
　　　　　Andreas Apergis ....Berringer<br />
　　　　　Richard Zeman ....Major Reno<br />
　　　　　罗伯特·梅耶 Robert Maillet ....Yeti<br />
　　　　　布鲁斯·拉姆塞 Bruce Ramsay ....Mayor</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　该片是国际著名导演吕克·贝松所指导的经典动作电影《暴力街区13》的升级加强版，讲述了芝加哥一批大规模杀伤性武器被一名贫民窟的毒贩偷窃，于是由保罗·沃克饰演的警探与卧底（大卫·贝尔）深入贫民窟调查，最终揭露了一个被隐瞒多年的惊天大阴谋。<br />
<br />
　　美国底特律罪恶横行，为了保障市民安全，当局将市内最危险的罪犯隔离，安置他们在令人闻风丧胆的罪恶禁区“红砖特区”（Brick Mansions）。<br />
<br />
　　在弱肉强食的“红砖特区”内，残暴冷酷的大毒枭特里梅因（RZA 饰）为邪恶核心，卧底探员达米安（保罗·沃克 Paul Walker 饰）一直希望将他绳之于法。另一方面，希望离开禁区重过新生活的利诺（大卫·贝尔 David Belle 饰），因为女友罗拉被特里梅因掳走而心急如焚。拥有共同敌人，来自不同世界，背景各异的达米安与利诺决定联手对付特里梅因……<br />
<br />
　　本片翻拍自2004年同名法国动作电影《暴力街区13》，也是保罗·沃克最后的完整作品。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
《暴力街区》英雄救美引爆七夕&nbsp;&nbsp;票房口碑双爆棚<br />
<br />
　　由基美影业与法国欧罗巴联合出品，法国著名导演吕克·贝松担纲监制、制片、编剧的动作电影《暴力街区》于8月1日七夕节前夕登陆全国院线。自上映之日起，该片场场爆满、口碑爆棚，三天上座率均为全国第一，票房近5000万，颠覆了很多情侣七夕节只看爱情片的传统，打造了史上最酷炫激情的七夕档期！<br />
<br />
　　作为保罗·沃克生前最后一部完整作品，电影集结了飞车、跑酷、枪战、嘻哈等多种元素，片中保罗与“跑酷之王”大卫·贝尔的默契配合成为本片最大看点，二者英雄救美的情节也让该片成为七夕档的热门之选。<br />
<br />
七夕节全国上座率第一&nbsp;&nbsp;票房与口碑齐飞<br />
<br />
　　《暴力街区》首日票房高达1100万元，30余万人前去观影，一线城市场均人次超《小时代3》《闺蜜》和《龙之谷：破晓奇兵》等一众热映影片；8月2日第二天，《暴力街区》上座率高达84.34%，位居全国第一，可谓场场爆满，很多影迷反映无票可买，这一现象让很多影院都始料未及，于是在周日纷纷暴力街区2014为《暴力街区》加大排片量。在排片量增加的情况下，《暴力街区》的上座率依然稳居第一，三天票房破5000万，预计院线排片会进一步增加。不少情侣选择观看此片过节，掀起七夕另类观影热潮。<br />
<br />
　　该片在豆瓣网的评分为7.1，同档期的《闺蜜》评分只有5.9分，《白发魔女传之明月天国》仅有4.1分，而敢于单挑变四的《分手大师》也只有5.6分。<br />
<br />
　　从观众的反响可以看出，这部影片口碑相当不错，而首日之后的口碑对影片以后的票房走势至关重要，有如此高的评分和高上座率作保障，可以预计该片的票房会持续攀升。<br />
<br />
短裙长腿美女肉搏&nbsp;&nbsp;英雄救美引爆七夕<br />
<br />
　　《暴力街区》之所以能在七夕创造票房奇迹，除了影片本身质量过硬外、填补市场空白外，英雄救美的情节也是非常重要的加分项。该片除了拥有铁血钢拳的硬汉激情外，还尽显英雄救美的侠骨柔情。<br />
<br />
　　为了让观众一饱眼福，本周片方曝光一款英雄救美视频特辑。为了挽救被黑帮老大抓走的大卫·贝尔的前女友，保罗·沃克和大卫·贝尔双剑合璧，深入虎穴，一路过关斩将。最后时刻，面临整个城市人的生命和女友的生命，大卫·贝尔产生了激烈的思想斗争，甚至与之前的好搭档保罗·沃克反目，二人陷入被设计好的阴谋中，一边是女友，一边是千万人生命，如何拨云见日？将兄弟情义、家国恩怨混入英雄救美的情节中，让故事更加饱满，最终大卫·贝尔将卡塔利娜·丹尼斯饰演的“女友”从生死边缘救回。虽然分手多年，不得相见，但大卫·贝尔依然对卡塔利娜念念不忘，关键时刻舍命相救，与七夕的节日主题不谋而合。这份柔情蜜意怕是会让很多在电影院中观影的小情侣们，会心一笑、五指暗合。<br />
<br />
　　除了让人暖心的英雄救美情节，这部雄性荷尔蒙十足的电影中，两位女演员的打斗戏也非常精彩。两位女演员巾帼不让须眉，摇身一变成“霹雳娇娃”，长发美腿贴身肉搏，让人顿起怜香惜玉之心。这两位美艳与危险并存的女汉子是剧中亮点，卡塔利娜·丹尼斯来自盛产美女的哥伦比亚，是演员兼模特，身高为182cm，一袭飘逸黑发+短裙长腿成剧中一大看点；另一位是加拿大黑人女星阿伊莎·伊萨，身高与前者不相上下，身材火辣。<br />
<br />
　　火辣高挑的长腿美女和危难时刻的英雄救美，兼顾了男性观众和女性观众的不同的观影需求，解救爱人使有情人终成眷属，这不恰好吻合七夕节的主题吗。<br />
<br />
飞车跑酷枪战肉搏&nbsp;&nbsp;激情大片填补暑期档空白<br />
<br />
　　作为一部标准时长的影片，《暴力街区》恰到好处地容纳了：极限跑酷、动作格斗、追车枪战等“大片气象”，甚至还有“喋血双雄”般不打不相识的欢乐基情等，无不妥帖有序地安置在紧凑的戏剧冲突结构之中。更重要的是，这些元素混合之后，以一种带有B级cult电影的趣味和气质呈现出来，既能赢取暴力街区2014动作电影固定粉丝的心，又能颇为讨巧地扩大征服观众的地盘。此外，保罗·沃克斯人已逝，音容尤在，为电影增添一层温暖、怀旧的美好光环。<br />
<br />
　　纵观整个暑期档电影市场不难发现，2014年夏天的国内影视虽然已经创造了众多的“奇迹”和“纪录”，但影片同质化也十分明显，如《分手大师》、《闺蜜》、《后会无期》、《小时代》等影片类型多是青春、爱情题材的中小成本影片，影片类型较为单一，若不算一枝独秀的《变形金刚4》，难觅海外大片身影。在这样市场环境下，《暴力街区》这种集飙车、跑酷、枪战、肉搏、嘻哈多种热门元素为一身的动作大片必将会给萎靡不振的电影市场注入一针强心剂，填补暑期影市的一大空白，仅仅是前三天《暴力街区》就取得了如此令人欣喜的成绩，高上座率必会带来院线的排片增加，下周票房有望持续快速增长，让观众真正感受到夏日火爆大片带来的酣畅淋漓。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：该片是国际著名导演吕克·贝松所指导的经典动作电影《暴力街区13》的升级加强版，讲述了芝加哥一批大规模杀伤性武器被一名贫民窟的毒贩偷窃，于是由保罗·沃克饰演的警探与卧底（大卫·贝尔）深入贫民窟调查，最终揭露了一个被隐瞒多年的惊天大阴谋。美国底特律罪恶横行，为了保障市民安全，当局将市内最危险的罪犯隔离，安置他们在令人闻风丧胆的罪恶禁区“红砖特区”（Brick Mansions）。在弱肉强食的“红砖特区”内，残暴冷酷的大毒枭特里梅因（RZA 饰）为邪恶核心，卧底探员达米安（保罗·沃克 Paul Walker 饰）一直希望将他绳之于法。另一方面，希望离开禁区重过新生活的利诺（大卫·贝尔 David',N'法国/加拿大',N'动作/犯罪/剧情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-615334-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896716&amp;k=f86024a628e8c841fbdda699ac23e6cd&amp;t=1412261754&amp;sid=fc3fMlBz55pz27qSVDeeF0durqrs3CgLVh8EbwwzFLDPSwM',N'2014/10/2 22:57:31',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 456,N'【14万众期待票房巨制】【超凡蜘蛛侠2】【HD-1024.MP4】【中字】',N'<font color="blue"><font size="5">字幕质量一般，不急的兄弟请继续等待完美版！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/zhizhuxia2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.26/zhizhuxia2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　超凡蜘蛛侠2/蜘蛛人惊奇再起2：电光之战(台)/蜘蛛侠2 : 决战电魔(港)/超凡蜘蛛侠2：电光人崛起<br />
片　　名　The Amazing Spider-Man 2<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　动作/科幻/奇幻/冒险<br />
语　　言　英语<br />
字　　幕　中文字幕<br />
评　　分　7.3/10 from 130,760 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1872181" target="_blank">http://www.imdb.com/title/tt1872181</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　1.38 GB<br />
片　　长　142 Min<br />
导　　演　马克·韦布 Marc Webb<br />
主　　演　安德鲁·加菲尔德 Andrew Garfield ....彼得·帕克/蜘蛛侠 Peter Parker/Spider-Man<br />
　　　　　艾玛·斯通 Emma Stone ....格温·斯黛西 Gwen Stacy<br />
　　　　　杰米·福克斯 Jamie Foxx ....迈克斯·狄龙/电光人<br />
　　　　　戴恩·德哈恩 Dane DeHaan ....哈利·奥斯本/小绿魔<br />
　　　　　保罗·吉亚玛提 Paul Giamatti ....阿列克谢·西斯艾维奇/犀牛人<br />
　　　　　莎莉·菲尔德 Sally Field ....梅伯母 Aunt May<br />
　　　　　克里斯·库柏 Chris Cooper ....诺曼·奥斯本/绿魔 Norman Osborn<br />
　　　　　坎贝尔·斯科特 Campbell Scott ....理查德·帕克 Richard Parker<br />
　　　　　艾伯丝·戴维兹 Embeth Davidtz ....玛丽·帕克 Mary Parker<br />
　　　　　麦克斯·查尔斯 Max Charles ....童年彼得·帕克 Young Peter Parker<br />
　　　　　丹尼斯·利瑞 Denis Leary ....格温父亲 Captain Stacy (uncredited)<br />
　　　　　科鲁姆·费奥瑞 Colm Feore ....唐纳德·梅肯 Donald Menken</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　彼得·帕克（安德鲁·加菲尔德饰）依然很忙，而格温（艾玛·斯通饰）毕业后考虑去牛津大学继续深造。“电光人”（杰米·福克斯饰）出现后，生活更不得安宁。老朋友哈利·奥斯本（戴恩·德哈恩饰）回归，帕克发现了关于自己身世的新线索。<br />
<br />
　　能力越大，责任越大。蜘蛛侠彼得·帕克（安德鲁·加菲尔德 Andrew Garfield 饰）在全力和犯罪、灾难做斗争的同时，终于迎来了毕业的时刻。可是曾经的一段心结，让他和女友格温·斯坦西（艾玛·斯通 Emma Stone 饰）的关系降至冰点。格温应聘于为全城提供电力的 奥斯本集团公司，同一期间发生的两件事，不由得左右这家公司和彼得等人的命运。奥斯本的掌门人病故，他的儿子哈利（戴恩·德哈恩 Dane DeHaan 饰）以20岁的年龄接受这家市值2000亿美元的巨无霸。另一方面，极度崇拜蜘蛛侠的电力工程师麦克斯·威尔·迪伦（杰米·福克斯 Jamie Foxx 饰）在维修机组时意外身亡，当他再度醒来时发现自己变成了全身充满电能的超人类。<br />
<br />
　　感到受了欺骗的麦克斯与蜘蛛侠在时代广场展开对决，而彼得和哈利的友情也将遭到命运的戏弄……<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·本片是首部完全在纽约拍摄的《蜘蛛侠》电影，也是在纽约拍摄的最大预算的影片。<br />
<br />
·本集的配乐由大师汉斯·季默与美国创作型说唱歌手法瑞尔·威廉姆斯联手打造。<br />
<br />
·奥斯卡影帝杰米·福克斯在片中扮演的是电光人，奥斯卡最佳男配角克里斯·库珀扮演的是奥斯本，这是奥斯卡获奖演员第一次扮演蜘蛛侠的死对头。<br />
<br />
·漫画中，格温被老绿魔（诺曼奥斯本）扔下布鲁克林大桥。小蜘蛛发射蛛丝一下子拉住她，下坠的冲力将她的颈椎骨硬生生扯断。格温从此与世长辞。电影最后格温穿了和漫画中死亡场景一模一样的衣服。<br />
<br />
·谢琳·伍德蕾原本在片中扮演了玛丽·简的角色，并且还拍摄了一些镜头。但是在剪辑的时候，她的戏份全部被剪切掉了。原因是导演希望蜘蛛侠和格温·斯黛西之间的爱情能保留到最后。<br />
<br />
·马克·韦伯在福克斯探照灯影业还有片约未完成。探照灯同意马克·韦伯执导索尼的《蜘蛛侠》，但条件就是要帮《X战警》宣传一下，所以就有了今年《X战警》的这个彩蛋。国内版无该片尾彩蛋。<br />
<br />
·在电梯前支走Max去修电路的那名Oscorp员工，Max管他叫“斯迈思”（Smythe）。漫画中Smythe是“蜘蛛杀手”的创造者，后来他改造自己的身体，成为了“终极蜘蛛杀手”。<br />
<br />
·Oscorp那名低调的秘书Felicia就是漫画中的黑猫，一个魅惑的亦正亦邪的角色，Peter在作为蜘蛛侠时的暧昧对象。<br />
<br />
·Oscorp的地下仓库除了小绿魔和犀牛人的盔甲还有秃鹫和章鱼博士的装备。章鱼博士、秃鹫、电光人、猎人克拉文、致幻客与沙人在漫画中合称“Sinister Six”（邪恶六人组）。<br />
<br />
·Peter的手机铃声是老版蜘蛛侠第一部中在地铁站扛着吉他卖艺的那哥们儿唱的歌“Spiderman”。 此旋律最初出处为1967年动画版蜘蛛侠的主题曲。<br />
<br />
·《超凡蜘蛛侠》是一部用数码拍摄的影片，但导演选择了使用35mm胶片拍摄续集《超凡蜘蛛侠2》。而在拍摄结束之后，他会使用数字技术将胶片转换成数码影像，并用后期转制的方法把影片变成3D格式。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：彼得·帕克（安德鲁·加菲尔德饰）依然很忙，而格温（艾玛·斯通饰）毕业后考虑去牛津大学继续深造。“电光人”（杰米·福克斯饰）出现后，生活更不得安宁。老朋友哈利·奥斯本（戴恩·德哈恩饰）回归，帕克发现了关于自己身世的新线索。能力越大，责任越大。蜘蛛侠彼得·帕克（安德鲁·加菲尔德 Andrew Garfield 饰）在全力和犯罪、灾难做斗争的同时，终于迎来了毕业的时刻。可是曾经的一段心结，让他和女友格温·斯坦西（艾玛·斯通 Emma Stone 饰）的关系降至冰点。格温应聘于为全城提供电力的 奥斯本集团公司，同一期间发生的两件事，不由得左右这家公司和彼得等人的命运。奥斯本的掌门人病故，他的儿子哈利',N'美国',N'动作/科幻/奇幻/冒险',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-613126-1-2.html',N'http://www.lwgod.com/attachment.php?aid=891343&amp;k=4e3b7541eb61c267623ef74e5886c563&amp;t=1412261758&amp;sid=da06m3nlq7fu0zqyEkMUogGHoR2a%2F1e1vqHpcnVaGY%2BPx0I',N'2014/10/2 22:57:31',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 457,N'【日14超大尺度力作】【爱之漩涡】【BluRay-720P.MKV】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/aizhixuanwo/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/aizhixuanwo/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　爱之漩涡/愛の放題(港)<br />
片　　名　Love''s Whirlpool<br />
年　　代　2014<br />
国　　家　日本<br />
类　　别　剧情<br />
语　　言　日语<br />
字　　幕　中文简繁<br />
评　　分　6.9/10 from 28 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3108170" target="_blank">http://www.imdb.com/title/tt3108170</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.29 GB<br />
片　　长　123 Min<br />
导　　演　三浦大輔 Daisuke Miura<br />
主　　演　池松壮亮 Sosuke Ikematsu<br />
　　　　　门胁麦 Mugi Kadowaki<br />
　　　　　新井浩文 Hirofumi Arai<br />
　　　　　泷藤贤一 Kenichi Takito<br />
　　　　　柄本时生 Tokio Emoto<br />
　　　　　三津谷叶子 Yoko Mitsuya<br />
　　　　　中村映里子 Eriko Nakamura<br />
　　　　　田中哲司 Tetsushi Tanaka<br />
　　　　　洼冢洋介 Yosuke Kubozuka</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　故事发生于六本木的一个晚上，年轻男子走到街头，到了一幢住宅内，目的是跟一众素未谋面的男女聚在一起，预备他们晚上的活动——寻找适合的异性，跟他/她发生性关系。当中有妻之夫，OL美女，幼儿园女教师，司机等等，当中更有一位一直静静在旁的女学生。他们一直都等着机会吸引对方，之后跟别人做爱，不再埋藏自己对性爱的好奇与欲望。在曙光初露之前，大家赤裸裸的互相面对，显出自己内心真正的一面……<br />
<br />
<font color="red"><strong><font size="3">拍摄花絮：</font></strong></font><br />
<br />
　　三浦大辅本身是一位舞台剧导演，也是一位作家，编剧，以及电影导演等等，可说是一位多方面的艺术工作者。2005年，三浦大辅发表了舞台剧作品《爱の涡》，这部作品夺得第五十届岸田国戏曲赏，及后于2009年再次公演。而本身也有为电影编剧与执导的三浦大辅，便改编了他这一部作品，以不同的处理手法，重新演译《爱》的故事。<br />
<br />
　　日本人气剧作家三浦大辅创作的曾荣获2006年第50届岸田国士戏曲奖的经典杰作《爱之漩涡》决定开拍电影版，导演由三浦本人亲自操刀。这部描绘人类过激真实性欲描写的话题作，以东京六本木的一间公寓为舞台，首次碰面的男男女女将跨越道德底线进行“无爱的性体验”。男主角由人气男星池松壮亮扮演，女主角则由新生代女星门脇麦担当。<br />
<br />
　　该片主人公是每天凌晨0点-5点聚集在隐蔽风俗店内PARTY的男男女女。通过导演三浦的镜头，将展现出房间内的“聚会”情境，以及屋内不堪入目的另一面。导演三浦表示通过该片，要将人性最本质的瞬间彻底展露出来。<br />
<br />
　　影片筹拍将近2年时间，由于片中涉及大量性爱场景，共计123分钟的电影，演员们身着衣服的戏份只有18分30秒。扮演男主角的池松坦言“当我读完剧本之后，让我没有拒绝的理由。”目前，影片已经杀青，与导演三浦成为信赖好友的池松表示，导演三浦是个对演员、对作品都倾注心血和爱的好导演，同时也是个孤独的导演，池松直言“我决不允许任何人对三浦导演进行恶言攻击。”表明池松对导演三浦的大力支持。<br />
<br />
　　该片被设定为R-18+级别。除了男女主角池松壮亮与门脇麦以外，男客人由新井浩文、泷藤贤一、驹木根隆介、柄本时生扮演，女客人由三津谷叶子、中村映里子、赤堀芹子、信江勇饰演。此外，风俗店店长由田中哲司饰演，店员由洼冢洋介扮演。影片《爱之漩涡》将于2014年3月在日本全国公映。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：故事发生于六本木的一个晚上，年轻男子走到街头，到了一幢住宅内，目的是跟一众素未谋面的男女聚在一起，预备他们晚上的活动——寻找适合的异性，跟他/她发生性关系。当中有妻之夫，OL美女，幼儿园女教师，司机等等，当中更有一位一直静静在旁的女学生。他们一直都等着机会吸引对方，之后跟别人做爱，不再埋藏自己对性爱的好奇与欲望。在曙光初露之前，大家赤裸裸的互相面对，显出自己内心真正的一面……拍摄花絮：三浦大辅本身是一位舞台剧导演，也是一位作家，编剧，以及电影导演等等，可说是一位多方面的艺术工作者。2005年，三浦大辅发表了舞台剧作品《爱の涡》，这部作品夺得第五十届岸田国戏曲赏，及后于2009年再次公演。而本',N'日本',N'剧情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-614865-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895401&amp;k=c3cc9c46c1bc9b19dd91918f1e840612&amp;t=1412261755&amp;sid=80190QjOQpYHiF7GbL7S2xpNx1WRkktsWTXC0uFd5EzL3OY',N'2014/10/2 22:57:31',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 458,N'【14票房万众期待】【X战警：逆转未来】【HD-1024.MP4】【中字】',N'<font color="blue"><font size="5">本片带韩文硬字幕，无法去除，清晰度也一般<br />
不急的兄弟请继续等待完美版！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/Xman/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.22/Xman/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　X战警：逆转未来/变种特攻：未来同盟战(港)/X战警：未来昔日(台)/X战警前传2：未来过去的日子<br />
片　　名　X-Men: Days of Future Past<br />
年　　代　2014<br />
国　　家　美国/英国<br />
类　　别　动作/科幻/奇幻/冒险<br />
语　　言　英语<br />
字　　幕　中文字幕<br />
评　　分　<font color="red">8.4/10 from 198,102 users&nbsp;&nbsp;Top 250 #114</font><br />
链　　接　<a href="http://www.imdb.com/title/tt1877832" target="_blank">http://www.imdb.com/title/tt1877832</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　1.28 GB<br />
片　　长　131 Min<br />
导　　演　布莱恩·辛格 Bryan Singer<br />
主　　演　休·杰克曼 Hugh Jackman ....金刚狼罗根 Logan / Wolverine<br />
　　　　　詹姆斯·麦卡沃伊 James McAvoy ....查尔斯·泽维尔 Charles Xavier<br />
　　　　　迈克尔·法斯宾德 Michael Fassbender ....艾瑞克·兰谢尔 Erik Lehnsherr / Magneto<br />
　　　　　詹妮弗·劳伦斯 Jennifer Lawrence ....魔形女瑞雯 Raven / Mystique<br />
　　　　　彼特·丁拉基 Peter Dinklage ....玻利瓦尔·特拉斯克 Bolivar Trask<br />
　　　　　尼古拉斯·霍尔特 Nicholas Hoult ....野兽汉克·麦考伊 Hank McCoy / Beast<br />
　　　　　伊万·彼得斯 Evan Peters ....快银 Pietro Maximoff / Quicksilver<br />
　　　　　帕特里克·斯图尔特 Patrick Stewart ....X教授 Professor Charles Xavier<br />
　　　　　伊恩·麦克莱恩 Ian McKellen ....万磁王 Erik Lehnsherr / Magneto - older<br />
　　　　　哈莉·贝瑞 Halle Berry ....暴风女 Ororo Munroe / Storm<br />
　　　　　艾伦·佩姬 Ellen Page ....幻影猫凯蒂 Kitty Pryde / Shadowcat<br />
　　　　　乔什·赫尔曼 Josh Helman ....威廉·斯特瑞克 William Stryker<br />
　　　　　范冰冰 Bingbing Fan ....闪烁 Clarice Ferguson / Blink</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　变种人被新型特种战斗机器人“哨兵”所猎杀，面临灭绝的危险。金刚狼必须穿越时空找到X教授和万磁王，改变历史。在过去与未来两个时空里，X战警同哨兵机器人的大决战即将展开……<br />
<br />
　　故事发生在并不遥远的未来，X战警遭遇了史上最大的生存危机，他们必须回到过去拯救自己的命运。X战警也许在我们这个时代，是有着最先进基因的生物，但在不久的未来，他们都被“特拉斯克工业”创始人玻利瓦尔·特拉斯克所制造并指挥的新型特种战斗机器人“哨兵”所猎杀，并有着被灭绝的危险。<br />
<br />
　　哨兵机器人可以检测出任何形式的变种类型，而他们的基因则能够让他们瞬间变换和改造自身，从而击败X战警。这使得X战警的唯一希望，便是回到过去，在特拉斯克的研究最终导致他们的灭绝之前，改变历史。<br />
<br />
　　利用幻影猫凯蒂的能力，金刚狼罗根穿越时空开始了这个艰辛的旅程。这一次，他必须联合年轻的变种人领袖X教授，以及他一生的对手万磁王，去找到魔形女，并阻止特拉斯克。时间已经迫在眉睫，在过去，亦在未来，X战警同哨兵机器人的大决战即将展开……<br />
<br />
　　故事的设定发生在当下，变种人族群遭到了前所未有的毁灭性打击，而这一切的根源是“魔形女”瑞文（詹妮弗·劳伦斯 Jennifer Lawrence 饰）在1973年刺杀了玻利瓦尔·特拉斯克（彼特·丁拉基 Peter Dinklage 饰）。在得知“幻影猫”（艾伦·佩吉 E llen Page 饰）利用穿越时空的能力帮助Blink（范冰冰 饰）等战友逃脱巨型机器人“哨兵”的追杀后，X教授（帕特里克·斯图尔特 Patrick Stewart 饰）和万磁王（伊恩·麦克莱恩 Ian McKellen 饰）达成认同，决定让金刚狼（休·杰克曼 Hugh Jackman 饰）穿越回1973年，找到年轻的X教授（詹姆斯·麦卡沃伊 James McAvoy 饰）和年轻的万磁王（迈克尔·法斯宾德 Michael Fassbender 饰）并说服他们一起阻止魔形女的行动。于是，金刚狼踏上了回到过去的旅程，但是命运会不会发生逆转，任何人都无从知晓。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·布莱恩·辛格就“时空旅行”这个问题与詹姆斯·卡梅隆展开了两个多小时的讨论。卡梅隆曾导演《终结者》1与2，对另一宇宙和弦理论有不少了解。<br />
<br />
·布莱恩·辛格在帕特里克·斯图尔特与伊恩·麦克莱恩巡回演出舞台剧时找到他们，邀请他们出演影片。两人都很吃惊，他们以为法斯宾德与麦卡沃伊已经继承了他们的衣钵，两人对再次回归表示喜悦。<br />
<br />
·饰演魔形女的詹妮弗·劳伦斯的化妆准备时间从上一部《X战警：第一课》的8个小时锐减到3-4个小时，劳伦斯表示此次的颜料也更为温和，不过要是能像《阿凡达》一样在脸上贴感应点就更好了！<br />
<br />
·迈克尔·法斯宾德为了让自己演绎的万磁王更接近伊恩·麦克莱恩，特意反复观摩伊恩的视频，学习他的说话方式与动作。<br />
<br />
·饰演反派特拉斯克的彼特·丁拉基说，导演布莱恩·辛格之所以选择他是因为他是个矮人，“我是个矮人，有点像变种人一样，我认为特拉斯克在内心深处对自己是矮人这一事实非常敏感。”<br />
<br />
·乔什·赫尔曼最初要出演的角色是反派红坦克，不过最终剧本删掉了这个角色，赫尔曼因此成为了年轻版威廉·斯特瑞克——金刚狼的死敌。<br />
<br />
·编剧西蒙·金伯格说，《X战警：逆转未来》受到了穿越电影《时空大挪移》、《终结者》、《回到未来》和《环形使者》的影响。<br />
<br />
·在《X战警2》中饰演夜行者的艾伦·卡明拒绝回归，因为夜行者的上妆准备过程太辛苦了。<br />
<br />
·饰演老版万磁王与X教授的伊恩·麦克莱恩与帕特里克·斯图尔特以及饰演年轻版万磁王与X教授的迈克尔·法斯宾德与詹姆斯·麦卡沃伊都在舞台上或者电影中出演过莎士比亚的经典角色——麦克白。<br />
<br />
·以詹姆斯·麦卡沃伊为首的年轻剧组成员们在拍摄空隙经常展开BB枪大战，迈克尔·法斯宾德、詹妮弗·劳伦斯等人都是游戏的狂热参与者，而金刚狼休·杰克曼则表示自己不像年轻人们那么疯。<br />
<br />
·尽管影片上映前有罗刹女戏份被剪光的传言，最终上映版本中罗刹女还是短暂出现了一下。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：变种人被新型特种战斗机器人“哨兵”所猎杀，面临灭绝的危险。金刚狼必须穿越时空找到X教授和万磁王，改变历史。在过去与未来两个时空里，X战警同哨兵机器人的大决战即将展开……故事发生在并不遥远的未来，X战警遭遇了史上最大的生存危机，他们必须回到过去拯救自己的命运。X战警也许在我们这个时代，是有着最先进基因的生物，但在不久的未来，他们都被“特拉斯克工业”创始人玻利瓦尔·特拉斯克所制造并指挥的新型特种战斗机器人“哨兵”所猎杀，并有着被灭绝的危险。哨兵机器人可以检测出任何形式的变种类型，而他们的基因则能够让他们瞬间变换和改造自身，从而击败X战警。这使得X战警的唯一希望，便是回到过去，在特拉斯克的研究最终',N'美国/英国',N'动作/科幻/奇幻/冒险',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-615333-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896715&amp;k=da4113537d6de5fb25ad047d8af59f27&amp;t=1412261755&amp;sid=07e9cqXAIkchiGLoahjnUr3yGh9uYJlt2lZNP15EaCTj5HM',N'2014/10/2 22:57:31',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 459,N'【美14新票房爆笑】【妇仇者联盟】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/fuchou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/fuchou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.25/fuchou/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　情敌复仇战/妇仇者联盟(台)/小三大联盟(港)<br />
片　　名　The Other Woman<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　喜剧/爱情<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.2/10 from 29,182 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2203939" target="_blank">http://www.imdb.com/title/tt2203939</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.78 GB<br />
片　　长　109 Min<br />
导　　演　尼克·卡索维茨 Nick Cassavetes<br />
主　　演　卡梅隆·迪亚茨 Cameron Diaz ....Carly Whitten<br />
　　　　　莱斯利·曼恩 Leslie Mann ....Kate King<br />
　　　　　凯特·阿普顿 Kate Upton ....Amber<br />
　　　　　尼可拉·科斯特-瓦尔道 Nikolaj Coster-Waldau ....Mark King<br />
　　　　　唐·约翰逊 Don Johnson ....Frank<br />
　　　　　泰勒·金尼 Taylor Kinney ....Phil<br />
　　　　　尼姬·米纳什 Nicki Minaj ....Lydia<br />
　　　　　Kenneth Maharaj ....Busboy<br />
　　　　　Alyshia Ochse ....Cece<br />
　　　　　Victor Cruz ....Fernando<br />
　　　　　Madison McKinley ....Waitress<br />
　　　　　大卫·松顿 David Thornton ....Nick</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　卡梅隆·迪亚茨饰演的女主角，有天忽然发现他的男友竟然是已婚人士，同时她也偶然遇见了男友那被蒙在鼓里的妻子（莱斯利·曼恩 饰），两个女人一开始互相仇视，但又逐渐意识到她们之间有许多共同之处，于是从死敌变成了闺蜜。之后，她们又发现了一个她们男友的外遇受害者（凯特·阿普顿 饰），这三个女人决定组团进行报复行动。<br />
<br />
　　卡莉（卡梅隆·迪亚茨 Cameron Diaz 饰）是一位精明强干的律师，无论对于生活还是男人，她所要求的无疑都是最好和最完美的。一次偶然中，卡莉结识了名叫马克（尼可拉·科斯特-瓦尔道 Nikolaj Coster-Waldau 饰）的男子，后者的英俊和潇洒立刻就吸引了卡莉的注意，没过多久，两人就坠入了爱河。<br />
<br />
　　为了给马克一个惊喜，卡莉瞒着他来到了他的家乡，让卡莉没有想到的是，在这里迎接她的，竟然是一个自称是马克妻子的女人凯特（莱斯利·曼恩 Leslie Mann 饰），而凯特对于卡莉的存在亦是一无所知。直到这时，卡莉才开始渐渐看清马克的真实面目，她和凯特决定联手，将其揭穿。之后，一个名为艾伯（凯特·阿普顿 Kate Upton 饰）的女人加入了她们，三个女人联合在一起，好戏即将上演。<br />
<br />
　　卡莉惠顿（卡梅隆·迪亚茨 饰）是位干练的纽约律师，对感情和男人都极为讲究、挑剔。当她遇上马克金（尼可拉·科斯特-瓦尔道 饰）时，却卸下了对男人的防备、爱上了他。她主动造访男友位在康乃狄克州的家，想给他个惊喜，没料到却发现马克已有了个老婆凯特（莱斯利·曼恩 饰）。凯特是忠心顾家的家庭主妇，对老公马克的出轨大为震惊，而卡莉则对男友已婚的事实超火大。不过，两人并没有因此交恶，反倒逐渐结为盟友，还发现了马克的小四安珀（凯特·阿普顿饰），于是三个女人联手反击，让花心的马克尝到劈腿的苦果。她们的策略愈来愈精准奏效，友谊也变得更加坚强。<br />
<br />
　　本片由《姊姊的守护者》导演尼克凯萨维兹执导，《恋爱没有假期》卡麦蓉狄亚、《王者天下》尼可拉科斯特瓦尔道领衔主演。<br />
<br />
　　个性火辣的女律师—卡莉（卡麦蓉狄亚 饰）决定不再当情场花蝴蝶，一心一意对待她的新男友—马克（尼可拉科斯特瓦多 饰），但她万万没想到一山还有一山高，自己碰上的竟是一个劈腿男！<br />
<br />
　　当卡莉为给马克惊喜而突袭他的住处，却意外发现他早已结婚，而原配—凯特（莱丝莉曼恩 饰）就在他的身边。这两个女人不甘被玩弄，决定联手反击花心大少，但没料到事情越演越烈，她们发现年轻貌美的大奶妹─安珀（凯特阿普顿 饰）竟也是小三之一。大老婆、小三、小四于是组成妇仇者联盟，凭着律师、老婆及胸器的力量展开最强大的复仇计。究竟花心男会有什么样的遭遇？妇仇者联盟又会如何出招？<br />
<br />
　　由于三位女主角的性格迥异，剧组特别找来曾为《欲望城市》及《穿着Prada的恶魔》设计服装的设计师亲自操刀，为她们设计出三种风格相当鲜明的服装。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：卡梅隆·迪亚茨饰演的女主角，有天忽然发现他的男友竟然是已婚人士，同时她也偶然遇见了男友那被蒙在鼓里的妻子（莱斯利·曼恩 饰），两个女人一开始互相仇视，但又逐渐意识到她们之间有许多共同之处，于是从死敌变成了闺蜜。之后，她们又发现了一个她们男友的外遇受害者（凯特·阿普顿 饰），这三个女人决定组团进行报复行动。卡莉（卡梅隆·迪亚茨 Cameron Diaz 饰）是一位精明强干的律师，无论对于生活还是男人，她所要求的无疑都是最好和最完美的。一次偶然中，卡莉结识了名叫马克（尼可拉·科斯特-瓦尔道 Nikolaj Coster-Waldau 饰）的男子，后者的英俊和潇洒立刻就吸引了卡莉的注意，没过多久，',N'美国',N'喜剧/爱情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-613029-1-2.html',N'http://www.lwgod.com/attachment.php?aid=891087&amp;k=19c499ae8178109b80b76d0e16c71e78&amp;t=1412261760&amp;sid=7b41FKiKIJZJ4%2BcjV4oI%2BqHpwi97q%2FEZNQuyphNLAQ9EHi8',N'2014/10/2 22:57:31',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 460,N'【中14新群星爆笑喜剧】【疯狂72小时】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/ye/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.16/ye/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　疯狂72小时/夜夜夜<br />
片　　名　Night of Adventure<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　喜剧/剧情<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　997 MB<br />
片　　长　99 Min<br />
导　　演　李继贤 Jixian Li<br />
主　　演　闫妮 Ni Yan ....许三娜<br />
　　　　　耿乐 Le Geng ....“偷心贼”伍波<br />
　　　　　邵兵 Bing Shao ....“终极贼王”雷哥<br />
　　　　　李菁 Jing Li ....“爆头贼”马大眼<br />
　　　　　包贝尔 Beier Bao ....“伪装贼”小宝<br />
　　　　　乔任梁 Kimi ....“采花贼”鸵鸟<br />
　　　　　李佳璇 Jiaxuan Li ....阿玲<br />
　　　　　冯馨瑶 Xin-yao Feng ....默默</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　影片以一件价值3000万的传家宝串起所有人物关系，讲述了闫妮饰演的“女神经”许三娜与耿乐、邵兵、包贝尔、李菁、乔任梁饰演的五位各怀目的与心思的笨贼囧贼们，在三天三夜密集紧张的时间里，互相对抗导致两败俱伤的故事。<br />
<br />
　　七年前，伍波是逃婚的新郎，三娜是婚礼上落单的新娘，并非伍波薄情寡义，实在是三娜父亲死活看不上这个一无所有的穷小子……<br />
<br />
　　七年后，冤家路窄，狭路相逢，俩人惊讶地发现成了邻居，住在只有一墙之隔的两套公寓里——真是“不是冤家不聚头”！当年发誓要挣大钱、轰轰烈烈干出一番事业再来娶三娜的伍波，而今负债累累，甚至准备结束生命，当年发誓要嫁个比伍波出色一万倍老公的三娜，而今也仍待字闺中成了剩女一名……<br />
<br />
　　七年未见，明明各有相思，各有困窘，偏偏谁也不肯说出大实话，都在打肿脸充胖子！伍波吹嘘生意如何成功，三娜则将猛烈追求自己的小帅哥鸵鸟引荐给伍波，故意激起伍波的嫉妒，而他们接近三娜的目的，均源于三娜父亲生前收藏的古董……<br />
<br />
　　七年前的婚礼上，许三娜（阎妮 饰）的父亲，伍波（耿乐 饰）的准岳父实在看不上将来的女婿竟是一个一文不名的穷光蛋，大婚当天伍波落荒而逃，婚礼现场留下了目瞪口呆的亲朋和傻掉的新娘。逃婚后伍波立下宏愿，一定在短时期内创业成功，挣大钱住豪宅，让羞辱过自己的人看看，怎奈商场如战场，几年打拼下来，钱没赚到反而负债累累，走到了濒临自杀的地步。回过头来看三娜，当初伍波逃婚令她蒙羞，她发誓一定要嫁入豪门，但七年过后，高不成低不就的三娜仍待在闺中，成了年逾三旬的剩女。<br />
<br />
　　七年后，当初的冤家竟莫名做了邻居……<br />
<br />
<font color="red"><strong><font size="3">拍摄花絮：</font></strong></font><br />
<br />
·此前闫妮与耿乐因《女子军魂》结缘，曾以“侠哥”和“八妹”称呼彼此。本片中二人再次携手，这是由闫妮促成的——当初在定男主角的时候，闫妮就向导演力荐耿乐出演“伍波”一角。<br />
<br />
·电影原名“夜夜夜”，讲述3个夜晚中发生的疯狂故事，时间正好是72小时，因此两个名字一脉相承，但“疯狂72小时”这个名字更准确、直观，也更符合影片的疯狂喜剧风格。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：影片以一件价值3000万的传家宝串起所有人物关系，讲述了闫妮饰演的“女神经”许三娜与耿乐、邵兵、包贝尔、李菁、乔任梁饰演的五位各怀目的与心思的笨贼囧贼们，在三天三夜密集紧张的时间里，互相对抗导致两败俱伤的故事。七年前，伍波是逃婚的新郎，三娜是婚礼上落单的新娘，并非伍波薄情寡义，实在是三娜父亲死活看不上这个一无所有的穷小子……七年后，冤家路窄，狭路相逢，俩人惊讶地发现成了邻居，住在只有一墙之隔的两套公寓里——真是“不是冤家不聚头”！当年发誓要挣大钱、轰轰烈烈干出一番事业再来娶三娜的伍波，而今负债累累，甚至准备结束生命，当年发誓要嫁个比伍波出色一万倍老公的三娜，而今也仍待字闺中成了剩女一名……七',N'中国',N'喜剧/剧情',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-614862-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895399&amp;k=b0a97885d185aa7432ac6070a9f9404e&amp;t=1412261756&amp;sid=eeb7%2BIVyDHny2hzVZweI6m9fy6opki3f9TZB023p3jjXMug',N'2014/10/2 22:57:31',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 461,N'【英14新高智商力作】【双重人格】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/tishen/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/tishen/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　双重人格/盗面专师(港)/替身<br />
片　　名　The Double<br />
年　　代　2013<br />
国　　家　英国<br />
类　　别　剧情/惊悚<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.7/10 from 11,484 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1825157" target="_blank">http://www.imdb.com/title/tt1825157</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.57 GB<br />
片　　长　93 Min<br />
导　　演　理查德·阿尤阿德 Richard Ayoade<br />
主　　演　杰西·艾森伯格 Jesse Eisenberg ....Simon / James<br />
　　　　　米娅·华希科沃斯卡 Mia Wasikowska ....Hannah<br />
　　　　　莎莉·霍金斯 Sally Hawkins ....Receptionist at Ball<br />
　　　　　克里斯·奥多德 Chris O''Dowd ....Nurse<br />
　　　　　克雷格·罗伯茨 Craig Roberts ....Young Detective<br />
　　　　　诺亚·泰勒 Noah Taylor ....Harris<br />
　　　　　嘉玛·陈 Gemma Chan<br />
　　　　　华莱士·肖恩 Wallace Shawn ....Mr. Papadopoulos<br />
　　　　　帕迪·康斯戴恩 ....Paddy Considine<br />
　　　　　凯西·莫拉蒂 Cathy Moriarty ....Kiki<br />
　　　　　詹姆斯·福克斯 James Fox ....The Colonel</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　《双重人格》由知名英剧《IT狂人》男星理查德·阿尤阿德执导并编剧，作为其自《潜水艇》后的第二部导演作品。影片根据19世纪俄国作家陀思妥耶夫斯基创作的同名小说改编，故事围绕一名小职员（艾森伯格 饰）展开，默默无闻的他突然发现生活中闯入了一个与自己长得一模一样的家伙，面对即将被毁灭殆尽的一切，他深深陷入了疯狂...<br />
<br />
　　SIMON，一个成天只知道上班而且胆小的男人，除了被自己的妈妈头疼外最要紧的是整个被自己的梦中情人完全忽视。JAMES，他的新同事一个外表长相和SIMON一模一样性格完全相反的男人来想要帮助SIMON使他糟糕的生活重新平衡下来，但是慢慢地SIMON感到恐惧的是JAMES开始逐渐取代了现实中的自己...<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：《双重人格》由知名英剧《IT狂人》男星理查德·阿尤阿德执导并编剧，作为其自《潜水艇》后的第二部导演作品。影片根据19世纪俄国作家陀思妥耶夫斯基创作的同名小说改编，故事围绕一名小职员（艾森伯格 饰）展开，默默无闻的他突然发现生活中闯入了一个与自己长得一模一样的家伙，面对即将被毁灭殆尽的一切，他深深陷入了疯狂...SIMON，一个成天只知道上班而且胆小的男人，除了被自己的妈妈头疼外最要紧的是整个被自己的梦中情人完全忽视。JAMES，他的新同事一个外表长相和SIMON一模一样性格完全相反的男人来想要帮助SIMON使他糟糕的生活重新平衡下来，但是慢慢地SIMON感到恐惧的是JAMES开始逐渐取代了现',N'英国',N'剧情/惊悚',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-615270-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896639&amp;k=c5b4d64ccfd0d4ca923549963a9825be&amp;t=1412261757&amp;sid=831bXLqp7NzQoA49ieCrXHmFJ3tRpJ3F%2BxZKLHuvPn8jll0',N'2014/10/2 22:57:32',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 462,N'【古天乐梁咏琪14群星】【香港仔】【BluRay-720P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.03/xiaotuanyuan/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.03/xiaotuanyuan/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.03/xiaotuanyuan/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　人间·小团圆/人间小团圆/香港仔/曼珠沙华<br />
片　　名　Aberdeen<br />
年　　代　2014<br />
国　　家　中国香港<br />
类　　别　剧情<br />
语　　言　<font color="red"><font size="3">国语粤语双音轨</font></font><br />
字　　幕　中文简繁<br />
评　　分　6.1/10 from 218 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3429014" target="_blank">http://www.imdb.com/title/tt3429014</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.49 GB<br />
片　　长　97 Min<br />
导　　演　彭浩翔 Ho-Cheung Pang<br />
主　　演　古天乐 Louis Koo ....郑伟滔<br />
　　　　　梁咏琪 Gigi Leung ....郭恩恩<br />
　　　　　曾志伟 Eric Tsang ....邱健章<br />
　　　　　杨千嬅 Miriam Yeung ....郑惠清<br />
　　　　　吴孟达 Man Tat Ng ....郑东<br />
　　　　　吴家丽 Carrie Ng ....TA姐<br />
　　　　　李汶桂 Man-Kwai Lee ....郑可怡（猪仔）<br />
　　　　　蔡洁 Jacky Cai ....周美宝<br />
　　　　　彭浩翔 Ho-Cheung Pang ....蜥蜴Greenie<br />
　　　　　余文乐 Shawn Yue<br />
　　　　　陈静 Dada Chan<br />
　　　　　郑希怡 Hei-Yi Cheng</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　郑惠清（杨千嬅 饰）少年时因不懂事，做了一件使母亲大为光火的事。母亲去世后，她仍活在这事的阴影中。她弟弟郑伟滔（古天乐 饰）有一个看似美满的家庭，可是他却一直怀疑女儿非自己亲生，内心充满苦恼。最后两人都明白不能永远活在心魔中。<br />
<br />
　　郑惠清（杨千嬅 饰）是一名专职导游，她的丈夫邱健章（曾志伟 饰）是一名开诊所的医师，夫妻两人貌合神离，更出现了第三者（陈静 饰）。惠清弟弟郑伟滔（古天乐 饰）是著名的补习老师，妻子恩恩（梁咏琪 饰）是一个事业遇到瓶颈的模特，他们的孩子“小猪”虽然听话乖巧，但是相貌奇丑跟夫妇二人完全不同，这令伟滔十分郁闷。老父亲郑东（吴孟达 饰）在妻子过世后与夜总会妈妈桑TA姐（吴家丽 饰）相恋，这令儿子伟滔冷眼相待。父子关系恶劣之余姐姐惠清更有解不开的心结，一家人的关系变得疏远。一次鲸鱼搁浅事件终于令一家人能够共同坦然面对生活的困境。<br />
<br />
　　生命，始于吸气。终于呼出最后一口气。一呼一吸间，经历高低起伏，品味悲欢离合。我们只得任脚走，憋住气去走人生路。《人间小团圆》透过郑家三代貌似风平浪静的安逸生活，带出各人成长中隐藏的伤痕与阴影，从中领略各自成长的释怀和感悟。<br />
<br />
　　郑惠清（杨千嬅 饰）任职博物馆导赏员，与丈夫邱健章（曾志伟 饰）结婚多年。但丈夫的婚外情及父母的关系疏离，令她心有郁结；惠清弟弟郑伟滔（古天乐 饰）是一表人才的“补习天王”，妻子郭恩恩（梁咏琪 饰）为名模，但他却一直介怀女儿外貌不美；而郭恩恩因人到中年而面临事业被淘汰之危机，自信心动摇；郑东（吴孟达 饰）在发妻过身后，与夜总会工作的TA姐（吴家丽 饰）为伴，相濡以沫。却被儿子伟滔冷眼看待，父子关系恶劣，家庭暗藏危机，各人烦恼难以释怀。最终彼此透过港人自强不息的精神，将问题放下。生活，还是一样的呼吸。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　电影2014年2月10日发布先行预告片，这部由彭浩翔执导的新片此前曝光的首张电影海报以香港独特的密集式高楼影像为主角，透露出人文情怀。而演员阵容亦有古天乐、梁咏琪、曾志伟、杨千嬅、吴孟达及吴家丽鼎力加盟，可谓集结了老中青三代戏骨，网友们均好奇他们在颇富鬼才和创新力的彭导手下，能有何等表现。<br />
<br />
　　此次曝光的首款预告，也颇具彭浩翔风格，没有一句对白，神秘感十足。一首由The Decemberists主唱的《Rox In The Box》作为背景音乐，歌曲本身亦饱含寓意，取材于1917年在美国Montana州Butte小镇上发生的采矿意外事件。彭导解释“之所以选上这歌，是因当中情怀，很贴合故事之人物心态和当下的香港处境”。整支预告除了丰富而绚烂的画面，揭示了千丝万缕的人物关系之外，亦有不少奇情奇幻的场面出现，如梁咏琪的吸血鬼装扮，吴孟达的法师扮相，横卧海滩的巨大鲸鱼，在玩具大楼中走过的怪兽，深夜出行的纸扎出租车……新奇有趣引人入胜，彭导亦笑说,“我一直很想把我作品内的那些极其天马行空鬼主意，都集中放在这部电影内”。<br />
<br />
　　除了彭浩翔的五年磨一剑和香港老中青三代戏骨的倾情出演之外，监制陈国富的坐镇，和华谊兄弟的加持，都为《人间小团圆》注入了新的筹码。为该片保驾护航的监制陈国富，跟大家分享了他加盟的原因，“彭浩翔已经连续拍了好几部叫好叫座的电影，但我觉得他应该来一部不试图讨好任何人的作品，一部能显露他真本色的作品。每个好导演都应该接受至少一次这样的考验。”。而对于此次和彭导的合作，华谊兄弟总裁王中磊表示，“彭导的作品有着极强的个人风格，经常在市场上引发黑马效应，此次的《人间小团圆》作为他的潜心磨砺之作，我十分看好这部电影的未来，它不仅会成为一匹黑马，更会是一匹经得起考量的千里马”。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·《人间小团圆》被认为是彭浩翔2014年的转型之作，这是其作品序列中最为严肃、深情和悲伤的一部，影片从筹备至今已超过五年时间，故事的取材有许多更涉及彭导自己的故事及心路历程。<br />
<br />
·该片的香港片名源自片中最主要的场景均与“香港仔”（地名）息息相关。<br />
<br />
·杨千嬅爆料称彭浩翔常常在凌晨三点钟发短信叫她不要睡觉，搞得丈夫丁子高疑神疑鬼。因为戏中她几乎要裸妆出演，作为一名“怨妇”，不够憔悴的时候，彭浩翔就下令化妆师给她画熊猫眼。<br />
<br />
·戏中梁咏琪女儿的宠物是变色龙，这是导演的特别设定。小孩子最初面对死亡往往是面对自己宠物的死亡，有着非比寻常的意义。<br />
<br />
·出于剧情需要，出演郭恩恩这个角色的演员一定是没有整过容。当彭浩翔向梁咏琪发出邀请时，梁咏琪毫不犹豫就接下了这个角色，彭浩翔笑称由此可知Gigi肯定没整容。<br />
<br />
·《人间·小团圆》还里出现了《星球大战》的暴风战士和黑武士模型，是彭浩翔直接向乔治·卢卡斯要的授权，他还给对方看了英文剧本，卢卡斯大手一挥说：给你免费用。<br />
<br />
·杨千嬅在采访中曾说过，在拍《志明与春娇》前，彭浩翔就捧着《人间小团圆》（《香港仔》）的剧本来找她。直到杨千嬅凭《春娇与志明》夺得影后，《人间小团圆》才姗姗来迟。<br />
<br />
·彭浩翔穿着道具服出演了片中的变色龙。彭浩翔自称因为多年受怪兽电影的熏陶，终于在这部影片里圆了自己的怪兽梦。<br />
<br />
·杨千嬅的角色有彭浩翔童年的影子；古天乐是以香港月薪好几万的补习天王为原型；梁咏琪的角色是因为彭浩翔看到韩国有很多整容的广告，就想到他们的后代要怎样去面对长得不漂亮这件事。<br />
<br />
·影片耗资200万，建了长20米、宽9米，有60座大厦的纸扎城市。成片差不多剪了80个版本，最后从初剪150分钟直到95分钟。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：郑惠清（杨千嬅 饰）少年时因不懂事，做了一件使母亲大为光火的事。母亲去世后，她仍活在这事的阴影中。她弟弟郑伟滔（古天乐 饰）有一个看似美满的家庭，可是他却一直怀疑女儿非自己亲生，内心充满苦恼。最后两人都明白不能永远活在心魔中。郑惠清（杨千嬅 饰）是一名专职导游，她的丈夫邱健章（曾志伟 饰）是一名开诊所的医师，夫妻两人貌合神离，更出现了第三者（陈静 饰）。惠清弟弟郑伟滔（古天乐 饰）是著名的补习老师，妻子恩恩（梁咏琪 饰）是一个事业遇到瓶颈的模特，他们的孩子“小猪”虽然听话乖巧，但是相貌奇丑跟夫妇二人完全不同，这令伟滔十分郁闷。老父亲郑东（吴孟达 饰）在妻子过世后与夜总会妈妈桑TA姐（吴家丽',N'中国香港',N'剧情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-613019-1-2.html',N'http://www.lwgod.com/attachment.php?aid=891085&amp;k=dffc312095e132c24051030f43264817&amp;t=1412261762&amp;sid=2f42HUhFYRsOSBl9JjsaiaXi1O2H2VrkhUzO4UR944vr3XY',N'2014/10/2 22:57:32',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 463,N'【美14万众期待票房】【美国队长2】【BluRay-720P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/meiguoduizhang2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　美国队长2/美国队长2：冬日战士/美国队长2：酷寒战士(台)/美国队长2：寒冬战士/美国队长：冬兵<br />
片　　名　Captain America: The Winter Soldier<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　动作/科幻/冒险<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　<font color="red">8.0/10 from 202,807 users</font><br />
链　　接　<a href="http://www.imdb.com/title/tt1843866" target="_blank">http://www.imdb.com/title/tt1843866</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.70 GB<br />
片　　长　136 Min<br />
导　　演　安东尼·罗素 Anthony Russo<br />
　　　　　乔·罗素 Joe Russo<br />
主　　演　克里斯·埃文斯 Chris Evans ....美国队长/史蒂夫·罗杰斯<br />
　　　　　斯嘉丽·约翰逊 Scarlett Johansson ....娜塔莎·罗曼诺夫/黑寡妇<br />
　　　　　塞巴斯蒂安·斯坦 Sebastian Stan ....巴奇·巴恩斯/冬日战士<br />
　　　　　安东尼·麦凯 Anthony Mackie ....猎鹰/山姆·威尔逊 Sam Wilson/The Falcon<br />
　　　　　塞缪尔·杰克逊 Samuel L. Jackson ....尼克·弗瑞 Nick Fury<br />
　　　　　罗伯特·雷德福 Robert Redford ....亚历山大·皮尔斯&nbsp;&nbsp;Alexander Pierce<br />
　　　　　寇碧·史莫德斯 Cobie Smulders ....玛丽亚-希尔 Maria Hill<br />
　　　　　艾米丽·万凯普 Emily VanCamp ....莎朗·卡特 Sharon Carter<br />
　　　　　海莉·阿特维尔 Hayley Atwel ....佩吉·卡特 Peggy Carter<br />
　　　　　弗兰克·格里罗 Frank Grillo ....布洛克-朗姆洛/叉骨 Brock Rumlow/Crossbones<br />
　　　　　麦克斯米利安诺·贺 Maximiliano Herna ....西特维尔特工 Jasper Sitwell</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　故事发生在《复仇者联盟》两年后，史蒂夫已定居华盛顿，努力适应现代社会的生活。然而当一起神秘袭击事件伤害到神盾局的重要人物时，美国队长必须重新出马，联合黑寡妇击退前来刺杀他的刺客，找出幕后真凶。<br />
<br />
　　在经历了《复仇者联盟》的纽约大战后，美国队长史蒂夫·罗杰斯如今在华盛顿过着恬淡的生活，努力尝试着融入现代社会。然而当一名神盾局同事遭遇袭击后，史蒂夫被迫卷入了一场威胁全球安危的阴谋。他与黑寡妇携手出击，一边防备欲将自己灭口的杀手，一边努力揭露这个巨大阴谋的真面目。而当敌人的邪恶计划全局曝光后，美国队长和黑寡妇得到了一位新同盟“猎鹰”的协助。然而他们也发现自己将要面临的，是前所未遇、出乎意料的黑暗劲敌——冬兵。<br />
<br />
　　渐渐习惯了现代生活的美国队长史蒂夫·罗杰斯（克里斯·埃文斯 Chris Evans 饰），在一次行动后隐隐嗅到神盾局内部所弥漫出来的凶险气味。而当得知神盾局正秘密进行的“洞察计划”后，他更为此感到愤怒。某天，神盾局指挥官尼克-法瑞（塞缪尔·杰克逊 Samuel L. Jackson 饰）遭到一群武装分子袭击，他拼尽全力将一支U盘交到美国队长手中，这里面藏着该局二战以来最重要且最可怕的秘密。在此之后，美国队长因涉嫌杀害尼克而遭到前局长亚历山大·皮尔斯（罗伯特·雷德福/Robert Redford 饰）的通缉和追杀，逃亡中他得到黑寡妇（斯嘉丽·约翰逊 Scarlett Johansson 饰）和退伍老兵“猎鹰”（安东尼·麦凯 Anthony Mackie 饰）的帮助。<br />
<br />
　　他们必须争分夺秒解开神盾局的秘密，阻止“洞察计划”的施行……<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·克里斯·埃文斯为《美国队长2》接受了多种武术训练，其中包括跑酷、巴西柔术、空手道和拳击等等。导演认为，身处现代的史蒂夫·罗杰斯需要学习和掌握一些现代打斗技巧。<br />
<br />
·饰演冬兵的塞巴斯蒂安·斯坦进行了严格的打斗和武器训练，为了让自己的动作显得更自然，他还经常拿着塑料小刀练习，为此还遭到朋友们善意的嘲笑。<br />
<br />
·电影中猎鹰的制服比漫画中更能体现战斗感，服装设计采用了大量织带，肩带和齿轮。安东尼·麦凯要花25分钟才能穿上这套制服。<br />
<br />
·导演罗素兄弟称1970年代经典惊悚片《法国贩毒网》给《美国队长2》带来很多灵感和启发，片中那场超长汽车追逐戏就是致敬《法国贩毒网》中的追逐片段。<br />
<br />
·导演罗素兄弟钟爱1970年代悬疑片，因此《美国队长2》不仅在影片风格上向《秃鹰72小时》《霹雳钻》《暗杀十三招》等70年代影片致敬，更请来70年代最红的男星之一罗伯特·雷德福出演本片重要角色。<br />
<br />
·影片在华盛顿取景，一些全美著名的地标包括杰斐逊纪念堂、林肯纪念堂、国会山等都出现在影片中，摄制组为了拍摄将罗斯福大桥暂时封闭，这也是有史以来第一次为了拍电影而封闭大桥。<br />
<br />
·为了拍摄电影中发生在利莫里亚之星号上的戏份，制作团队使用了停泊在加州长滩的海洋发射指挥中心。尽管在船上有限的空间里安排复杂激烈的动作戏很有挑战，创作团队还是很高兴能够在真船上拍摄。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：故事发生在《复仇者联盟》两年后，史蒂夫已定居华盛顿，努力适应现代社会的生活。然而当一起神秘袭击事件伤害到神盾局的重要人物时，美国队长必须重新出马，联合黑寡妇击退前来刺杀他的刺客，找出幕后真凶。在经历了《复仇者联盟》的纽约大战后，美国队长史蒂夫·罗杰斯如今在华盛顿过着恬淡的生活，努力尝试着融入现代社会。然而当一名神盾局同事遭遇袭击后，史蒂夫被迫卷入了一场威胁全球安危的阴谋。他与黑寡妇携手出击，一边防备欲将自己灭口的杀手，一边努力揭露这个巨大阴谋的真面目。而当敌人的邪恶计划全局曝光后，美国队长和黑寡妇得到了一位新同盟“猎鹰”的协助。然而他们也发现自己将要面临的，是前所未遇、出乎意料的黑暗劲敌——',N'美国',N'动作/科幻/冒险',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-614780-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895187&amp;k=e5109f9bd05168290c738a77e8aee40d&amp;t=1412261757&amp;sid=aa7c44rtbGdr7xDoTEciayanXlGTl%2FaHIHDX2kmwZWz%2F8iA',N'2014/10/2 22:57:32',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 464,N'【邓超杨幂14新票房奇迹】【分手大师】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/fenshoudashi/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.21/fenshoudashi/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　分手大师<br />
片　　名　The Breakup Guru<br />
年　　代　2014<br />
国　　家　中国<br />
类　　别　喜剧/爱情/剧情<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
评　　分　5.1/10 from 93 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3667798" target="_blank">http://www.imdb.com/title/tt3667798</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　1.11 GB<br />
片　　长　114 Min<br />
导　　演　邓超 Chao Deng<br />
　　　　　俞白眉 Baimei Yu<br />
主　　演　邓超 Chao Deng ....梅远贵<br />
　　　　　杨幂 Mini Yang ....叶小春<br />
　　　　　孙俪 Betty Sun ....孙俪（客串）<br />
　　　　　梁超 Chao Liang ....唐大师<br />
　　　　　柳岩 Yan Liu<br />
　　　　　娜扎 Na Zha<br />
　　　　　吴京 Jacky Wu ....吴京（客串）<br />
　　　　　谢楠 Nan Xie ....谢楠（客串）<br />
　　　　　栾元晖 Yuan Hui Luan<br />
　　　　　刘园园 Yuanyuan Liu<br />
　　　　　纪姿含 Zi Han Ji ....叶小春（童年）<br />
　　　　　赵曼竹 Manzu Zhao<br />
　　　　　秦越 Yue Qin<br />
　　　　　韩寒 HanHan ....韩寒（客串）<br />
　　　　　金星 Jin Xing ....金星（客串）<br />
　　　　　曹可凡 Kefan Cao ....曹可凡（客串）</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　梅远贵（邓超 饰）是一个情感经历极为丰富的男人，虽然有过这样那样的失败恋情，却也帮他铺就了一条通往荣华复归的康庄大道。现如今的梅远贵生活在首都北京，与其精英团队操办起帮人分手的奇葩业务，无论你有着怎样的感情和生活，只要票子给足，他总会高效率地完成任务。爱情那么虚幻的东西太不可靠，还是钱最让他放心。这一天，梅照例接了一单生意，那就是帮客户甩掉美丽女孩叶小春（杨幂 饰）。小春是一个自强不息的北漂姑娘，她渴望可以让之依靠休息的港湾，同时也为了美好的明天奋力打拼。原本踌躇满志的梅远贵，从和小春接触的第一天起，他们彼此的人生就发生了改变……<br />
<br />
　　本片根据同名人气话剧改编。<br />
<br />
　　茫茫人海，风雨飘摇，从幸福大街到平安大道，从天通西苑到东四十条，每一个大厦每一个窗户里都有无数男女为了感情哭闹，争吵，自杀，上吊！单身，不是问题，恋爱，才是烦恼。眼瞅着世界末日就要到来，谁能救万千痴男怨女于水火？<br />
<br />
　　一个是茫茫人海一人渣，一个是光盘贩子一支花，混吃等死，以吃软饭为生的梅远贵，和流落红尘，以成功学光盘为业的叶小春，一次纯属意外的英雄救美，从此反目成仇势不两立——两个沦落在生活最底层的男女一相逢，便胜却天上人间无数，轰轰烈烈上演一出“史上最蠢的爱情”……<br />
<br />
　　其间更有走投无路、霉运连连的神经劫匪，风光无限、情趣盎然的成功学大师，信奉把“吃出来的病拉出去”的养生学大师，以及惊鸿一瞥穿插而过的风水大师、武术大师、京剧大师等各色神头鬼脸的奇怪人物，共同上演本年度最疯狂最爆笑同时最浪漫最感人的舞台喜剧。<br />
<br />
　　正所谓：分手在即，唯我情深志诚心意重，一生厮守；<br />
<br />
　　　　　　大师遍地，看谁皮糙肉厚腹中空，敢称成功。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·电影版《分手大师》改编自俞白眉监制编剧、邓超担任出品人的同名爆笑话剧。话剧排演过多个版本，代乐乐、瞿颖都出演过“叶小春”。<br />
<br />
·虽然改编自同名话剧，但电影版《分手大师》只保留了角色名，故事与话剧有相当大的改动，大概只有10%的内容和话剧一样。<br />
<br />
·邓超不希望杨幂在扮演“叶小春”时有先入为主的情绪，阻止杨幂去看《分手大师》的话剧版。<br />
<br />
·这是杨幂第一次尝试全片“素颜”出镜，包括眼线、睫毛和眉毛都没有任何的修饰。素颜出镜是角色需求，叶小春是典型的“屌丝女”，导演邓超和俞白眉希望角色状态是最正确最真实的。<br />
<br />
·自《分手大师》筹备开始，仅包括导演、主演在内的剧组成员就孕育了8个小生命。女主角杨幂和特别演出的孙俪、代乐乐都怀着宝宝以“准妈妈”的身份参演了电影，大家都戏称这是“分娩大师”的剧组。<br />
<br />
·《分手大师》中邓超请来不少明星大腕玩自黑。比如，韩寒为了躲避狗仔到毛里求斯分手；金星拿自己“雄性激素分泌过多”开涮；孙俪还演出了被记者们“捉奸在床”，导致和邓超离婚的分手大戏。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：梅远贵（邓超 饰）是一个情感经历极为丰富的男人，虽然有过这样那样的失败恋情，却也帮他铺就了一条通往荣华复归的康庄大道。现如今的梅远贵生活在首都北京，与其精英团队操办起帮人分手的奇葩业务，无论你有着怎样的感情和生活，只要票子给足，他总会高效率地完成任务。爱情那么虚幻的东西太不可靠，还是钱最让他放心。这一天，梅照例接了一单生意，那就是帮客户甩掉美丽女孩叶小春（杨幂 饰）。小春是一个自强不息的北漂姑娘，她渴望可以让之依靠休息的港湾，同时也为了美好的明天奋力打拼。原本踌躇满志的梅远贵，从和小春接触的第一天起，他们彼此的人生就发生了改变……本片根据同名人气话剧改编。茫茫人海，风雨飘摇，从幸福大街到平安',N'中国',N'喜剧/爱情/剧情',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-615268-1-2.html',N'http://www.lwgod.com/attachment.php?aid=896638&amp;k=f4dffb7024f795833d762bf40d7ad309&amp;t=1412261758&amp;sid=6f618vCeBiZdNXGH8URdax7an0LpKy9x6X4RfuQs5TkRvx8',N'2014/10/2 22:57:32',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 465,N'【施瓦辛格14火爆动作】【破坏者】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/pohuaizhe/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/pohuaizhe/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/pohuaizhe/02.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　破坏者/震撼杀戮(台)/毒火追击(港)/十<br />
片　　名　Sabotage<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　动作/犯罪/剧情<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　5.8/10 from 15,393 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1742334" target="_blank">http://www.imdb.com/title/tt1742334</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.02 GB<br />
片　　长　109 Min<br />
导　　演　大卫·阿耶 David Ayer<br />
主　　演　阿诺·施瓦辛格 Arnold Schwarzeneg ....John ''Breacher'' Wharton<br />
　　　　　萨姆·沃辛顿 Sam Worthington ....Monster<br />
　　　　　米瑞·伊诺丝 Mireille Enos ....Lizzy<br />
　　　　　麦克斯·马蒂尼 Max Martini ....Pyro<br />
　　　　　乔什·哈洛威 Josh Holloway ....Neck<br />
　　　　　泰伦斯·霍华德 Terrence Dashon Ho ....Sugar<br />
　　　　　奥莉维亚·威廉姆斯 Olivia Williams ....Investigator Caroline Brentwood<br />
　　　　　哈罗·佩里纽 Harold Perrineau Jr.<br />
　　　　　安吉拉·克勒科兹 Angela Kerecz ....Stripper<br />
　　　　　拉尔夫·莫勒 Ralf Moeller<br />
　　　　　马丁·唐文 Martin Donovan ....Floyd Morgan (rumored)</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　故事讲述一支精英缉毒队去对付全世界最高端的贩毒组织，想要通过精妙的战术对毒贩的藏身之所进行突袭，经过巧妙安排，缉毒队认为他们的计划万无一失，直到成员一个接一个被暗杀。<br />
<br />
　　缉毒小队“破坏者”在队长约翰·沃顿（阿诺·施瓦辛格 Arnold Schwarzenegger 饰）的率领下闯入臭名昭著的贩毒团伙奥加尔萨联盟的据点，经过一轮激烈的交锋，小队一名成员战死，而现场丢失的一千万美元现金也让“破坏者”的所有成员遭到了上层组织的调查。未过多久，高层指示约翰和成员们各就各位，重新开始行动。谁知未过多久，小队成员接二连三死于非命。似乎奥加尔萨为了丢失的巨款恼羞成怒，正展开疯狂的报复。<br />
<br />
　　联邦探员卡洛琳（奥莉维亚·威廉姆斯 Olivia Williams 饰）受命调查此时，她和约翰联合展开行动，结果却发现前方的道路更加凶险，令人难以置信的黑幕慢慢呈现眼前……<br />
<br />
　　约翰·沃尔森（阿诺德·施瓦辛格饰）是美国缉毒局精英团队的领导，团队成员有詹姆斯·穆雷（萨姆·沃辛顿饰）及其妻丽兹·穆雷（米瑞·伊诺斯饰）、乔·菲利浦（乔·曼根尼罗饰）、朱利叶斯·埃德蒙兹（特伦斯·霍华德饰）、艾迪·乔丹（乔什·哈洛威饰）、汤姆·罗伯兹（马克思·马丁尼饰）、布莱恩·迈克利尼（凯文·万斯饰）和詹宁斯（马克·施莱格尔饰）。<br />
<br />
　　在对某个卡尔特仓库进行突击检查时，詹宁斯遇害，但团队在仓库中搜到了1000万美元，他们将钱藏在下水管道并平分。为了掩盖踪迹，他们把仓库炸毁。尽管赃款消失，但团队的上级弗洛伊德·德梅尔（马丁·多诺万饰）还是觉察到不妥，导致团队进行一次关于盗窃的调查期间被停职数月。由于缺乏充分的证据，德梅尔恢复团队的工作，而此时沃尔森发现丽兹跟穆雷分手后染上毒瘾。<br />
<br />
　　不久后，罗伯兹在无意识状态下被人拉到铁轨上，被火车活活撞死，侦察员卡罗琳·布伦特伍德（奥利维亚·威廉姆斯饰）和大流士·杰克逊（哈罗·佩里钮饰）被分配去调查案件，并将审讯罗伯兹的队友。审讯期间，布伦特伍德指出乔丹不适宜被问话。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　拍摄缘起<br />
<br />
　　对于警察、犯罪故事情有独锺的导演大卫艾亚，在自编自导他上一部电影《火线赤子情》（End Of Watch）时，参考了有着「侦探小说之后」阿嘉莎克莉丝蒂的作品《一个都不留》（Then There Were None/Ten Little Niggers）而有了这部电影的雏形，并且决心力邀阿诺史瓦辛格担纲演出，更网罗了《阿凡达》性格动作男星山姆沃辛顿，《钢铁人》硬底子演员泰伦斯豪尔及曾在《末日之战》中让人印象深刻的米瑞伊诺斯加入阵容，无疑是想打造出一部别于以往的犯罪惊悚动作片。<br />
<br />
★阿诺史瓦辛格最新动作爽片，绝无冷场挑战感官巅峰之作！<br />
★《震撼教育》编剧戴维艾亚继《火线赤子情》后又一自编自导动作巨献<br />
★奥斯卡入围泰伦斯豪尔X动作性格男星山姆沃辛顿连手打造之惊悚动作片<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：故事讲述一支精英缉毒队去对付全世界最高端的贩毒组织，想要通过精妙的战术对毒贩的藏身之所进行突袭，经过巧妙安排，缉毒队认为他们的计划万无一失，直到成员一个接一个被暗杀。缉毒小队“破坏者”在队长约翰·沃顿（阿诺·施瓦辛格 Arnold Schwarzenegger 饰）的率领下闯入臭名昭著的贩毒团伙奥加尔萨联盟的据点，经过一轮激烈的交锋，小队一名成员战死，而现场丢失的一千万美元现金也让“破坏者”的所有成员遭到了上层组织的调查。未过多久，高层指示约翰和成员们各就各位，重新开始行动。谁知未过多久，小队成员接二连三死于非命。似乎奥加尔萨为了丢失的巨款恼羞成怒，正展开疯狂的报复。联邦探员卡洛琳（奥莉维亚',N'美国',N'动作/犯罪/剧情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-612931-1-2.html',N'http://www.lwgod.com/attachment.php?aid=890642&amp;k=aea8b024bd1e5b06de24896e7f8065c1&amp;t=1412261765&amp;sid=b397RcZGZwgNTv2QHDMjcsuEKweHPVzM%2FMSXGYaOGQhHFlg',N'2014/10/2 22:57:32',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 466,N'【日14众美少女香艳性感】【红X粉】【BluRay-720P.MKV】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/hongfen/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/08.15/hongfen/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　红X粉/红粉金刚<br />
片　　名　Aka X Pinku<br />
年　　代　2014<br />
国　　家　日本<br />
类　　别　动作/剧情<br />
语　　言　日语<br />
字　　幕　中文简繁<br />
评　　分　6.4/10 from 31 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3456784" target="_blank">http://www.imdb.com/title/tt3456784</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.35 GB<br />
片　　长　128 Min<br />
导　　演　坂本浩一 Koichi Sakamoto<br />
主　　演　芳贺优里亚 Yuria Haga<br />
　　　　　Sanae Hitomi<br />
　　　　　小池里奈 Rina Koike<br />
　　　　　Takahisa Maeyama<br />
　　　　　水崎绫女 Ayame Misaki<br />
　　　　　Misaki Momose<br />
　　　　　Sho Nishino<br />
　　　　　Haruka Ohshima<br />
　　　　　Hideo Sakaki<br />
　　　　　Rina Sakuragi<br />
　　　　　Hiroshi Shinagawa</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　电影《红x粉》改编自直木奖作家樱庭一树的同名小说。以每天晚上在废弃的小学展开的非法女子格斗活动为背景，讲述少女们在痛苦磨难中成长的故事。<br />
<br />
　　六本木的一所废弃校园内，每晚都进行着非法格斗技表演“Girl‘s Blood”，四名少女投身于此，在铁囚笼中上演赤裸内心与身体的碰撞。曾主演《假面骑士555》《假面骑士Kiva》的芳贺优里亚，本片中大胆挑战全裸出镜，扮演一名讨厌女性，患有“性别认同障碍”的空手道家——皐月。另外，多田麻美扮演从家暴丈夫那里逃出来的人妻格斗家——千夏，水崎绫女扮演SM女王——美衣子,小池里奈扮演长有洛丽塔脸蛋的OL——真由。<br />
<br />
　　本片是一部Girls Action，原作为直木赏作家樱庭一树的小说，由擅长特摄动作片的坂本浩一导演执导。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：电影《红x粉》改编自直木奖作家樱庭一树的同名小说。以每天晚上在废弃的小学展开的非法女子格斗活动为背景，讲述少女们在痛苦磨难中成长的故事。六本木的一所废弃校园内，每晚都进行着非法格斗技表演“Girl‘s Blood”，四名少女投身于此，在铁囚笼中上演赤裸内心与身体的碰撞。曾主演《假面骑士555》《假面骑士Kiva》的芳贺优里亚，本片中大胆挑战全裸出镜，扮演一名讨厌女性，患有“性别认同障碍”的空手道家——皐月。另外，多田麻美扮演从家暴丈夫那里逃出来的人妻格斗家——千夏，水崎绫女扮演SM女王——美衣子,小池里奈扮演长有洛丽塔脸蛋的OL——真由。本片是一部Girls Action，原作为直木赏作家樱',N'日本',N'动作/剧情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-614772-1-2.html',N'http://www.lwgod.com/attachment.php?aid=895183&amp;k=067918e5704038aff08ed13cf8518f68&amp;t=1412261758&amp;sid=3146kbUmu%2B9KUbEEgFa3P8NzhXaMLK9JAunemyXV7y96oDM',N'2014/10/2 22:57:33',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 467,N'【泰14票房冠军超吓人】【鬼三惊2】【BluRay-720P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/3dian/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/3dian/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　3点终·再勾魂/鬼三惊2/灵晨三点2/第三天凌晨三点<br />
片　　名　3 AM Part2<br />
年　　代　2014<br />
国　　家　泰国<br />
类　　别　恐怖<br />
语　　言　<font color="red"><font size="3">泰语粤语双音轨</font></font><br />
字　　幕　中文简繁<br />
评　　分　6.0/10 from 38 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3345466" target="_blank">http://www.imdb.com/title/tt3345466</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.68 GB<br />
片　　长　104 Min<br />
导　　演　Isara Nadee<br />
　　　　　Kirati Nakintanon<br />
　　　　　Putipong Saisikaew<br />
主　　演　萨瓦特·博拉娜波拉特 Thawat Pornrattanaprasert<br />
　　　　　辛扎伊·本班尼 Sinjai Plengpanit<br />
　　　　　雷·麦克唐纳 Ray MacDonald<br />
　　　　　蒂娜·吉塔勒拉 Tina Jittaleela<br />
　　　　　Supanart Jittaleela<br />
　　　　　Apapattra Meesang</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　凌晨三点正是阴风最盛的时间，人类也最容易招鬼，首集《勾魂3点终》便是以凌晨三点作为背景，上映三集故事而大受欢迎，《勾魂3点终》幕后创作《3点终．再勾魂》带来全新3个看得令人毛骨悚然的恐怖故事。它们包括讲述人死后第三个晚上回到阳间的《 死后的第三夜》、传闻半夜里传出无头修女弹奏钢琴的《修院学校探险夜》、以及带惊且笑的《纸扎铺的恐怖夜》……<br />
<br />
　　《尸还魂》血性男子阿良发现女友桂儿和另一个男人波苏搞在一起，愤怒的阿良驾驶机车追赶，结果不慎车祸身亡。葬礼的第三天，平日的狐朋狗友悉数到场，连桂儿和波苏也到场上香，而灵异事件也突然发生。在此之后，众人寻找阿良丢失的手机，阿良的鬼影却接连出现；《献阴琴》某女子教会学校，传说曾有一个为情而死的修女，她死后变成无头女鬼，在夜晚弹着动听的钢琴。而如果虔诚地向他许愿，很快就会梦想成真。但是这也伴随着可怕的危险。充满嫉妒和爱欲的女孩，为情涉入险地；《祭纸扎》纸扎店老板的老婆珠珠外遇归来，对老公大献殷勤。常被欺负的小伙计阿默刚好从网上发现一则车祸消息，而这个消息让他大为震惊！恐怖不眠夜，阴雨连绵。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：凌晨三点正是阴风最盛的时间，人类也最容易招鬼，首集《勾魂3点终》便是以凌晨三点作为背景，上映三集故事而大受欢迎，《勾魂3点终》幕后创作《3点终．再勾魂》带来全新3个看得令人毛骨悚然的恐怖故事。它们包括讲述人死后第三个晚上回到阳间的《 死后的第三夜》、传闻半夜里传出无头修女弹奏钢琴的《修院学校探险夜》、以及带惊且笑的《纸扎铺的恐怖夜》……《尸还魂》血性男子阿良发现女友桂儿和另一个男人波苏搞在一起，愤怒的阿良驾驶机车追赶，结果不慎车祸身亡。葬礼的第三天，平日的狐朋狗友悉数到场，连桂儿和波苏也到场上香，而灵异事件也突然发生。在此之后，众人寻找阿良丢失的手机，阿良的鬼影却接连出现；《献阴琴》某女子教',N'泰国',N'恐怖',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-612928-1-2.html',N'http://www.lwgod.com/attachment.php?aid=890639&amp;k=b09c7a6696840ffde56fcc718e94551d&amp;t=1412261759&amp;sid=5cbdppNkuAbSRe%2BJg4eTy0hxV2s1TD9aAz9GAHa1GthfqwY',N'2014/10/2 22:57:33',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 468,N'【白百何郑中基14新票房】【整容日记】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/zhengrong/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.24/zhengrong/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　整容日记<br />
片　　名　The Truth About Beauty<br />
年　　代　2014<br />
国　　家　中国/中国香港<br />
类　　别　喜剧/爱情/剧情<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
评　　分　5.8/10 from 19 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3644610" target="_blank">http://www.imdb.com/title/tt3644610</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　832 MB<br />
片　　长　84 Min<br />
导　　演　林爱华 Oi Wah Lam<br />
主　　演　白百何 Baihe Bai<br />
　　　　　郑中基 Ronald Cheng<br />
　　　　　张瑶 Yao Zhang<br />
　　　　　郭京飞 Jingfei Guo<br />
　　　　　张大礼 Dali Zhang</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　毕业在即的名牌大学生郭晶因为容貌不佳被男友降级为“炮友”，屡次被应聘单位视做透明。痛定思痛，郭晶踏上了“整容不归路”。整出的“美丽”助她进入500百强，还尝到了爱情的甜头，直到有一天被“曝光”整容真相……<br />
<br />
　　《整容日记》讲述了毕业在即的名牌大学生郭晶（白百何饰演）一夜之间沦为“双失青年”：因为容貌像“车祸现场”，被交往三年的男友直接从“女友”降级为“炮友”；因为长相缺乏“存在感”，屡次被应聘单位视做透明。痛定思痛，郭晶手握分手费去开了双眼皮，踏上了“整容不归路”。越来越升级的“美丽”，助她进入500百强，还尝到了爱情的甜头，她义无反顾向前冲，一路高歌猛进。直到有一天被小人“曝光”整容真相，美丽的奇迹瞬间幻灭成最大的笑话，郭晶只能落荒而逃。事业和爱情将面临怎样的考验？<br />
<br />
　　大学生郭晶（白百何 饰）相恋几年的男友（郭京飞 饰）不光从不承认这段恋情，毕业时还因为她长得太丑而提出分手。大受打击的郭晶连哭的时间都没有就马上加入了找工作的大军。因为相貌的平庸，郭晶在找工作过程中屡屡碰壁，但却意外在一次面试中被高管雷蒙（郑中基 饰）看中她的才华而获得工作。<br />
<br />
　　雷蒙是公司里精英级的人物，被公司的美女们奉为男神，而且身边不乏各路美女相伴。但高高在上的他却一直对平凡的郭晶另眼相看。郭晶为了雷蒙决定放手一搏，存钱整容。功夫不负有心人，在扔了大把的金钱后，郭晶最终变成了人人羡慕的美女，而且公司也没人发现她的整容秘密。郭晶如愿以偿地和雷蒙走到了一起，但意外得知雷蒙其实最讨厌人造美女。天有不测风云，郭晶整容的秘密瞬间在公司曝光，她跟雷蒙的恋情将要经受最大考验……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　《整容日记》是第一部国产整容题材喜剧，监制陈可辛表示，“大家以前谈到整容都会觉得是负面，但现在我身边的年轻朋友对整容的态度已经完全不同，变成一个越来越普通的事情，林爱华导演又给了我们一个很好很有趣的故事，整容之外更重要的还是讲男女的感情，不仅要整容，还要‘整心’。” 本片导演林爱华是陈可辛多年“御用编剧”，从《投名状》到《十月围城》到《中国合伙人》都有她的参与，之前也曾导演过《十二夜》等香港电影，此番进军内地市场，林爱华表示，“整容这个题材，之前很少人写，但是现在这个群体越来越大，他们的故事其实都很有看头，我很期待内地观众对这部戏的反应。”<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·专业特效化妆师根据白百何的脸型，从美国定制硅胶，耗费一周时间打造出假下巴。把假下巴贴到脸上，再用其他材料遮盖硅胶和皮肤的连接处，还需要4个小时的精细化妆过程让妆容不漏破绽。<br />
<br />
·白百何把《整容日记》中的造型拍下来发给老公陈羽凡之后，陈羽凡却回复她，“你都长这样了，我就不来探班了吧”。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：毕业在即的名牌大学生郭晶因为容貌不佳被男友降级为“炮友”，屡次被应聘单位视做透明。痛定思痛，郭晶踏上了“整容不归路”。整出的“美丽”助她进入500百强，还尝到了爱情的甜头，直到有一天被“曝光”整容真相……《整容日记》讲述了毕业在即的名牌大学生郭晶（白百何饰演）一夜之间沦为“双失青年”：因为容貌像“车祸现场”，被交往三年的男友直接从“女友”降级为“炮友”；因为长相缺乏“存在感”，屡次被应聘单位视做透明。痛定思痛，郭晶手握分手费去开了双眼皮，踏上了“整容不归路”。越来越升级的“美丽”，助她进入500百强，还尝到了爱情的甜头，她义无反顾向前冲，一路高歌猛进。直到有一天被小人“曝光”整容真相，美丽的',N'中国/中国香港',N'喜剧/爱情/剧情',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-612926-1-2.html',N'http://www.lwgod.com/attachment.php?aid=890638&amp;k=def7f70d6651a000b50c69c58cf79159&amp;t=1412261760&amp;sid=a4ees6yE8Gy6hyWpgWYdRHdh3Pj5vp7IDi4VlRygIpt%2BGmA',N'2014/10/2 22:57:33',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 469,N'【中14最新万众期待票房】【窃听风云3】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/qieting3/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/qieting3/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　窃听风云3<br />
片　　名　Overheard 3<br />
年　　代　2014<br />
国　　家　中国/中国香港<br />
类　　别　动作/悬疑/惊悚/犯罪<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
评　　分　6.1/10 from 142 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3121442" target="_blank">http://www.imdb.com/title/tt3121442</a><br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　1.27 GB<br />
片　　长　131 Min<br />
导　　演　麦兆辉 Siu Fai Mak<br />
　　　　　庄文强 Felix Chong<br />
主　　演　古天乐 Louis Koo ....罗永就<br />
　　　　　吴彦祖 Daniel Wu ....阿祖<br />
　　　　　刘青云 Ching Wan Lau ....陆金强<br />
　　　　　周迅 Xun Zhou ....月华<br />
　　　　　叶璇 Michelle Ye ....陆永瑜<br />
　　　　　曾江 Kenneth Tsang ....陆瀚涛<br />
　　　　　方中信 Alex Fong ....陆永富<br />
　　　　　黄磊 Lei Huang ....万先生<br />
　　　　　林家栋 Ka Tung Lam ....陆建波<br />
　　　　　吴孟达 Man Tat Ng ....司徒光<br />
　　　　　欧锦棠 Stephen<br />
　　　　　林嘉华 Dominic Lam ....陆永泉<br />
　　　　　黄奕 Yi Huang ....陆永富妻子<br />
　　　　　钱嘉乐 Kar Lok Chin ....陆永远<br />
　　　　　郭峰 Fung Kwok<br />
　　　　　罗兰 Lan Law ....娇婶<br />
　　　　　骆应钧 Felix Lok ....马先生</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　香港新界陆氏家族在此盘亘百年，某日，同村的罗永就（古天乐饰）醉酒撞死了异姓兄弟陆永远，从此与陆永远之妻月华（周迅饰）结下不解之仇。5年后，罗永就出狱，看到陆家风云变幻，陆氏家族大家长陆瀚涛（曾江饰）及其女陆永瑜（叶璇饰）已经坐拥新界最大房产公司，并开始结交内地政商；陆家兄弟陆金强（刘青云饰）等人在新界疯狂收购土地扩张势力。就在此时，香港房产巨鳄邀请罗永就“共商大事”。同时，神秘人阿祖（吴彦祖饰）透露给月华，她丈夫的死与陆家的土地交易黑幕有关，并且现在多方势力都瞄准了月华和村民们坚守的百亩良田，要想在这场欺天阴谋中复仇，就必须按照他的指示去做……一场爱恨交织，钱权阴谋的悲欢故事揭开序幕。<br />
<br />
　　香港地少人多，传统的优待原居民的房屋政策引起极大争议。因此，政府有意修改原有的政策。由于涉及庞大利益，平静的乡村随之风起云涌，相关人士利用窃听等手段展开明争暗斗。过程中见证了一个乡绅家族的兴衰浮沉。<br />
<br />
　　本片讲述了香港新界围村陆氏家族在房产开发交易黑幕后的故事。故事开始于村民罗永就（古天乐 饰）醉酒撞死了异姓兄弟陆永远（钱嘉乐 饰），陆永远之妻月华（周迅 饰）从此与他势不两立。罗永就5年后出狱，发现陆氏家族大家长陆瀚涛（曾江 饰）和其女陆永瑜（叶璇 饰），以及女婿（黄磊 饰）已经坐拥新界最大房产公司，而陆家兄弟陆金强（刘青云 饰）、陆永富（方中信 饰）等人则疯狂扩张势力。不久香港房产巨鳄邀请罗永就“共商大事”。同时，神秘人阿祖（吴彦祖 饰）透露给月华一个通过窃听得到的秘密消息，他告诉月华要想在这场欺天阴谋中复仇，就必须按照他的指示去做…… 于是几方势力都开始暗自行动。<br />
<br />
　　本片是《窃听风云》系列的第三部，但是除了“窃听”这一核心创意外，故事内容与前两部无关。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·周迅来的角色在众多男性人物中穿针引线，甚至紧要关头能左右大局，是第三集中一个关键的人物。<br />
<br />
·影片不再是简单的窃听，而且直接升级成尖端的移动视频监控，每个人的一举一动都被窃听者一览无遗。<br />
<br />
·《窃听风云3》从前两集的揭露证券与股票黑幕，升级转战至房地产交易。<br />
<br />
·导演庄文强表示，《窃听风云》系列到了第三部的终极之作，“电影里的窃听和反窃听手段都已经出神入化，而且《窃听风云3》还加入最前沿的4G电信的元素。”<br />
<br />
·为了演好自己的角色，刘青云、方中信等四人竭尽全力学习怎样成为一个合格的“土豪”，四人还自行在片场成立了一个“土豪高端培训班”。刘青云称《窃听风云3》是一部标准的“土豪养成记”。<br />
<br />
·古天乐与刘青云已是多次合作。刘青云说别看他们俩银幕上天天见，但是自己平时完全和古天乐没有联系。“我和他平时不吃饭的，我和他演戏那么多年，到很后面才有他电话。”<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：香港新界陆氏家族在此盘亘百年，某日，同村的罗永就（古天乐饰）醉酒撞死了异姓兄弟陆永远，从此与陆永远之妻月华（周迅饰）结下不解之仇。5年后，罗永就出狱，看到陆家风云变幻，陆氏家族大家长陆瀚涛（曾江饰）及其女陆永瑜（叶璇饰）已经坐拥新界最大房产公司，并开始结交内地政商；陆家兄弟陆金强（刘青云饰）等人在新界疯狂收购土地扩张势力。就在此时，香港房产巨鳄邀请罗永就“共商大事”。同时，神秘人阿祖（吴彦祖饰）透露给月华，她丈夫的死与陆家的土地交易黑幕有关，并且现在多方势力都瞄准了月华和村民们坚守的百亩良田，要想在这场欺天阴谋中复仇，就必须按照他的指示去做……一场爱恨交织，钱权阴谋的悲欢故事揭开序幕。香港地',N'中国/中国香港',N'动作/悬疑/惊悚/犯罪',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-611929-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888084&amp;k=5e2dd1cdca964b21c2ef3096ddf85cc6&amp;t=1412261760&amp;sid=378cqYAn8id0Iso%2F%2FUxgaCnnXzZmKmnNGCS6tw86JaLWKC0',N'2014/10/2 22:57:33',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 470,N'【美14票房万众期待】【极品飞车】【BluRay-720P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/jipinfeiche/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/jipinfeiche/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　极品飞车/极速激战(港)/极速快感(台)<br />
片　　名　Need for Speed<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　动作/犯罪/惊悚/剧情<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.0/10 from 45,377 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2369135" target="_blank">http://www.imdb.com/title/tt2369135</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.23 GB<br />
片　　长　131 Min<br />
导　　演　斯科特·沃夫 Scott Waugh<br />
主　　演　亚伦·保尔 Aaron Paul ....托比·马歇尔 Tobey Marshall<br />
　　　　　多米尼克·库珀 Dominic Cooper ....迪诺·布鲁斯特 Dino Brewster<br />
　　　　　伊莫珍·波茨 Imogen Poots ....茱莉亚·马登 Julia Maddon<br />
　　　　　迈克尔·基顿 Michael Keaton ....蒙纳克 Monarch<br />
　　　　　达科塔·约翰逊 Dakota Johnson ....安妮塔 Anita<br />
　　　　　卡迪小子 Kid Cudi ....本尼 Benny<br />
　　　　　拉蒙·罗德里格兹 Ramon Rodriguez ....乔·派克 Joe Peck<br />
　　　　　哈里森·吉尔伯特森 Harrison Gilbertson ....利托·比特 Little Pete<br />
　　　　　拉米·马雷克 Rami Malek ....菲恩 Finn<br />
　　　　　尼克·齐兰德 Nick Chinlund ....Officer Lejeune<br />
　　　　　Sir Maejor ....Leigh Dennis - Inmate<br />
　　　　　卡梅拉·苏姆巴朵 Carmela Zumbado ....Jeny B</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　根据美国艺电游戏公司同名游戏改编。<br />
<br />
　　托比·马歇尔（亚伦·保尔 Aaron Paul 饰）本是一名蓝领机修工，偶尔参加地下赛车作为副业，却在一次比赛时遭陷害锒铛入狱，好友也在事故中丧生。出狱后，托比决定报仇雪恨，惟一能达成此目标的机会就是参加一项横跨美国东西两岸的地下赛车。等待他的是一系列令人心跳加速的飞车考验；而始于复仇的任务，也渐渐演变成一场赎罪之旅。托比扳倒敌手的决心绝不动摇……无论这要付出多大的代价。<br />
<br />
　　托比·马歇尔（亚伦·保尔 饰）在一次地下赛车时遭陷害入狱，好友也在事故中丧生。出狱后，托比决定报仇雪恨，惟一能达成此目标的机会就是参加一项横跨美国东西两岸的地下赛车。等待他的是一系列令人心跳加速的飞车考验。<br />
<br />
　　根据全球知名赛车游戏改编，《绝命毒师》亚伦·保尔饰演的主人公托比·马歇尔是一个蓝领机修工，也是个天生的赛车好手。在一次地下赛车巡回赛中，他惨遭富二代大反派（多米尼克·库珀饰演）陷害，痛失挚友的他还锒铛入狱。托比出狱后决定以牙还牙，让陷害他的奸人付出代价——惟一能达成此目标的机会就是参加一项贯穿全美的地下赛车。等待托比的将是一系列令人心跳加速的飞车考验；而始于复仇的任务，也渐渐演变成一场赎罪之旅。<br />
<br />
<font color="red"><strong><font size="3">出场车型：</font></strong></font><br />
<br />
　　福特野马<br />
　　《极品飞车》系列的经典车型，也是主角驾驶车辆。福特野马ShelbyGT500 2010配置超动力5.4升V8引擎，最大马力可达540bhp，最大扭矩可达510lb-ft，与引擎相配的是一款双碟离合6档手动变速系统，升级后拥有更加平滑的换挡性能。变速系统的传动齿轮经过改良，不仅令该车加速时间更短，而且可以获得更好的高速路面省油性能。<br />
<br />
　　科尼塞克Agera R<br />
　　科尼塞克Agera R的单体底盘仅重70公斤，净车重为1330公斤，在超级跑车领域中它是最轻的。其使用的5.0升V8发动机采用双涡轮增压，在使用E85型燃料情况下最大马力达到1115匹，这款超跑的售价为140万美元左右（折合人民币860万元）。<br />
<br />
　　兰博基尼Sesto Elemento<br />
　　Sesto Elemento是兰博基尼在2010年巴黎车展上推出的一款概念车型，运用了大量的碳纤维科技，使这款性能极佳的跑车重量在2200磅以内，产量更是惊人的低，全球不超过10辆。而由于配置差异，兰博基尼将其价格定在190~250万欧元不等（折合人民币1623~2135万元）。<br />
<br />
　　布加迪威龙Super Sport<br />
　　若论全球速度最快的超级跑车，非布加迪威龙莫属，431km/h的变态数值至今还在吉尼斯纪录上历历在目。至于价格嘛，4.8亿人民币就能拿下了。<br />
<br />
　　迈凯轮P1<br />
　　迈凯轮P1概念跑车已经在2012年9月末的巴黎车展全球首发。该车拥有接近1000匹马力，百公里加速仅耗时2.8秒。该车将搭载3.8L V8双涡轮增压发动机，最大功率814马力，价格折合人民币800万元。<br />
<br />
　　GTA斯帕诺<br />
　　GTA斯帕诺是一部后置引擎、后轮驱动的西班牙超级跑车。它配备了一台8.3公升机械增压的V10引擎和7前速的手动波箱，0至100公里/时只需2.9秒，售价大约60万欧元（折合人民币513万元）。<br />
<br />
　　萨林S7<br />
　　作为美国生产的第一部超级跑车，萨林S7所有的外观板件都是由碳纤维制成的，不仅质轻且坚固。它的外观可不只好看而已，在空气动力上的表现也相当优异。如此优秀的跑车价格确是惊人的低，只要55万美元（折合人民币338万元），这款S7也成为了《极品飞车》中最“便宜”的跑车。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·影片根据根据史上最成功、销量达1亿4千万的同名赛车游戏改编。该款游戏截止2012年已经出品了13代共17个作品，并被翻译成22种语言销往60多个国家。2014年本片上映之际正是游戏诞生二十周年。<br />
<br />
·《铁甲钢拳》编剧约翰·贾丁斯和他的哥哥乔治·贾丁斯共同完成了故事编写。贾丁斯兄弟也是资深车迷，他们在自家的车库里修复各种经典汽车。约翰·贾丁斯拥有的第一辆车就是1966年的福特野马。<br />
<br />
·片中使用了大量真实的跑车进行实拍。其中包括一辆瑞典科尼塞克Agera R，一辆兰博基尼Sesto Elemento，一辆GTA 斯帕诺，一辆布加迪威龙和一辆麦克拉伦P1，以及一辆美国产萨林S7。<br />
<br />
·在开始制作前，亚伦·保尔和多尼米克·库珀曾前往加州沙漠中的柳泉赛道学习高速赛车的驾驶技巧。<br />
<br />
·男女主角托比和茱莉亚驾驶穿越美国的主角车是基于2013 GT500型改装的福特野马。史蒂夫·麦昆是导演斯科特·沃夫心目中男主角的形象参考。而女主角伊莫琴·普茨在试镜《极品飞车》之前还不会开车。<br />
<br />
·在电影中保尔驾驶的野马最为拉风。这款专车改装自2013福特GT500，不仅对车身进行了加宽，还增加了20英寸的合金轮毂以及一个V8引擎，最快时速可达190英里。摄制组准备了七部不同的野马以供拍摄。<br />
<br />
·著名车手坦纳·福斯特和莱斯·米伦分别为亚伦·保尔和多米尼克·库珀代驾。而受人尊敬的车手里奇·鲁瑟福德、托尼·布拉克西亚帕、布兰特·弗莱切以及保罗·达伦巴赫与他们一起在里昂杯大赛驾驶了超跑。<br />
<br />
·导演斯科特·沃夫与替身演员兰斯·吉尔伯特是从小一起长大的玩伴，因为他们的父亲都是好莱坞著名的替身演员。<br />
<br />
·为了能够拍到男配角斯科特·麦斯库迪驾驶直升飞机的近距离特写，替身演员出身的导演斯科特·沃夫亲自踩在起降板上探出身子到直升机外进行惊险刺激的拍摄工作。<br />
<br />
·影片在美国各地取景，其中包括了加州的门多西诺县和旧金山、乔治亚州的梅肯县和石头山、以及横跨于洽塔胡奇河上、连接乔治亚州哥伦布市和阿拉巴马州凤凰城的第13号街大桥等。<br />
<br />
·在拍摄中使用了豆荚车——一个搭载在汽车外部的驾驶座舱。实际驾驶汽车的特技车手坐在位于演员后上方的豆荚里。驾驶豆荚车的主要是托比和迪诺的替身。<br />
<br />
·影片的编辑贾丁斯兄弟是资深的车迷，在自家的车库里修复各种经典汽车。约翰·贾丁斯拥有的第一辆车就是1966年的福特野马。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：根据美国艺电游戏公司同名游戏改编。托比·马歇尔（亚伦·保尔 Aaron Paul 饰）本是一名蓝领机修工，偶尔参加地下赛车作为副业，却在一次比赛时遭陷害锒铛入狱，好友也在事故中丧生。出狱后，托比决定报仇雪恨，惟一能达成此目标的机会就是参加一项横跨美国东西两岸的地下赛车。等待他的是一系列令人心跳加速的飞车考验；而始于复仇的任务，也渐渐演变成一场赎罪之旅。托比扳倒敌手的决心绝不动摇……无论这要付出多大的代价。托比·马歇尔（亚伦·保尔 饰）在一次地下赛车时遭陷害入狱，好友也在事故中丧生。出狱后，托比决定报仇雪恨，惟一能达成此目标的机会就是参加一项横跨美国东西两岸的地下赛车。等待他的是一系列令人心跳',N'美国',N'动作/犯罪/惊悚/剧情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-612216-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888756&amp;k=55038d91682f62ff76349eccbc9ee629&amp;t=1412261762&amp;sid=d2bc8LRdlvCIPbPnRU4gg5MrMeG6OPlB5aCwwn07nFtjg%2Fc',N'2014/10/2 22:57:34',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 471,N'【约翰尼德普14科幻】【超验骇客】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.11/chaoyanhaike/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/chaoyanhaike/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　超验骇客/超越潜能(港)/全面进化(台)/超越<br />
片　　名　Transcendence<br />
年　　代　2014<br />
国　　家　美国/中国/英国<br />
类　　别　动作/爱情/科幻/惊悚<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.4/10 from 37,881 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2209764" target="_blank">http://www.imdb.com/title/tt2209764</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.62 GB<br />
片　　长　119 Min<br />
导　　演　瓦利·菲斯特 Wally Pfister<br />
主　　演　约翰尼·德普 Johnny Depp ....威尔 Will<br />
　　　　　丽贝卡·豪尔 Rebecca Hall ....伊芙林·卡斯特 Evelyn<br />
　　　　　保罗·贝坦尼 Paul Bettany ....马克思·沃特世 Max<br />
　　　　　凯特·玛拉 Kate Mara ....布里 Bree<br />
　　　　　摩根·弗里曼 Morgan Freeman ....约瑟夫·泰格博士 Morgan<br />
　　　　　希里安·墨菲 Cillian Murphy ....布坎南特工 Cillian<br />
　　　　　小克利夫顿·克林斯 Clifton Collins Jr<br />
　　　　　科尔·豪瑟 Cole Hauser<br />
　　　　　乔什·斯图沃特 Josh Stewart<br />
　　　　　科里·哈德里克 Cory Hardrict ....Joel Edmond</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　科学家威尔（约翰尼·德普 饰）遭到一群反科学恐怖分子暗杀，妻子艾芙林（丽贝卡·豪尔 饰）将他的精神转入超级电脑的原型机，不久威尔以计算机形态回应了她...反科学恐怖组织发现这一切，他们试图偷走这台超级电脑并摧毁他。<br />
<br />
　　威尔卡斯特博士（约翰尼·德普 Johnny Depp 饰）是人工智能领域首屈一指的研究者，他致力于开创有史以来最人性化的有感知的机器人，全方位结合了人类情感和智慧。虽然威尔极具争议的实验令他一举成名，但同时也让他成为反科技极端分子的眼中钉，这些极端分子开始极尽一切阻止他。然而没想到的是，他们对威尔的摧毁行动，却在不经意间成为了威尔人工智能人实验成功的催化剂——成为了他“超验”的参与者。威尔的妻子伊芙琳（丽贝卡·豪尔 Rebecca Hall 饰）和他最好的朋友马克斯（保罗·贝坦尼 Paul Bettany 饰）同是这个实验的研究员，但问题不在于他们能不能……而是他们应不应该继续着这项研究。伊芙琳和马克斯最担心的是，他们逐渐察觉到，威尔已经不再是单纯的进行探索研究，而是逐步演变成追求一种权力，他无所不在，让人无法预料在他的掌控下未来的结局是什么，唯一越来越清晰的可怕事情是没有人能够阻止他。<br />
<br />
　　近未来，天才科学家威尔·卡斯特（约翰尼·德普 Johnny Depp 饰）开发出最接近人类的人工智能机器人“品（Pin）”，他在收获来自科学界的美誉同时，也遭到无数反对者的诟病与抨击。在某次会议之后，威尔遭到激进组织成员的枪击，虽然当时侥幸逃生，但涂抹了放射性物质的子弹还是慢慢销蚀了威尔的生命。威尔的妻子兼研究伙伴伊芙琳（丽贝卡·豪尔 Rebecca Hall 饰）自然痛不欲生，但她却和丈夫的好友马克斯（保罗·贝坦尼 Paul Bettany 饰）设法，将威尔的意识数据化上传到智能电脑中。奇妙而幸运的是，威尔成功在虚拟世界中复生。<br />
<br />
　　他的天才头脑和先进科技完美融合，只是没人能够想到，这种局面对人类来说究竟是幸运还是灾难……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　据制作人丹·密茨先生介绍：“影片的灵感来源于康德的超验主义，而片名《超验骇客》也是由此而来。”<br />
<br />
　　故事背景<br />
<br />
　　现实中，类似“超验骇客”的技术确实在研究中，备受争议。雨果·德·加里斯教授便是“人工智能威胁人类”观点的拥护者，他曾经预测人工智能的“灾难”也许在五十年后就会降临。而未来学家雷·库兹韦尔则认为人工智能会在2045年达到技术“超验骇客”，人类会借助人工智能获得“永生”。本片的导演瓦利·菲斯特正是看到这样的争论，才有了拍摄这部影片的想法。<br />
<br />
　　主创阵容<br />
<br />
　　电影《超验骇客》的主演团队可谓星光灿烂，好莱坞一线巨星约翰尼·德普（《加勒比海盗》、《剪刀手爱德华》《爱丽丝梦游仙境》）；老牌戏骨摩根·弗里曼（《肖申克的救赎》、《蝙蝠侠：黑暗骑士崛起》）；英伦玫瑰丽贝卡·豪尔（《钢铁侠3》、《城中大盗》）；实力偶像保罗·贝塔尼（《美丽心灵》、《怒海争锋》）；当红女星凯特·玛拉（《纸牌屋》、《127小时》）等联袂主演。本片的导演瓦利·菲斯特，虽然是首次独立执导影片，但作为奥斯卡最佳摄影奖的获得者，他早已是名声在外，享有国际盛誉。而DMG娱乐传媒集团作为《钢铁侠3》《环形使者》的制片公司，中国影迷们对于这个公司的选择也是充满了信心。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·电影的原始概念由诺兰提出的。据制作人丹·密茨先生介绍：“影片的灵感来源于康德的超验主义，而片名《超验骇客》也是由此而来。”<br />
<br />
·未来学家雷·库兹韦尔则认为人工智能会在2045年达到技术“超验骇客”，但人类会借助人工智能获得“永生”——本片的导演瓦利·菲斯特正是看到这样的争论，才有了拍摄这部影片的想法。<br />
<br />
·曾凭借《盗梦空间》捧得过奥斯卡小金人的诺兰御用摄影指导瓦利为本片掌镜。该片是导演瓦利·菲斯特的处女作，这部电影也是他与老师克里斯托弗诺兰的再次合作。<br />
<br />
·影片还集结了《盗梦空间》《蝙蝠侠三部曲》的原班制作团队，是《黑客帝国》和《人鬼情未了》的合集。<br />
<br />
·《超验骇客》的IMAX 3D版本是经由IMAX DMR（数字原底翻版技术）转制而来的。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：科学家威尔（约翰尼·德普 饰）遭到一群反科学恐怖分子暗杀，妻子艾芙林（丽贝卡·豪尔 饰）将他的精神转入超级电脑的原型机，不久威尔以计算机形态回应了她...反科学恐怖组织发现这一切，他们试图偷走这台超级电脑并摧毁他。威尔卡斯特博士（约翰尼·德普 Johnny Depp 饰）是人工智能领域首屈一指的研究者，他致力于开创有史以来最人性化的有感知的机器人，全方位结合了人类情感和智慧。虽然威尔极具争议的实验令他一举成名，但同时也让他成为反科技极端分子的眼中钉，这些极端分子开始极尽一切阻止他。然而没想到的是，他们对威尔的摧毁行动，却在不经意间成为了威尔人工智能人实验成功的催化剂——成为了他“超验”的参与',N'美国/中国/英国',N'动作/爱情/科幻/惊悚',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-611766-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887808&amp;k=d3a4f0d392973945afb8164a579b612a&amp;t=1412261761&amp;sid=8aebeih7xd0cyfh0io2fHgoV9oJkGhU1VD1fQ%2FUbV7G77Qc',N'2014/10/2 22:57:34',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 472,N'【经典必看神作】【窃听风云2重压】【BluRay-720P.MKV】【双语】',N'<font color="blue"><font size="5">蓝光原盘高码最新重新压制！<br />
质量比几年前版本好太多，建议重下收藏！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/qieting2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/qieting2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　窃听风云2/操盘风云2<br />
片　　名　Overheard 2<br />
年　　代　2011<br />
国　　家　中国香港/中国<br />
类　　别　剧情/动作/惊悚<br />
语　　言　<font color="red"><font size="3">国语粤语双音轨</font></font><br />
字　　幕　中文简繁<br />
评　　分　6.8/10 from 871 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1852904" target="_blank">http://www.imdb.com/title/tt1852904</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.24 GB<br />
片　　长　120 Mins<br />
导　　演　麦兆辉 Siu Fai Mak<br />
　　　　　庄文强 Felix Chong<br />
主　　演　吴彦祖 Daniel Wu<br />
　　　　　古天乐 Louis Koo<br />
　　　　　刘青云 Ching Wan Lau<br />
　　　　　叶璇 Michelle Ye<br />
　　　　　黄奕 Yi Huang<br />
　　　　　曾江 Kenneth Tsang<br />
　　　　　胡枫 Fung Woo<br />
　　　　　骆应钧 Felix Lok<br />
　　　　　江毅 Kiang Nge<br />
　　　　　刘浩龙 Wilfred Lau<br />
　　　　　邹凯光 Matt Chow<br />
　　　　　郭峰 Fung Kwok<br />
　　　　　焦姣 Chiao Chiao<br />
　　　　　方中信 Alex Fong<br />
　　　　　林迪安 Dion Lam</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　《窃听风云2》缘起一宗平常的交通事故，香港知名证券商罗敏生（刘青云 饰）的座驾被发现遭人窃听，警方调查所得，窃听器属军事用途，保安科介入案件，经总督察何智强（古天乐 饰）查出，窃听者为一名退伍军人司马念祖（吴彦祖 饰），警匪双方展开了连场追逐，顿时烽烟四起。何智强本以为只是一宗单纯的勒索案件，没想到在深入追查之下，竟揪出了一个名为“地主会”的神秘组织，传说这“地主会”三十年来主宰了经济体系的兴衰成败，而罗敏生及司马念祖更与“地主会”有着敌友难分的关系。何智强被卷入其中，竟与罗敏生及司马念祖连手策动一场惊心动魄的风暴。<br />
<br />
　　香港证券商人罗敏生（刘青云 饰）驱车上班途中遭遇车祸，这起看似平平常常的车祸却引来反恐队的关注。原来警方在罗的车内发现军用窃听器，反恐队长何智强（古天乐 饰）怀疑有人正在策划恐怖袭击。随着何的调查，始终藏在暗处监视窃听的退伍军人司马念祖（吴彦祖 饰）也渐渐浮出水面。与此同时，罗将被窃听的消息告诉了“地主会”的元老们，这是一群自70年代起便操纵香港金融的业界精英，如今更成为只手遮天的抢钱大亨。地主会遭人窃听，无疑预示着他们的各种黑幕将大白于天下。<br />
<br />
　　原以为只会是普通的勒索案，却将罗、何、司马等人卷入了万劫不复的漩涡之中…… <br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
关于续集<br />
<br />
　　麦兆辉、庄文强都表示，当初写《窃听风云》的时候，他们就有考虑过续集的可能性，但还是希望能慎重选择一个合适的故事。《窃听风云2》香港探班时，监制尔冬升透露，他与麦、庄在《窃听风云2》的故事走向上有不同意见，最后还是选择听从麦、庄的设计。麦兆辉表示，《窃听风云》里，吴彦祖“惨死”，古天乐与王敏德“同归于尽”，刘青云“被捕入狱”，如此“两死一坐牢”，强行后续有点勉强；前传也考虑过，但想来想去，觉得还不如重新讲一个故事，延用第一集的主演和“窃听精神”，“我们不可能让死掉的人复活，也不太想去拍它的续集或者前传。第一集之后，我们觉得很多地方拍得还不够过瘾，所以希望用全新的故事、全新的角色，延续‘窃听’的精神，拍一部更好看的电影给观众。” <br />
<br />
　　《窃听风云》中，刘青云、古天乐、吴彦祖三人饰演的是在香港商业罪案调查科供职的同事，而这一次，本是“手足”关系的三兄弟，变成了亦敌亦友的对手。其中，古天乐饰演的是一个反恐警察，刘青云饰演金融才俊，而吴彦祖则是行为诡秘的“窃听者”。三大主演的变化也是相当明显。古天乐留起了胡、染白头发，扮个老相；刘青云扮年轻；吴彦祖增肥…… <br />
<br />
　　庄文强介绍，《窃听风云》中女性角色相对薄弱，在《窃听风云2》中予以弥补，增加了饰演刘青云老婆的黄奕、饰演古天乐老婆的叶璇两大女性角色，而且女性角色，作为诠释“窃听精神”的一部分，将起相当大的作用，“观众对《窃听风云》里头的窃听技术、窃听设备很有兴趣，《窃听风云2》当然会延续这一点。在窃听设备上，续集有很大的升级，有很多新鲜的东西，让观众看了过瘾。”此外就是动作戏的增加，“《无间道》和《窃听风云》时有很多人投诉，说我们拍的动作戏其实好少，看起来还是不够过瘾，所以这次在《窃听风云2》中，我们特别加进了很多，比如枪战、爆炸、公路追逐等很刺激的动作戏份，来提升整部戏的品质。”<br />
<br />
古天乐、叶璇生死恋考验爱情<br />
<br />
　　导演麦兆辉表示，由于上一集吴彦祖“惨死”，古天乐与王敏德“同归于尽”，刘青云“被捕入狱”，续集中三位演员的角色都是全新的，故事也与前作扯不上关系。因此，《窃听风云2》在保留原班人马、提升动作场面的同时，将特别融入贯穿古天乐与叶璇这对银幕夫妻的情感线。<br />
<br />
　　在去年由杜琪峰监制的电影《意外》中，古天乐与叶璇初次合作就令人一见难忘，观众在惊叹于二人银幕形象完美契合的同时，叶璇对爱情至死不渝的精彩演出也为其带来一座香港电影金像奖的“小金人”。而此次古天乐与叶璇在《窃听风云2》中将会上演更多的感情戏，影片剧本也为他们提供了更为复杂与纠结的情感线索，将成为现代人情感生活的真实写照。谈到与古天乐续写的这段银幕情缘，叶璇表示，爱情在这个纷繁多变的社会里变得无法纯粹，令人心痛和无奈，《窃听风云2》这条感情线正是借助小人物的命运与挣扎，探讨相信真爱的人到底需要多少勇气、经历多少考验，才能将信念坚守到底。<br />
<br />
吴彦祖、古天乐《窃听风云2》“兄弟反目”<br />
<br />
　　2009年古天乐、刘青云、吴彦祖主演《窃听风云》在内地创下警匪片票房纪录，今年原班人马监制尔冬升、导演麦兆辉、庄文强加上三大型男再次合作，《窃听风云2》已经在港拍摄多日。影片上周日在港召开发布会，两位导演透露，新片除了都以“窃听”为主题及原班人马外，人物及故事都是重新设计，三大型男的关系从合作变成互为牵制，吴彦祖与古天乐从兄弟变成了敌人。庄文强透露，这次的窃听设备相比上部也有所升级，“其实很多东西都能成为窃听工具，比如女主角，一样可以的”。新片还加入刘青云和黄奕的床戏噱头，庄文强调侃道：“一定要跟《肉蒲团》比一个高下”。<br />
　<br />
刘青云：加床戏拼“肉蒲团”<br />
<br />
　　跟首集相比，刘青云的角色由警察变成了青年金融才俊，还增添了不少艳福，与“妻子”黄奕在片中有激情床戏。刘青云解释，“黄奕扮演我的太太，我们在片中只是亲密关系。”因为4月香港三级新片《肉蒲团》也有很多话题，刘青云也忍不住 “郑重”地要对比一下，“我们这部戏，和‘什么团’的区别，就是他们是3D。”<br />
<br />
吴彦祖：增体重成精壮汉<br />
<br />
　　吴彦祖在《窃听风云》中是娶了富家女的警察，总是西装革履，当日发布会他以一个有点类似莫西干头的精干造型亮相，他说这一集角色转变最大的要算自己：“上次我和他们都是兄弟，这次变成了敌人。这次我的角色是一个前军人，对窃听技术很熟悉，在片中偷听他们两个，是个恐怖分子。”因为饰演的角色要表现出强悍的一面，在形体上有要求，因此他特意增重22斤，变成了163斤的精壮男。<br />
<br />
古天乐：扮沧桑变胡须男<br />
<br />
　　《窃听风云2》中，刘青云是要装年轻，而古天乐就要扮年老，他的角色依旧代表正义一方，同样也是执法部门人员，只不过单位变为反恐组织，职位也升做主管。古天乐的造型除了继续头发花白，还要蓄成络腮胡。庄文强透露，《窃听风云2》中加进了枪战、爆炸、公路追逐等刺激的动作戏份，古天乐的动作戏份相当重，但是前段时间他意外受伤，目前还在康复中，他说现在“跑步的戏都不能拍”，但是自己又不想用替身，所以还要看跟导演商量看怎么解决。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·《窃听风云2》香港探班时，监制尔冬升透露，他与麦、庄在《窃听风云2》的故事走向上有不同意见，最后还是选择听从麦、庄的设计。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：《窃听风云2》缘起一宗平常的交通事故，香港知名证券商罗敏生（刘青云 饰）的座驾被发现遭人窃听，警方调查所得，窃听器属军事用途，保安科介入案件，经总督察何智强（古天乐 饰）查出，窃听者为一名退伍军人司马念祖（吴彦祖 饰），警匪双方展开了连场追逐，顿时烽烟四起。何智强本以为只是一宗单纯的勒索案件，没想到在深入追查之下，竟揪出了一个名为“地主会”的神秘组织，传说这“地主会”三十年来主宰了经济体系的兴衰成败，而罗敏生及司马念祖更与“地主会”有着敌友难分的关系。何智强被卷入其中，竟与罗敏生及司马念祖连手策动一场惊心动魄的风暴。香港证券商人罗敏生（刘青云 饰）驱车上班途中遭遇车祸，这起看似平平常常的车祸',N'中国香港/中国',N'剧情/动作/惊悚',N'1280 x 720',N'2011',N'http://www.lwgod.com/thread-612211-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888754&amp;k=0f5a3bc029174885bc8e51c80a3527b0&amp;t=1412261763&amp;sid=91c0mDHZdMueVBqBgO1mMwmo3HJw5YT8Bugh4LRwoDsmb9E',N'2014/10/2 22:57:34',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 473,N'【周润发谢霆锋14新】【澳门风云】【BluRay-720P.MKV】【双语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/04.19/aomenfengyun/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/04.19/aomenfengyun/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　澳门风云/赌神4之赌城风云/赌神4/赌城风云/赌神4：谁与争锋<br />
片　　名　The Man From Macau<br />
年　　代　2014<br />
国　　家　中国/中国香港<br />
类　　别　喜剧/动作<br />
语　　言　<font color="red"><font size="3">国语粤语双音轨</font></font><br />
字　　幕　中文简繁<br />
评　　分　5.2/10 from 321 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3444184" target="_blank">http://www.imdb.com/title/tt3444184</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.80 GB<br />
片　　长　93 Min<br />
导　　演　王晶 Jing Wong<br />
　　　　　钟少雄 Siu Hubtvbtng Cheung<br />
主　　演　周润发 Yun-Fat Chow&nbsp;&nbsp;....石一坚<br />
　　　　　谢霆锋 Nicholas Tse&nbsp;&nbsp;....晒冷<br />
　　　　　景甜 Tian Jinbtvbtg&nbsp;&nbsp;....洛欣<br />
　　　　　杜汶泽 Chapman To&nbsp;&nbsp;....牛必胜<br />
　　　　　许绍雄 Shiu btvbtHung Hui&nbsp;&nbsp;....Benz哥<br />
　　　　　王敏德 Michael Wong<br />
　　　　　高虎 Hu Gao<br />
　　　　　吴辰君 Annie Wu<br />
　　　　　沈震轩 Sammy Sum<br />
　　　　　张晋 Max Zhang<br />
　　　　　童菲 Fei Tong<br />
　　　　　伍允龙 Philip Ng<br />
　　　　　孟瑶 Yao Meng<br />
　　　　　胡然 Michebtvbtlle Hu<br />
　　　　　何华超 Tony Ho<br />
　　　　　黄文慧 Man-Wai Wong<br />
　　　　　梁敏仪 Winnie Leung</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　故事讲述发哥与谢霆锋是亦敌亦友的师徒，但谢霆锋学艺到手后竟然反过来与发哥对决，而戏中出现的赌场或赌局会有巧妙安排，主线以讲人性为主，最后结局会告诫世人赌钱不会有好下场。<br />
<br />
　　闻名中外，曾担任美国赌场保安总顾问的魔术手石一坚（周润发 饰），终回流澳门退休，更宴请各方朋友到来庆祝生日宴。其中好友Benz哥（许绍雄 饰）与他的儿子晒冷（谢霆锋 饰）以及外甥牛必胜（杜汶泽 饰），更特别由香港来到澳门到贺。<br />
<br />
　　翌日，中国、香港以及澳门三地警方，竟不相约而同找上石一坚，希望他能够重出江湖帮忙对付DOA组织集团的高先生（高虎 饰），但坚却以退休为由婉拒了事。<br />
<br />
　　另一边厢，冷竟与牛必胜一起找上门，希望坚收他俩为徙弟，坚哥虽欣赏小冷，但奈何经已退休，只好拒绝，但看在Benz哥份上，就招待他一夜。谁不知，当晚竟遇上了杀手（张晋 饰），杀手们不问原因直接追击小冷以及坚哥爱女阿彩（童菲 饰）。期间虽有中国公安洛欣（景甜 饰）相救，但阿彩终难逃一劫，被害至失忆。<br />
<br />
　　明查暗访下才知道，幕后的黑手竟是高先生。事情又岂会是无缘无故发生，坚与小冷二人连手，加上女公安洛欣三人，布下奇谋妙计对付高先生，斗智斗力，誓要查个水落石出，将他绳之于法……<br />
<br />
<font color="red"><strong><font size="3">幕后花絮：</font></strong></font><br />
<br />
　　周润发说，“这部戏跟以前的赌神不一样，这部戏是拍给观众过年看的，是一部让一家老少欢乐的戏。二十几前，大家听到澳门好像有点偏门，现在是老少咸宜的旅游胜地。”<br />
<br />
　　说起谢霆锋、景甜这些年轻演员，周润发称，“他们每天都给我很多快乐，逗得我哈哈大笑，而且他们都说跟我合作压力大，其实他们才给我压力，我演戏之前180磅，一直减肥，到开机了终于见到150磅。”此前，周润发在香港金像奖颁奖礼上曾对谢霆锋说，“香港电影未来三十年看你了”，周润发说，“谢霆锋年轻、有魅力、有演技，而且他很努力，香港电影未来三十年，他的压力负担挺大的。”<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：故事讲述发哥与谢霆锋是亦敌亦友的师徒，但谢霆锋学艺到手后竟然反过来与发哥对决，而戏中出现的赌场或赌局会有巧妙安排，主线以讲人性为主，最后结局会告诫世人赌钱不会有好下场。闻名中外，曾担任美国赌场保安总顾问的魔术手石一坚（周润发 饰），终回流澳门退休，更宴请各方朋友到来庆祝生日宴。其中好友Benz哥（许绍雄 饰）与他的儿子晒冷（谢霆锋 饰）以及外甥牛必胜（杜汶泽 饰），更特别由香港来到澳门到贺。翌日，中国、香港以及澳门三地警方，竟不相约而同找上石一坚，希望他能够重出江湖帮忙对付DOA组织集团的高先生（高虎 饰），但坚却以退休为由婉拒了事。另一边厢，冷竟与牛必胜一起找上门，希望坚收他俩为徙弟，坚哥',N'中国/中国香港',N'喜剧/动作',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-611765-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887807&amp;k=6a1101619d8b11567f24a507eec24e55&amp;t=1412261762&amp;sid=7f8evnVb9XzYv9RiI2c7W4y5ANZj4Q9SIwhnW8lcdHbsYM4',N'2014/10/2 22:57:35',0)
INSERT [movies] ([id],[title],[body],[class],[chicun],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 474,N'【美剧】【行尸走肉第二季13集全】【BluRay-720P.MKV】【中英】',N'<font color="blue"><font size="5"><a href="http://www.lwgod.com/thread-607520-1-1.html" target="_blank">行尸走肉第一季下载地址</a></font></font><br />
<br />
<font color="red"><strong><font size="3">海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/xingshizourou2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/xingshizourou2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　行尸走肉 第二季/阴尸路 第2季(台)<br />
片　　名　The Walking Dead Season 2<br />
国　　家　美国<br />
类　　别　动作/惊悚/灾难<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　<font color="red">8.7/10 from 397,793 users</font><br />
链　　接　<a href="http://www.imdb.com/title/tt1520211" target="_blank">http://www.imdb.com/title/tt1520211</a><br />
首　　播　2011-10-16<br />
集　　数　13<br />
单集片长　约45分钟<br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　15.1 GB<br />
导　　演　格温妮丝·豪特尔-佩顿 Gwyneth Horder-Payton<br />
主　　演　安德鲁·林肯 Andrew Lincoln<br />
　　　　　乔·博恩瑟 Jon Bernthal<br />
　　　　　莎拉·韦恩·卡丽丝 Sarah Wayne Callies<br />
　　　　　劳瑞·侯登 Laurie Holden<br />
　　　　　杰弗里·德曼 Jeffrey DeMunn<br />
　　　　　史蒂文·连 Steven Yeun<br />
　　　　　诺曼·瑞杜斯 Norman Reedus<br />
　　　　　艾米莉·金妮 Emily Kinney</strong></font><br />
<br />
<font color="red"><strong><font size="3">简介：</font></strong></font><br />
<br />
　　当疾控中心被夷为平地之后，瑞克·格里姆斯（安德鲁·林肯 Andrew Lincoln 饰）等幸存者继续踏上前往亚特兰大的凶险之旅。身心倍感疲惫的一群人越来越难以应付仿佛永远没有穷尽的丧尸，而他们之间的关系也变得愈加微妙和不稳定。申恩（乔·博恩瑟 Jon Bernthal 饰）与好友瑞克和瑞克之妻洛瑞（莎拉·韦恩·卡丽丝 Sarah Wayne Callies 饰）关系愈加扑朔迷离，变得暴躁残忍的申恩萌生脱队行动的念头，他种种乖张举措为自己和伙伴们埋下了悲剧的种子。与此同时，死亡以一步步向幸存者们迫近，有的人遇害、受伤、失踪，可即便命运如此残酷，即将到来新的生命仍昭示着未来的希望……<br />
<br />
　　本片根据托尼·摩尔（Tony Moore）的同名漫画改编，是电视史上第一部正宗的僵尸电视剧。<br />
<br />
　　《行尸走肉》讲述了警察瑞克在一次执法行动中因中弹负伤而不省人事，当他从昏迷中苏醒后却惊讶地发现，这个世界已然天翻地覆。周遭一派死境，丧尸横行，没有活人踪影。死里逃生的瑞克赶到家中，却不见妻儿的踪影……<br />
<br />
　　尽管僵尸题材有些老套，但这部漫画却着重刻画了人物角色的心理活动与变化，人性中的黑暗面在大灾难中暴露无疑。哀殍遍野，丧尸满目，人类在其中苟延残喘，带来毁灭与伤害的不仅仅是那些行尸走肉，还有活人间的互相争斗。故事将主人公一次次抛入绝境的同时，也给予观者一种如临末世的悲望。<br />
<br />
<font color="red"><strong><font size="3">截图：</font></strong></font><br />
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
<br />',N'动作/惊悚/灾难',N'1280 x 720',N'http://www.lwgod.com/thread-612194-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888751&amp;k=93a0d952c79e114c0c4bc616de40386f&amp;t=1412261768&amp;sid=e255nEs7ktqbJ3OVK4rFymn2uqZ183cOMP8f9fXnv5CjiWg',N'2014/10/2 22:57:35',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 475,N'【美14视效灭世神话】【诺亚方舟】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/nuoyafangzhou/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/nuoyafangzhou/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　诺亚方舟：创世之旅/挪亚：灭世启示(港)/诺亚方舟/诺亚<br />
片　　名　Noah<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　动作/冒险/剧情<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.3/10 from 71,132 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1959490" target="_blank">http://www.imdb.com/title/tt1959490</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　3.80 GB<br />
片　　长　138 Min<br />
导　　演　达伦·阿伦诺夫斯基 Darren Aronofsky<br />
主　　演　罗素·克劳 Russell Crowe ....Noah<br />
　　　　　安东尼·霍普金斯 Anthony Hopkins ....Methuselah<br />
　　　　　爱玛·沃森 Emma Watson ....Ila<br />
　　　　　罗根·勒曼 Logan Lerman ....Ham<br />
　　　　　詹妮弗·康纳利 Jennifer Connelly ....Naameh<br />
　　　　　凯文·杜兰 Kevin Durand ....Og<br />
　　　　　道格拉斯·布斯 Douglas Booth ....Shem<br />
　　　　　达科塔·高尤 Dakota Goyo ....Young Noah<br />
　　　　　马尔顿·索克斯 Marton Csokas<br />
　　　　　雷·温斯顿 Ray Winstone<br />
　　　　　萨米·盖尔 Sami Gayle ....Sami<br />
　　　　　麦蒂森·达文波特 Madison Davenport ....Na''el</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　在《圣经》中，上帝要用洪水毁灭地上的人类，他选中了诺亚一家作为新人类的种子。诺亚一边赶造方舟，一边劝告世人悔改其行为。诺亚花了整整120年时间终于造成了一只庞大的方舟，并听从上帝的话，把全家八口搬了进去，各种飞禽走兽也一对对赶来，有条不紊地进入方舟。7天后，洪水自天而降，一连下了40个昼夜，人群和动植物全部陷入没顶之灾。几十天后，鸽子衔来了橄榄枝，表示大水已经消退，方舟上的人类和万物重新开始在地上繁衍。<br />
<br />
　　《诺亚方舟》根据圣经故事改编，由达伦·阿伦诺夫斯基亲自创作剧本和同名漫画。这是一个没有希望的世界，没有雨、没有粮食，军阀和野蛮的游牧部落统治一切。诺亚是这个残酷世界的一个好人，一个久经沙场的战士、法师和治疗师，他只想和家人过上安宁平静的生活。然而，每天晚上他都会被一个噩梦所折磨，梦里整个世界被一场大洪水吞没。久而久之他意识到，这正是造物主给他的讯号，上帝要惩罚人类，把他们杀光……但他给了诺亚一个机会，让他得以保存地球上的物种。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　《诺亚方舟》将是达伦最大规模的制作，影片投资据说将达到1.3亿美元。对于这个宗教意味很重的故事，达伦并不想过于强调其宗教色彩：“我不认为这是个非常宗教的故事。我觉得这是一个伟大的寓言，来自各种宗教和精神实践。我认为这是一个从来没在银幕上表现过的伟大故事。”<br />
<br />
　　《诺亚方舟》是达伦个人成本最高的作品，投资高达1.3亿美元，是《黑天鹅》的10倍。本片演员阵容豪华，除了影帝罗素·克劳饰演主人公诺亚（Noah），詹妮弗·康纳利将饰演他的妻子Naameh，这也是二人继《美丽心灵》后再度饰演银幕伉俪。道格拉斯·布斯、罗根·勒曼分饰诺亚的三个儿子中的长子Shem和次子Ham，爱玛·沃森则饰演诺亚的养女、Shem的女友Ila。老牌影帝安东尼·霍普金斯则饰演诺亚祖父Methuselah，而影片大反派Tubal-cain则花落英国戏骨雷·温斯顿。此外，曾在《雷神》、《铁甲钢拳》中给人留下深刻印象的“小正太”达科塔·高尤将饰演童年时期的诺亚，而自《圆周率》起便出演了达伦每一部导演作品的马克·马格利斯也依然在列。<br />
<br />
　　《诺亚方舟》定于2014年3月28日北美上映，并有望引进中国内地。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：在《圣经》中，上帝要用洪水毁灭地上的人类，他选中了诺亚一家作为新人类的种子。诺亚一边赶造方舟，一边劝告世人悔改其行为。诺亚花了整整120年时间终于造成了一只庞大的方舟，并听从上帝的话，把全家八口搬了进去，各种飞禽走兽也一对对赶来，有条不紊地进入方舟。7天后，洪水自天而降，一连下了40个昼夜，人群和动植物全部陷入没顶之灾。几十天后，鸽子衔来了橄榄枝，表示大水已经消退，方舟上的人类和万物重新开始在地上繁衍。《诺亚方舟》根据圣经故事改编，由达伦·阿伦诺夫斯基亲自创作剧本和同名漫画。这是一个没有希望的世界，没有雨、没有粮食，军阀和野蛮的游牧部落统治一切。诺亚是这个残酷世界的一个好人，一个久经沙场的战',N'美国',N'动作/冒险/剧情',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-611650-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887714&amp;k=92ced68ec26584dc131118c12d3ce959&amp;t=1412261763&amp;sid=43d1Brn8%2FpgvLIT5Z9z%2BpLRBmA%2FKsaPg%2FZQqlCxqXVvNWi8',N'2014/10/2 22:57:35',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 476,N'【周秀娜方力申14新奇幻】【非狐外传】【HD-1024.MP4】【国语】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.16/feihu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　非狐外传/聊斋·非狐外传<br />
片　　名　The Extreme Fox<br />
年　　代　2014<br />
国　　家　中国/中国香港<br />
类　　别　爱情/惊悚/奇幻/喜剧<br />
语　　言　普通话<br />
字　　幕　中文字幕<br />
文件格式　HD-1024.MP4<br />
视频尺寸　1024 x 576<br />
文件大小　878 MB<br />
片　　长　88 Min<br />
导　　演　钱升玮 Wellson Chin<br />
主　　演　方力申 Alex Fong<br />
　　　　　周秀娜 Chrissie Chau<br />
　　　　　谈莉娜 Renata Tan<br />
　　　　　林雪 Suet Lam<br />
　　　　　刘俊纬 Awayne<br />
　　　　　黄俊淇 Jun-qi Huang<br />
　　　　　张建波 Jianbo Zhang<br />
　　　　　蔡紫芬 Zifen Tsai<br />
　　　　　杨泽湖 Zehu Yang<br />
　　　　　郝在冬 Zaidong Hao<br />
　　　　　何美钿 Meitian He<br />
　　　　　贾康熙 Kang Xi Jia</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　电影讲述古代科考落榜的英俊秀才王生（方力申），阴差阳错与“狐妖”（周秀娜）发生一系列奇遇，更遭遇一段匪夷所思的情感历程，个人命运就此发生了巨大变化。<br />
<br />
　　很久很久以前，传说有一只小狐狸，她想变成人，每隔几天便杀人取心，京城因此陷入一片恐怖中。一绝色女子仙儿来到王生家，不料此女乃与狐仙有着千丝万缕的联系。刁蛮少女小翠因王生英俊有为对其萌生爱意，却发现仙儿不停用妖术诱惑王生……自此，一场人妖之间、纯情男女之间、正邪之间错综复杂的诱惑、抗争、情仇在看似平稳的外表下徐徐拉开。<br />
<br />
　　故事发生在遥远的古代，那个世界里，人妖混居，世间永无太平。王生（方力申 饰）是一介平凡书生，在乱世之中，个性胆小懦弱的他只求能够安心读书，平安过活。一天，一位名叫仙儿（周秀娜 饰）的神秘女子不请自来，突然出现在了王生的面前，王生虽然不知仙儿究竟是何方神圣，但依旧被她身上所散发出来的媚气所深深吸引。<br />
<br />
　　自仙儿出现之后，城中屡屡发生离奇的杀人案件，被害者均因为心脏被掏出而死，没有人知道这些失踪的心脏到底去了哪里。少女小翠（谈莉娜 饰）暗恋着王生，看到他被仙儿迷得神魂颠倒，小翠的心中很不是滋味。一次偶然中，小翠窥见了仙儿用妖法迷惑王生的秘密，心急如焚的她决定靠自己的力量揭开仙儿的“画皮”。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：电影讲述古代科考落榜的英俊秀才王生（方力申），阴差阳错与“狐妖”（周秀娜）发生一系列奇遇，更遭遇一段匪夷所思的情感历程，个人命运就此发生了巨大变化。很久很久以前，传说有一只小狐狸，她想变成人，每隔几天便杀人取心，京城因此陷入一片恐怖中。一绝色女子仙儿来到王生家，不料此女乃与狐仙有着千丝万缕的联系。刁蛮少女小翠因王生英俊有为对其萌生爱意，却发现仙儿不停用妖术诱惑王生……自此，一场人妖之间、纯情男女之间、正邪之间错综复杂的诱惑、抗争、情仇在看似平稳的外表下徐徐拉开。故事发生在遥远的古代，那个世界里，人妖混居，世间永无太平。王生（方力申 饰）是一介平凡书生，在乱世之中，个性胆小懦弱的他只求能够安心',N'中国/中国香港',N'爱情/惊悚/奇幻/喜剧',N'1024 x 576',N'2014',N'http://www.lwgod.com/thread-612189-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888735&amp;k=1f8807f3cdfe5bc54328a7ebcefc82ec&amp;t=1412261769&amp;sid=0154Oymz%2BD3GHt790xWCm2UYzwFJ3vUooMm%2Fepw8GqUX8ns',N'2014/10/2 22:57:36',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 477,N'【澳13高分动人心魄】【沙漠驼影】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/shamotuoying/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/shamotuoying/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　沙漠驼影/踪迹/轨迹<br />
片　　名　Tracks<br />
年　　代　2013<br />
国　　家　澳大利亚<br />
类　　别　冒险/传奇/剧情<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　7.3/10 from 3,321 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2167266" target="_blank">http://www.imdb.com/title/tt2167266</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.55 GB<br />
片　　长　112 Min<br />
导　　演　约翰·卡兰 John Curran<br />
主　　演　米娅·华希科沃斯卡 Mia Wasikowska ....Robyn Davidson<br />
　　　　　亚当·德里弗尔 Adam Driver ....Rick Smolan<br />
　　　　　艾玛·布斯 Emma Booth ....Marg<br />
　　　　　莱纳·波克 Rainer Bock ....Kurt<br />
　　　　　Jessica Tovey ....Jenny<br />
　　　　　罗伯特·科尔比 Robert Coleby ....Pop<br />
　　　　　Tim Tim ....Glendle<br />
　　　　　Melanie Melanie ....Annie<br />
　　　　　John John ....Sallay</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　一名女子实现渴望已久的追逐荒野大漠的梦想，独自一人在四只骆驼和一条忠诚的狗的陪伴下穿越澳大利亚沙漠。她从悉尼出发到艾丽斯斯普林斯，独自展开一场横越澳洲的千里沙漠之行，最后抵达澳洲西海岸。<br />
<br />
　　影片根据Robyn Davidson所著自传体畅销书《轨迹》改编，讲述了一名女子实现渴望已久的追逐荒野大漠的梦想，独自一人在四只骆驼和一条忠诚的狗的陪伴下穿越澳大利亚沙漠的故事。她从悉尼出发到艾丽斯斯普林斯，独自展开一场横越澳洲的千里沙漠之行，最后抵达澳洲西海岸，影片记述了这段旅程，演绎了一段动人心魄的传奇旅程、一曲跌宕起伏的沙漠恋歌。<br />
<br />
　　曾执导过《面纱》等影片的导演约翰·卡兰的又一力作，讲述一名女子带着四只骆驼和一条忠狗的沙漠穿行记，展现了一段人在大自然中的无畏逐梦之旅。影片改编自罗宾·戴维森的自传体畅销书《轨迹》，改编酝酿已久，大明星茱莉亚·罗伯茨和妮可·基德曼都曾成为女主角候选，最终花落澳洲新星米娅·华希科沃斯卡（《爱丽丝漫游仙境》），她在壮美沙漠奇景中演绎女性独立自我，赢得媒体好评如潮。影片入围第70届威尼斯电影节主竞赛单元、并在伦敦、多伦多等多个电影节展映。<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　本片根据澳大利亚小说家罗宾·戴维森的传记书改编。戴维森花了三十年不断的旅行，并将经历记录下来出版。有关沙漠旅行的文章最初在1978年发表于美国国家地理杂志，这令她有兴趣将多年的旅行写成书。她游历至伦敦，住在多丽丝·莱辛的家中，创作了《踪迹》。这为她赢得了首届托马斯·库克旅游图书奖。在九十年代初，著名摄影师瑞克·斯莫兰出版了她从爱丽斯泉到印度洋的全部图片，其中包含了第一次向大众推出的互动故事图片CD。《踪迹》如此受欢迎，尤其是获得女性读者的青睐，究其原因是因为“她独自投身于旷野中求生，而非作为一个男人的附属品。”戴文森的沙漠之旅被她途径的原住民们所怀念。艺术家让·伯克创作了一幅叫做骆驼夫人的画，他的父亲曾经陪伴戴维森走过一大段路，引导她找到水源。<br />
<br />
　　从上个世纪八十年代到九十年代，小说曾五度尝试被搬上银幕，其中就包括1993年朱莉亚·罗伯茨与试金石电影公司签过的一个合同。最终将其实现的导演约翰·卡兰说，戴维森这个人物在制作中被限制了：“罗宾正在经历一个内心的飞跃，以便能够应对我们对故事的改编。我觉得她有点厌倦了之前曾有那么多人想要把它拍成电影却没成功。”影片运用了不少画外音来表达罗宾的内心世界，不过，卡伦并不依赖画外音：“影片中的全部画外音都是来自罗宾的，这是一个关于她内在与外在的旅程。我们试图让观众真正的体验一段旅程，而非只是旁观。”相比于她那些丢失指南针和游荡于她营地外的骆驼的挑战，她的内心冲突会更加丰富。作为一个发生在七十年代的故事，卡伦希望重现那个时代的画面特质，而故事的一大看点就是摄影和风景，从而体现沙漠的广袤无情。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：一名女子实现渴望已久的追逐荒野大漠的梦想，独自一人在四只骆驼和一条忠诚的狗的陪伴下穿越澳大利亚沙漠。她从悉尼出发到艾丽斯斯普林斯，独自展开一场横越澳洲的千里沙漠之行，最后抵达澳洲西海岸。影片根据Robyn Davidson所著自传体畅销书《轨迹》改编，讲述了一名女子实现渴望已久的追逐荒野大漠的梦想，独自一人在四只骆驼和一条忠诚的狗的陪伴下穿越澳大利亚沙漠的故事。她从悉尼出发到艾丽斯斯普林斯，独自展开一场横越澳洲的千里沙漠之行，最后抵达澳洲西海岸，影片记述了这段旅程，演绎了一段动人心魄的传奇旅程、一曲跌宕起伏的沙漠恋歌。曾执导过《面纱》等影片的导演约翰·卡兰的又一力作，讲述一名女子带着四只骆驼',N'澳大利亚',N'冒险/传奇/剧情',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-611646-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887709&amp;k=255e0567bbaeaa3ad42bfbeb96de2795&amp;t=1412261765&amp;sid=9976ZD8Wda6oDm6IL7UijejLSwkOsnOosv8lLyW%2BO%2FxB0C8',N'2014/10/2 22:57:36',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 478,N'【美14众星悬疑奇幻】【冬日奇缘】【BluRay-720P.MKV】【中英】',N'<span><strong><span>电影海报：</span></strong></span><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/dongriqiyuan/00.jpg" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/dongriqiyuan/01.jpg" alt="" /><br />
<br />
<span><strong>译　　名　冬天的故事/冬日奇缘/冬季奇迹(台)/冬日传奇/冬日的故事<br />
片　　名　Winter’s Tale<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　奇幻/悬疑/剧情<br />
语　　言　英语<br />
字　　幕　<span><span>中英/英中/简/繁/英</span></span><br />
评　　分　6.2/10 from 17,178 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1837709" target="_blank">http://www.imdb.com/title/tt1837709</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<span><span>1280 x 720</span></span><br />
文件大小　2.59 GB<br />
片　　长　118 Min<br />
导　　演　阿齐瓦·高斯曼 Akiva Goldsman<br />
主　　演　柯林·法瑞尔 Colin Farrell ....Peter Lake<br />
　　　　　杰西卡·布朗-芬德利 Jessica Brown-Findlay ....Beverly Penn<br />
　　　　　罗素·克劳 Russell Crowe ....Pearly Soames<br />
　　　　　威尔·史密斯 Will Smith ....Judge<br />
　　　　　马特·波莫 Matt Bomer ....Peter’s Father<br />
　　　　　詹妮弗·康纳利 Jennifer Connelly ....Virginia Gamely<br />
　　　　　凯文·杜兰 Kevin Durand ....Cesar Tan<br />
　　　　　露西·格里菲斯 Lucy Griffiths ....Mrs. Lake<br />
　　　　　威廉·赫特 William Hurt ....Isaac Penn<br />
　　　　　凯文·考利甘 Kevin Corrigan ....Romeo Tan<br />
　　　　　格雷厄姆·格林 Graham Greene ....Humpstone John<br />
　　　　　爱娃·玛丽·森特 Eva Marie Saint ....Willa (Adult)</strong></span><br />
<br />
<span><strong><span>影片简介：</span></strong></span><br />
<br />
　　《冬日的故事》改编自小说家马克·哈普林同名畅销小说，讲述一名爱尔兰大盗与一位重病女子之间的爱情故事。故事背景设定与20世纪初，名叫彼得·雷克的大盗抢劫了一名年轻女子，但他意外爱上了这名女子，并希望借助自己“转世轮回”的特异功能拯救生患重病的爱人。<br />
<br />
　　主人公是一个叫做彼得·雷克（科林·法瑞尔 饰）的爱尔兰移民男子，他一开始在曼哈顿找了份机械师的工作，但后来被迫加入黑帮组织“短尾巴”（Short Tails），成为一名窃贼。然而不久他就得罪了黑帮老大（罗素·克劳 饰），不得不开始躲避“短尾巴”的追杀。一天，彼得在溜进报业大亨的房子行窃时，与其女儿贝弗利（杰西卡·布朗-芬德利 饰）一见钟情，然而贝弗利因肺病不久便去世了。之后彼得意外闯进了云墙，音讯全无，百年后他再次出现，但已不记得自己是谁……<br />
<br />
<span><strong><span>幕后花絮：</span></strong></span><br />
<br />
　　该片改编自小说家马克·哈普林的同名畅销小说，讲述一名爱尔兰大盗与一位重病女子之间的爱情故事。并且在这个爱情故事中融合了大量的超现实甚至“转世轮回”的特异功能的内容，一股浓郁的奇幻风令故事充满了想象的空间。<br />
<br />
　　作为曾以《美丽心灵》和《铁拳男人》两片荣膺奥斯卡金牌编剧的阿齐瓦·高斯曼的导演处女作，这部影片早在问世之初就引得不少的关注。而阿齐瓦·高斯曼此番执导筒的同时又担纲影片的编剧。将一段穿越百年的“纽约爱情故事”演绎得活色生香。<br />
<br />
　　主演阵容上，阿齐瓦·高斯曼同样找来了奥斯卡级别的巨星阵容：男一号由金球奖影帝柯林·法瑞尔担纲，女一号则是凭借热播英剧《唐顿庄园》中的三小姐西比尔的扮演者英国女星杰西卡·布朗-芬德利。前者的粗线条与后者的古典美可谓相得益彰。而配角阵容上则是标准的金光熠熠——与导演阿齐瓦·高斯曼紧密合作过的奥斯卡影帝罗素·克劳饰演片中的黑帮大哥；凭《美丽心灵》荣膺奥斯卡女配的詹妮弗·康纳利也倾情助阵；老影帝威廉·赫特以及票房灵药威尔·史密斯也都屈身在片中客串出演。<br />
<br />
　　另外，该片在配乐上也同样是奥斯卡级别的，由著名的“金手指”配乐大师汉斯·季默操刀，而预告片中使用的歌曲则是英伦民谣钢琴女声Birdy的最新单曲《Wings》。<br />
<br />
<span><strong><span>影片截图：</span></strong></span><br />
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
<br />',N'：《冬日的故事》改编自小说家马克·哈普林同名畅销小说，讲述一名爱尔兰大盗与一位重病女子之间的爱情故事。故事背景设定与20世纪初，名叫彼得·雷克的大盗抢劫了一名年轻女子，但他意外爱上了这名女子，并希望借助自己“转世轮回”的特异功能拯救生患重病的爱人。主人公是一个叫做彼得·雷克（科林·法瑞尔 饰）的爱尔兰移民男子，他一开始在曼哈顿找了份机械师的工作，但后来被迫加入黑帮组织“短尾巴”（Short Tails），成为一名窃贼。然而不久他就得罪了黑帮老大（罗素·克劳 饰），不得不开始躲避“短尾巴”的追杀。一天，彼得在溜进报业大亨的房子行窃时，与其女儿贝弗利（杰西卡·布朗-芬德利 饰）一见钟情，然而贝弗利',N'美国',N'1',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-612138-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888473&amp;k=b915a3f4d7f3be06a4a6daea03eb8641&amp;t=1412261770&amp;sid=9a9bBQN0hisF6eNF864pQpm%2B99AA7r46%2F84CwXQbr6f4mek',N'2014/10/2 22:57:36',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 479,N'【中12匪帮传奇热血动作】【匹夫】【BluRay-720P.MKV】【中字】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/pifu/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.10/pifu/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　匹夫/匹夫们的战争/匹夫有责<br />
片　　名　An Inaccurate Memoir<br />
年　　代　2012<br />
国　　家　中国<br />
类　　别　剧情/动作/战争/西部<br />
语　　言　普通话<br />
字　　幕　中文简繁<br />
评　　分　5.8/10 from 88 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2400407" target="_blank">http://www.imdb.com/title/tt2400407</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.79 GB<br />
片　　长　107 Mins<br />
导　　演　杨树鹏 Shupeng Yang<br />
主　　演　黄晓明 Xiaoming Huang&nbsp;&nbsp;....方有望<br />
　　　　　张译 Yi Zhang&nbsp;&nbsp;....高栋梁<br />
　　　　　张歆艺 Xinyi Zhang&nbsp;&nbsp;....方梓珍<br />
　　　　　王烈 Lie Wang&nbsp;&nbsp;....韩魁<br />
　　　　　包小柏 Tino Bao&nbsp;&nbsp;....陈郎中<br />
　　　　　倪景阳 Jingyang Ni&nbsp;&nbsp;....黑狗<br />
　　　　　孙磊 Lei Sun&nbsp;&nbsp;....岳三炮<br />
　　　　　张粤 Yue Zhang&nbsp;&nbsp;....良好<br />
　　　　　高群书 Qunshu Gao&nbsp;&nbsp;....侦缉大队长<br />
　　　　　江珊 Shan Jiang&nbsp;&nbsp;....侦缉队长太太<br />
　　　　　李子雄 Waise Lee<br />
　　　　　梁静 Jing Liang<br />
　　　　　马志明 Zhiming Ma</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　匪帮首领方有望（黄晓明饰）绑架了一个新郎官高栋梁（张译饰），高栋梁的铁血顽强打动了匪帮的“小姑奶奶”方梓珍（张歆艺饰），可是，没有人知道，高栋梁不仅仅是一个肉票那么简单……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
黄晓明蓄势待发 “接戏只为一个男人”<br />
<br />
　　备受瞩目的“匪帮大当家”黄晓明在影片中展现出不同于以往的奔放气质，他坦言自己“蛰伏一整年，就是为了起跳而下蹲，今年蓄势待发，很荣幸《匹夫》首当其冲，这次真是为电影拼了命了。”提到戏里戏外“大当家”的身份，黄晓明说：“因为我在家里就是长子长孙，身边有7个表弟，从小就习惯出头和管事，于是一下子就喜欢上这部电影中大当家的角色。”正是因为这份执拗的坚持，本来想挑选一位中年硬汉主演的杨树鹏也破格选用了黄晓明。<br />
<br />
　　而这次选择也让黄晓明与杨树鹏成了铁哥们儿，两个人在现场展现了惺惺相惜的情谊，黄晓明非常“深情”的牵着导演杨树鹏的手表白说：“我接这部戏只为一个男人。那就是杨树鹏，我觉得他是华语电影圈最年轻最帅的导演，我和他是一见倾心二见倾情，三见就上了他的贼床了。哦不，贼船了。”听闻这般玩笑话的插科打诨，导演反而换了一本正经的态度回应起来，盛赞黄晓明拥有老牌影星式的传统与敬业，从不迟到、从不在片场现看剧本，更用极端毅力节食和健身，“他面对压力和恶评，从不多说话，展现了风度和修养。”<br />
<br />
　　除主演黄晓明外，《匹夫》还剧集了一帮各具风格的演员。“北爱”搭档张译、张歆艺携手登场，大展不同以往的风度，张译表示自己饰演的角色很神秘；而张歆艺则出演黄晓明的妹妹，人称“小姑奶奶”，她笑称自己“负责在电影里犯混”。在荧屏上深受欢迎的两人，初次登陆大银幕，就遇到如此复杂的剧情和制作，两人都坦承“要有适应过程，被电影制作的精细和严谨感染，也对把握角色和处理表演有了新的认识”。 <br />
<br />
张译转战大银幕 自爆拍《匹夫》走出低谷<br />
<br />
　　凭借《士兵突击》、《我的团长我的团》、《雪花那个飘》、《北京爱情故事》等一系列热门影视剧，张译早已成为观众熟知并喜爱的演员。此次主演《匹夫》，则可以视为他转战电影大银幕的重磅之作，在采访中，主演兼副导演的王烈对张译的专业表演相当赞赏，并断言《匹夫》一定会成为张译的电影代表作。<br />
<br />
　　同时，张译也讲述了与《匹夫》的结缘过程，并自爆当时正在接触一个重要项目，为了参与其中甚至推掉了24部剧集的邀约，但最终却阴差阳错的跟对方擦肩而过，加上其他种种原因，让他陷入到人生的低谷期。在机缘巧合之下，张译与杨树鹏导演走到了一起，最终促成了现在的《匹夫》，而张译不仅是第一个进组的演员，也成为影片的重要主线人物。<br />
<br />
张译黄晓明互相爆料 挨打吃土玩命跑成三宝<br />
<br />
　　在发布会现场，黄晓明、张译等主角也表现出了极大的默契，在评价各自的角色和剧情时，张译打趣的说，因为与黄晓明的休息室只有一帘之隔，所以他经常能够听到黄晓明在隔壁发出“可疑的低吟”，拉开之后才发现他只要没戏就会留在房间健身、学英文，相当辛苦又敬业，说完之后他还相当不客气的上手“袭胸”，来检验黄晓明的健身成果。而黄晓明也爆出张译电脑里存了很多电影，没戏的时候都是窝在房间看电影揣摩表演，非常努力，但偶尔也会有“叮叮当当”的声音，看后才知道他原来是自己在房间里炒菜做饭。<br />
<br />
　　值得一提的是，“匹夫帮”三位主角也有各自的“三宝”，黄晓明的是：步枪、烈酒、大皮袄，张歆艺的是：辣酱、面膜、爱叨叨，而到了张译这里，则成了：挨打、吃土、玩命跑三个相当“悲催”的“三宝”。如此“三宝”，也透露了张译拍摄《匹夫》可谓吃尽苦头，而吃苦绝不是《匹夫》的最大亮点，影片紧凑的剧情、热血的战争场面和独有的基调才是其选在“五一档”的最大法宝。 <br />
<br />
张译十秒念百字台词 贯口功夫堪比《大腕》李成儒<br />
<br />
　　作为《匹夫》的线索人物，全片在张译的讲述下展开故事，而除了为电影配画外音外，张译在片中的一段贯口表演则令人赞叹，除了台词功力会让人惊得瞠目结舌外，剧情设计还令人啼笑皆非。在已经曝光的片花中可以洞悉一二，张译饰演的角色被黄晓明饰演的二当家用枪相逼，他必须用最快的时间说出所有想说的话，然而当他一口气快速说完所有想说的话的时候，大当家黄晓明却并未挺清楚，大声呵斥他：“重说!”仅看预告片就能感受到十足的笑果!<br />
<br />
　　张译称所有演员为了拍这部电影都是体无完肤变“匹夫”的。不仅挨打、被绑、被吊，还要被埋在土里，非常辛苦，但他很享受这样的角色。张译称自己希望塑造真实、热切、热烈的人。面对记者是否想演“高富帅”角色的问题，张译自嘲：“如果我演高富帅，你们信么?塑造好一个人物，让观众感觉到一种真实的存在，就是我的成功。”张译更笑言自己的内心里住着一个“从不狂妄的屌丝”，他会用更多鲜活的角色证明“长得不好看也有权利潇洒。”<br />
<br />
黄晓明演技稳重有喜感&nbsp;&nbsp;张译狂唱Rap“透剧情”<br />
<br />
　　片中黄晓明与红尘女子温柔乡的“缠绵”，居然对风情女子说出一句“你是条汉子。”面对妹妹的“反叛”他更是兄长范儿十足：“咱爹娘也不是笨蛋啊，怎么生出你这么个笨货！”加上最后对张译的一句：“那你就是诓我了？”——大当家方有望的表演也充满喜感，跳脱又不失沉稳。<br />
<br />
　　此外，地道中风格化极强的胖厨娘，包小柏阴柔的两句：“有本事你摸我啊！”“我是爷们儿！”——战火中的小细节却又让人悲喜交加。<br />
<br />
黄晓明变成健身狂&nbsp;&nbsp;随时随地健身忙<br />
<br />
　　“导演，我是不是应该身先士卒一点？”，“嗯，好！”随着黄晓明和导演杨树鹏的一唱一和，《匹夫》剧组瞬间变成健身房，黄晓明双手握着最重的一对哑铃在片场见缝插针，随时随地上演健身秀。从大厅到浴室，从火光四射的打铁房到不能直腰的地道；从站着到跪着，从跪着到趴着；从军装到浴袍，从小马甲到裸身上阵。黄晓明的热情引爆了“匹夫帮”健身的狂热，大当家也开始客串起健身教练。“教你们怎么练哑铃，握拳抬高，撑双杠，平着练，练胸肌就这三个动作。”<br />
<br />
　　在黄晓明的指导下，演员王烈和孙磊也摩拳擦掌，操起装满土的筐，打铁的锤就开始练。“健身，不知疲倦的健身。”张译喊着口号，自成一派。不过他的杀手锏却只是在拍戏间歇不知疲倦的蹦蹦跳跳，下蹲起立，甚至在牛圈里对着黄牛就开始蹦起来。功夫不负有心人，“匹夫帮”可以说是个个练得身强体壮，黄晓明的六块腹肌如假包换，“大当家”更表示对这种纯爷们儿之间激情四射的拼搏精神非常认可，并对镜头开玩笑：“每部戏都有一点儿小腐，不是一件挺有意思的事情嘛。” <br />
<br />
杨树鹏逗趣没正形 张译张歆艺欢喜冤家闹不停 <br />
<br />
　　“这戏吧，导演没正形爱开玩笑，各种玩笑和大家一开，现场就活跃了。”特辑中，张译又欢喜又略带无奈的回忆。据悉，《匹夫》导演杨树鹏天生幽默，爱玩爱闹，在片场时不时插科打诨，整蛊逗人。排戏时他亲自上阵，依依呀呀和演员玩起了“过五关斩六将”；而教演员使枪时，有模有样却又时常被枪“玩弄”，当众出糗。在杨树鹏营造的轻松欢快氛围下，匹夫帮成员都幽默细胞大爆发。张译张歆艺甚至和道具羊打成一片。只见张歆艺一边咬着道具苹果送到张译抱着的小白羊嘴里，一边叨叨着：“你觉得你好意思吗？它们俩都没得吃，你一个人咔咔的吃，这样好吗？”而一旁的黄牛和小猴子都只能眼巴巴各种羡慕嫉妒恨。“我的道具让我的道具羊吃了！”等到要拍戏时张歆艺才发现道具苹果已被小羊斩获。这还不够，“它就啃了一边，你吃另一边不就好了吗？”张译又故意使坏——两人你来我往的“过招”，让片场欢乐不断。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font> <br />
<br />
·《匹夫》是一部男性气质极重的电影，谈及片名究竟是何含义，导演杨树鹏表示：“匹夫二字词性复杂，它可以是褒义的、中性的，甚至是贬义的，电影里的角色也是这样复杂，他们虽是底层人物，但却有勇气，有担当，古人说匹夫之怒，血溅五步，就是这个意思。”<br />
<br />
·“少马爷”马志明、导演高群书、管虎的妻子梁静以及“甘草”港星李子雄均在本片中客串。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：匪帮首领方有望（黄晓明饰）绑架了一个新郎官高栋梁（张译饰），高栋梁的铁血顽强打动了匪帮的“小姑奶奶”方梓珍（张歆艺饰），可是，没有人知道，高栋梁不仅仅是一个肉票那么简单……幕后制作：黄晓明蓄势待发 “接戏只为一个男人”备受瞩目的“匪帮大当家”黄晓明在影片中展现出不同于以往的奔放气质，他坦言自己“蛰伏一整年，就是为了起跳而下蹲，今年蓄势待发，很荣幸《匹夫》首当其冲，这次真是为电影拼了命了。”提到戏里戏外“大当家”的身份，黄晓明说：“因为我在家里就是长子长孙，身边有7个表弟，从小就习惯出头和管事，于是一下子就喜欢上这部电影中大当家的角色。”正是因为这份执拗的坚持，本来想挑选一位中年硬汉主演的杨树',N'中国',N'剧情/动作/战争/西部',N'1280 x 720',N'2012',N'http://www.lwgod.com/thread-611644-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887707&amp;k=a0d857454c2bc18333905ab3d3adedee&amp;t=1412261767&amp;sid=8e48aIBbKibwmMpnnba7ikSXvF9N%2F%2BAoNpq7vXegUHvyW1M',N'2014/10/2 22:57:37',2)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 480,N'【经典必看神作】【窃听风云1重压】【BluRay-720P.MKV】【双语】',N'<font color="blue"><font size="5">蓝光原盘高码最新重新压制！<br />
质量比几年前版本好太多，建议重下收藏！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/qieting1/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.15/qieting1/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　窃听风云<br />
片　　名　Overheard<br />
年　　代　2009<br />
国　　家　中国香港<br />
类　　别　动作/剧情/惊悚<br />
语　　言　<font color="red"><font size="3">国语粤语双音轨</font></font><br />
字　　幕　中文简繁<br />
评　　分　7.2/10 from 1,705 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1349853" target="_blank">http://www.imdb.com/title/tt1349853</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.70 GB<br />
片　　长　100 mins<br />
导　　演　麦兆辉 Siu Fai Mak<br />
　　　　　庄文强 Felix Chong<br />
主　　演　刘青云 Ching Wan Lau<br />
　　　　　古天乐 Louis Koo<br />
　　　　　吴彦祖 Daniel Wu<br />
　　　　　张静初 Jingchu Zhang<br />
　　　　　方中信 Alex Fong<br />
　　　　　林嘉华 Ka Wah Lam<br />
　　　　　李子雄 Waise Lee<br />
　　　　　陆诗韵 Luk Sharon<br />
　　　　　陈伟霆 Weiting Chen<br />
　　　　　王敏德 Michael Wong<br />
　　　　　龚慈恩 Mimi Chi Yan </strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　高科技侦讯揭秘香港股市“黑暗”内幕，个人贪念引爆金融界山崩地裂！<br />
<br />
　　全球金融市值一度超越二十万亿的香港证券市场，是地球上最重要资金集中地！市场气势旺盛，交投炽热。引来不少金融大鳄的觊觎，在法律空隙中钻营灰色地带，图以分一杯羹。其中头号目标是有绰号“老板”(王敏德饰)之称的幕后黑手！警方调查上市公司“风华国际”涉嫌内幕交易案，成立行动代号为“追风”窃听小组全力侦察。<br />
<br />
　　窃听精英梁俊义 (刘青云饰)是小组的主管，行动中他与同袍老警员杨真(古天乐饰)、新扎师兄、网络天才林一祥(吴彦祖饰)，负责监听“风华国际”几个高层人员的办公室及会议室里的电话系统。三人小组乔装进入“风华国际”，巧妙地布置下各种偷听及监视仪器的疑阵，展开窃听行动。<br />
<br />
　　一次偶然的机会，三人从窃听仪器中，窃听到“风华国际”几个高层人员正计划将公司股价，从0.2港元钱炒高至1.2元。因为个人私欲，三人决定对上司隐瞒消息，然后在股票市场下注，赚下这笔意外之财，却不料，螳螂捕蝉黄雀在后，三人的这次秘密行动早已落入他人的观测之中……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　无所不在的窃听<br />
<br />
　　《窃听风云》中，刘青云、吴彦祖、古天郎乐三人组成的情报组负责为商业罪案调查科查马志华、罗耀明等金融大鳄交易过程中的黑幕。影片展示了针孔摄像头、窃听器等专业机器并不新鲜，不过，简单如一部手机都可以成为窃听器的场面让人觉得害怕：只要在监听器中输入对方的手机号码，就可以听到对方身边的一切声音，毫无秘密可言。据吴彦祖介绍，就算关掉了手机也没有用，它一样会对外传送你身边的所有声音，除非你把电池拆掉。<br />
<br />
　　跟手机比起来，装有窃听器的打火机更不起眼，影片中也将这个吓人的真相呈现出来：只要将监听器调到跟这个火机发出信号一致的频道，你就可以听到这个火机旁边人的对话，信号十分清晰，而且极其便宜，影片中吴彦祖、古天乐等人就是这样偷听到了一对男女同事之间的私情。<br />
<br />
　　延续香港警匪片血脉<br />
<br />
　　香港警匪片作为成熟的华语片种，已经从当年《龙虎风云》《野兽刑警》《紫雨风暴》《大事件》《无间道》的警匪持枪街头对战走向现代高智商高科技犯罪，警察形象也变得戴上斯文眼镜斗勇又斗智，《窃听风云》为延续香港警匪片的优良血脉，力邀刘青云、古天乐、吴彦祖三位顶级型男同时出演“坏”警察，成为09年暑期华语电影的最大亮点。影片开场十分钟，片中未出现一句台词，全凭演员安装窃听装置的娴熟表演和紧张音乐的带动剧情，三大型男一出场便力拼演技，吊起观众兴趣。而最让大家惊喜的当属该片的立意，片方邀请“《无间道》系列之父”麦兆辉和庄文强共同编导，讲述了三名警察本为监听取证，但却因贪念最终利用“窃听”走上犯罪道路的全过程，该桥段比当年“麦庄”对《无间道》中警匪双方各有卧底的精心安排有过之而无不及，可谓一大突破。也有观众看完影片表示，片中警察利用高科技犯罪等一些列安排都剑指时弊，针对了观众的心理，而操纵股市内幕更似乎有影射黄光裕之嫌，引得观众共鸣。<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
　　《窃听风云》，是“无间道”和“门徒”两大班底的鼎力制作，电影导演麦兆辉、庄文强是《无间道》系列的金牌编剧，而监制则是成功执导《门徒》的尔冬升。另外这也是内地资方保利博纳首次主导投资的港片制作，同时保利拥有该片的最终版权，负责海外全盘发行业务，有此可见内地公司的地位的转变，从附属慢慢到主导的地位。<br />
<br />
　　电影以金融犯罪的题材，直指社会现实，如今全球遭受金融危机的施虐，同时金融犯罪，操纵股市也曝光媒体，如最近黄光裕，荣智健都因涉嫌“违规”接受调查，而这些在片中都有类似的描述。对于时代感的把握，有助于捕获当下观众的心。<br />
<br />
　　其外，新世纪以来的《无间道》和《门徒》都为港片带来了新气息，角色从街头的鲁莽江湖气，变得优雅从容，登堂入室。群戏和曲折剧情，同样沿袭《无间道》和《门徒》的风格，而本片有四大男星坐镇演出，依次为：刘青云，古天乐，吴彦祖和方中信，对于各位的演技， 都是有力保障。<br />
<br />
　　作为另外的两个出品方，银都机构和天娱传媒，同样不可小视，先说银都机构，是1982年由长城、凤凰和新联影业三家公司合并而成，作为注册在港的中资背景的电影公司，虽不及邵氏，嘉禾以及新艺城和永盛那般被人熟知，但是随着近年来，港片融入内地的加快和深入，银都机构的桥梁作用则完全被凸显出来，基本上银都机构成了港片进入内地的代言人，而其董事长宋岱则被视为港片的“贵人”，可见银都机构的业内影响力。而天娱传媒作为湖南卫视的选秀节目的衍生公司，擅长艺人经纪的经营，近期涉及影视投资，《窃听风云》正是天娱的首次携手港片，当然这一切都有赖于保利博纳的一手促成。<br />
<br />
　　另外保利博纳即将开拍《十月围城》，作为陈德森的雄心之作，题材围绕几位侠义之士保护国父孙中山的故事展开，早于03年便已启动，但是投资人曾献基的突然自杀，让该片被迫无限期搁置。如今在保利的牵手下，陈可辛提刀相助，成为该片监制，重启拍摄计划，对于导演和影迷而言都是幸事一件。据了解可能是纯武打片，比《投名状》的动作戏火爆数倍。<br />
<br />
　　此外，作为承担《窃听风云》拍摄制作的无限映画，是尔冬升和陈望华与1992年成立的独立制片公司，如今已是仅次于杜琪峰领衔的“银河映像”，诸如《新不了情》、《烈火战车》和《旺角黑夜》均是其代表作品，为高度商业化的香港电影注入了难得的温情主义。<br />
<br />
　　对于无限映画而言，09年不仅有《窃听风云》，当家人尔冬升亲执导筒的《枪王之王》也在启动中，同时赵崇基的《一路有你》，麦启光的《后海的情歌》也都在准备中，择时而动……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：高科技侦讯揭秘香港股市“黑暗”内幕，个人贪念引爆金融界山崩地裂！全球金融市值一度超越二十万亿的香港证券市场，是地球上最重要资金集中地！市场气势旺盛，交投炽热。引来不少金融大鳄的觊觎，在法律空隙中钻营灰色地带，图以分一杯羹。其中头号目标是有绰号“老板”(王敏德饰)之称的幕后黑手！警方调查上市公司“风华国际”涉嫌内幕交易案，成立行动代号为“追风”窃听小组全力侦察。窃听精英梁俊义 (刘青云饰)是小组的主管，行动中他与同袍老警员杨真(古天乐饰)、新扎师兄、网络天才林一祥(吴彦祖饰)，负责监听“风华国际”几个高层人员的办公室及会议室里的电话系统。三人小组乔装进入“风华国际”，巧妙地布置下各种偷听及监视',N'中国香港',N'动作/剧情/惊悚',N'1280 x 720',N'2009',N'http://www.lwgod.com/thread-612135-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888472&amp;k=d216dd6e8bbe0ca9be36e1991a6380eb&amp;t=1412261774&amp;sid=c1bbXiYfFh7IVQLHFU%2F14SWXtV0F11w0OtD4o17QKYhqRPw',N'2014/10/2 22:57:37',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 481,N'【人人珍藏必备】【变形金刚3重压】【BluRay-720P.MKV】【三语】',N'<font color="blue"><font size="5">最新蓝光原盘高参超高码重新压制！<br />
效果比以前版本强太多！包含两条国配！<br />
北译国配就是影院公映时的国配，上译国配为电影频道播出时的国配！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/bianxingjingang3/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/bianxingjingang3/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　变形金刚3/变形金刚3：黑月降临(港)/变形金刚3：月黑之时<br />
片　　名　Transformers Dark Of The Moon<br />
年　　代　2011<br />
国　　家　美国<br />
类　　别　动作/冒险/科幻<br />
语　　言　<font color="red"><font size="3">英语双国语三音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.4/10 from 252,299 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1399103" target="_blank">http://www.imdb.com/title/tt1399103</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　5.76 GB<br />
片　　长　154 Mins<br />
导　　演　迈克尔·贝 Michael Bay<br />
主　　演　希亚·拉博夫 Shia LaBeouf&nbsp;&nbsp;....Sam Witwicky<br />
　　　　　罗茜·汉丁顿-惠特莉 Rosie Huntington-Whiteley&nbsp;&nbsp;....Carly<br />
　　　　　乔什·杜哈明 Josh Duhamel&nbsp;&nbsp;....Major William Lennox<br />
　　　　　泰瑞斯·吉布森 Tyrese Gibson&nbsp;&nbsp;....Robert Epps<br />
　　　　　雨果·维文 Hugo Weaving&nbsp;&nbsp;....Megatron (voice)<br />
　　　　　伦纳德·尼莫伊 Leonard Nimoy&nbsp;&nbsp;....Sentinel Prime (voice) (rumored)<br />
　　　　　帕特里克·德姆西 Patrick Dempsey&nbsp;&nbsp;....Dylan<br />
　　　　　约翰·马尔科维奇 John Malkovich&nbsp;&nbsp;....Bruce<br />
　　　　　肯·郑 Ken Jeong<br />
　　　　　弗兰西斯·麦克多蒙德 Frances McDormand&nbsp;&nbsp;....Marissa Faireborn<br />
　　　　　艾伦·图代克 Alan Tudyk&nbsp;&nbsp;....Dutch<br />
　　　　　约翰·特托罗 John Turturro&nbsp;&nbsp;....Simmons<br />
　　　　　弗兰克·维尔克 Frank Welker&nbsp;&nbsp;....Soundwave (voice)<br />
　　　　　汤姆·肯尼 Tom Kenny&nbsp;&nbsp;....Wheelie (voice)<br />
　　　　　彼特·库伦 Peter Cullen&nbsp;&nbsp;....Optimus Prime (voice)</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　第三集里，擎天柱将率领着“汽车人”继续与第二集失败后卷土重来的“霸天虎”作战。“汽车人”与“霸天虎”被卷入了美苏之间危险的“太空竞赛”中，地球人山姆又一次要向他的机器人朋友们伸出援助之手。这一集中将会有新的变形金刚登场，包括大反派“震荡波（Shockwave）”，他在汽车人与霸天虎来到地球鏖战时接管了塞伯坦星球。<br />
<br />
　　距今50多年前，一艘来自赛博坦的飞船坠落月球，由此引发了美苏两国的太空竞赛。人类争相登上月球，只为一探飞船残骸中的秘密。时间回到21世纪初，经过几番征战，汽车人终于挫败霸天虎的入侵，继而与人类合作，共同保卫美丽的地球。然而发生在切尔诺贝利的事件却将尘封已久的月球计划重新摆到桌面。为了防止霸天虎找到能量柱为非作歹，擎天柱与战友飞赴月球，更从当年的飞船中救出了汽车人的先代领导者——御天敌。御天敌是能量柱的发明者，将上百根能量柱集合在一起便可制造太空桥，实现物质的瞬间传送。<br />
<br />
　　忙着找工作以及和女友卡莉（罗茜·汉丁顿-惠特莉Rosie Huntington-Whiteley 饰）经营爱情的山姆（希亚·拉博夫 Shia LaBeouf 饰）无可避免地卷入其中，他渐渐发现霸天虎的操纵一切的阴谋，却不知更大的阴谋和危机隐藏在那月影背后…… <br />
<br />
<font color="red"><strong><font size="3">一句话评论：</font></strong></font><br />
<br />
惊人的动作场面。 <br />
——娱乐在线 <br />
<br />
科幻电影里最壮观的一幕出现了。 <br />
——《纽约时报》 <br />
<br />
故事简单，场面壮观。 <br />
——《娱乐周刊》 <br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　汽车人与霸天虎终极决战<br />
<br />
　　1984年，孩之宝与TAKARA合作开发了一系列的玩具和动画片，由于玩具的出发点是可变形为机器人的汽车、飞机，因此孩之宝还给这些玩具们设定了一个故事背景－－他们都是外星人，具有高等智慧和科技，变身是自己的独特技能，而这群可以变形的玩具，被统称为变形金刚。在1986年的动画大电影之后，20年来孩之宝一直在筹谋本片的真人电影版，但却因为各种原因一直无法成形，直到遇到好莱坞的殿堂级导演史蒂文·斯皮尔伯格之后，对《变形金刚》非常感兴趣的斯皮尔伯格和因《石破天惊》而成名的导演迈克尔·贝合作，将本片的拍摄正式提上议程。<br />
<br />
　　2007年，第一部真人电影版的《变形金刚》在暑期档横空出世，旋即在全球拿下超过7亿的票房成绩；两年后的第二集也不甘示弱，单是北美就拿下4.02亿美元票房，全球更是达到8.36亿。今年，系列三部曲的最后一作《变形金刚3》即将公映。谈及这部电影，三部曲的导演迈克尔·贝回顾道：“从开始接触《变形金刚》开始，一眨眼已经六年过去了。在这六年和变形金刚们陪伴度过的日子里，我有太多难以忘怀的事情。我不止一次想放弃，想中断，想把导演交给其他人，但我最后还是决定坚持到最后，因为这个题材太独一无二。它是我年轻时候非常喜欢的玩具，能够把这些玩具折腾到大银幕上，让我和观众们一起HIGH，这感觉实在是太棒了。制作第一集的时候我们还并不清楚这个系列能进行多久，我甚至都没有拍续集的打算，因为我并不清楚现在观众的口味，他们是否还会喜欢这些几十年前的玩具呢？大家看到可以变形的汽车拯救世界，会不会觉得太搞笑了？还好，事实证明我的担心都不重要，这部电影获得了大家的认可。”<br />
<br />
　　《变形金刚》取得爆棚票房之后，《变形金刚2》虽然在票房上进一步攻城掠池，但在口碑上却不如第一集。面对这个现状，迈克尔·贝分析道：“在做第二集的时候，我调整了思路。我想通过更大的场面和动作去展现出汽车人与霸天虎的对决，所以在第二集里双方对决的场面非常庞大，也获得了观众的认可。但另一方面我不得不减少在剧情上的转折，在这一集里我们为场面而妥协了剧情。其实在原来的剧本里，赛博坦星球会刻画得比较多，在上面也发生了许多事，但后来很多戏份不得不做出删减，这也令我感到遗憾。我已经比较清醒的意识到了第二集存在的问题，所以在《变形金刚3》里，我会对故事与场面的联系做出调整，大家会在这一集里欣赏到一个完整的故事，它是整个三部曲的终结，不会再结尾像第二集那样欲说还休。至少这三集变形金刚的电影已经彻底结束了。”<br />
<br />
　　监制了《变形金刚》系列，斯皮尔伯格自2008年的《夺宝奇兵4》之后一直没有新作，而在这四年的时间里，他究竟为《变形金刚》投入了多少热情呢？对于这个大卖的三部曲，斯皮尔伯格说道：“这部电影在90年代我就曾经想过拍摄，那是在《终结者2》之后，机器人的电影我又有了一些新的想法，但碍于技术等原因，一直没有做成，直到我和迈克尔·贝碰头之后，他当时对《变形金刚》也很感兴趣，所以我们就一起把这个项目启动了。我觉得对这个系列，我的定位很简单：它会让那些从小玩这些玩具长大的孩子们，现在的成年人，再度去回味当年玩玩具时候的那种感动。我们一直在调整策略，包括最开始激烈的争执，究竟是采取动画版里简单的机器人造型，还是全新打造，以及在剧情上面，地球人的装备究竟和赛博坦星差距多少？主角在当中究竟会起到什么样的作用？我和迈克尔·贝讨论了许多类似这样的细节，经过了第一集和第二集的磨合，在第三集里，我们会以一种比较完美的状态去呈现。”<br />
<br />
　　是终章还是开始？<br />
<br />
　　从一开始拍摄《变形金刚3》，迈克尔·贝就透露了这将是系列最后一部的计划，不过对于如此卖座的电影系列，拍三部就罢手显然是不太可能的事，对于这一点，影片的监制史蒂文·斯皮尔伯格说道：“我只能说对于这个故事而言，到《变形金刚3》就已经停止了。前面三集讲了一个完整的故事，它暂时没有继续拍摄的计划。但我觉得无论从影迷的角度还是公司的角度，这个系列都值得再延续下去，但迈克尔·贝有许多想法，他需要抽出时间来做自己想做的其他电影，所以我很尊重他的选择，也许我会执导，也会我们还会和其他导演碰头商量，这些都还是未知数，可以肯定的是，《变形金刚3》是目前这个故事的终结。也许在未来的某一天，它还会以新的面孔出现在大众眼前。”<br />
<br />
　　因《变形金刚》系列而大热的小生希亚·拉博夫近年来的事业状态呈现迅猛上升态势，在《鹰眼》《夺宝奇兵4》《华尔街2》里都有不错表现的他，这次在《变形金刚3》中再度独挑大梁。对于这部带给他无数机会和眼球的卖座大片系列，希亚·拉博夫说道：“我对《变形金刚》的感情已经不能简单的用几句话来衡量了。这部电影让我意识到原来做一个演员可以如此的令人激动和满足，尤其是当我自己在电影院里看到，银幕上的我和擎天柱站在一起的时候，因此我对这个系列就这么结束感到非常的难以割舍。我很希望《变形金刚3》成为大家铭记的电影，这不是一部简简单单的科幻片，它糅合了多种电影风格，再加上绚丽的效果，完全超越了过去的两集。我觉得导演在拍《变形金刚3》的时候带着许许多多的情怀，我在拍摄过程里，能感觉到导演的许多想法。这是一部接近于‘终极’效果的科幻动作大片，它可以成为同类电影里的一个标杆。希望能在未来某日，这部电影能够继续拍摄下去，即便主演不再是我，我也很期待它在银幕上的出现。”<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·《变形金刚3》是迈克尔·贝执导的《变形金刚》真人电影系列最后一部，《变形金刚》也是迈克尔·贝执导的第一部三部曲电影。<br />
<br />
·因为3D技术的不断普及，本片在拍摄之前就定下了无论是实际拍摄还是后期转制，最终都要以3D形式进行上映。一开始迈克尔·贝因为对3D并不熟悉，持谨慎态度，但为詹姆斯·卡梅隆开发3D摄影机的文斯·佩斯加盟本片，使得迈克尔·贝最终还是决定使用3D进行拍摄，因此本片将以2D、3D、3DIMAX三种规格进行放映。<br />
<br />
·罗茜·汉丁顿-惠特莉扮演的凯莉，原型来自于1984年《变形金刚》动画片的第二季出场的女性角色。<br />
<br />
·第三集的副标题“月黑之时”指的是一段时间内月亮有三天被遮住而消失，因而称为“无月之日”，它象征着一个时代的结束与一个新的开始。<br />
<br />
·前两集的编剧罗伯托·奥奇和艾里克斯·库兹曼也为本片进行了前期的剧本工作，但随后就被弃用，曾经参与过《变形金刚2》编剧工作的伊伦·克鲁格最终完成了本片的剧本。<br />
<br />
·梅根·福克斯退出《变形金刚3》的拍摄之后，杰玛·阿特登，阿什莉·格林，布鲁克林·德克尔，米兰达·克尔，芭儿·莱法利，艾梅柏·希尔德，卡米拉·贝勒，凯蒂·卡西迪，海迪·蒙塔格，安娜·肯德里克等演员都为这个角色进行过试镜，不过最后还是被罗茜·汉丁顿-惠特莉赢得。<br />
<br />
·千斤顶在1984年的动画大电影版里变身之后是蓝旗亚的跑车，但在现在的电影版里则成了奔驰的跑车。<br />
<br />
·在预告片里出现的阿波罗11号登月等剧情，其实在《变形金刚》第一集公映时所发布的前传小说《昔日幽灵》里已经涉及。<br />
<br />
·《变形金刚3》在芝加哥拍摄的时候，在一段特技飞车的过程里，因为电缆滑落而造成现场的一位临时演员Gabriela V. Cedillo受伤，Gabriela V. Cedillo被击中头颅，在紧急送往医院治疗后，虽然生命脱离危险，但最终造成永久性脑损伤，左半身瘫痪和左眼视力下降的后遗症。派拉蒙为此支付了未公开具体数字的巨额医疗费。<br />
<br />
·为了在密尔沃基艺术博物馆拍摄两天的戏份，剧组支付了100万美元。<br />
<br />
·迈克尔·贝拍摄本片时参考了《黑鹰坠落》的部分场景，此外本片里也用对白向迈克尔·贝喜爱的电影《现代启示录》做了致敬。<br />
<br />
·本片的汽车人方的车辆都进行了一定程度的升级。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：第三集里，擎天柱将率领着“汽车人”继续与第二集失败后卷土重来的“霸天虎”作战。“汽车人”与“霸天虎”被卷入了美苏之间危险的“太空竞赛”中，地球人山姆又一次要向他的机器人朋友们伸出援助之手。这一集中将会有新的变形金刚登场，包括大反派“震荡波（Shockwave）”，他在汽车人与霸天虎来到地球鏖战时接管了塞伯坦星球。距今50多年前，一艘来自赛博坦的飞船坠落月球，由此引发了美苏两国的太空竞赛。人类争相登上月球，只为一探飞船残骸中的秘密。时间回到21世纪初，经过几番征战，汽车人终于挫败霸天虎的入侵，继而与人类合作，共同保卫美丽的地球。然而发生在切尔诺贝利的事件却将尘封已久的月球计划重新摆到桌面。为了',N'美国',N'动作/冒险/科幻',N'1280 x 720',N'2011',N'http://www.lwgod.com/thread-611561-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887609&amp;k=95b705af0d0682422a928aa2feb7cded&amp;t=1412261768&amp;sid=40d7xue5dgk6o%2BLIlbds2s2BT%2Bt5C0mX%2Bh4sL%2FKiFlWMVWY',N'2014/10/2 22:57:37',3)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 482,N'【美14最新烧脑力作】【思维空间】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/anna/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/anna/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　思维空间/安娜/深深脑海里<br />
片　　名　Mindscape<br />
年　　代　2013<br />
国　　家　美国/西班牙/法国<br />
类　　别　剧情/惊悚<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.4/10 from 4,987 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1715336" target="_blank">http://www.imdb.com/title/tt1715336</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.38 GB<br />
片　　长　99 Min<br />
导　　演　Jorge Dorado<br />
主　　演　泰莎·法梅加 Taissa Farmiga ....Anna<br />
　　　　　诺亚·泰勒 Noah Taylor ....Peter Lundgren<br />
　　　　　马克·斯特朗 Mark Strong ....John<br />
　　　　　茵迪拉·瓦玛 Indira Varma ....Judith<br />
　　　　　布莱恩·考克斯 Brian Cox ....Sebastian<br />
　　　　　Clare Calbraith ....Jaime<br />
　　　　　杰西卡·巴登 Jessica Barden ....Mousey<br />
　　　　　Sanny van Heteren ....Samantha Harris<br />
　　　　　Saskia Reeves ....Michelle Greene<br />
　　　　　Rod Hallett ....Detective Worner<br />
　　　　　Richard Dillane ....Robert Greene<br />
　　　　　阿尔贝托·阿曼 Alberto Ammann ....Tom Ortega</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　约翰有能看到别人记忆的特殊能力，他的新案子调查对象是个聪颖却有精神问题的十六岁少女安娜。约翰必须解开谜团：安娜究竟是反社会还是神秘精神创伤的受害人……<br />
<br />
　　思维空间是以一个故事引出的电影，安娜用她的头脑将约翰带入了一个他设定的场景内，让约翰按照她无形的引导来完成自己的自由……<br />
<br />
　　有一群被称为记忆侦探的人，他们有回到人记忆里场景的能力。主人公约翰接到一个案子，被调查者是一名16岁的女孩Anna，女孩被认为是有精神病，实际上她有着超高的智商，面对约翰的记忆探寻，她一步步把约翰拉入深渊……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：约翰有能看到别人记忆的特殊能力，他的新案子调查对象是个聪颖却有精神问题的十六岁少女安娜。约翰必须解开谜团：安娜究竟是反社会还是神秘精神创伤的受害人……思维空间是以一个故事引出的电影，安娜用她的头脑将约翰带入了一个他设定的场景内，让约翰按照她无形的引导来完成自己的自由……有一群被称为记忆侦探的人，他们有回到人记忆里场景的能力。主人公约翰接到一个案子，被调查者是一名16岁的女孩Anna，女孩被认为是有精神病，实际上她有着超高的智商，面对约翰的记忆探寻，她一步步把约翰拉入深渊……影片',N'美国/西班牙/法国',N'剧情/惊悚',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-611951-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888101&amp;k=142dace6ad681bb264e019e94ea6a0c1&amp;t=1412261775&amp;sid=be93oXUIg43O0t1Ht1e43xUxa%2BZIWhbjxlWhdB30fFaHrdg',N'2014/10/2 22:57:38',0)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 483,N'【中13智破日生化兵团】【厨戏痞】【BluRay-720P.MKV】【中字】',N'<font color="blue"><font size="5">本片在豆瓣网有7.0高分，不知为何在IMDB只有5.4分！<br />
个人认为本片是个超级好片！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/chuxipi/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.09/chuxipi/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　厨子戏子痞子/厨戏痞/厨子·戏子·痞子/虎烈拉<br />
片　　名　The Chef, the Actor, the Scoundrel<br />
年　　代　2013<br />
国　　家　中国<br />
类　　别　喜剧/动作<br />
语　　言　普通话<br />
字　　幕　中文简繁<br />
评　　分　5.4/10 from 270 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2645044" target="_blank">http://www.imdb.com/title/tt2645044</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.83 GB<br />
片　　长　108 Mins<br />
导　　演　管虎 Hu Guan<br />
主　　演　刘烨 Ye Liu&nbsp;&nbsp;....厨子<br />
　　　　　张涵予 Hanyu Zhang&nbsp;&nbsp;....戏子<br />
　　　　　黄渤 Bo Huang&nbsp;&nbsp;....痞子<br />
　　　　　梁静 Jing Liang&nbsp;&nbsp;....傻子<br />
　　　　　田中千绘 Chie Tanaka&nbsp;&nbsp;....柳田优子<br />
　　　　　王迅 Xun Wang&nbsp;&nbsp;....汉奸侦缉队队长<br />
　　　　　木幡龙 Ryu Kohata</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　民国三十一年，“虎烈拉”横行华北。北平城被日军封城。城外闹瘟疫，城里闹饥荒。流氓（黄渤 饰）饿得不行，蹲在胡同里劫大户，没想到却把两个日本人劫到了一家日本料理店里。店里只有店主夫妇和一个驻店唱戏的戏子。中国店主夫妇，厨子（刘烨 饰）胆小如鼠，厨子老婆（梁静 饰）残疾弱智。戏子（张涵予 饰）颠三倒四，神神叨叨。怎么处理这俩日本人成了难题。<br />
<br />
　　为了让其他俩人听自己的，流氓亮出枪，店主拔出刀，戏子干脆摸出来一手榴弹。三人陷入僵局，料理店外，此时日军和城中伪军正在进行全城地毯式搜查。之后事态发展却出人意料，闹剧迭出，情节爆笑百转。几人疯癫闹场的狂欢表象下，“曲线救国”的“愚人谍战”，才刚刚上演……<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　据管虎透露，《虎烈拉》的剧本创意其实很快，就是为三位影帝量身定做，“这三人此次的角色让我都感觉异样惊喜，相信观众也会有同样感觉。”张涵予则透露海报英文片名《The Chef，The Actor，The Scoundrel》直译过来就是三人在影片中的角色，三人一起玩起了神秘，现场玩起了猜猜看，“厨子、戏子、二流子三个爷们在一起各具形态，”“总之一定会有很大的反差和颠覆。” <br />
<br />
黄渤配合剧情 即兴起舞<br />
<br />
　　黄渤为配合整蛊情节反串跳艳舞的片段十分抢眼。相比在《西游降魔篇》里的小试牛刀，黄渤此次身着艳丽服装，随音乐扭臀放电，不仅动作老练，娇媚表情也十分到位，令搭戏的刘烨惊呼，“他对着镜头拍屁股那段，连男人看了都会困惑！”<br />
<br />
　　黄渤坦言这场表演多半是临场即兴发挥，连大红色的裙子都是直接穿梁静的服装，“就希望尽量好玩一点，跟戏的整个风格整体统一”。但即兴发挥带来的搞笑效果令拍摄现场的工作人员都纷纷拿起手机拍，“感觉像是有近80台摄像机在对着我，我说都给我关了，流出去可毁了。”<br />
<br />
导演赞黄渤“天生喜感”<br />
<br />
　　《厨戏痞》讲述了一个疯狂的终极整蛊故事，上演了一幕惊心动魄的游戏式狂欢喜剧。片中黄渤饰演的“囧痞子”是一个爱打家劫舍，也爱易装艳舞的顽世泼皮，“这次的造型有点类似西部牛仔的感觉，动作上也刻意夸张一些，就像身上抽掉两根筋一样，永远站不直。谁让导演这次的尺度就比较大！”而导演管虎则说剧本没写精彩，很多都是三大影帝现场飚戏发挥，谈及黄渤的表演合作了多部戏的管虎用天才来形容：“黄渤演什么你都觉得没问题，他的能力太强了，这是天生的，他永远没有一定之规，你怎么去说他有反差可言？”<br />
<br />
角色介绍<br />
<br />
　　厨子（刘烨　饰）<br />
　　厨子表面是一个猥琐、胆小的汉奸，实则是一个语言专家，能把所有日本人说的话听到耳朵里，也会德语，关键时刻他的语言能力，起到了关键作用。导演管虎认为“刘烨是一个阳光、洋气的帅哥，但是不是有可能会有阴柔的一面，我太了解他了，他实际上是有的，特别温和的一面，那么这也不够，还得翻，还要放大、延伸”。<br />
<br />
　　戏子（张涵予　饰）<br />
　　戏子的表面身份是浓墨重彩的戏子，实际身份则是个机械专家，特别懂枪、炮、地雷、炸弹，把所有的枪支都玩得特别明白。现实生活中的张涵予是京剧大票友，这也是他首次尝试“浓墨重彩”的京剧扮相。张涵予称《厨戏痞》中自己所饰的戏子：“阴沉，非常有城府，一嘴京腔。这就是老北京的爷。”<br />
<br />
　　痞子（黄渤　饰）<br />
　　痞子的真实身份是生物化学专家，最后必须要靠他来解开病毒解药的化学程式。导演透露，黄渤除喜感外，“生活中有非常江湖感的一面”，所以痞子的角色就需要拿出他这个特点。“痞子”黄渤调侃他与张涵予、刘烨三男在戏中关系：“《蓝宇》是两个人，这次在《厨子戏子痞子》中是三个人。”<br />
<br />
　　傻子（梁静　饰）<br />
　　老板娘梁静表面上是力大无穷、低能怪状的傻婆子，实际却是擅长破解密码、有着超强记忆力的情报专家。为了与厨子戏子痞子三人的狂放表演一致，梁静给自己设计了空前夸张的妆容，突破此前《杀生》的扮丑极限：蝴蝶眼妆、血盆大口、圆睁双目……她笑称“他们三个是艳丽奇葩，我就是一朵怪异绿叶”。而她和刘烨在剧中的感情戏，也为紧张剧情之外增添一抹温柔亮色。<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：民国三十一年，“虎烈拉”横行华北。北平城被日军封城。城外闹瘟疫，城里闹饥荒。流氓（黄渤 饰）饿得不行，蹲在胡同里劫大户，没想到却把两个日本人劫到了一家日本料理店里。店里只有店主夫妇和一个驻店唱戏的戏子。中国店主夫妇，厨子（刘烨 饰）胆小如鼠，厨子老婆（梁静 饰）残疾弱智。戏子（张涵予 饰）颠三倒四，神神叨叨。怎么处理这俩日本人成了难题。为了让其他俩人听自己的，流氓亮出枪，店主拔出刀，戏子干脆摸出来一手榴弹。三人陷入僵局，料理店外，此时日军和城中伪军正在进行全城地毯式搜查。之后事态发展却出人意料，闹剧迭出，情节爆笑百转。几人疯癫闹场的狂欢表象下，“曲线救国”的“愚人谍战”，才刚刚上演……幕后制',N'中国',N'喜剧/动作',N'1280 x 720',N'2013',N'http://www.lwgod.com/thread-611560-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887608&amp;k=a8187d7ed2a23fd607284f7b914c11a5&amp;t=1412261769&amp;sid=3c794Mj6UmIVZdftDrgq9JmKJKGSxd99hJ2IZb%2Fs1m2ypsk',N'2014/10/2 22:57:38',1)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 484,N'【港14超爆笑限制喜剧】【3D豪情】【BluRay-720P.MKV】【双语】',N'<span><strong><span>电影海报：</span></strong></span><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/3dhaoqing/00.jpg" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.13/3dhaoqing/01.jpg" alt="" /><br />
<br />
<span><strong>译　　名　3D豪情/豪情2<br />
片　　名　3D Naked Ambition<br />
年　　代　2014<br />
国　　家　中国香港<br />
类　　别　喜剧/剧情<br />
语　　言　<span><span>国语粤语双音轨</span></span><br />
字　　幕　中文简繁<br />
评　　分　5.2/10 from 75 users<br />
链　　接　<a href="http://www.imdb.com/title/tt3740242" target="_blank">http://www.imdb.com/title/tt3740242</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<span><span>1280 x 720</span></span><br />
文件大小　2.89 GB<br />
片　　长　107 Min<br />
导　　演　李公乐 Kung-Lok Lee<br />
主　　演　杜汶泽 Chapman To<br />
　　　　　何超仪 Josie Ho<br />
　　　　　曾国祥 Derek Tsang<br />
　　　　　袁嘉敏 Candy Yuen Ka-Man<br />
　　　　　麻生希 Nozomi Aso<br />
　　　　　夕树舞子 Maiko Yuki<br />
　　　　　冲田杏梨 Anri Okita<br />
　　　　　辰巳唯  Yui Tatsumi<br />
　　　　　由爱可奈 Kana Yume<br />
　　　　　古天乐 Louis Koo<br />
　　　　　吴君如 Sandra Ng<br />
　　　　　蔡卓妍 Charlene Choi<br />
　　　　　王晶 Jing Wong</strong></span><br />
<br />
<span><strong><span>影片简介：</span></strong></span><br />
<br />
　　AV，从来都是满足男人性幻想的工具，男人主宰一切。假如有一天，情况逆转，男女角色调换……<br />
<br />
　　陈伟文(杜汶泽 饰)的生活陷入女尊男卑的状况，无奈不只在事业上，还在床上。<br />
<br />
　　文学系毕业的陈本靠写报纸色情小说为生，但随着风月版停刊，手停口停。失业的陈忽发奇想，像他这样看日本AV长大的男人，何不投资拍AV。陈疯狂的想法马上得到一班朋友热烈的投资，并由熟知日本色情行业的接头人鸠山初代子(何超仪 饰)搭路。本来大伙儿兴致勃勃的参观拍摄，陈却意外地被迫下海，当上AV男优。更意外的是陈在AV中被女优淫辱的真情演出，竟令他在日本一炮而红，一个港男进击日本AV界！<br />
<br />
　　陈庆嘉03年执导、古天乐和陈奕迅主演的三级片《豪情》叫好叫座，相隔10年，终于开拍续集《3D豪情》，只是主角换上杜汶泽、何超仪及一班日本AV女优。阿泽和何超仪联同拍摄队伍赴东京取景，昨日本报记者直击拍摄现场，见波涛汹涌，扮演AV男优的杜汶泽更大战现年26岁、因拥有42L上围而被封为「人类最强Body」的AV女优冲田杏梨，宇宙大战一触即发！<br />
<br />
　　杜汶泽在片中立志当AV男优。首先与何超仪互飙粗话被消音，他扮成足球员“顶头锤”，顶的却是巨乳，他接着变身拳击手，又惨遭大奶打脸，画面尺度非常冲击。杜汶泽拜师“神之手”加藤鹰，有一幕是加藤鹰用手指进攻蜜瓜，搞得蜜汁四溅最后闪过众多激情肉搏画面，包括“人类最强Body”的冲田杏梨。<br />
<br />
　　在预告片中，主角杜汶泽与一众AV女优近身肉搏，有多场火辣床上戏，意识相当大胆。令人看得热血沸腾。<br />
<br />
<span><strong><span>幕后制作：</span></strong></span><br />
<br />
　　创作背景<br />
<br />
　　陈庆嘉03年执导、古天乐、陈奕迅和何超仪主演的三级片《豪情》叫好叫座，相隔10年，陈庆嘉决定再拍《3D豪情》，由超仪揼本1,500万开拍，但男主角就换了杜汶泽。陈庆嘉和何超仪一直支持有本土特色的港产片，宁愿放弃内地庞大市场。<br />
超仪读完电影《豪情2》的剧本后，她觉得很有趣，纵使明知是三级片不能在内地上映，她还是很有勇气斥1,500万投资开拍这部戏，影片预计10月开拍，演员除了杜汶泽和何超仪外，据悉还有多位着名AV女优如苍井空、“AV Stephy”吉泽明步、貌似林志玲的波多野结衣、夕树舞子、曾拍《3D肉蒲团之极乐宝鉴》的原纱央莉和柚木提娜均答应演出，阿泽可谓艳福不浅，陈庆嘉日内赴日本与她们见面。<br />
<br />
　　拍摄过程<br />
<br />
　　今次陈庆嘉只当监制，导演请了李公乐执导，影片会有很多粗口对白，性爱场面也不少，其实该片以搞笑为主，故事讲述在港生意失败的杜汶泽，被迫到日本做AV男优还债，一次偶遇香港过气妓女何超仪，原来超仪也是因为在港没发展，决定到日本做AV女优，她就以自己经验教导阿泽做男优的技巧，学识必杀技后，阿泽竟然越做越红，超仪还当了他的经理人，两人因日夕相对还发生了感情。<br />
<br />
<span><strong><span>影片截图：</span></strong></span><br />
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
<br />',N'：AV，从来都是满足男人性幻想的工具，男人主宰一切。假如有一天，情况逆转，男女角色调换……陈伟文(杜汶泽 饰)的生活陷入女尊男卑的状况，无奈不只在事业上，还在床上。文学系毕业的陈本靠写报纸色情小说为生，但随着风月版停刊，手停口停。失业的陈忽发奇想，像他这样看日本AV长大的男人，何不投资拍AV。陈疯狂的想法马上得到一班朋友热烈的投资，并由熟知日本色情行业的接头人鸠山初代子(何超仪 饰)搭路。本来大伙儿兴致勃勃的参观拍摄，陈却意外地被迫下海，当上AV男优。更意外的是陈在AV中被女优淫辱的真情演出，竟令他在日本一炮而红，一个港男进击日本AV界！陈庆嘉03年执导、古天乐和陈奕迅主演的三级片《豪情》叫好',N'中国香港',N'1',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-611930-1-2.html',N'http://www.lwgod.com/attachment.php?aid=888085&amp;k=ff44b63890b4252c5dd791fce6e4fd9c&amp;t=1412261784&amp;sid=46abfp%2BDwM5%2BzPKg5qtl5jpBnvvI%2FakVU0KWUrPcpZkaF7E',N'2014/10/2 22:57:38',16)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 485,N'【人人珍藏必备】【变形金刚2重压】【BluRay-720P.MKV】【双语】',N'<font color="blue"><font size="5">最新蓝光原盘高参超高码重新压制！<br />
效果比以前版本强太多！完美国语音轨！<br />
变形金刚三部都会重压！为变形金刚4预热！</font></font><br />
<br />
<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/bianxingjingang2/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/bianxingjingang2/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　变形金刚2：堕落者的复仇/变形金刚2：卷土重来/变形金刚2：狂派的反击/变形金刚狂派再起(港)/变形金刚：复仇之战(台)<br />
片　　名　Transformers Revenge of the Fallen<br />
年　　代　2009<br />
国　　家　美国<br />
类　　别　动作/科幻/冒险/惊悚<br />
语　　言　<font color="red"><font size="3">英语国语双音轨</font></font><br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.0/10 from 247,612 users<br />
链　　接　<a href="http://www.imdb.com/title/tt1055369" target="_blank">http://www.imdb.com/title/tt1055369</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　5.14 GB<br />
片　　长　150 Min<br />
导　　演　迈克尔·贝 Michael Bay<br />
主　　演　希亚·拉博夫 Shia LaBeouf&nbsp;&nbsp;....Sam Witwicky<br />
　　　　　梅根·福克斯 Megan Fox&nbsp;&nbsp;....Mikaela Banes<br />
　　　　　乔什·杜哈明 Josh Duhamel&nbsp;&nbsp;....Major William Lennox<br />
　　　　　泰瑞斯·吉布森 Tyrese Gibson&nbsp;&nbsp;....USAF Master Sergeant Epps<br />
　　　　　约翰·特托罗 John Turturro&nbsp;&nbsp;....Simmons<br />
　　　　　拉蒙·罗德里格兹 Ramon Rodriguez&nbsp;&nbsp;....Leo Spitz<br />
　　　　　凯文·杜恩 Kevin Dunn&nbsp;&nbsp;....Ron Witwicky<br />
　　　　　朱丽叶·怀特 Julie White&nbsp;&nbsp;....Judy Witwicky<br />
　　　　　伊莎贝尔·卢卡斯 Isabel Lucas&nbsp;&nbsp;....Alice<br />
　　　　　约翰·本杰明·海基 John Benjamin Hickey&nbsp;&nbsp;....Galloway<br />
　　　　　马修·马斯登 Matthew Marsden&nbsp;&nbsp;....Captain Graham SAS<br />
　　　　　安德鲁·霍华德 Andrew Howard&nbsp;&nbsp;....Special Air Service Forces<br />
　　　　　迈克尔·帕帕约翰 Michael Papajohn&nbsp;&nbsp;....Cal<br />
　　　　　格伦·莫肖尔 Glenn Morshower&nbsp;&nbsp;....General Morshower</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　地球上的战争虽然结束，但变形金刚之间的战争并未告终。红蜘蛛飞回塞博坦星球，打算带着军队再回到地球一决死战。汽车人发现威震天的尸体不见了，原来已被萨克巨人偷走，威震天随后被复活，决心要开始复仇。与此同时，红蜘蛛也正率领塞博坦的援军赶来，汽车人在这时增强了自己的战斗力，一场大战在所难免……<br />
<br />
<font color="red"><strong><font size="3">一句话评论：</font></strong></font><br />
<br />
一部不可思议的电影，这个暑期我们需要这样的大场面！<br />
——《旧金山记事报》<br />
<br />
跟前作一样，但是更加宏伟壮观，这个暑期档你别无他求！<br />
——娱乐在线<br />
<br />
庞大臃肿的续集，需要整整2个半小时才能完成它带给观众的视觉轰炸。<br />
——《纽约邮报》<br />
<br />
本片长得可怕，让人无法忍受，只有3、4个地方还算是有趣。<br />
——《芝加哥论坛报》<br />
<br />
<font color="red"><strong><font size="3">幕后制作：</font></strong></font><br />
<br />
　　无处不在的大场面<br />
<br />
　　相信每一个影迷都不会忘记两年前的暑假那一场《变形金刚》掀起的银幕飓风，这场风暴自然很大程度上要归功于导演迈克尔·贝，这位好莱坞最喜欢玩弄飞车爆炸等大场面的导演。对于《变形金刚》系列，迈克尔·贝这样说道：“这是一部绝大部分观众都无法拒绝的电影，尤其是那些已经有了一定岁数，曾经痴迷过种种变形金刚玩具的人们。拍摄这套电影让我觉得十分过瘾，因为我终于有机会能够在闹市、沙漠、丛林等各种地方好好的干上一架了，以前的话我必须费尽心机为那些动作和爆炸场面寻找一个合适的理由，尤其是那些荒无人烟的地方，为什么会出现人类的机械呢？许多观众和影评人都会对这些问题较真，这让我有些头疼。当我遇上了《变形金刚》之后，一切都有了答案，地球人制造的现代科技与外星生物的完美结合，这让我这类之前并没有认真看过《变形金刚》和玩过玩具的人都能很快的着迷进去。所以这套电影我是非常用心的在做，我希望它能够满足的不仅仅是那些追求无与伦比的电影画面的观众，更多的还有那些《变形金刚》的铁杆粉丝。”<br />
<br />
　　上一集《变形金刚》的各种大场面仍然令影迷记忆犹新，而在最新的这集里，迈克尔·贝又将会带给观众什么样的视觉震撼呢？对于这一点，迈克尔·贝说：“谈到这些之前，首先必须得感谢工业光魔的伙计们，他们真的是非常辛苦，在银幕上一个只有几秒钟的变形过程，工业光魔耗在上面的时间通常需要半年。我总是尽可能的为他们减少负担，所以《变形金刚2》里出现的大部分爆炸场面都是真实的，这样的话工业光魔在后期添加特效镜头的时候会少许多麻烦。我不能透露得太多，但可以说的一点是这一集比起上一集而言，视角将更加宏伟，有亚洲，有非洲，有更多的全球标志性建筑会被摧毁，这是我以前就干过的事，如今我可以干得更漂亮。第一集里有很多场面是我觉得很遗憾的，例如最后的决战，稍微细心一点的影迷会发现，那个闹市区其实没有一幢现代大厦建筑，那是因为911……是的，有些事情我不能去做，那是比较敏感的，但又过去了两年，现在我相信观众们会逐渐明白电影只是电影了，在这一集里，我将没有过去那种束手束脚的感觉，第一集的成功让大家都明白了《变形金刚》的魅力，而我的任务就是把它做得更好。”<br />
<br />
　　对于这部电影，鼎鼎大名的制片人史蒂文·斯皮尔伯格同样也寄予厚望：“迈克尔·贝是一位杰出的导演，他对于大场面与小细节的着眼总是让我觉得惊叹，我希望《变形金刚》系列是一部充满着无处不在的幽默感，同时又凝重而严肃的电影，迈克尔·贝做到了这一点，他让《变形金刚》系列有了更多的可能性，我对《变形金刚2》比1更加满意，而实际上我已经迫不及待的想看到第三集《变形金刚》了。”<br />
<br />
　　表现出色的演员<br />
<br />
　　2007年的《变形金刚》大胆启用了一批并不太出名的年轻演员，同时辅以强·沃特这样的老戏骨绿叶，上映后男主角希亚·拉博夫赢得了不俗的评价，而女主角梅根·福克斯更是立马跃升为好莱坞最耀眼的女星之一。提及《变形金刚》，希亚·拉博夫总是难以掩饰他的兴奋之情：“现在回想起来，当初能够出演这部电影完全是因为斯皮尔伯格大导，他很信任我，他觉得我能够做好，而导演迈克尔·贝也给了我很大的自由空间，这让我的压力减轻了不少，在新的一集里我的角色面临更多的考验，而拍摄难度也比第一集增加不少，有很多危险场面我都是亲身拍摄，我不想使用太多的替身，这会让观众失望，更会让我自己失望，而不管拍摄遇到多大的危险，我都觉得值得的，因为这部电影需要演员全身心的投入，全球有那么多的观众在盯着你，你必须做到最好才行。”<br />
<br />
　　对于影片里各位演员的表现，迈克尔·贝说：“几位主演对《变形金刚》都有很大的热情，和这群演员的合作让我觉得很享受，我几乎不需要做什么指导，大家可以很快的进入状态。此外我很感谢军方的协助，影片里出现的军人大部分都是真正由军方派遣过来的部队官兵，他们的演出质量不输给专业演员，而且他们身上那股劲让我觉得很契合《变形金刚》的气质。拍摄《变形金刚2》让我又一次重温了我的校园生活，过去学校生活里有一些不敢做的事，这次我可以让主角们代我来完成了，这就是电影美妙的地方所在，他可以让许多的梦想成真。”<br />
<br />
<font color="red"><strong><font size="3">花絮：</font></strong></font><br />
<br />
·大部分最后决战的拍摄是在美军新墨西哥洲的白沙导弹试验场上进行的；<br />
·扮演片中美军的演员大部分是刚从伊拉克和阿富汗回来的真正军人，而非普通群众演员；<br />
·军人演员们对演这部电影投入了大量的热情，因为他们想让自己的孩子们在《变形金刚2》的大屏幕里能看到自己和变形金刚们作战；<br />
·五角大楼给拍摄工作提供了巨大的支持，不但让剧组使用白沙导弹试验场，而且还让他们跟随呼啸而过的战斗机从空中拍摄；<br />
·五角大楼同样也要求这部电影为美国军方塑造一个良好和正面的形象；<br />
·有一部分场景是在海军的约翰·斯坦尼斯号航空母舰上拍摄，拍的是海军陆战队也加入攻击部队对抗来犯的变形金刚一幕；<br />
·这部电影是有史以来美国海，陆，空军和海军陆战队最大的一次联合拍摄行动的结果；<br />
·直接动用的资源大致有：２架A－１０战机，６架F－１６战机，１０辆装甲悍马，“金骑士”军方跳伞队，２辆M1A2坦克，２辆M3A3 坦克，2辆自行导弹发射车，2辆装甲车，白沙导弹试验场，军用炸药和炸弹，休假的军人。<br />
·美国陆军和空军之间一直以来都有种竞争，这次在新墨西哥洲的拍摄使这种竞争更加激烈。虽然陆军的白沙试验场和空军的哈娄盟基地挨的很近，，但来自不同方的军人演员的宿营地却是完全分开的；<br />
·战斗戏拍摄间隙工作人员在场地收集到的黄铜弹壳装了好多桶，有人开玩笑说，如果把它们卖给废品站，赚到的钱可以买很多箱啤酒；<br />
·黑人演员泰瑞斯（Tyrese Gibson）在上一部中的军人角色在这集里升了官，演战斗中轰炸的地面定位引导员；<br />
·白沙导弹试验场里所有临时造的埃及村庄和神殿都将被用来突出爆炸效果；<br />
·真正在埃及境内拍摄的东西不多，有关题材大多是在本土美军基地里取的景；<br />
·埃及金字塔是这部电影中一个非常重要的剧情点，有的戏份甚至是在金字塔塔身上拍摄的；<br />
·美国军方允许剧中的M1坦克发射空弹，因为这次拍摄也被当作美军坦克兵的一次训练，但坏贝仍一度想使用实弹来拍摄；<br />
·剧组因为浪费了一些不必要的军需品，和在拍摄中使用了一些被军方认为不符合训练之初衷的军事资源（这到底是拍电影还是美军搞军训？结论是军方借机敲竹杠），还向美国的国家财政部赔了钱；<br />
·红蜘蛛在这集里仍变形为F-22战机；<br />
·由于军人演员人人都想出镜，道具房顶上曾一度挤满了士兵，剧组的军方联络员不得不找借口来驱散他们：“你们挤得这么紧，太不符合现实了，敌人一颗手榴弹就可以把你们都干掉。”结果，得到的回答是：“这可是好莱坞，我们不正在用永远都打不光的弹药和隐形的外星人作战吗？&quot;<br />
·在一幕山姆和米凯拉在一村庄里逃出神殿被霸天虎追逐的戏里，两人被７５名士兵和坦克同时开枪开炮乱打，当然打的是他们身后追逐他们的“隐形的外星人”；<br />
·在爆炸戏里，炸药爆炸产生的时速７００英里的气浪使一根眼睫毛都可成为伤人的利器，其结果是男女主角在这些爆炸中头脑空白只知道亡命的狂跑；<br />
·有一次，在一幕拍完后，一名大兵一边害羞地向希亚·拉博夫（山姆的扮演者）和梅根·福克斯（米凯拉的扮演者）讨要签名一边说抱歉。西恩就一边问他为什么要道歉，一边爽快给了他签名，接着突然间，一群拿着纸和笔的大兵们都出现了……<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：地球上的战争虽然结束，但变形金刚之间的战争并未告终。红蜘蛛飞回塞博坦星球，打算带着军队再回到地球一决死战。汽车人发现威震天的尸体不见了，原来已被萨克巨人偷走，威震天随后被复活，决心要开始复仇。与此同时，红蜘蛛也正率领塞博坦的援军赶来，汽车人在这时增强了自己的战斗力，一场大战在所难免……一句话评论：一部不可思议的电影，这个暑期我们需要这样的大场面！
——《旧金山记事报》跟前作一样，但是更加宏伟壮观，这个暑期档你别无他求！
——娱乐在线庞大臃肿的续集，需要整整2个半小时才能完成它带给观众的视觉轰炸。
——《纽约邮报》本片长得可怕，让人无法忍受，只有3、4个地方还算是有趣。
——《芝加哥论坛报》幕',N'美国',N'动作/科幻/冒险/惊悚',N'1280 x 720',N'2009',N'http://www.lwgod.com/thread-611454-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887284&amp;k=c5b10969d3a629b3622f0ad06c228c67&amp;t=1412261770&amp;sid=743aCmZylaywBI7gKfUplFCy8rapdRpjHFnSciGZAGOTC5A',N'2014/10/2 22:57:39',8)
INSERT [movies] ([id],[title],[body],[zhaiyao],[guojia],[class],[chicun],[year],[laiyuan],[downURL],[addtime],[Look]) VALUES ( 486,N'【美14爆笑女版宿醉】【蒙羞之旅】【BluRay-720P.MKV】【中英】',N'<font color="red"><strong><font size="3">电影海报：</font></strong></font><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/mengxiuzhilv/00.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<img src="http://img2.lwgod.com/-2-/07.08/mengxiuzhilv/01.jpg" onload="thumbImg(this)" alt="" /><br />
<br />
<font color="green"><strong>译　　名　蒙羞之旅/姐姐我醉大(台)/醉街情人玩大咗(港)/腥光大道<br />
片　　名　Walk of Shame<br />
年　　代　2014<br />
国　　家　美国<br />
类　　别　喜剧<br />
语　　言　英语<br />
字　　幕　<font color="red"><font size="3">中英/英中/简/繁/英</font></font><br />
评　　分　6.1/10 from 13,355 users<br />
链　　接　<a href="http://www.imdb.com/title/tt2463288" target="_blank">http://www.imdb.com/title/tt2463288</a><br />
文件格式　x264 + 5.1 AC3 @ mkv<br />
视频尺寸　<font color="red"><font size="3">1280 x 720</font></font><br />
文件大小　2.34 GB<br />
片　　长　95 Min<br />
导　　演　史蒂文·布里尔 Steven Brill<br />
主　　演　伊丽莎白·班克斯 Elizabeth Banks&nbsp;&nbsp;Meghan<br />
　　　　　詹姆斯·麦斯登 James Marsden ....Gordon<br />
　　　　　吉莉安·雅各布斯 Gillian Jacobs ....Rose<br />
　　　　　莎拉·麦森 Sarah Mason ....Denise (as Sarah Wright Olsen)<br />
　　　　　伊桑·苏普利 Ethan Suplee ....Officer Dave<br />
　　　　　Billy Burr ....Officer Walter<br />
　　　　　肯·戴维蒂安 Ken Davitian ....Cab Driver<br />
　　　　　小拉瑞·吉拉德 Larry Gilliard Jr. ....Scrilla<br />
　　　　　阿方索·麦克奥雷 Alphonso McAuley ....Pookie<br />
　　　　　Davon McDonald ....Hulk<br />
　　　　　埃里克·艾特巴里 Eric Etebari ....Biker Boy<br />
　　　　　奥利弗·赫斯顿 Oliver Hudson ....Kyle</strong></font><br />
<br />
<font color="red"><strong><font size="3">影片简介：</font></strong></font><br />
<br />
　　小记者梅翰的梦想是成为新闻主播，一次重要的面试将彻底的改变她的命运。然而在面试的前一晚她竟然和人发生了一夜情，手机、汽车、身份证、钱包通通不翼而飞，为了能得到梦想中的工作，她只能想尽各种办法在8个小时内赶到面试地点……<br />
<br />
　　女新闻主播梅根·迈尔斯（詹姆斯·麦斯登 饰）刚刚搞砸了达成自己梦想的一次试镜，于是她的朋友希望与她度过一个狂欢之夜一扫阴霾。她在派对上遇到自己钟情的帅哥（詹姆斯·麦斯登 饰）并跟他回了家，在一个疯狂的夜晚后，她接到了经纪人的电话，得知她得到了一个足以改变她人生的面试机会。不过，她走出房门却发现自己的车子被拖走，而且自己的钱包、身份证也都在车上。这位倒霉的主播到底能不能按时出现在面试现场呢？一路上她又会遇上怎么样的囧事呢？<br />
<br />
　　当你搞砸了好不容易得来的宝贵机会，面对排山倒海而来的挫败和失落感，你会做出怎样的应对呢？一心想成为著名主持人的梅根（伊丽莎白·班克斯 Elizabeth Banks 饰）觉得是时候来一场喧闹而又疯狂的派对了。<br />
<br />
　　在派对上，梅根遇见了名为戈登（詹姆斯·麦斯登 James Marsden 饰），两人之间眉来眼去，温度火速上升，一个充满了浪漫和激情的夜晚就在眼前！春宵一夜过后，来自经纪人的电话将还沉醉在粉色气息之中的梅根拉回了现实，一个工作上一举成名的大好机会到来了。然而，此时的梅根才发现，自己的车被拖走，钱包和所有证件全都随之而去。眼看着面试时间就要到来，能否准时出现在面试现场还是个问题的梅根能够抓住这次千载难逢的转机吗？<br />
<br />
<font color="red"><strong><font size="3">影片截图：</font></strong></font><br />
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
<br />',N'：小记者梅翰的梦想是成为新闻主播，一次重要的面试将彻底的改变她的命运。然而在面试的前一晚她竟然和人发生了一夜情，手机、汽车、身份证、钱包通通不翼而飞，为了能得到梦想中的工作，她只能想尽各种办法在8个小时内赶到面试地点……女新闻主播梅根·迈尔斯（詹姆斯·麦斯登 饰）刚刚搞砸了达成自己梦想的一次试镜，于是她的朋友希望与她度过一个狂欢之夜一扫阴霾。她在派对上遇到自己钟情的帅哥（詹姆斯·麦斯登 饰）并跟他回了家，在一个疯狂的夜晚后，她接到了经纪人的电话，得知她得到了一个足以改变她人生的面试机会。不过，她走出房门却发现自己的车子被拖走，而且自己的钱包、身份证也都在车上。这位倒霉的主播到底能不能按时出现在',N'美国',N'喜剧',N'1280 x 720',N'2014',N'http://www.lwgod.com/thread-611451-1-2.html',N'http://www.lwgod.com/attachment.php?aid=887272&amp;k=27741b3ee5ac981b12321a2aadb48ca2&amp;t=1412261774&amp;sid=87a88HPaGOT5qlAkqakmLPkFdd99n53gbW4FWmJAgEZQKmI',N'2014/10/2 22:57:39',19)

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

INSERT [tip] ([id],[SearchTip]) VALUES ( 1,N'爱情')
INSERT [tip] ([id],[SearchTip]) VALUES ( 2,N'爱情')
INSERT [tip] ([id],[SearchTip]) VALUES ( 3,N'妮懊恼个')
INSERT [tip] ([id],[SearchTip]) VALUES ( 4,N'this')
INSERT [tip] ([id],[SearchTip]) VALUES ( 5,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 6,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 7,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 8,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 9,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 10,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 11,N'tr')
INSERT [tip] ([id],[SearchTip]) VALUES ( 12,N'限制')
INSERT [tip] ([id],[SearchTip]) VALUES ( 13,N'英')

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

INSERT [user] ([id],[email],[pwd],[UserName],[CnName],[headPic],[sex],[QQ],[Mobile],[Age],[address],[website],[jianjie],[regtime],[onlinetime]) VALUES ( 1,N'csbqq66@qq.com',N'21232F297A57A5A743894A0E4A801FC3',N'hhcsb',N'陈申波',N'20140525192832_6327.jpg',N'Boy',665345464,N'111-31312313',N'01-05-2014',N'湖南省怀化市铁北鹤城区',N'http://www.workyi.com',N'案范围嘎啊我给娃给我饿啊',N'2014/5/27 17:36:34',N'2014/6/3 11:14:37')
INSERT [user] ([id],[email],[pwd],[QQ]) VALUES ( 2,N'fasdfno@sdf.com',N'202CB962AC59075B964B07152D234B70',0)

SET IDENTITY_INSERT [user] OFF
