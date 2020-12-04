-- 6.En fazla sipariþ veren meslek grubunu bulunuz.

select top 1 m.meslek,count(s.faturaKod) as sayý from tblMeslek m
left join tblKullanici k on k.meslekKod=m.meslekKod
left join tblSiparis s on s.kullaniciKod=k.kullaniciKod
group by m.meslek
order by count(s.faturaKod) desc
