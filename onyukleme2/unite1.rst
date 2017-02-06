Ünite 1 Önyükleme 1'de Öğrendiğiniz Herşey
===================================================
Öğrenciler bir yandan yeni bir programlama dili öğrenirken bir yandan da
Önyükleme 1 dersindeki kavram ve konuları hatırlarlar. Bunlar arasında
Sözleşmeler, sayı, görsel, ve metin içeren ifadeler, değişken tanımları,
fonksiyon tanımları, ve tasarım reçetesi bulunmaktadır.


Pyret'e Giriş (Süre: 50 dakika)
-------------------------------
Önyükleme'ye tekrar hoşgeldiniz. Önyükleme 1'de Racket ismi verilen bir programlama dili kullanarak kendi bilgisayar oyunlarınızı yaptınız.
Bu dili seçmiştik çünkü matematiksel cebire çok benziyordu, ama bilgisayar oyunları yapmak için kullanabileceğiniz birçok farklı dil bulunuyor.
Önyükleme 2'de Pyret ismi verilen yeni bir dil öğreneceksiniz. Pyret dili belki önceden ismini duyduğunuz Python isimli dile  benziyor, ancak Racket'ten hatırlayacağınız birçok özelliği de içeriyor.
Sözdizimi biraz farklı, ama biraz pratikle çok kısa sürede kullanmaya alışacaksınız.

`işdefteri`_'nizin birinci sayfasını açın. Burada Racket ve Pyret'te değer tanımları içeren bir tablo var. 
Soldaki sütunda Racket dilinde değer tanımları koyduk, ve sağda da aynı değerlerin Pyret karşılıkları var.
Örneğin, soldaki ilk satırda ``(define YAŞ 14)`` yazıyor. Onun hemen sağında Pyret sözdizimi ile aynı şeyi tanımlayan ``AGE = 14`` ifadesi var, ki her ikisi de AGE isimli değeri 14 olan bir değişken tanımlıyorlar.

Bu tabloda Sayılar, Metinler, Resimler, ve Mantıksallar için yapılmış tanımlara bir bakın. Tablonun sağ tarafında Pyret ile aşağıdaki yeni tanımları yapmaya çalışın:

* iki yeni sayı
* iki yeni metin
* iki yeni mantıksal
* iki yeni resim

Tabloda en sondaki satır size aynı fonksiyonun Racket ve Pyret'teki tanımlanışını gösteriyor. Fonksiyonlar konusunda detaylara yakında geçeceğiz.

`tekrar`_ programını yeni bir pencerede açın. İlk dikkat etmeniz gereken şey, her ne kadar Pyret WeScheme'e çok benzese de, artık programlarımızı WeScheme ile yazmadığımız. Tanımlar penceresi (daha sonra saklayacağınız kodu yazdığınız yer) ekranın sol tarafında, etkileşim penceresi ise (bir kerelik test etmek için kod yazdığınız yer) sağ tarafta. Editör penceresinin üstünde programınızı isimlendirmek için bir alan, ve basıldığında etkileşim penceresini temizleyip kodunuzu çalıştıran bir "Run" (İngilizce "Çalıştır") düğmesi bulunuyor.

* Burada tanımlanan değişkenlerin isimleri nelerdir? Değerleri nelerdir?
* Etkileşim penceresinde bu değişkenlerden herbirini değrlendirdiğinizde geriye ne döner? Önce bir tahminde bulunun, sonra "Run" çalıştırın ve sonra etkileşim penceresine değişkenlerden herbirinin adını yazıp değerlendirin. Tahminleriniz doğru çıktı mı?

Satır 18'deki ``ÇERÇEVE`` değişkenine bakın.

* Bu ne şekli çizer?
* Şekil ne kadar büyük olur?
* İçi dolu mu yoksa boş çerçeve mi olur?
* Rengi ne olur?

``ÇERÇEVE`` değişkenini etkileşim penceresinde değerlendirmeyi deneyin. Doluluğu beklediğiniz gibi çıktı mı?

Sorun şu ki biraz kafa karıştırıcı bir değişken ismi kullandık: ismi ``ÇERÇEVE`` ama değeri içi dolu bir yeşil yıldız. Değişken isimlerini doğru seçmeye dikkat edin!

Bu değişkenin ismini daha uygun bir isimle değiştirin.

Gördüğünüz gibi Pyret aynı Racket'te kullandığımız veri tiplerini kullanıyor: Sayılar, Metinler, Resimler, ve Mantıksallar Pyret'te de kullanılıyor ve aynı şeilde davranıyorlar.

Tekrar dosyanızda işkitabı'nıza yazdıpınız Sayılar, Metinler, Resimler, ve Mantıksalları tanımlayın.

