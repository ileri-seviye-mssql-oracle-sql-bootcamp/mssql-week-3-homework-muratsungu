--3.Hi� sipari� vermeyen m��terilerin mesleklerini listeleyiniz.

select m.meslek from tblMeslek m
join tblKullanici k on
m.meslekKod=k.meslekKod
left join tblSiparis s on
k.kullaniciKod=s.kullaniciKod
where s.toplam is null
