/*  7. 3297 numaral� �r�n� en fazla sipari� veren �ehri bulunuz.

update  tblkullanici      kullan�c� tablosunda sehir kodu yerine kocaeli yazan sat�r vard�
set sehir=53
where sehir='Kocaeli' */

select top 1 se.Isim, count(sd.SatirNo) as sayi from tblSehir se
left join tblKullanici k on k.sehir=se.Id
join tblSiparis s on s.kullaniciKod=k.kullaniciKod
join tblSiparisDetay sd on sd.faturaKod=s.faturaKod
where sd.urunKod = 3297
group by se.Isim
order by count(sd.SatirNo) desc