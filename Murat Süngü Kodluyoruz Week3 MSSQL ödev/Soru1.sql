-- 1.�r�nlerin �r�n ad�, �r�n kodunu ve KDV dahil sat�� fiyat�n� listeleyiniz.

select urunAd, urunKod, (listeFiyat*(1+KDVoran)) as Kdvdahilfiyat from tblurun