Şimdi değerleri, ve onlara kısayolları tanımlamayı öğrendik. Bunun yanısıra birçok fonksiyon da bulunuyor, ve bunlar bu değerleri işlememizi sağlıyorlar.

Sayılar üzerinde işlem yapan hangi fonksiyonları biliyorsunuz? Bunlardan kaç tane sayabilirsiniz?

Racket ve Pyret arasındaki büyük farklardan biri aritmetik fonksiyonların kullanımında. Pyret'te bu ifadeleri matematikteki gibi yazabilirsiniz, mesela  ``(2 + 9)`` veya ``(10 * 8)``. **Ama aritmetik fonksiyondan önce ve sonra bir boşluk bırakmayı unutmayın**

Sözleşmeler (Süre: 10 dakika)
-----------------------------------
Fonksiyonların nasıl çalıştığının kaydını tutmak önemlidir, ve Önyükleme 1'de Sözleşme kavramını görmüştük. ``star`` fonksiyonunun sözleşmesi şöyleydi::

    ;star Sayı Metin Metin -> Resim
    
Sözleşmeler bir fonksiyonla ilgili üç temel bilgiyi özetlerler:

* Fonksiyonun ismi: bu örnekte ``star``
* Fonksiyonun girdisi, yani fonksiyonun ihtiyaç duydupu veri tipi/tipleri. Bu örnekte bir sayı ve iki metin.
* Fonksiyonun çıktısı, yani fonksiyonun ürettiği verinin tipi. Bu örnekte bir resim.

**Her sözleşmenin üç parçası vardır: İsim, Girdi, ve Çıktı!**

Bir sözleşme fonksiyonun nasıl kullanılacağına dair kendimize yazdığımı bir nottur. Aynı Önyükleme 1'deki gibi, öğrendiğiniz her fonksiyonun sözleşmesini kaydetmek yararlı olacaktır. İşkitabınızın en arka sayfası öğrendiğiniz fonksiyon sözleşmelerini kaydedebileceğiniz "Sözleşmeler" isimli bir tablo içeriyor. Pyret'teki sözsleşmeler de Racket'tekiler kadar önemlidir, ve aynı şekilde yazılırlar. Sözleşmeleri kod yorumu şeklinde yazarsınız: yani insanların okuması için olan, bilgisayarın değerlendirmediği, bir metin parçası olarak. Racket'te sözleşmelerden önce ; koyuyorduk, ama Pyret'te sadece o satırın başına # işareti koyarak satırı yoruma çevirebiliriz.

Toplama fonksiyonu için sözleşme aşağıda gösterilmiştir:

    # + : Sayı Sayı -> Sayı
    
Siz de \*, -, / ve num-sqrt fonksiyonları için sözleşmeleri işkitabınıza yazın (num-sqrt karekök alma fonksiyonudur).

Racket ve Pyret arasındaki önemli bir fark Pyret're bir fonksiyonun girdileri arasına virgül konulmasıdır. Bu yüzden ``circle(50 "solid" "red")`` kodu bir hata mesajına neden olacaktır, çünkü girdiler arasına virgül koymanız lazım. Doğrusu ``circle(50, "solid", "red")`` şeklindedir. Program yazarken bunu aklınızdan çıkartmayın.

Aşağıda Önyükleme 1'de kullandığınız bazı Pyret fonksiyonları bulunuyor. Her örnek için hangi fonksiyonun kullanıldığını belirleyin, ve sözleşmesini işdefterinizin sözleşmeler sayfasına yazın. Eğer yardıma ihtiyaç duyarsanız kodu bilgisayarınızda deneyin.

* ``circle(75, "solid", "red")``
* ``rectangle(20, 30, "outline", "green")``
* ``ellipse(85, 100, "solid", "pink")``
* ``text("Hello world!", 50, "blue")``

Tasarım Reçetesi (Süre: 25 dakika)
-----------------------------------
Artık Pyret'te değer tanımlamayı, ve zaten tanımlı fonksiyonlar için sözleşmeleri yazmayı biliyorsunuz. Peki ya kendi fonksiyonlarınızı tanımlama? Önyükleme 1'de Tasarım Reçetesi denilen bir araç kullanarak fonksiyonlar tanımlamıştınız. Bu tasarım reçetesinin adımlarını Pyret ile gözden geçirelim.

İşdefterinizin üçüncü sayfasını açın.

Aşağıda bir fonksiyon tanımı var::

    # ikikatı: Number -> Number
    examples:
        ikikatı(5) is 2 * 5
        ikikatı(7) is 2 * 7
    end

    fun ikikatı(n):
        2 * n
    end


**Adım 1: Sözleşme ve amaç tanımı yazın**

* Fonksiyonun ismi ne? Nereden biliyorsunuz?
* Girdileri kaç tane?
* Girdi veri tipleri neler?
* Çıktısı nedir?
* Sizce bu fonksiyon ne işlem yapıyor? Bunun için iyi bi amaç tanımı ne olmalıdır?

