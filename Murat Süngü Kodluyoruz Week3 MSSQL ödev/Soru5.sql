-- 5.�ptal edilen sipari�lerde bulunan �r�nleri listeyiniz.

select sd.faturaKod, u.urunAd,sdu.aciklama from tblSiparisDurum sdu
join tblSiparis s on s.siparisDurumKod=sdu.siparisDurumKod
join tblSiparisDetay sd on sd.faturaKod=s.faturaKod
join tblUrun u on u.urunKod=sd.urunKod
where sdu.siparisDurumKod=10
order by sd.faturaKod
