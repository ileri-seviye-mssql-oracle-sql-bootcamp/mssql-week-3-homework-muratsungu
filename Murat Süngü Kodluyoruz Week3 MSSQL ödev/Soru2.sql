
-- 2.En yüksek toplam fiyata sahip faturaya dahil ürünleri ve faturayý sipariþ veren müþterinin adýný soyadýný listeyen SQL kodunu yazýnýz.

select distinct k.isim+' '+k.soyad as AdSoyad, s.faturaKod,  u.urunAd from tblKullanici k
inner join tblSiparis s on s.kullaniciKod=k.kullaniciKod
inner join tblSiparisDetay sd on sd.faturaKod=s.faturaKod
inner join tblUrun u on u.urunKod=sd.urunKod
where s.toplam = (
	select max(s.toplam) from tblSiparis s)
