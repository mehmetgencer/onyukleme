Ünite 7: Koşullu Dallanma
============================

Öğrenciler, tuş direktiflerine yanıt olarak oyuncularını hareket ettirmek için parçalı fonksiyonları kullanırlar.

Luigi’nin Pizzası (Süre: 20 dakika)
-------------------------------------

Bu derse başlamak için, Luigi'nin Pizzası Çalışma Kağıdını tamamlayın: `Luigi Çalışma Kağıdı`_ ihtiyacınız olan program kodunu bu linkten açabilirsiniz: `Luigi Kod`_

.. class:: teacher-note

Tekrar, öğrencilerin alıştırmalara cevapları. Şu linklerde(1,2) bu girişin bir video gösterisini bulabilirsiniz.: 1, 2

``maliyet`` fonksiyonun kodu aşağıda yazmaktadır ::

    ; maliyet : Metin-> Sayı
    ; bir Pizza malzemesi verildiğinde o malzemeyle yapılan pizzanın maliyetini jesaplar
    (EXAMPLE (maliyet "peynir")     9.00)
    (EXAMPLE (maliyet "sucuk") 10.50)
    (EXAMPLE (maliyet "tavuk")   11.25)
    (EXAMPLE (maliyet "brokoli")  10.25)

    (define (maliyet malzeme)
      (cond
        [(string=? malzeme "peynir")     9.00]
        [(string=? malzeme "sucuk") 10.50]
        [(string=? malzeme "tavuk")   11.25]
        [(string=? malzeme "brokoli")  10.25]
        [else "Menüde bu malzeme yok!"]))


Şimdiye kadar gördüğünüz bütün fonksiyonlar verilen girdilere hep aynı şeyi yaptı:

* ``yeşil-üçgen`` her zaman yeşil üçgenler yaptı, boyutu ne olursa olsun.
* ``güvenli-sol?`` herzaman girdinin koordinantını -50 ile karşılaştırdı, girdi ne olursa olsun.
* ``tehlike-güncelle`` her zaman aynı miktarı ekledi ve çıkardı.

ve bunun gibi diğerleri...

Bu değişmezlik örneklerden fonksiyon tanımını bulmamıza yarıyordu: örnekten örneğe farklılaşan, değişen şeyleri işaretleyerek değişkenleri buluruz, ve değişkenlerin sayısı girdi alanındaki değişken sayısıyla aynı olmalıdır.

$oyexercisestart
İşdefterinizde sayfa 25 e gidiniz, bu fonksiyon için olan örnekleri ve sözleşmeyi doldurunuz, sonra değişkenleri işaretleyiniz.
$oyexerciseend

.. class:: teacher-note

Öğrencilerin takip edebilmesi açısından tahtada bazı örneklerin ve tanımların olması çok değerli olabilir.

``maliyet`` fonksiyonu özel bir fonksiyondur, çünkü farklı girdiler tamamen farklı ifadelere neden olabilirler. Eğer bu fonksiyonun örnekleri arasında değişen şeyleri işaretlerseniz hem "malzeme" hem de "fiyat" değişmektedir. Ancak fonksiyon girdi tanımında  sadece tek bir değişken vardır, bu yüzden 2 değişkenimizin olması gibi bir durum olamaz.

Elbette, "fiyat" tam anlamıyla bağımsız bir değişken değildir, çünkü fiyat tamamel mazleme seçimine bağlıdır. Örneğin: Eğer malzememiz "peynir" ise fonksiyon basit bir şekilde 9.00, sonucu çıkaracaktır. Eğer malzememiz "sucuk" ise fonksiyon 10.50 sonucunu çıkaracaktır, ve bunun gibi. Fiyat hala malzeme cinsinden tanımlanır, ve onksiyonun dikkate alması gereken 4 olası malzeme -yani koşul- vardır. ``maliyet`` fonksiyonu koşullu işlemler denilen bir programlama tekniği kullanır. Bu işlemler kodlama yapılırken İngilizce koşul karşılığı condition'un kısaltması olan ``cond`` adıyla kullanılır.

