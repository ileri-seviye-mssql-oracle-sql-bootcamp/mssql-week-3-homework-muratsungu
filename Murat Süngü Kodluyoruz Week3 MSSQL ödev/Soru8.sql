-- 8. Adý A ile baþlayýp soyadýnda ak geçen müþterilerden en fazla sipariþ vereni bulunuz.

select top 1 k.isim+' '+k.soyad as [Ad Soyad], count(*) as sayi from tblKullanici k
join tblSiparis s on s.kullaniciKod=k.kullaniciKod
where k.isim like 'A%' and k.soyad like '%AK%'
group by k.isim,k.soyad
order by count(*) desc

