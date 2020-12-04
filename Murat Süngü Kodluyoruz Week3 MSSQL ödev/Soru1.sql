-- 1.Ürünlerin ürün adý, ürün kodunu ve KDV dahil satýþ fiyatýný listeleyiniz.

select urunAd, urunKod, (listeFiyat*(1+KDVoran)) as Kdvdahilfiyat from tblurun

