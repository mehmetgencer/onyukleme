Ünite 3 Tanımlamalara Giriş
===============================

Öğrencilere Tanımlamalar penceresi gösterilir ve çeşitli türlerde değerler tanımlamak için gerekli sözdizimi öğretilir. Ayrıca fonksiyon ve örnek tanımlama için gerekli sözdizimini öğrenirler.

    

Gözden Geçirme(Süre: 5 dakika)
----------------------------------
Şimdiye kadar, Değerlendirme Çemberleri'ni gördünüz, Sözleşmeleri öğrendiniz ve farklı veri türlerini deneyimlediniz. Bunların her birinin ne olduklarını hatırladığınızdan emin olun ve eğer gerekli ise, geçmiş derslere bilgilerinizi tazelemesi amacıyla göz atın.

Şekiller çizen üç tane fonksiyon düşünebiliyor musunuz? Tekrar geriye dönüp Sözleşme sayfasına bakmadan, bu fonksiyonların sözleşmeleri yazamayı deneyin. Hangi tür veri sürekli tırnak işaretleri arasında oluyordu? Ekranın sol alt köşesinin koordinatları nelerdi? Veya sağ yukarı tarafın?

Değişken Tanımlama (Süre: 10 dakika)
--------------------------------------
Varsayalım ki elli tane aynı, içi dolu, kırmızı üçgen resmi elde etmek istiyoruz. Bu demek oluyor ki ``(triangle 50 "solid" "red")`` kodunu elli defa yazmalıyız! Daha da kötüsu, bu üçgenlerde bir değişiklik yapmak istersek, bütün ifadelerde bunu tekrarlamalıyız! İyi programcılar çabalarının bu harcanmaması gerektiğini bilirler, bu yüzden programlama dillerinde böyle tekrarları önlemek için yollar eklerle. Bir şeyi, bir defa yazarlar, dilin içersinde bu şey için kısayol oluştururlar ve daha sonra kısayolu istedikleri kadar kullanırlar.

Programlama dilimizdeki değişkenleri isimlendirmek için ``define`` ifadesini kullanıyoruz. `Örnek bir tanımlamaya <http://www.wescheme.org/openEditor?interactionsText=&definitionsText=(define%20şekil1%20(triangle%2050%20%22solid%22%20%22red%22))%0A>`_ bakalım, burada ``şekil1`` içi dolu, kırmızı bir üçgen olarak tanımlanmış. "Run" tuşuna bastığınızda, ``şekil1`` 'i Etkileşimler Penceresinde değerlendirebilirsiniz ve bilgisayar size üçgeni gösterecek. Eğer "Run" tuşuna basmadan ``şekil1``'i sadece yazsaydınız ne olurdu tahmin edebiliyor musunuz?

.. class:: teacher-note

Öğrencilerin, şekil1'in "Run" tuşuna basılmadan değerlendirildirdiklerinde neler olduğunu anladıklarından emin olun. Böylece hatayı okuya ve anlayabilirler. Benzer şekilde, onlara şekil1'in tanımlasını değiştirin ve tekrar "Run" tuşuna basmadan değerlendirtin. Bu onların, bilgisayarın tanımlamaları okudugunu ve yapılan herhangi bir değişikliğin yeniden okunması gerektiğini anlamaları için önemli.

