USE [shoes]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'Howard', N'TSR5MR', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'Tana', N'EHS8CM', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (15, N'Echo', N'IGE8TN', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (16, N'Slade', N'OFO6QS', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (21, N'Vera', N'CZB2VM', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (23, N'Katell', N'SFS0IW', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (25, N'Robin', N'KIS9AF', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (27, N'admin', N'123', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (28, N'mra', N'mra', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (29, N'mrb', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (30, N'Camden', N'123', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'GI�Y ADIDAS')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'GI�Y NIKE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'GI�Y BITI''S')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'GI�Y CONVERSE')
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'Gi�y th? thao', N'https://canary.contestimg.wish.com/api/webimage/5f5ad3f3706bf3003d7acbd3-normal.jpg?cache_buster=10f7d3b88daf4019fa9d8be157793111', 100.0000, N'Gi�y th? thao nam Adidas Enerergy Falcon EE9844', N'Gi�y th? thao Adidas Advantage Clean s? d?ng ch?t li?u cao c?p, tho�ng kh� c? m?t trong v� m?t ngo�i gi�p b?n lu�n d? ch?u v� tho?i m�i d� mang trong th?i gian d�i. Gi�y Adidas VS Advantage c� b? �? �m �i gi�p ng�?i �i t?n h�?ng c?m gi�c tho?i m�i cho c? ng�y d�i v?n �?ng. Th?i trang v?n l� s? quay v?ng, v� thi?t k? ��n gi?n, c? �i?n �?i di?n cho xu h�?ng th?i trang ho�i c? �ang quay tr? l?i v� ��?c gi?i tr? ��n nh?n n?ng nhi?t h�n bao gi? h?t. Kh�ng gi?ng nh� nh?ng lo?i gi�y th? thao th�ng th�?ng, m?u gi�y adidas Advantage c� ki?u d�ng "thon th?" h�n, khi?n cho ��i ch�n kh�ng b? tr? n�n l?c l?ng so v?i ��i gi�y th? thao v?n b? "mang ti?ng" l� th� k?ch, kh�ng �?p m?t. Th�m n?a, �? c?a lo?i gi�y n�y ��?c thi?t k? theo ki?u �? xu?ng 3cm v?a t?o t�nh ��n h?i cho t?ng b�?c �i m� c?ng "ti?n tay" gi�p cho ng�?i �i "�n gian" chi?u cao kh� ��ng k?. V� t?t nhi�n, �i?m c?ng tuy?t v?i nh?t ch�nh l� s? ph?i h?p tuy?t v?i t? ki?u d�ng �?n m�u s?c c?a c�c nh� thi?t k? t�i hoa �? l�m cho ��i gi�y ph� h?p v?i m?i gi?i t�nh, m?i l?a tu?i, mix ��?c v?i r?t nhi?u phong c�ch kh�c nhau', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'Gi�y ch?y b?', N'https://canary.contestimg.wish.com/api/webimage/5d5bd678d55c843e49fe3077-normal.jpg?cache_buster=ddfc80fb52c6bd85a67c68ceb94a91d7', 120.0000, N'Gi�y Adidas Nova Run EE9266
', N'Gi�y th? thao Adidas Advantage Clean s? d?ng ch?t li?u cao c?p, tho�ng kh� c? m?t trong v� m?t ngo�i gi�p b?n lu�n d? ch?u v� tho?i m�i d� mang trong th?i gian d�i. Gi�y Adidas VS Advantage c� b? �? �m �i gi�p ng�?i �i t?n h�?ng c?m gi�c tho?i m�i cho c? ng�y d�i v?n �?ng. Th?i trang v?n l� s? quay v?ng, v� thi?t k? ��n gi?n, c? �i?n �?i di?n cho xu h�?ng th?i trang ho�i c? �ang quay tr? l?i v� ��?c gi?i tr? ��n nh?n n?ng nhi?t h�n bao gi? h?t. Kh�ng gi?ng nh� nh?ng lo?i gi�y th? thao th�ng th�?ng, m?u gi�y adidas Advantage c� ki?u d�ng "thon th?" h�n, khi?n cho ��i ch�n kh�ng b? tr? n�n l?c l?ng so v?i ��i gi�y th? thao v?n b? "mang ti?ng" l� th� k?ch, kh�ng �?p m?t. Th�m n?a, �? c?a lo?i gi�y n�y ��?c thi?t k? theo ki?u �? xu?ng 3cm v?a t?o t�nh ��n h?i cho t?ng b�?c �i m� c?ng "ti?n tay" gi�p cho ng�?i �i "�n gian" chi?u cao kh� ��ng k?. V� t?t nhi�n, �i?m c?ng tuy?t v?i nh?t ch�nh l� s? ph?i h?p tuy?t v?i t? ki?u d�ng �?n m�u s?c c?a c�c nh� thi?t k? t�i hoa �? l�m cho ��i gi�y ph� h?p v?i m?i gi?i t�nh, m?i l?a tu?i, mix ��?c v?i r?t nhi?u phong c�ch kh�c nhau', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Gi�y du l?ch', N'https://canary.contestimg.wish.com/api/webimage/5da6e559dcf2d00d2fbc707c-normal.jpg?cache_buster=d9139cea7e503395b907432f89e292d6', 130.0000, N'D�p ��c th? thao nam Adidas Adilette Boost Slides �en - EH2256
', N'Gi�y th? thao Adidas Advantage Clean s? d?ng ch?t li?u cao c?p, tho�ng kh� c? m?t trong v� m?t ngo�i gi�p b?n lu�n d? ch?u v� tho?i m�i d� mang trong th?i gian d�i. Gi�y Adidas VS Advantage c� b? �? �m �i gi�p ng�?i �i t?n h�?ng c?m gi�c tho?i m�i cho c? ng�y d�i v?n �?ng. Th?i trang v?n l� s? quay v?ng, v� thi?t k? ��n gi?n, c? �i?n �?i di?n cho xu h�?ng th?i trang ho�i c? �ang quay tr? l?i v� ��?c gi?i tr? ��n nh?n n?ng nhi?t h�n bao gi? h?t. Kh�ng gi?ng nh� nh?ng lo?i gi�y th? thao th�ng th�?ng, m?u gi�y adidas Advantage c� ki?u d�ng "thon th?" h�n, khi?n cho ��i ch�n kh�ng b? tr? n�n l?c l?ng so v?i ��i gi�y th? thao v?n b? "mang ti?ng" l� th� k?ch, kh�ng �?p m?t. Th�m n?a, �? c?a lo?i gi�y n�y ��?c thi?t k? theo ki?u �? xu?ng 3cm v?a t?o t�nh ��n h?i cho t?ng b�?c �i m� c?ng "ti?n tay" gi�p cho ng�?i �i "�n gian" chi?u cao kh� ��ng k?. V� t?t nhi�n, �i?m c?ng tuy?t v?i nh?t ch�nh l� s? ph?i h?p tuy?t v?i t? ki?u d�ng �?n m�u s?c c?a c�c nh� thi?t k? t�i hoa �? l�m cho ��i gi�y ph� h?p v?i m?i gi?i t�nh, m?i l?a tu?i, mix ��?c v?i r?t nhi?u phong c�ch kh�c nhau', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Gi�y adidas 2A', N'https://image.yes24.vn/Upload/ProductImage/thethaochinhang/2063162_L.jpg?width=550&height=550', 140.0000, N'Gi�y th? thao nam Adidas Enerergy Falcon EE9844
', N'Gi�y th? thao Adidas Advantage Clean s? d?ng ch?t li?u cao c?p, tho�ng kh� c? m?t trong v� m?t ngo�i gi�p b?n lu�n d? ch?u v� tho?i m�i d� mang trong th?i gian d�i. Gi�y Adidas VS Advantage c� b? �? �m �i gi�p ng�?i �i t?n h�?ng c?m gi�c tho?i m�i cho c? ng�y d�i v?n �?ng. Th?i trang v?n l� s? quay v?ng, v� thi?t k? ��n gi?n, c? �i?n �?i di?n cho xu h�?ng th?i trang ho�i c? �ang quay tr? l?i v� ��?c gi?i tr? ��n nh?n n?ng nhi?t h�n bao gi? h?t. Kh�ng gi?ng nh� nh?ng lo?i gi�y th? thao th�ng th�?ng, m?u gi�y adidas Advantage c� ki?u d�ng "thon th?" h�n, khi?n cho ��i ch�n kh�ng b? tr? n�n l?c l?ng so v?i ��i gi�y th? thao v?n b? "mang ti?ng" l� th� k?ch, kh�ng �?p m?t. Th�m n?a, �? c?a lo?i gi�y n�y ��?c thi?t k? theo ki?u �? xu?ng 3cm v?a t?o t�nh ��n h?i cho t?ng b�?c �i m� c?ng "ti?n tay" gi�p cho ng�?i �i "�n gian" chi?u cao kh� ��ng k?. V� t?t nhi�n, �i?m c?ng tuy?t v?i nh?t ch�nh l� s? ph?i h?p tuy?t v?i t? ki?u d�ng �?n m�u s?c c?a c�c nh� thi?t k? t�i hoa �? l�m cho ��i gi�y ph� h?p v?i m?i gi?i t�nh, m?i l?a tu?i, mix ��?c v?i r?t nhi?u phong c�ch kh�c nhau', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Gi�y adidas 2B', N'https://image.yes24.vn/Upload/ProductImage/thethaochinhang/2063770_L.jpg?width=550&height=550', 150.0000, N'Gi�y �� b�ng nam ch�nh h?ng Adidas Predator 18.4 FXG DB2007
', N'Gi�y th? thao Adidas Advantage Clean s? d?ng ch?t li?u cao c?p, tho�ng kh� c? m?t trong v� m?t ngo�i gi�p b?n lu�n d? ch?u v� tho?i m�i d� mang trong th?i gian d�i. Gi�y Adidas VS Advantage c� b? �? �m �i gi�p ng�?i �i t?n h�?ng c?m gi�c tho?i m�i cho c? ng�y d�i v?n �?ng. Th?i trang v?n l� s? quay v?ng, v� thi?t k? ��n gi?n, c? �i?n �?i di?n cho xu h�?ng th?i trang ho�i c? �ang quay tr? l?i v� ��?c gi?i tr? ��n nh?n n?ng nhi?t h�n bao gi? h?t. Kh�ng gi?ng nh� nh?ng lo?i gi�y th? thao th�ng th�?ng, m?u gi�y adidas Advantage c� ki?u d�ng "thon th?" h�n, khi?n cho ��i ch�n kh�ng b? tr? n�n l?c l?ng so v?i ��i gi�y th? thao v?n b? "mang ti?ng" l� th� k?ch, kh�ng �?p m?t. Th�m n?a, �? c?a lo?i gi�y n�y ��?c thi?t k? theo ki?u �? xu?ng 3cm v?a t?o t�nh ��n h?i cho t?ng b�?c �i m� c?ng "ti?n tay" gi�p cho ng�?i �i "�n gian" chi?u cao kh� ��ng k?. V� t?t nhi�n, �i?m c?ng tuy?t v?i nh?t ch�nh l� s? ph?i h?p tuy?t v?i t? ki?u d�ng �?n m�u s?c c?a c�c nh� thi?t k? t�i hoa �? l�m cho ��i gi�y ph� h?p v?i m?i gi?i t�nh, m?i l?a tu?i, mix ��?c v?i r?t nhi?u phong c�ch kh�c nhau', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'Gi�y adidas 2C', N'https://image.yes24.vn/Upload/ProductImage/GmarketSport/2016304_L.jpg?width=550&height=550', 160.0000, N'Gi�y �� b�ng nam ch�nh h?ng Adidas Copa Tango 18.3 TF DB2410
', N'Gi�y th? thao Adidas Advantage Clean s? d?ng ch?t li?u cao c?p, tho�ng kh� c? m?t trong v� m?t ngo�i gi�p b?n lu�n d? ch?u v� tho?i m�i d� mang trong th?i gian d�i. Gi�y Adidas VS Advantage c� b? �? �m �i gi�p ng�?i �i t?n h�?ng c?m gi�c tho?i m�i cho c? ng�y d�i v?n �?ng. Th?i trang v?n l� s? quay v?ng, v� thi?t k? ��n gi?n, c? �i?n �?i di?n cho xu h�?ng th?i trang ho�i c? �ang quay tr? l?i v� ��?c gi?i tr? ��n nh?n n?ng nhi?t h�n bao gi? h?t. Kh�ng gi?ng nh� nh?ng lo?i gi�y th? thao th�ng th�?ng, m?u gi�y adidas Advantage c� ki?u d�ng "thon th?" h�n, khi?n cho ��i ch�n kh�ng b? tr? n�n l?c l?ng so v?i ��i gi�y th? thao v?n b? "mang ti?ng" l� th� k?ch, kh�ng �?p m?t. Th�m n?a, �? c?a lo?i gi�y n�y ��?c thi?t k? theo ki?u �? xu?ng 3cm v?a t?o t�nh ��n h?i cho t?ng b�?c �i m� c?ng "ti?n tay" gi�p cho ng�?i �i "�n gian" chi?u cao kh� ��ng k?. V� t?t nhi�n, �i?m c?ng tuy?t v?i nh?t ch�nh l� s? ph?i h?p tuy?t v?i t? ki?u d�ng �?n m�u s?c c?a c�c nh� thi?t k? t�i hoa �? l�m cho ��i gi�y ph� h?p v?i m?i gi?i t�nh, m?i l?a tu?i, mix ��?c v?i r?t nhi?u phong c�ch kh�c nhau', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Gi�y adidas 2D', N'https://image.yes24.vn/Upload/ProductImage/GmarketSport/2058803_L.jpg?width=550&height=550', 170.0000, N'Gi�y �� b�ng nam ch�nh h?ng Adidas X TANGO 18.4 TF DB2479
', N'Gi�y th? thao Adidas Advantage Clean s? d?ng ch?t li?u cao c?p, tho�ng kh� c? m?t trong v� m?t ngo�i gi�p b?n lu�n d? ch?u v� tho?i m�i d� mang trong th?i gian d�i. Gi�y Adidas VS Advantage c� b? �? �m �i gi�p ng�?i �i t?n h�?ng c?m gi�c tho?i m�i cho c? ng�y d�i v?n �?ng. Th?i trang v?n l� s? quay v?ng, v� thi?t k? ��n gi?n, c? �i?n �?i di?n cho xu h�?ng th?i trang ho�i c? �ang quay tr? l?i v� ��?c gi?i tr? ��n nh?n n?ng nhi?t h�n bao gi? h?t. Kh�ng gi?ng nh� nh?ng lo?i gi�y th? thao th�ng th�?ng, m?u gi�y adidas Advantage c� ki?u d�ng "thon th?" h�n, khi?n cho ��i ch�n kh�ng b? tr? n�n l?c l?ng so v?i ��i gi�y th? thao v?n b? "mang ti?ng" l� th� k?ch, kh�ng �?p m?t. Th�m n?a, �? c?a lo?i gi�y n�y ��?c thi?t k? theo ki?u �? xu?ng 3cm v?a t?o t�nh ��n h?i cho t?ng b�?c �i m� c?ng "ti?n tay" gi�p cho ng�?i �i "�n gian" chi?u cao kh� ��ng k?. V� t?t nhi�n, �i?m c?ng tuy?t v?i nh?t ch�nh l� s? ph?i h?p tuy?t v?i t? ki?u d�ng �?n m�u s?c c?a c�c nh� thi?t k? t�i hoa �? l�m cho ��i gi�y ph� h?p v?i m?i gi?i t�nh, m?i l?a tu?i, mix ��?c v?i r?t nhi?u phong c�ch kh�c nhau', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'New Men''s Running Shoes', N'https://canary.contestimg.wish.com/api/webimage/5c4a05a08b26e56dcf17a643-normal.jpg?cache_buster=6d01b751858e14e68932bb234cdc44c1', 150.0000, N'Comfortable Sports Shoes Men Athletic Outdoor Cushioning Sneakers for Walking&Jogging (EUR Size 39-48)', N'New Men''s Running Shoes Comfortable Sports Shoes Men Athletic Outdoor Cushioning Sneakers for Walking&Jogging (EUR Size 39-48)', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Men Hiking Shoes Waterproof Non', N'https://canary.contestimg.wish.com/api/webimage/5dc3c309d8b69d0de8949a21-large.jpg?cache_buster=68ad269a9f7b07d0effa9e48c1dc5c0f', 180.0000, N'Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-47 3 Colors
', N'Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-47 3 Colors
', 3, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Winter Men''s Snow Boots Plus Velvet', N'https://canary.contestimg.wish.com/api/webimage/5da3d0b594a0f07fdec6c5ac-large.jpg?cache_buster=a2471ea62eba44e7c0b0f4d2b4c64681', 180.0000, N'Winter Men''s Snow Boots Plus Velvet Cotton Shoes Men''s Shoes Martin Cotton Boots Warm Shoes
', N'Winter Men''s Snow Boots Plus Velvet Cotton Shoes Men''s Shoes Martin Cotton Boots Warm Shoes
', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'New Trend Men Hiking Shoes', N'https://canary.contestimg.wish.com/api/webimage/5df1f07d1fc34e0c50f78eb7-large.jpg?cache_buster=36188c130400df0faa4256aad8e90109', 150.0000, N'New Trend Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-48
', N'New Trend Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-48
', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Mens Skid Resistant Hiking Shoes', N'https://canary.contestimg.wish.com/api/webimage/5f3fb6d1b2a7ef003f6bd8a4-large.jpg?cache_buster=c9295f971ce194c1e68f6144f11314c6', 165.0000, N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers
', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers
', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'NEW Spring White Shoes Men', N'https://canary.contestimg.wish.com/api/webimage/5d0235c9ae115f0be32755ef-large.jpg?cache_buster=fd2c105001ca1cbb03795818542906cc', 185.0000, N'NEW Spring White Shoes Men Shoes Men''s Casual Shoes Fashion Sneakers Street Cool Man Footwear
', N'NEW Spring White Shoes Men Shoes Men''s Casual Shoes Fashion Sneakers Street Cool Man Footwear
', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, N'Winter Outdoor Waterproof', N'https://canary.contestimg.wish.com/api/webimage/5d70b17d55d5981ab5789f86-large.jpg?cache_buster=19f34456a6b274b940c839db21c2ab51', 200.0000, N'Winter Outdoor Waterproof Non-slip Plus Velvet Warm Snow Boots Cotton Boots Men''s Shoes
', N'Winter Outdoor Waterproof Non-slip Plus Velvet Warm Snow Boots Cotton Boots Men''s Shoes
', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'Men''s Fashion Casual Shoes', N'https://canary.contestimg.wish.com/api/webimage/5c4a06d9e6a1c62df8877125-large.jpg?cache_buster=d17e757a3f8465edc71812b95b4b1a57', 100.0000, N'Men''s Fashion Casual Shoes Sports Running Shoes Men''s Shoes
', N'Men''s Fashion Casual Shoes Sports Running Shoes Men''s Shoes
', 4, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'Mens Skid Resistant Hiking Shoes', N'https://canary.contestimg.wish.com/api/webimage/5c4a02d1344e882b1a41bca4-large.jpg?cache_buster=bc4ce4d229ed4e42dbba614acb622899', 120.0000, N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors
', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors
', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, N'Men''s Modern Classic Lace Up Lined', N'https://canary.contestimg.wish.com/api/webimage/5c9543744578cb33ad0f56cd-large.jpg?cache_buster=ed84658c453c742ad13b9d565566ed06', 100.0000, N'Men''s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords
', N'Men''s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords
', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'Men''s Outdoors Waterproof Boots Sports Shoes', N'https://canary.contestimg.wish.com/api/webimage/5e0db090b6383fa7bb0416ab-large.jpg?cache_buster=92297459781628185d780669109c00d6', 120.0000, N'Men''s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men''s Winter Warm Boots(No Velvet/Plus Velvet)
', N'Men''s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men''s Winter Warm Boots(No Velvet/Plus Velvet)
', 3, 7)
SET IDENTITY_INSERT [dbo].[product] OFF