Her koşullu işlemin en az bir koşulu vardır. Her koşulun da bir doğru-yanlış sorusu ve sonucu vardır. Luigi fonksiyonunda peynir için de, sucuk için de birer koşul vardır ve bunun gibi. Eğer doğru-yanlış sorusu true/doğru sonucuna değerlenirse ifade değerlendirilir ve sonuç verir. Eğer soru false/yanlış sonucuna değerlenirse bilgisayar diğer koşula geçer.

$oyexercisestart
``maliyet`` fonksiyonuna bakalım :

* ``maliyet`` fonksiyonu için kaç tane koşul vardır ?
* Birinci koşuldaki soruyu belirleyelim.
* İkinci koşuldaki soruyu belirleyelim.

$oyexerciseend

.. class:: teacher-note

Köşeli parantezler, her koşul için soru ve cevapları çevreler. Öğrenci soruları belirlediği zaman, köşeli parentez içindeki ilk ifadeyi bulmalıdırlar Her cevap için sadece bir ifade olabilir.

Koşullu işlemdeki son ifade ``else`` (ingilizce diğer anlamında) koşulu olabilir, bu koşul bütün sorular false/yanlış değerini döndürdüğünde devreye girer.

$oyexercisestart
``maliyet`` fonksiyonunda, bütün sorular yanlış cevabı döndürdüğünde ne tür sonuç alınır ? Eğer ortada bir ``else`` ifadesi yoksa ne olur ? Bu ``else`` ifadesini koddan çıkarıp, bilinmeyen bir malzemeyi değerlendirmeyi deneyin, ve neler olduğuna bakın.
$oyexerciseend

.. class:: teacher-note

``else`` ifadesi, başka yollarla birer birer sayamayacağımız durumlar için en iyi hepsini yakalama koşuludur. Eğer koşul için parçalı bir soru derleyebiliyorsanız, ``else`` kullanmak yerine bu parçalı soruyu yazın ve kullanın. Örneğin, eğer x’in 5 den büyük olduğu durumlarda farklı sonuçlar veren bir fonksiyonunuz varsa, yeni başlayanlar için ikinci durum için Else kullanmak yerine, şu şekilde 2 soru yazmak (> x 5) ve (<= x 5) daha iyi bir yoldur. Açık ve net sorular, programları okumayı ve tamir etmeyi çok kolaylaştırır.


Koşulları kullanan fonksiyonlara *parçalı fonksiyonlar* denir. Her koşul fonksiyonun ayrı bir parçasını tanımlar. Parçalı fonksiyonlar neden kullanışlıdır? Oyununuzdaki oyuncunuzu düşünün: Oyunda yukarı yön tuşuna bastığınızda oyuncunun yukarı gitmesini istersiniz, ya da aşağı yön tuşuna bastığınızda aşağı gitmesini ancak ``cond`` olmadan, oyunucuyu sadece yukarı ya da sadece aşağı yönlendirecek fonksiyonu yazabilirsiniz. İkisini birlikte yazamazsınız.

Oyuncu Hareketi (Süre: 25 dakika)
---------------------------------

Artık ``cond`` ifadesini bildiğimize göre ``oyuncu-güncelle`` fonksiyonunu yazabiliriz.




$oyexercisestart

.. image:: images/unite7_oyuncu.png
    :align: right
   
Aşağıdaki resme bakınız. Bu resim "yukarı ok" tuşuna basıldığında oyuncunun nasıl hareket edeceğimi anlatıyor.

* Oyuncunun başlangıç x koordinantı nedir ?
* Oyuncunun başlangıç y koordinantı nedir ?

