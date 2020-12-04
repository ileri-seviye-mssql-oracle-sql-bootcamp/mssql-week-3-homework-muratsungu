
--4. 01.02.2007 - 05.03.2014 tarihleri aras�nda hangi �r�nden ka� adet sipari� edildi�ini bulan SQL kodunu yaz�n�z.

select u.urunAd, count(u.Barkod) as adet from tblUrun u
left join tblSiparisDetay sd on  u.urunKod=sd.urunKod
join tblSiparis s on s.faturaKod=sd.faturaKod
where s.siparisTarih between '01.02.2007' and '05.03.2014'
group by u.urunAd