Tanımlamalar editörün yukarı bölümünde yer alan (Etkileşim Penceresi'nin üstündeki) Tanımlamalar Penceresi denen yere yazılırlar.

*    şekil1 tanımlamasını Tanımlamalar Penceresine girin.
*    Bilgisayarın bu tanımlamayı okuması için "Run" tuşuna tıklayın.
*    Etkileşim penceresinde ``şekil1``'i hesaplatığında ne olacağını düşünüyorsunuz?
*    Tanımlamalar penceresine yeni bir satır ekle, ``şekil1`` tanımının hemen üstüne, ismi ``şekil2`` olan, içi dolu, mavi renkli ve yarıçapı 20 olan bir daire tanımlayın.
*    "Run" tuşuna bas ve ``şekil2``'i hesaplatmayı deneyin.
*    Bir sonraki satırda, age isminde senin olduğun yaşı gösteren bir sayı değeri tanımlayın.
*    Bir sonraki satırda, name isminde senin adını temsil eden bir kelime değeri tanımlayın.

**Her seferinde "Run" tuşuna basıldığında, bilgisayar bütün tanımlamaları okur ve dile ekler. Eğer bir tanımlama değişmiş ise, bilgisayar yeniden "Run" tuşuna basılana kadar önceki tanımlamayı kullanmaya devam eder.**

Tanımlamalar Penceresine bir yeni satır daha ekleyelim, ``göz-rengi`` isminde göz renginizi belirten bir tanımlama yapalım. Ama henüz "Run" tuşuna basmayın!

*   Etkileşimler Penceresine gidin ve ``göz-rengi``'ni çalıştırmayı deneyin. Bilgisayarın ``göz-rengi``'nin ne olduğunu bilmediğini söyleyen bir hata almış olmalısınız, çünkü tanımlamayı ekledikten sonra "Run" tuşuna basmadınız.
*   "Run" tuşuna tıklayın.
*   Etkileşim Penceresinde tekarar ``göz-rengi``'ni çağırmayı deneyin. Bu sefer hata almamış olmalısınız.

Tanımlamalar kullanışlıdır çünkü onları daha sonra tekrar kullanabiliriz. Örneğin; ``göz-rengi``'ni başka bir ifadenin içinde kullanabiliriz, mesela ``(circle 10 "solid" göz-rengi)``. Tanımlamaları, diğer ifadelerin içinde kullanma pratiği yapalım.

Tanımlamalar Penceresinde, aşağıdaki tanımlamaları yaratın ve Etkileşim Penceresinde onları kontrol edin:

*    ``ödül`` isminde içi dolu sarı bir yıldız tanımlayın (istediğiniz boyutu seçebilirsiniz).
*    ``büyük`` isminde ``scale``'i kullanarak ``ödül``'ı üç kat büyüten bir değer tanımlayın.
*    ``yatık`` isminde ``rotate``'ı kullanarak büyük sarı yıldızın 45 derece döndüren bir değer tanımlayın.
*    Etkileşim Penceresine ``yatık`` yazın ve büyük, eğimli, sarı yıldız aldığınızdan emin olun.
*    Ortaya çıktı ki yeşil yıldızlar, sarı yıldızlardan daha popülermiş. ``ödül`` ifadesini değiştirerek yıldızın sarı yerine yeşil olmasını sağla.yın "Run" tuşuna tıklayın, böylece bilgisayar yeni tanımlamanızı okuyabilsin.
*     Şimdiyse Etkileşim Penceresine tekrar ``yatık`` yazın. Hangi renk yıldız elde ettiniz? Eğer ``büyük`` ve ``yatık``'ı kendi tanımlamalarını kullanarak tanımladıysanız, eğimli yeşil bir yıldız görmüş olmalısınız! Eğer yeşil bir yıldız görmediyseniz, bunun gerçekleşmesi için tanımlamalarını düzeltmeyi deneyin.

.. class:: teacher-note

Öğrencilere define 'ı deneyimleleri için yeterli zaman ayrılması oldukça önemlidir. Örğrenciler, tanımlanmış isimlerin, değerin yerine kullanılabileceklerini öğrenmeleri gerekmektedir. Onlara farklı değerler tanımlatıp (her biri farklı türlerde) sonrasında başka ifadelerin içinde kullanıldığını örnekler uygulayın.

Değişken Tanımlama (Cebir)(Süre: 10 dakika)
-------------------------------------------------
Bizim programlama dilimizde, değişkenler aşağıdaki gibi tanımlanırlar::
 
    (define x 4)
    (define y (+ 4 9))
    (define z (* x 2))

Değerler sabit (ilk örnekteki gibi), bir ifadenin sonucu (ikinci örnek), hatta başka bir başka değişken cinsinden (üçüncü örnek) olabilirler. Aynı şeyi cebirde de yapabiliriz:

* x=4 
* y=4+9 
* z=x×2

Aşağıdaki üç cebirsel tanımı, Racket programlama dili tanımlarına çevirin::

    liralar=16.50

    ayak=2×3

    inç=ayak×12

.. class:: teacher-note

Bu aktivite için, bütün Racket ifadelerini tahtanın bir tarafına yazın ve diğer tarafınaysa cebirsel ifadeleri ekleyin. Mümkün olduğunca birbirlerine yakın olmalarını sağlayın, böylece iki dil arasındaki bağlantıyı güçlendirebilirsiniz.

Çalışma kitaplarınızın sondaki "EK A" kısmını açın. Bir grup değer tanımlaması yazılmış kod göreceksiniz. İki dakika tutup, onları matematiksel tanımlamalara çevirin.

Oyun Resimleri(Süre: 30 dakika)
----------------------------------
Video oyunu dosyasını açın (`online oyun taslağı`_ kullanarak kodu görebilisiniz). "Run" tuşuna tıklayın (resimlerin yüklenmesi için birkaç saniye beklemeniz gerekebilir!). Video oyununun çalıştığı pencere görüntülencek ama hiç birşeyin hareket etmedğini fark ediceksiniz - "yukarı" veya "aşağı" ok tuşlarına bassanız bile! Şimdilik "kapatma" butonuna tıklayıp, koda geri dönelim.

Bu dosya sizin tanımlayacağınız, oyun karakterlerinin nasıl gözükeceği, hareket edip ve etkileşime geçeceğini gösteren bir tanımlamalar listesi içerir. Aşağıya doğru kaydırdıkca, sizin için doldurulmuş bir dizi sahte tanımlama göreceksiniz. Kendi oyununuz için yapacağınız tanımlamalar tamamen size bağlı!

Ekranın en aşağısına kadar kaydırın, tanımlanız gereken her şeyi tek tek okuyun. En sona geldip tanımlanın parçası olarak kullanılan ``(make_game ...)``'ı gördüğünüzde durun. ``make_game`` e verilen değerler hakkında ne fark ediyorsunuz?

``make_game`` sizin yaptığınız bütün tanımlamaları alarak onları birleştiren ve çalışan bir oyuna çeviren, bizim tarafımızdan verilmiş olan bir fonksiyon. make_game perde arkasında, bütün tanımlamalarınızı, her saniyenin onda birinde tekrar çağrılan dev bir fonksiyona ekler ve tanımlamalarınızı kullanarak o anda neler olacağına karar verir.

.. class:: teacher-note

Öğrencilerinize Önyükleme 2'nin onlara bu fonksiyonun nasıl yazılacağını ve onu değiştirerek daha gelişmiş oyunlar (çoklu oyuncu, labirent, v.s.) yaratmayı göstereceğini hatırlatabilirsiniz.

Tanımlamalar Penceresinde, bu programın birtakım değerler tanımladığını göreceksiniz, örneğin; BAŞLIK bir kelime türünden "My Game" olarak tanımlanmıştır.

*    Eğer Etkileşim penceresine BAŞLIK yazarsanız, ne sonucu vereceğini düşünüyorsunuz?
*    Gördüğünüz diğer tanımlamalar neler?
*    Değerleri nelerdir?
*    Türleri nelerdir?
*    ARKAPLAN dan başlayarak, her değeri Etkileşim penceresinde hesaplatmayı deneyin.

.. class:: teacher-note

Bu aktivitenin amacını öğrencilerin kodu okurmasını ve konuşması hakkında kendilerine güvenmelerini sağlamaktır. Öğrencilerin gerek kendi aralarında gerekse eğitmen ile sesli bir şekilde konuştuklarından emin olun.

Eğer burada verilen tanımlamaları beğenmediyseniz, onları değiştirebilirsiniz! Ekranın üst tarafında gözükenleri ``BAŞLIK`` ve ``BAŞLIK-RENGİ``'ni kullanarak değiştirebilirsin ve istersen oyun resimleri tanımlamalarını da değiştirebilirsiniz (Yeni resim dosyalarını araç çubuğundaki "Images" düğmesine basıp, karşınıza çıkan ekrandan "upload" u seçerek yükleyebilirsiniz).

.. class:: teacher-note

Resimler PNG veya GIF formatında olmalıdırlar. Arkaplan resimleri 640x480 ve karakter resimleri hiçbir boyuttunda 200 px den büyük olmamalıdır. Karakter resimlerinin şeffaf arkaplanı olduğundan emin olun! TAVSİYE: karakterler için canlandırılmış GIF dosyaları kullanılması sadece oyunun güzel görünmesini değil, aynı zamanda genelde şeffaf arkaplanları oldukları için kullanılması daha iyi olabilir.Oyun dosya ve resimlerini ayarlmak hakkında daha fazla talimatı Öğretmenler Kılavuzu'nda.

Tanımlamalarındaki resimlerden birinin daha büyük veya küçük olmasını isterseniz, ``scale`` fonksiyonunu kullanın::

    ; scale : Sayı Resim -> Resim

Bu fonksiyon Sayı'yı esas alarak Resim'i yeniden boyutlandırır. Örneğin, ``(scale 10 (triangle 5 "solid" "green"))`` küçük üçgeni on kat daha büyük hale getirir ya da ``(scale 0.5 (rectangle 200 100 "outline" "purple"))`` dikdörtgeni yarı boyutuna küçültür.

Resimleri ``scale`` kullanarak büyültüp, küçültme üzerine pratik yapın. Daha fazla fonksiyonla deney yapmak isterseniz aşağıdaki sözleşmeleri kullanın::  

    ; flip-vertical : Resim -> Resim

    ; flip-horizontal : Resim -> Resim

    ; rotate : Sayı Resim -> Resim


`Bu örnek ile oynamayı deneyin <http://www.wescheme.org/openEditor?interactionsText=(scale%203%20(star%2050%20%22solid%22%20%22red%22))&>`_

.. class:: teacher-note

Eğer öğrenciler bu bölümde zorlanırsalar, Değerlendirme Çemberi ve sözleşmeler bölümüne geri dönebilirsiniz. Örneğin; rotate için ilk önce bir çember çizdirin ve sonrasında Sözleşme kullanarak girdilerinin neler olduklarını bulmalarını sağlayın. İkinci girdiye geldiklerinde (image) hangi şekli döndürmek istediklerini sorun. Cevapları ne olursa olsun, sözleşme sayfalarına bakıp Değerlendirme Çemberi içine çizmelerini isteyin. Bu iş doğru bir şekilde bittiğinde, onu koda çevirmeleri sağlayın. Kendilerine güvenleri geldiklerinde, onları başka bir fonksiyon daha kullanmaya teşvik edin, belki döndürülmüş bir şekli dikine çevirme.

Bu programdaki bir başka tanımlama ise EKRANGÖRÜNTÜSÜ, Bu ifade put-image fonksiyonunu kullanarak, resimleri üst üste koyar, koordinatları kullanarak her birinin nerelerde olması gerektiğine karar verir.

Video oyunları için yapılan reklamlarda, genellikle değişmeyen oyun içi aksiyon resimleri kullanılır, böylece insanlar oynarken nasıl gözüktüceğini bilirler. Video oyununuzun resmini almak için, `EKRANGÖRÜNTÜSÜ` tanımlamanız içindeki koordinatları değiştirin (Hatırlatma: ekran 640 pixel genişliğinde ve 480 pixel uzunluğunda!).

.. class:: teacher-note

Bu koordinatları hatırlatmak için oldukça iyi bir fırsat, özellikle de pratik yapmaya ihtiyacı olan öğrenciler için.

Bir programlama dilinde, değerleri tanımlayabiliyor olmak yazılımcıların kodlarını sadeleştirmesini ve hem daha okunabilir hem de kolay bakımı yapılabilir hale getiren, oldukca güçlü bir araçtır.

Fonksiyon Tanımlama (Süre: 20 dakika)
------------------------------------------
Programın içersinde birçok benzer ifadeler varken, değerleri tanımlamak oldukça yardımcı olur. Bazen program içerisinde tam aynı olmasalar da oldukça benzeyen ifadelere bulunur. Elli tane içi dolu yeşil üçgene sahip olan bir program, hepsi aynı boyutta olduğu sürece tek bir değer ile sadeleştirilebilir. Ancak, program farklı boyutlarda elli tane yeşil üçgene sahipse ne olacak?

Daha önceden kullanmış olduğunuz bir resim fonksiyonunu düşünelim, mesela ``star`` ve ``circle``. Girdileri alıp, resim üretirler. Benzer şekilde, biz de boyutunu girdi olarak alan, bize yeşil üçgen üreten bir fonksiyon istiyoruz. Programlama dili bize bu fonskiyonu önceden vermiyor ama kendi fonksiyonumuzu tanımlamamızıı sağlıyor. Girdi olarak bir sayı alan ve bize istediğimiz boyutta yeşil üçgen üreten, kendi fonksiyonumuzu tanımlamak istiyoruz (isim olarak ona ``yü`` verelim).

*    ``(yü 10)`` şu kodun kısayolu olurdu: ``(triangle 10 "solid" "green")``
*    ``(yü 20)`` şu kodun kısayolu olurdu: ``(triangle 20 "solid" "green")``
*    ``(yü 1980)`` şu kodun kısayolu olurdu: ``(triangle 1980 "solid" "green")``
*    ``(yü 98)`` şu kodun kısayolu olurdu: ``(triangle 98 "solid" "green")``
*    ve benzeri...

Fonksiyon tanımlamak için ihtiyacımız olan sözlü soru şu şekilde ifade edilebilir:

**``yü`` isminde, bir sayı alan ve istenilen büyüklükte içi dolu yeşil üçgen üreten bir fonksiyon tanımla.**

Şanslıyız ki, belirli adımları takip ederek problemi çözecek fonksiyonu tanımlayabiliriz. ``yü`` tanımlamıza yardım edicek adımların üzerinde çalışmaya başlayalım.

.. class:: teacher-note

Bunu daha çok elle tutulur yapmak için, bir öğrencinizi gt olarak "hareket" etmesini isteyin. Fonksiyonu çagırmak için başka bir öğrenci "gt yirmi!" diye seslensin (hem fonksiyonun ismi hemde girdiyi söylediklerinden emin olun). gt ise cevap olarak çalıştığının ve girdiyi aldığının göstergesi olarak "triangle 20 solid green" versin.

**Adım 1: Sözleşmeyi Yazın**

Fonksiyon tanımlamanın ilk adımı onun Sözleşmesi'nin hazırlanmasıdır. Sözleşme bir fonksiyon hakkında üç esas bilgiyi özetler:

*    Fonksiyon **İsmi**: bu durumda, daha önceden verilen ``yü``
*    Fonksiyonun **Girdisi**, hangi türde bilgi beklediğini gösterir. Bu durumda, sadece bir Sayı (boyutu temsil eden).
*    Fonksiyonun **Çıktısı**, onun ne çeşit veri ürettiğini gösterir: bu durumda içi dolu yeşil bir üçgen ürettiği için, çıktımız Görüntü'dür.

``yü`` için kod olarak yazılmış Sözleşme aşağıdadır. Satır noktalı virgül ile başlıyor, ardından isim ile devam ediyor, bir virgül, Girdi, ok işareti ve sonrasında Çıktı::

    ; yü : Sayı -> Resim


Yazılı problemler fonksiyonun İsmi, Girdisi ve çıktısı hakkında ipuçları verirler. Problemi dikkatlice okuduğunuzdan emin olun! Bazı problemler birden fazla veya farklı türlerde Girdi alabilen fonksiyonları tarif edebilirler.

Çalışma kitaplarınızdan Sayfa 9'da "hızlı fonksiyonlar" yazan bölümü açın ve ``yü`` fonksiyonu için Sözleşme yazın.

.. class:: teacher-note

Öğrencilere farklı yazılı problemler vermek ve onların herbirisi için Sözleşmelerini yazmalarını istemek iyi bir fikir olabilir.
Sözleşmeler Racket'ta yorum olarak yazılırlar: Racket ne zaman noktalı virgülle başlayan bir satır görse geri kalanını işleme sokmaz. Bu demek oluyor ki Racket size asla hatalı biçimlendirilmiş yorum hatası vermicektir. Ayrıca bu, öğrencilerinizin Sözleşmelerini daha yakından incelemeniz gerektiği anlamına geliyor çünkü, bilgisayar onları (biçim veya içerik) kontrol etmicektir.

**Adım 2: Örnekler Verin**

Fonksiyonu yazmaya başlamadan önce birkaç örneğini düşünmek her zaman iyi bir fikirdir. Örnekler, fonksiyonun ne üretemeye çalışacağını gösterirler. Bu programlama dilinde önceden tanımlı EXAMPLE adında (İngilizce Örnek demektir) bize bir fonksiyonun ne üreteceğini göstermemizde yardımcı olan bir araç bulanmaktadır. Sözleşmenin hemen altında yazılmış olan iki örneğe bakabilirsiniz::

    ; yü : Sayı -> Resim

    (EXAMPLE (yü   50) (triangle   50 "solid" "green"))

    (EXAMPLE (yü  100) (triangle  100 "solid" "green"))

 

Bu örnekler bilgisayara, ``(yü 50)`` yazmanın ``(triangle 50 "solid" "green")`` ile aynı sonucu üretmesi gerektiğini söylüyorlar. Aynı şekilde ``(yü 100)`` da ``(triangle 100 "solid" "green")`` koduna eşittir. Problemimiz bize ``yü`` ismini kullanmamızı ve içi dolu yeşil üçgen üretmemizi şart koşuyor.

Çalışma kitabınıza, kendiniz iki tane bu fonksiyonlardan yazın.

Programcılar genellikle her fonksiyon için birkaç örnek yazarlar. Örnekler programcı tarafından yapacağı iş hakkında düşünmek üzere kullanılan yollardan birisidir. Ayrıca, örnekler ifadelerin hangilerinin değiştirebileceğini veya girdiye göre nasıl farklılaşabileceklerini gösterirler.

Aşağıdaki örnekleri kağıt üstüne yazıp farklı olan bölümleri çember içine alın::

    (EXAMPLE (yü   50) (triangle   50 "solid" "green"))

    (EXAMPLE (yü  100) (triangle  100 "solid" "green"))

 

İfadede hangi bölümlerin değiştiğini bulduktan sonra, onları bir çember ile işaretleyin ve onu tanımlayan bir isim verin. Mesela; bizim iki ``yü`` örneğimizde, çemberin boyutunu belirten alanı işaretledik. Çembere alınmış ve isimlendirilmiş ifadeniz aşağıdaki şemaya benzer şekilde olmalıdır:

.. image:: images/unite3_marked.png

.. class:: teacher-note

Öğrencilerin neleri çembere aldığına yakından ilgi gösterin: Örneğin iki tarafındaki (sol tarafa kullanılan fonksiyon ve sağ taraftaki ifade) değerleri işaretlemelidirler; ayrıca bütün ifade boyunca aynı kavramı ve ismi kullanmalıdırlar. Çemberler değişkenlere karşılık gelmektedir, bu yüzden değişkenler örneğin hem sağ hem de sol taraftada yer almalıdırlar.

**Adım 3: Fonksiyon Tanımlama**

Sözleşmeyi ve iki örneği yazıktan ve çemberleri isimlendirdikten sonra fonksiyonun kendisini tanımlamak oldukça basittir.

* ``EXAMPLE`` satırlarınızdan birinde aynı kalan herşeyi (çember içine alınmamış olan herşey) kopyalayın (kağıt üstüne veya metin düzenleyiciye)
* Her çemberin bulunduğu yere, öncesinden vermiş olduğunuz ismi yazın.
* ``EXAMPLE``'ı ``define`` ile değiştirin.

 
::

    ; yü : Sayı -> Resim

    (EXAMPLE (yü   50) (triangle   50 "solid" "green"))

    (EXAMPLE (yü  100) (triangle  100 "solid" "green"))

    (define  (yü boy) (triangle size "solid" "green"))

 


*    Öncelikle kağıt üstünde gt fonskiyonunu tanımlayıp, Sözleşme, Örnekleri yazdıktan daha sonra Tanımlamalar Penceresinde tanımlamayı yapın.
*    Bilgisayarın bu tanımı okuması için "Run" tuşuna tıklayın.
*    Etkileşimler Penceresinde, ``(yü 100)`` yazarak tanımladığınız fonsiyonu çağırın.
*    Farklı sayılar kullanarak fonksiyonu deneyin.

`Cevabınız buna benzer gözükmeli <http://www.wescheme.org/openEditor?definitionsText=;%20yü%20:%20Sayı%20-%3E%20Image%0A(EXAMPLE%20(yü%2050)%20(triangle%2050%20%22solid%22%20%22green%22))%0A(EXAMPLE%20(yü%2095)%20(triangle%2095%20%22solid%22%20%22green%22))%0A(define%20(yü%20boy)%20(triangle%20boy%20%22solid%22%20%22green%22))>`_.

Bu adımlar, problemlere göre fonksiyon tanımlamamıza yardımcı olan, **Tasarım Reçetesi** olarak bilinen güçlü bir araçtır.

**Alıştırma: ``md`` adında bir sayı alan ve verilen boyutta içi dolu bir mavi daire üreten fonksiyonu yazın.**

Çalışma kitabınızda (hala 9.sayfa), bu fonksiyon için Sözleşme yazın.

*    Fonksiyonun İsmi nedir?
*    Fonksiyonun Girdisi nedir?
*    Fonksiyonun Çıktısı nedir?

Yazmış olduğunuz Sözleşmeyi kullanarak, fonksiyon için iki tane Örnek yazın.

*    Sözleşmenin hangi bölümü örneğin sol tarafını yazarken size yardımcı oldu?
*    Sözleşmenin hangi bölümü size fonksiyonun ne türde bir girdiye ihtiyacı olduğunu söylüyor?
*    Fonksiyonun Çıktısı örnekleri yazmanızda nasıl yardımcı oldu?

Bu iki örneğe bakarak, değiştirebilir olan bölümleri işaretleyip, değişken ismi verelim.

*    Seçtiğiniz değişken ismi ``yü`` için seçtiğiniz ile aynı mı? Eğer öyleyse neden veya neden değil?
*    Fonksiyonu tanımlamadan önce değişkenleri isimlerini seçmek neden yararlıdır?

Şimdi, yazmış olduğunuz örnekleri kullanarak **Fonksiyon Tanımlaması**'nı yapın.

.. class:: teacher-note

Sözleşmenin her bölümünü doğrulmak için sorular sorun daha sonra geriye yazılı probleme referans vererek Örnekleri doğrulayın, son olarak yazılı probleme ve Sözleşmeye refarans vererek yapılan tanımlamanın her adımını doğrulayın. Aynı değişken ismi birden çok fonksiyonda kullanılabilir, tıpkı matematikte olduğu gibi (örneğin bir çok fonksiyonun değişken ismi olarak x'ı kullanması gibi).

Bu problemi çalışınca aşağıdaki sonuca ulaşıyoruz::

    ; bc : Sayı -> Resim

    (EXAMPLE (bc     16) (circle     16 "solid" "blue"))

    (EXAMPLE (bc    421) (circle    421 "solid" "blue"))

    (define  (bc yarıçap) (circle yarıçap "solid" "blue"))

 

**Alıştırma: ``nokta` isminde, bir Renk alan ve karşılığında verilen renkte, içi dolu, yarıçapı 20 olan bir daire üreten fonksiyonu yazın.**

Çalışma kitabınızda (hala 9.sayfa), bu fonksiyon için Sözleşme yazın.

*    Fonksiyonun İsmi nedir?
*    Fonksiyonun Girdisi nedir?
*    Fonksiyonun Çıktısı nedir?

Yazmış olduğunuz Sözleşmeyi kullanarak, fonksiyon için iki tane Örnek yazın ve sonrasında değişkenleri çember içine alıp isimlendirin.

*    Sözleşmenin hangi bölümü örneğin sol tarafını yazarken size yardımcı oldu?
*    Sözleşmenin hangi bölümü size fonksiyonun ne türde bir girdiye ihtiyacı olduğunu söylüyor?
*    Fonksiyonun Çıktısı örnekleri yazmanızda nasıl yardımcı oldular?
*    Bu örneklerde değişen bölümler için verilebilecek en iyi değişken ismi nedir?

Şimdi, yazmış olduğunuz örnekleri kullanarak Fonksiyon Tanımlaması yapın.

Bu problemi çalışınca aşağıdaki sonuca ulaşıyoruz::

    ; nokta : String -> Image

    (EXAMPLE (nokta  "red") (circle 15 "solid"  "red"))

    (EXAMPLE (nokta "blue") (circle 15 "solid" "blue"))

    (define  (nokta  renk) (circle 15 "solid"  renk))

 

Fonksiyon Tanımlama (Cebir) (Süre: 20 dakika)
----------------------------------------------
Racket'da tanıtılmış bir çok fonksiyon gördünüz, örneğin: ``(define (f x) (+ x 1))``

*    Bu fonksiyonun ismi nedir?
*    Kaç değişken alıyor?
*    Değişken(ler)in ismi nedir?
*    Bu fonksiyon ``x`` değişkeni ile ne yapıyor?
*    ``g`` isminde ``q`` değişkenini alan ve onu 20 ile çarpan bir fonksiyon tanımlayın.

.. class:: teacher-note

Öğrencilerin fonksiyon isminin ``f`` ("fx" veya "f'in x'i" değil) olduğunu anladıklarından emin olun. Sözlü anlatımları, Racket sözdizimiyle tanılamaya çevirme konusunda rahat olana kadar alıştırma yapmalarını sağlayın.

Bu fonksiyonları cebirsel hala çevirmek için, değerlere benzer bir işlem uygularız. İşte :math:`f` fonksiyonun cebirsel sözdizimiyle yazılmış şekli: :math:`f(x)=x+1`

``f`` fonksiyonuna yaptığımız çeviri işlemini model alarak, g fonksiyonunu da cebirsel fonksiyona çevirin. Bu bittikten sonra ``h`` isminde, ``x`` adında bir değişken alıp, onu 2 ile bölen bir fonksiyon tanımlayın.

Çalışma kitaplarınızın sonunda "EK A" kısmında yer alan bütün Racket program kodu fonskiyonlarını cebirsel fonksiyonara çevirin.

Kapanış (Süre: 5 dakikda)
------------------------------

Bu ünitede, değerleri isimlendirmeyi ve fonksiyonlar tanımlayı öğrendiniz. İsimlendirdiğiniz değerleri oyununuzun görsel nesneleri için kullanacaksınız. Fonksiyonları is oyun içindeki nesnelerin hareket etmesi için kullanacaksınız. Yakında göreceğiniz gibi, fonksiyonlar oyun yapımında oldukca önemlidirler. Bir sonraki ünitede, birşeylerin ekranda hareket etmesini sağlayan ilk fonksiyonunuzu yazmak dahil olmak üzere, onlarla biraz daha pratik yapacaksınız.

