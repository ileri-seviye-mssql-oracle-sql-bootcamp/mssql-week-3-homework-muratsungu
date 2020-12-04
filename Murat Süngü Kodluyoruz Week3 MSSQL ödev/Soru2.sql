
-- 2.En y�ksek toplam fiyata sahip faturaya dahil �r�nleri ve faturay� sipari� veren m��terinin ad�n� soyad�n� listeyen SQL kodunu yaz�n�z.

select distinct k.isim+' '+k.soyad as AdSoyad, s.faturaKod,  u.urunAd from tblKullanici k
inner join tblSiparis s on s.kullaniciKod=k.kullaniciKod
inner join tblSiparisDetay sd on sd.faturaKod=s.faturaKod
inner join tblUrun u on u.urunKod=sd.urunKod
where s.toplam = (
	select max(s.toplam) from tblSiparis s)