Oyuncu hareketlerinden sonra ?
* Yeni x ve y koordinantları nelerdir?
* Neler değişti ve ne kadar değişti ?
* Aşağı yön tuşuna basıldığında ne olur ?
* Tuşa basıldıktan sonra yeni koordinantlar ne olmalıdır ?
* Kullanıcı yukarı ve aşağı yön tuşları dışında başka bir tuşa bastığında ne olmalıdır ?

Tahtaya bir ekran çiziniz, oyuncu, hedef ve tehlike için koordinantları sınıflandırınız, oyuncu ile ilgili bütün verileri bir daire içine alınız.
$oyexerciseend

Aşağıdaki tablo her tuş için oyuncuya ne olacağını özetler:


=================  =====================================================
Tuş                Hareket
-----------------  -----------------------------------------------------
"yukarı" ok tuşu   oyuncunun y koordinantına 20 eklenir.
-----------------  -----------------------------------------------------
"aşağı" ok tuşu    oyuncunun y koordinantından 20 çıkartılır.
-----------------  -----------------------------------------------------
başka bir tuş      oyuncunun y koordinantı değişmeden kalır
=================  =====================================================

$oyexercisestart
Çalışma kitabınızın 26. sayfasında ``oyuncu-güncelle`` içim bir problem bulacaksınız.
$oyexerciseend

(Eğer oyuncuyu yönlendirmek için ok tuşlarını kullanmayı sevmiyorsanız, tuşları kolay bir şekilde w, x şeklinde değiştirebilirsiniz!)

.. class:: teacher-note

Öğrencilerin alıştırmalar boyunca contract ve ÖRNEKLERİNİ kontrol ettiğinizden emin olunuz, özellikle örnekler arasında nelerin değiştiğini çerçevelemek ve sınıflandırmak aşamasında. Bu dizayn düzeni açısından çok önemli bir adımdır, cond için gerekenleri nerede keşfetmeleri açısından.

Bunların dışında bazı gelişmiş hareketler de ekleyebilirsiniz, bunun için öğrendiğiniz boolean fonksiyonları yeterli olacaktır. Sizin için bazı fikirler :

* *Eğilme*: Oyuncunun y koordinantını ekleme çıkarma yoluyla değiştirmek yerine, bunu bir sayı ile değiştirin. Bu tuşa basıldığında oyuncu direk olarak o pozisyonda belirsin. (Örneğin: “c” tuşuna basıldığında oyuncu ekranın merkezine geri gitsin, y=240)
* *Sınır Tespiti*: Yukarı hareketlenme için koşulu değiştirin, player-y ancak ve ancak yukarı yön tuşuna basıldığında ve y koordinantı 480 den küçükse yukarı hareketlenebilsin. Bunun gibi aşağı hareketlenme koşulunu da değiştirin, player-y ancak ve ancak aşağı yön tuşuna basıldığında ve y koordinantı 0 dan büyük olduğunda aşağı hareketlenebilsin.
* *Işınlama*: Bir koşul ekleyin(herhangi bir tuştan önce) bu koşul oyuncunun y koordinantını kontrol edecek (y koordinantı ekranın üzerinde mi (y > 480)). Eğer öyleyse, oyuncuyu ekranın en aşağısına gönder(y=0). Başka bir koşul daha ekleyin, eğer ekranın en altındaysa, oyuncuyu en üste yollayabilmesi için.
* *Saklanma*: “h” tuşunu basıldığında oyuncunun saklanmasını sağla, sadece “h” tuşuna geri basıldığında oyuncu geri gelsin.


Kapanış  (Süre: 5 dakika)
---------------------------

Tebrikler, çalışan bir oyunun başlangıcı elinizde! Eksin olan nedir? Oyuncu, nesne ya da hedef ile çarpıştığında hiçbirşey olmuyor! Bu problemi önümüzdeki derslerde çözeceğiz. Ayrıca oyunumuzun tasarımı ve hikayesi hakkında da çalışacağız. Bizimle kalın!