Sözleşme bir fonksiyonla ilgili, nasıl çalışacağına ve kullanılacağına bakmaksızın, genel bir düşünme yoludur. Yukarıdaki gibi basait sorularla başlayınca sonraki adımlar üzerine düşünmek çok daha kolay olacaktır.

**Adım 2: Örnekler verin**

Önyükleme 1'de EXAMPLES diyerek her fonksiyon için örnekler yazmış ve fonksiyonun bazı girdilerle nasıl kullanılacağını göstermiştiniz. Bun örnekler aynı zamanda fonksiyonu test etmek için kullanılıyordu, ve çıkan sonuç beklenenden farklıysa hata mesajı üretiyordu. Pyret'ta da aynı şey bulunmaktadır, ama yazımı farklıdır.  ``ikikatı`` fonksiyonu için örneklerimiz şu şekilde yazılır::

    examples:
          ikikatı(5) is 2 * 5
          ikikatı(7) is 2 * 7
    end

Buradaki anahtar kelimeler ``examples`` ve ``is`` kelimeleridir. Pyret bilir ki ``examples:`` ile ``end`` satırları arasındaki herşey sizin örneklerinizdir, aynı Racket'teki gibi fonksiyon ismi ve girdileri ile başlayıp sonrasında da bu girdilerle fonksiyonun üretmesi gereken çıktıyı yazarız. Ancak bu kez ikisi arasında ``is`` kelimesini koyuyoruz. Bir kez fonksiyonu da tanımladınız mı Pyret bu örnekleri otomatik olarak kontrol edecek ve fonksiyonun doğru değerler üretip üretmediğini test edecektir. Eğer çıktılar yanlışsa hata mesajı göreceksiniz.

İşkitabınızda ``üçkatı`` isimli, bir sayıyı alıp 3 ile çarpan bir fonksiyon için sözleşme ve iki tane de örnek yazın.

Buradaki tek değişiklik verilen sayının 3 ile çarpılmasıdır. Önyükleme "'den hatırlayın: bir kez örnekler arasında değişenin ne olduğunu daire içine alarak işaretlediniz mi fonksiyonu tanımlamak son derece kolaylaşır! Tek yapmanız gereken değişen şeye bir etiket koymak!

**Adım 3: Fonksiyonu tanımlayın**

Örnek::

    fun ikikatı(n):
        2 * n
    end

Aynı örnekler yazmak gibi fonksiyon tanımlamak ta Pyret'te biraz farklı yapılıyor. Başlamak için ``def,ne`` yerine ``fun`` yazıyoruz. Sonra aynı Önyükleme 1'deki gibi örneklerde değişmeyen şeyleri aynen kopyalayıp, değişenlerin yerine de kendi seçtiğiniz değişken isimlerini koyun. Fonksiyon başlığınızdan sonra : koymayı, ve fonksiyon bitiminde de ``end`` koymayı unutmayın ki bilgisayar tanımın bittiğini anlasın.

Şimdi de ``üçkatı`` fonksiyonu için tnaımı yazın. Değişen şeyin yerine bir değişken koymayı unutmayın!

Tasarım Reçetesi kullanarak aşağıdaki problemleri çözmeyi deneyin:

* Verilen sayıya bir ekleyen ``artı1`` isimli bir fonksiyon yazın.
* Bir sayıyı alıp ondan 4 çıkartan ``ilginç`` isimli bir fonksiyon yazın.
* Bir sayı alan ve o kadar yarıçapta içi dolu kırmızı bir daire çizen ``kırmızı-nokta`` isimli bir fonksiyon yazın.

Biraz fazladan ratik yapmak için işkitabınızın altıncı sayfasına gidin ve verilen Pyret kodundaki hataları bulmayı deneyin. Her hatayı daire içerisine alın ve doğrusunu sağ tarafına yazın.

Kapanış  (Süre: 5 dakika)
-----------------------------------
Önyükleme 1 dersinin ilk yarısını gözden geçirmiş ve onları yeni bir dil ile nasıl yapacağımızı öğrenmiş olduk. Önyükleme 2'de Önyükleme 1'de öğrendiğiniz kavramların hepsini kullanacaksınız, ve buna ek olarak yepyeni veri tipleri, fonksiyonlar, ve programlama kavramları öğreneceksiniz. Tabii ki bunların hepsini eski dostunuz, bilgisayar oyununuzdaki kendi fonksiyonlarınızı yazmanıza yardım eden Tasarım Reçetesi ile yapacaksınız. Bu kez Önyükleme 2'de olduğunuzdan yaratacağınız oyunlar Önyükleme 1'dekilerden daha etkileşimle ve ileri düzey olacak. Öğrenecek çok şey var.. Ünite 2'ye devam!
