USE [DVCP]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/7/2023 7:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[info]    Script Date: 12/7/2023 7:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[web_name] [nvarchar](50) NOT NULL,
	[web_des] [nvarchar](200) NULL,
	[web_about] [ntext] NULL,
 CONSTRAINT [PK_dbo.info] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 12/7/2023 7:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[post_title] [nvarchar](200) NOT NULL,
	[post_slug] [nvarchar](200) NULL,
	[post_teaser] [nvarchar](500) NOT NULL,
	[post_review] [nvarchar](500) NULL,
	[post_content] [ntext] NULL,
	[post_type] [int] NOT NULL,
	[post_tag] [nvarchar](200) NULL,
	[create_date] [datetime] NULL,
	[edit_date] [datetime] NULL,
	[dynasty] [nvarchar](50) NULL,
	[ViewCount] [int] NOT NULL,
	[Rated] [int] NOT NULL,
	[AvatarImage] [nvarchar](200) NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Series]    Script Date: 12/7/2023 7:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Series](
	[seriesID] [int] IDENTITY(1,1) NOT NULL,
	[seriesName] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_dbo.Series] PRIMARY KEY CLUSTERED 
(
	[seriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StickyPosts]    Script Date: 12/7/2023 7:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StickyPosts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[priority] [int] NOT NULL,
	[post_id] [int] NULL,
 CONSTRAINT [PK_dbo.StickyPosts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 12/7/2023 7:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[TagID] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Tags] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PostTags]    Script Date: 12/7/2023 7:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PostTags](
	[PostID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Tbl_PostTags] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_SeriesPost]    Script Date: 12/7/2023 7:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_SeriesPost](
	[PostID] [int] NOT NULL,
	[seriesID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Tbl_SeriesPost] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC,
	[seriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/7/2023 7:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[fullname] [nvarchar](30) NOT NULL,
	[userrole] [varchar](20) NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202012141408180_Initialization', N'DVCP.Migrations.Configuration', 0x1F8B0800000000000400ED1DD96EE436F27D81FD07418F0BA7DB07026C8CEE044E7B266B6C3C36DC3DB3FB66B025BA2D44A23A12E5B111E4CBF2904FDA5F585227C5433C5ADDF60C8200814DB12E56B1AA485679FEF7C79FB31F9E93D87B82591EA568EE9F4C8E7D0FA2200D23B499FB057EF8E69FFE0FDFFFFD6FB37761F2EC7D6AE69DD1790412E573FF11E3EDF9749A078F3001F92489822CCDD3073C09D2640AC2747A7A7CFCDDF4E4640A090A9FE0F2BCD95D817094C0F217F2EB224501DCE202C4D76908E3BC1E275F962556EF034860BE05019CFB979F16B7936A9AEF5DC411202C2C61FCE07B00A114034C183CFF98C325CE52B4596EC90088572F5B48E63D80388735E3E7DD7453198E4FA90CD30EB0411514394E134B842767F5A24C7970A7A5F5DB4523CBF68E2C2F7EA152974B37F76FD31CFB1E4FE87C116774526F552774EE9147478E5A8D13C3A0FF1D798B22C64506E708163803F191775BACE328F8377C59A5BF403447451CB3AC1066C8B7DE0019BACDD22DCCF0CB1D7CA819DC12A2F751E87BD33EF094876E6179C04A902B84CF4E7DEF036103AC63D8EA9C117A89D30CFE0411CC0086E12DC01866446557212C574D60812358E43013E80D83943C12DC316CC08875921DE67BD7E0F9678836F871EE135DFADEFBE81986CD48CDFA4714910D4980705640896806B4F3B8D88C40DA444A08C8FA0CD0FA768F6266F029829F47206E402B4811260633408CFC38DAAA121A3A0B374103F66F054106C9B6BA0FC9FF1A5A97E4E71571F73A501846D809307C4120A73B7740F12388F68918D7222D3AA5BBA9E28EBA9DDD505C3C010CB2AB046CC6F028C3B472E2368BBC21F3639AC610203DC71FC053B4291D2E876FB58EEFFF95E22A22DDC1B89C933F46DB2A8E4F96380A7E79A19FEFE9D4DB9BE58A4891A5C95D1A97720A9FEF5720DB40AA95543D6799165960C9E692787A984BB96C9137733A0EB94F2DE5863BFE7BC3BD0D672BB0D1F055CD9070453FA8792ABFDA728409E0C7D2ED4B38A21FA49AEC7D1074D8FF2AD3DE6CDAA53983C94F670EA629500771F044C825073A64FAB3CDA2348B3A67BB4338D26551833BA0B2A671FC07BF1B867C8C9B05D64EC2D0FACAD907B7BCBC247B75696F7F1DE4A1ACB0A2487F3E4046ED6687161182F77DAA08E2647B2B9AF499191E997A70AB23345D4CAE063B94BD11721A6373CB307734ADE120AF34AB5E0AE0645455B437B32A3AF7E066D59CD26DED4A7ABADFF36D02D2B9318D65D5BFDB866090E79FD32C1CA07CA275A06EA41FC8748DD0677BB925A0AB9DA59A6B1833910F7F6852BA03C30C9BCF72E4F9B7933BF80F5C5FA187D4D423D4D3FFCAAD395A9FE1FA5EB32F0CC38CE5BEA0844398EFFD2E81D201EBB418FBDA4C65A817799E0651A91BE12CD8ED983ECBEF50E8191C152AF6FB070E2207B1DC684B6C953033F7FF21ACC730F2366077C865688F2793130133B17298513303F1827807B26F2284C52D11A120DA8258CF04076A73694FF5D152E2BF5CC22D44743FE8177947165A4ADC8ED7ADD46CCA98CDB035F139BE4AD9CA2BA161450FD98FF20CC118667DF01844EA226D99766A19EB5F348D20693FA9ED1096279CB184EC0753154F8AC8DAF15425C806FB5685D3D017880BE7E408A4F298EC3F799E6DE501A472EF467BF4AD5F851702830904CC6A0668FA42C7E0B3EC6691C855673F791DB378CD539C4B8899ED45766B17C97A6A17CCA60FDCB951190A3644E910D54E43C4517FD0C057475201BADCA31A506A0832D86A2F6980DB1454006FBF70181855CBD691C9A8999903978CBC159A2512AD1C9C0E05A3364B1D187452443D0B27D30C9644B8C8129763300E1A45421DDF46B18F5D4BB9B5EE207D65D803B28B51D1202EBAC9DD8B840C8A8AC79D65E60E94A2CC0341D2204C320CD75B7E40667954DCC1CC9BB342EBCCBB6AA369556E540FCCA68ABAA4D935D86EC9B185A953AA47BC6555A4B4F866695FC4935438A6412EA9E569B96D2991A326D840EE2B214D387D1F6539BE0418AC013D382DC24498C6862E85636D28B1D149D453E36C9BD9F4E72E3AB2354592985E03BD279224342128CFCF9C6E45308FD685811864AA47A5451A1709D21C10D4789ABC8245A3CA3534DCD4453F0243F5B825B6AA8C4740560DDB725617EA88ACD51F2CF135B53702BEE68325BEB6BE4640D87EB195B82CA211E52D876D71019922B098E40C61EA95CAB0C87A1FCCF131F5332C3666D81C575B52C3626A07CDF13035332C2666D81C575D38C3E2A987CC71F42A67584CBD0FE6F89A8B5E1655332662994D398F279C5C0487CA8535DE3B1BF96E36B174F5E0CC11C2DE8F0F01AB5696F7C096DEB72D53E8EDD276D472BF5B4495D7D2B12AF33654AF14DC44B50A40E586696B057A5B46517BA0C7543DCB8AB8AAF137A31EC5E1C04C39F4F06CAF1929946A31EBF774761DA52FF31A1CA236DAC137A38AEACCE1AA8BF232C25E1972B0FD66A0DDDB328F072934A2F481ED5B71CF09B6A3E698BAA75F1653376A275DF596CB4B578D7E6531BCB9C572B55B05BC81E92A21F713B9BB47501647376A87A97CD5E41185E2CD900E4FFD6AC963AA870F6F25FDEB0DF1A8DEBBB0539FC97BD364A76FF5851EB7488A8B3D7161CC932C8A521681E8DAB4E4ED3953BE308C92AFA899E3EFA4DCF55A5DF369B45A4D92E95492180C2D1B7B5FF996D4C95E821AF2659EE5ECA246E186919FD23A87F6A691BB519CD5B77BFA7648E1BAAF9AE27B84F7A728A4577DCB971CC36442274C96BFC68B382A6F4F9A09D700450F905845595AE39F1E9F9C728D956FA7C9719AE7612CB91DE53B1DFB0A3B68036244D7565B07E450B7C691109E1BAF50089FE7FE6F25C8B977F5DFFB0AEAC8BBC9889ACFBD63EF7796B079F319DBB8889E40163C824C2C0EDAB52FB1C3AC16ED2AFF88A25F0B22DE8A704FE55173E1D8B22815F05B5701FB1D8926B85D1B10EB576817F999E6C2D2B4766C2D343111C74E42FA332E1B02ED50099D85AE88B84E4385426DB10A8D852E6AE8B515BA209034158EA5CA7E39EC3AD231E7D2DAE5E0F377AB07DD8BA7E7DBAB9C37A47DB8A8C1CCE3856DFB938386C6EB49DA8BB6C43624C7F868D5CDE3B08E6374D9EC6505B9C61A27876AD7B5E2B07AE33493EC2D3344CC02CACD6FE7E61019DA1387A488EFFC90EAFBCC1E2FDFD8A15F86570D5BD22BB52F3666F16D0B069BD8A52B61AC6444684230489D8D35ABBA333353AEF28A64CCC8D810B1CB0E2A28557260112DED49377016C4ADF4E518532D94E5187E5F4D5362DC37A05B028DA0A3DD9A76AA2267970E1A5981AD73A38F5315BEA2BA62DF8D375F5EA38DF43ADAD6084E844BF01B74096388A1771154379C0B90072014B70BBD1C1EA2CD3EBC301C1835E47C11C6A37E1AB27395AF613BB2270376F38BBA93EBED2BB31F0B750EBD7EEDCB8486681ED28894AF616FC8FDAC98BFF3D690D737C97D318E475E0EF556BD8EF29992511AAF3089B2BE1A7331D59EF261762FB6A2A4760053316F39DDB5C5D4C8318DD8527AA816526317F4EA2DA3627B0EAF2BB12954D9135ABDF5CFFD709D12AD56072D793B94BA5D54D32D2A2331D0A768DF4E2A2560DC6AAAEA3495619536C7C97A50952DA832ACD20E3697EE5419F248D6B72A3311E532B31FA58BD2E6C546DDC16D689012522F3D756ED50471AD0ED787CBDA7BD75F66D66AABE8D41DBFBFB66D93D4B6D92A8AB27612583426BE14707C819BA64EBDC0F26A2FC9E14DDB09FC7A42F7DA7F35EDC4FBD230B3857B5581638B69A0D9812A3E3E41E67A1B5E4FC851FBA3857E68AD605A7D8FD3FD2CD620926C88F9871B481696479B0E05FD671C100C7A79503B87C6B8261DE3386AA67077D0D7108390244917198E1E4080C9E700E679F9E7A23E81B82053DE256B185EA19B026F0B4C4486C93AEEF576D1B46E887ED9E2DDE77976B32DFFBCDA18221036235A6974837E2CA2386CF97E2FB90C57A0A0F962FD54477589E993DDE6A5C5F421458688EAE56BD3DC154CB6314196DFA02578822EBC1163FD196E40F0D29492AA91E815D15FF6D96504361948F21A47074F7E25361C26CFDFFF1F655C31A4BF640000, N'6.2.0-61023')
GO
SET IDENTITY_INSERT [dbo].[info] ON 

INSERT [dbo].[info] ([id], [web_name], [web_des], [web_about]) VALUES (1, N'hi', N'hi', N'hi')
SET IDENTITY_INSERT [dbo].[info] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([post_id], [userid], [post_title], [post_slug], [post_teaser], [post_review], [post_content], [post_type], [post_tag], [create_date], [edit_date], [dynasty], [ViewCount], [Rated], [AvatarImage], [status]) VALUES (1, 1, N'hi', N'hi', N'hi', N'hi', N'hi', 1, N'hi', CAST(N'2023-12-12T00:00:00.000' AS DateTime), NULL, N'1', 2, 1, N'1', 1)
INSERT [dbo].[Posts] ([post_id], [userid], [post_title], [post_slug], [post_teaser], [post_review], [post_content], [post_type], [post_tag], [create_date], [edit_date], [dynasty], [ViewCount], [Rated], [AvatarImage], [status]) VALUES (2, 1, N'Lộ diện “sát thủ” đáng ngại bậc nhất đối với xe tăng M1 Abrams Mỹ chuyển cho Ukraine', N'lo-dien-sat-thu-dang-ngai-bac-nhat-doi-voi-xe-tang-m1-abrams-my-chuyen-cho-ukraine', N'Xe tăng M1 Abrams mà Mỹ cung cấp cho Ukraine nổi tiếng "uống xăng như nước", nhưng đó không phải là thách thức lớn nhất mà Kiev phải tính đến khi đưa mẫu xe tăng này ra tiền tuyến chiến đấu.', NULL, N'<p>Theo tạp ch&iacute; Forbes, một số vũ kh&iacute; phương T&acirc;y cung cấp cho Ukraine được v&iacute; như &quot;phương tiện chiến đấu hạng sang&quot; v&igrave; ch&uacute;ng cần được vệ sinh v&agrave; bảo dưỡng li&ecirc;n tục để tr&aacute;nh b&ugrave;n đất, bụi bẩn. Xe tăng M1 Abrams cũng kh&ocirc;ng phải ngoại lệ.</p>

<p>Chiếc xe tăng do Mỹ sản xuất cũng rất &quot;sợ&quot;&nbsp;với bụi bẩn. C&aacute;c binh sĩ Mỹ vận h&agrave;nh xe tăng n&agrave;y tr&ecirc;n chiến trường&nbsp;phải l&agrave;m sạch bộ lọc gi&oacute; động cơ mỗi 12 giờ/lần</p>

<p>Nếu phớt lờ hoặc qu&ecirc;n l&agrave;m sạch bộ lọc gi&oacute; trong điều kiện sa mạc hoặc b&ugrave;n đất, hiệu suất động cơ của xe tăng sẽ bị ảnh hưởng v&agrave; tệ nhất l&agrave; phải thay thế động cơ.</p>

<p>Trong trường hợp cần sửa chữa s&acirc;u hoặc thay thế động cơ, Ukraine sẽ phải gửi xe tăng M1 Abrams về xưởng sửa chữa do Mỹ đặt ở Ba Lan v&agrave; qu&aacute; tr&igrave;nh n&agrave;y sẽ mất v&agrave;i tuần.</p>

<p>Theo Forbes, mẫu xe tăng nặng 68 tấn do Ukraine vận h&agrave;nh l&agrave; một cỗ m&aacute;y hoạt động tốn k&eacute;m. Laura Cooper, Thứ trưởng Quốc ph&ograve;ng Mỹ từng gọi xe tăng Abrams l&agrave; &ldquo;kẻ ngốn xăng như nước&quot;.</p>

<p>Mỗi 1km di chuyển, xe tăng M1 Abrams ti&ecirc;u tốn 3,7 l&iacute;t nhi&ecirc;n liệu nghĩa l&agrave; nếu di chuyển 100km, xe tăng do Mỹ sản xuất ti&ecirc;u thụ 370 l&iacute;t nhi&ecirc;n liệu.</p>

<p>Động cơ&nbsp;turbine kh&iacute; trang bị tr&ecirc;n xe tăng Abrams mạnh tương đương động cơ trực thăng, cho ph&eacute;p mẫu xe tăng n&agrave;y vận h&agrave;nh linh hoạt v&agrave; mạnh mẽ so với c&aacute;c xe tăng sử dụng động cơ diesel th&ocirc;ng thường. Nh&agrave; sản xuất General Dynamics Land Systems khuyến c&aacute;o sử dụng nhi&ecirc;n liệu m&aacute;y bay cho xe tăng M1 Abrams.</p>
', 1, NULL, CAST(N'2023-11-30T20:25:30.343' AS DateTime), NULL, N'Timeline', 2, 3, N'lo-dien-sat-thu-dang-ngai-bac-nhat-doi-voi-xe-tang-m1-abrams-my-chuyen-cho-ukraine-40.jpg', 1)
INSERT [dbo].[Posts] ([post_id], [userid], [post_title], [post_slug], [post_teaser], [post_review], [post_content], [post_type], [post_tag], [create_date], [edit_date], [dynasty], [ViewCount], [Rated], [AvatarImage], [status]) VALUES (3, 1, N'Bất ngờ thứ hạng của tuyển Việt Nam, 1 đội bóng Đông Nam Á nhảy vọt', N'bat-ngo-thu-hang-cua-tuyen-viet-nam-1-doi-bong-dong-nam-a-nhay-vot', N'Chiều 30/11, Liên đoàn bóng đá thế giới (FIFA) công bố thứ hạng các đội tuyển quốc gia trong tháng 11/2023', N'đội bóng Đông Nam', N'<p>Theo đ&oacute;,&nbsp;<a href="https://vietnamnet.vn/tuyen-viet-nam-tag8013680640245068705.html" target="_blank">tuyển Việt Nam</a>&nbsp;chỉ bị trừ tổng cộng 0,67 điểm, sau trận thắng Philippines 2-0 v&agrave; thua Iraq 0-1 ở v&ograve;ng loại World Cup 2026 khu vực ch&acirc;u &Aacute;, vẫn giữ nguy&ecirc;n vị tr&iacute; thứ 94 thế giới.</p>

<p>Điều n&agrave;y tr&aacute;i với dự đo&aacute;n ban đầu của trang Footy Rankings. Bởi theo t&iacute;nh to&aacute;n của Footy Rankings c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u, thầy tr&ograve; HLV Philippe Troussier bị giảm một bậc</p>
', 2, N'đội bóng Đông Nam', CAST(N'2023-11-30T20:50:49.117' AS DateTime), NULL, N'HongBang', 1, 2, NULL, 1)
INSERT [dbo].[Posts] ([post_id], [userid], [post_title], [post_slug], [post_teaser], [post_review], [post_content], [post_type], [post_tag], [create_date], [edit_date], [dynasty], [ViewCount], [Rated], [AvatarImage], [status]) VALUES (4, 1, N'aaaaaaaaaaaaaaaaaaaaaa', N'aaaaaaaaaaaaaaaaaaaaaa', N'aa
', N'aa', N'<p>aa</p>
', 1, N'aa', CAST(N'2023-12-04T00:36:10.390' AS DateTime), NULL, N'Timeline', 1, 3, N'aaaaaaaaaaaaaaaaaaaaaa-54.jpg', 1)
INSERT [dbo].[Posts] ([post_id], [userid], [post_title], [post_slug], [post_teaser], [post_review], [post_content], [post_type], [post_tag], [create_date], [edit_date], [dynasty], [ViewCount], [Rated], [AvatarImage], [status]) VALUES (5, 1, N'Lộ diện “sát thủ” đáng ngại bậc nhất đối với xe tăng M1 Abrams Mỹ chuyển cho Ukraine', N'lo-dien-sat-thu-dang-ngai-bac-nhat-doi-voi-xe-tang-m1-abrams-my-chuyen-cho-ukraine-1', N'Angelababy sụt cân và hốc hác trông thấy sau khi bị phong sát, địa vị trong giới lao dốc không phanh', N'xu huong', N'<p>Ng&agrave;y 7/12, QQ đăng tải hậu trường buổi chụp ảnh cho tạp ch&iacute; Grazia Singapore của&nbsp;<a href="https://kenh14.vn/angelababy.html" target="_blank" title="angelababy">Angelababy</a>. Đ&acirc;y l&agrave; h&igrave;nh ảnh lộ mặt hiếm hoi của nữ diễn vi&ecirc;n sau khi bị cấm s&oacute;ng ở showbiz Trung Quốc.</p>

<ul>
	<li><a href="https://kenh14.vn/co-con-canh-cua-nao-cho-angelababy-2023120520470147.chn" target="_blank">C&oacute; c&ograve;n c&aacute;nh cửa n&agrave;o cho Angelababy?</a></li>
</ul>

<p>Người đẹp sinh năm 1989 được nhận x&eacute;t sụt c&acirc;n đ&aacute;ng kể, hốc h&aacute;c hơn trước, gương mặt g&oacute;c cạnh thấy r&otilde;. Trang tin cho rằng biến cố sự nghiệp đ&atilde; ảnh hưởng kh&ocirc;ng nhỏ đến Angelababy.</p>
', 1, N'#baiviet', CAST(N'2023-12-07T19:35:44.053' AS DateTime), NULL, N'Dinh', 1, 3, N'lo-dien-sat-thu-dang-ngai-bac-nhat-doi-voi-xe-tang-m1-abrams-my-chuyen-cho-ukraine-93.jpg', 1)
INSERT [dbo].[Posts] ([post_id], [userid], [post_title], [post_slug], [post_teaser], [post_review], [post_content], [post_type], [post_tag], [create_date], [edit_date], [dynasty], [ViewCount], [Rated], [AvatarImage], [status]) VALUES (6, 1, N'Jennie (BLACKPINK) bất ngờ bị cà khịa cực mạnh vì hẹn hò tận 3 ca sĩ hàng đầu Hàn Quốc', N'jennie-blackpink-bat-ngo-bi-ca-khia-cuc-manh-vi-hen-ho-tan-3-ca-si-hang-dau-han-quoc', N'Chuyện tình cảm của Jennie (BLACKPINK) chưa bao giờ là chủ đề hết hot đối với công chúng.', N'good', N'<p>B&agrave;i đăng n&oacute;i tr&ecirc;n g&acirc;y ch&uacute; &yacute; ngay từ ti&ecirc;u đề:&nbsp;<em>&ldquo;Jennie vừa chia tay rồi. Người h&acirc;m mộ của c&aacute;c nam idol phải n&acirc;ng cao cảnh gi&aacute;c với c&ocirc; ấy&rdquo;.&nbsp;</em>Trong phần nội dung, người viết b&agrave;i kh&ocirc;ng ngần ngại xỉa x&oacute;i Jennie, ngầm tố nữ idol lăng nhăng:&nbsp;<em>&ldquo;Fan của c&aacute;c thần tượng nam n&ecirc;n thấy lo lắng, bất an đi l&agrave; vừa. Jennie c&oacute; thể sẽ đi t&igrave;m kiếm ứng cử vi&ecirc;n mới để hẹn h&ograve; đấy&rdquo;.</em>Jennie - V lần đầu d&iacute;nh tin t&igrave;nh &aacute;i hồi th&aacute;ng 5 năm ngo&aacute;i. V&agrave;o thời điểm đ&oacute;, cộng đồng mạng ch&acirc;u &Aacute; b&ugrave;ng nổ trước 1 h&igrave;nh ảnh được cho l&agrave; th&agrave;nh vi&ecirc;n BTS l&aacute;i xe chở mỹ nh&acirc;n sinh năm 1996 đi hẹn h&ograve; ở đảo Jeju. Sau đ&oacute;, loạt ảnh th&acirc;n mật của Jennie - V được ph&aacute;t t&aacute;n tr&ecirc;n mạng x&atilde; hội, khiến c&ocirc;ng ch&uacute;ng tin rằng 2 ng&ocirc;i sao l&agrave; 1 cặp đ&ocirc;i y&ecirc;u nhau. Đến ng&agrave;y 6/12 năm nay, truyền th&ocirc;ng H&agrave;n đưa tin 2 idol h&agrave;ng đầu ch&iacute;nh thức chia tay</p>
', 2, NULL, CAST(N'2023-12-07T19:40:11.580' AS DateTime), CAST(N'2023-12-07T19:41:12.237' AS DateTime), N'HongBang', 3, 3, N'jennie-blackpink-bat-ngo-bi-ca-khia-cuc-manh-vi-hen-ho-tan-3-ca-si-hang-dau-han-quoc-6.webp', 1)
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[Series] ON 

INSERT [dbo].[Series] ([seriesID], [seriesName]) VALUES (1, N'Car')
SET IDENTITY_INSERT [dbo].[Series] OFF
GO
SET IDENTITY_INSERT [dbo].[StickyPosts] ON 

INSERT [dbo].[StickyPosts] ([id], [priority], [post_id]) VALUES (3, 3, 2)
SET IDENTITY_INSERT [dbo].[StickyPosts] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (1, N'xu huong')
INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (2, N'learning ')
INSERT [dbo].[Tags] ([TagID], [TagName]) VALUES (3, N'giai tri')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
INSERT [dbo].[Tbl_PostTags] ([PostID], [TagID]) VALUES (1, 1)
INSERT [dbo].[Tbl_PostTags] ([PostID], [TagID]) VALUES (2, 1)
INSERT [dbo].[Tbl_PostTags] ([PostID], [TagID]) VALUES (3, 1)
INSERT [dbo].[Tbl_PostTags] ([PostID], [TagID]) VALUES (4, 1)
INSERT [dbo].[Tbl_PostTags] ([PostID], [TagID]) VALUES (5, 1)
INSERT [dbo].[Tbl_PostTags] ([PostID], [TagID]) VALUES (6, 1)
INSERT [dbo].[Tbl_PostTags] ([PostID], [TagID]) VALUES (6, 3)
GO
INSERT [dbo].[Tbl_SeriesPost] ([PostID], [seriesID]) VALUES (1, 1)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([userid], [username], [password], [fullname], [userrole], [status]) VALUES (1, N'admin', N'0192023A7BBD73250516F069DF18B500', N'ADMIN ĐVCP', N'admin', 1)
INSERT [dbo].[Users] ([userid], [username], [password], [fullname], [userrole], [status]) VALUES (2, N'admin2', N'admin2', N'tuantran', N'2', 0)
INSERT [dbo].[Users] ([userid], [username], [password], [fullname], [userrole], [status]) VALUES (3, N'tuantran', N'202CB962AC59075B964B07152D234B70', N'tranvantuan', N'editor', 1)
INSERT [dbo].[Users] ([userid], [username], [password], [fullname], [userrole], [status]) VALUES (4, N'colortuan@gmail.com', N'202CB962AC59075B964B07152D234B70', N'tuantran', N'editor', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Posts_dbo.Users_userid] FOREIGN KEY([userid])
REFERENCES [dbo].[Users] ([userid])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_dbo.Posts_dbo.Users_userid]
GO
ALTER TABLE [dbo].[StickyPosts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StickyPosts_dbo.Posts_post_id] FOREIGN KEY([post_id])
REFERENCES [dbo].[Posts] ([post_id])
GO
ALTER TABLE [dbo].[StickyPosts] CHECK CONSTRAINT [FK_dbo.StickyPosts_dbo.Posts_post_id]
GO
ALTER TABLE [dbo].[Tbl_PostTags]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Tbl_PostTags_dbo.Posts_PostID] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([post_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tbl_PostTags] CHECK CONSTRAINT [FK_dbo.Tbl_PostTags_dbo.Posts_PostID]
GO
ALTER TABLE [dbo].[Tbl_PostTags]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Tbl_PostTags_dbo.Tags_TagID] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tags] ([TagID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tbl_PostTags] CHECK CONSTRAINT [FK_dbo.Tbl_PostTags_dbo.Tags_TagID]
GO
ALTER TABLE [dbo].[Tbl_SeriesPost]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Tbl_SeriesPost_dbo.Posts_PostID] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([post_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tbl_SeriesPost] CHECK CONSTRAINT [FK_dbo.Tbl_SeriesPost_dbo.Posts_PostID]
GO
ALTER TABLE [dbo].[Tbl_SeriesPost]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Tbl_SeriesPost_dbo.Series_seriesID] FOREIGN KEY([seriesID])
REFERENCES [dbo].[Series] ([seriesID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tbl_SeriesPost] CHECK CONSTRAINT [FK_dbo.Tbl_SeriesPost_dbo.Series_seriesID]
GO
