ÖNYÜKLEME ÇEVİRİ VE ADAPTASYON
===============================
Malzemelerin çevirisi ReStructuredText (ReST) kullanılarak adapte edildi. Çeviriler onyukleme1/ dizini altında .rst uzantılı olarak çalışıldı. "rstoy.py"  script'i bu dosyaları html'e çevirip ayrıca derslerin kullanılabilirliğine yönelik ReST'te olmayan bazı tweak'ler uyguluyor (detayları için koda ve aşağıya bakınız). Derslerin derlenmiş ve yayına hazır hali oycompiled/ dosyasına konuluyor.

Tweak'ler:
----------
Ünite dosyalarının yazımını kolaylaştırmak için standart Markdown formatına aşağıdaki özellikler eklendi.

* Eğer bir başlıkta ``Süre: xx dakika`` benzeri bir metin geçerse süre kaydediliyor ve ayrıca başlık içindekiler listesine ekleniyor. Sonunda toplam ders süresi çıkartılıp otomatik olarak ekleniyor.
* Değerlendirme çemberlerinin yazımını kulaylaştırmak için bir format kullanıldı. Aşağıdaki şekilde girilen değerlendirme çemberi::
  
    $dc{( / ( + 2 4 ) ( - 6 3 ) )}
  
  Markdown derlemesinden önce parçalanarak içiçe ``<span>`` elemanlarına dönüştürülüyor. Bu elemanlarda CSS class olarak ``dc``, ``dcop``, ve ``dcval`` class'ları veriliyor.
* Markdown dersleme çıktısında ``<h1>`` olarak çıkan metin başlığının hemen altına ``Süre`` etiketlerinden derlenen içindekiler listesi ekleniyor.
* ``$oyexercisestart`` ve ``$oyexerciseend`` ifadeleri arasındakiler class'ı ``exercise`` olan bir ``<div>`` içine konulur.
* Standart Markdown substitution'ları farklı ünitelerde geçtiği için ``subs.rst`` dosyasında toplandı. Bu dosya her markdown derlemesinde derlenmekte olan ünitenin sonun eklenerek derleme yapılıyor.

Derleme:
---------
``make compile'' ile derlenir.
