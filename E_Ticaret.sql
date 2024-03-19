USE [HIRDAVAT]
GO
/****** Object:  Table [dbo].[Il]    Script Date: 19.03.2024 22:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Il](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ilce]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ilce](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](255) NOT NULL,
	[IlId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](50) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marka]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marka](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](50) NULL,
 CONSTRAINT [PK_Marka] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](50) NULL,
	[Soyad] [varchar](50) NULL,
	[FirmaAd] [varchar](50) NULL,
	[IlId] [int] NULL,
	[IlceId] [int] NULL,
	[Telefon] [varchar](50) NULL,
	[Adres] [varchar](500) NULL,
	[Sifre] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Musteri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparis]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [datetime] NULL,
	[MusteriId] [int] NULL,
	[DurumId] [int] NULL,
	[ToplamFiyat] [float] NULL,
	[KDVTutar] [float] NULL,
	[Indirim] [float] NULL,
	[FaturaTutari] [float] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Siparis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiparisDetay]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparisDetay](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiparisId] [int] NULL,
	[UrunId] [int] NULL,
	[TalepAdet] [int] NULL,
	[TeslimAdet] [int] NULL,
	[Fiyat] [float] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_SiparisDetay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiparisDurum]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparisDurum](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](50) NULL,
 CONSTRAINT [PK_SiparisDurum] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kod] [varchar](50) NULL,
	[Ad] [varchar](50) NULL,
	[KategoriId] [int] NULL,
	[MarkaId] [int] NULL,
	[StokDurum] [bit] NULL,
	[ListeFiyat] [float] NULL,
	[Iskonto1] [int] NULL,
	[Iskonto2] [int] NULL,
	[Iskonto3] [int] NULL,
	[KutuAdet] [int] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Musteri] ADD  CONSTRAINT [DF_Musteri_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Siparis] ADD  CONSTRAINT [DF_Siparis_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[SiparisDetay] ADD  CONSTRAINT [DF_SiparisDetay_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Urun] ADD  CONSTRAINT [DF_Urun_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  StoredProcedure [dbo].[usp_Il_Oku]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Il_Oku]
as
begin

select * from Il

end
GO
/****** Object:  StoredProcedure [dbo].[usp_Ilce_Oku]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Ilce_Oku]
@IlId int
as
begin

select * from Ilce
where IlId=@IlId
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Musteri_Ekle]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Musteri_Ekle]

@Ad varchar(50),
@Soyad varchar(50),
@FirmaAd varchar(50),
@IlId int,
@IlceId Int,
@Telefon varchar(50),
@Adres varchar(500),
@Sifre varchar(100)

as
begin
insert into Musteri (Ad,Soyad,FirmaAd,IlId,IlceId,Telefon,Adres,Sifre)
Values(@Ad,@Soyad,@FirmaAd,@IlId,@IlceId , @Telefon, @Adres, @Sifre)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Musteri_Oku]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Musteri_Oku]
@Id int
as
begin
select Musteri.Ad,Soyad,FirmaAd,Il.Ad SehirAd,Ilce.Ad IlceAd, Telefon,Adres,Sifre,CreateDate Tarih  from Musteri  
inner join Il on Musteri.IlId=Il.Id
inner join Ilce on Musteri.IlceId=Ilce.Id
where Musteri.Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Musteri_Sil]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_Musteri_Sil]
@Id int
AS
BEGIN 

DELETE FROM Musteri
    WHERE Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Siparis_Ekle]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_Siparis_Ekle]
@MusteriId int,
@Tarih datetime,
@DurumId int,
@ToplamFiyat float,
@KDVTutar float,
@Indirim float,
@FaturaTutari float
AS
BEGIN

insert into Siparis(MusteriId,Tarih,DurumId,ToplamFiyat,KDVTutar,Indirim,FaturaTutari)
Values(@MusteriId,@Tarih,@DurumId,@ToplamFiyat,@KDVTutar,@Indirim,@FaturaTutari)


END
GO
/****** Object:  StoredProcedure [dbo].[usp_Siparis_Oku]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[usp_Siparis_Oku]
@Id int
as
begin
select MusteriId,SiparisDurum.Ad,ToplamFiyat,KDVTutar,Indirim,FaturaTutari,Siparis.CreateDate Tarih  from Siparis 
inner join Musteri on Musteri.Id=Siparis.MusteriId
inner join SiparisDurum on SiparisDurum.Id=Siparis.DurumId

where Siparis.Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Siparis_Oku1]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[usp_Siparis_Oku1]
@Id int
as
begin
select *  from Siparis 
where Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Siparis_Sil]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_Siparis_Sil]
@Id int
AS
BEGIN 

DELETE FROM Siparis
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SiparisDetay_Ekle]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_SiparisDetay_Ekle]
@SiparisId int,
@UrunId int,
@TalepAdet int,
@Fiyat float,
@TeslimAdedi int
AS
BEGIN

insert into SiparisDetay(SiparisId,UrunId,TalepAdet,Fiyat,TeslimAdet)
Values(@SiparisId,@UrunId,@TalepAdet,@Fiyat,@TeslimAdedi)


END
GO
/****** Object:  StoredProcedure [dbo].[usp_SiparisDetay_Oku]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_SiparisDetay_Oku]
@Id int
as
begin
select SiparisId,Urun.Ad,TalepAdet,Fiyat,TeslimAdet  from SiparisDetay 
inner join Urun on Urun.Id=SiparisDetay.UrunId
where SiparisDetay.Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_SiparisDetay_Sil]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_SiparisDetay_Sil]
@Id int
AS
BEGIN 

DELETE FROM SiparisDetay
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Urun_Ekle]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_Urun_Ekle]
@Ad varchar(50),
@KategoriId int,
@MarkaId int,
@StokDurum bit,
@ListeFiyat float,
@Iskonto1 int,
@Iskonto2 int,
@Iskonto3 int,
@KutuAdet int
AS
BEGIN 

insert into Urun (Ad,KategoriId,MarkaId,StokDurum,ListeFiyat,Iskonto1,Iskonto2,Iskonto3,KutuAdet)
Values(@Ad,@KategoriId,@MarkaId,@StokDurum,@ListeFiyat,@Iskonto1,@Iskonto2,@Iskonto3,@KutuAdet)

END

GO
/****** Object:  StoredProcedure [dbo].[usp_Urun_Oku]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Urun_Oku]
@Id int
as
begin
select Kod,Urun.Ad,Kategori.Ad KategoriAd,Marka.Ad MarkaAd,StokDurum,ListeFiyat,Iskonto1,Iskonto2,Iskonto3  from Urun  
inner join Kategori on Urun.KategoriId=Kategori.Id
inner join Marka on Urun.MarkaId=Marka.Id
where Urun.Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Urun_Sil]    Script Date: 19.03.2024 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_Urun_Sil]
@Id int
AS
BEGIN 

DELETE FROM Urun
    WHERE Id = @Id;
END
GO
