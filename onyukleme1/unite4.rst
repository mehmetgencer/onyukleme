Tasarım Reçetesi
===================
Öğrenciler Tasarım Reçetesi çalışmalarına, basit problemlere uygulayarak devam eder.

Tasarım Reçetesi (Süre: 25 Dakika)
---------------------------------------
Fonksiyonlar bilgisayar programlarındaki animasyonların anahtar bölümleridir. Bir fonksiyon bir kedinin statik (durağan) resmini çizebilir, örneğin, kedinin verilen ve zamanı belirten bir girdiye göre yer değiştirmesini sağlayabilir. Bu girdiler zamandan ya da kullanıcı etkileşiminden dolayı değişime uğradığında, kedi hareket etmeye başlayabilir. Bu durum gerçek çevirmeli defterlerde çizilen karakterlerin hareket etmesine benzer. Her sayfada durağan bir görüntü küçük farklılıklarla çizilidir. Sayfalar hızlıca çevrildiği zaman görüntü da değişiyor gibi görünür.

.. image:: images/unite4_rokethareket.png

Bu görüntüleri bir araya getirerek, roketin ekranda yukarıya doğru gittiği bir animasyona ulaşmış oluyoruz. Bu çeşit bir animasyonun bir örneğini görelim. Çalışma kitabınızdan 12. sayfayı açın ve problemi dikkatle okuyun

.. image:: images/unite4_roket.gif
    :align: right
    
**Roket kalkış yapar ve saniyede 7 metre hıza ulaşır. Adı ``roket-yüksekliği`` olan, girdi olarak roketin kalkmasından bu yana geçen zamanı saniye cinsinden bir sayı olarak alan ve roketin o kadar saniye sonunda ulaştığı yüksekliği döndüren bir fonksiyon yazın.**

*    ``roket-yüksekliği`` fonksiyonunun içine ne girdi alır? Bu girdi ne tür bir veridir?
*    Fonksiyon çıktı olarak ne veri üretiyor? Üretilen verinin türü nedir?
*    **Sözleşme**'nin üç bölümü nelerdir?
*    Tanımlamanız istenen fonksiyonun **Adı** nedir?
*    Fonksiyonun **girdi alanı** nedir?
*    Fonksiyonun **çıktı alanı** nedir?

Sözleşme, genel anlamda fonksiyonun nasıl çalışacağını düşünmeden, nasıl kullanılacağını bilmenin yoludur. Yukarıdakiler gibi basit sorulardan başlamak kalan adımları çok daha kolay atmanızı sağlar. Buna rağmen, Sözleşme her zaman yeterli bilgi vermez! Örneğin ``star`` fonksiyonu için girdi alanı fonksiyonun ihtiyacı olanın bir Sayı ve iki Metin'dir, ama Metin'in ``"solid"`` veya ``"outline""`` değerlerinden birini alması gerektiğinden söz etmez. Bu bilgiyi eklemek için yazılımcılar **amaç açıklamaları** yazar, bunlar fonksiyonun ne yaptığını anlatan basit cümlelerdir.

Sözleşmenin alt bölümüne ``roket-yüksekliği`` fonksiyonu için aşağıdaki basit Amaç Açıklamasını kopyalayın::
 

      ; roket-yüksekliği : Sayı -> Sayı

      ; Girdi olarak verilen ve saniye'yi belirten sayıyı 7 ile çarparak yüksekliği bulur

Sözleşme ve Amaç Açıklamaları ile donandıktan sonra, bir örnek yazmak çok daha kolay bir hal alıyor. Her örnek fonksiyonun adıyla ve örnek bir veri girdisiyle başlar. İkisi de hazırlanan Sözleşme'nin içinde yazıyor. Bu durumda, fonksiyonun adının roket-yüksekliği olduğunu biliyorsunuz ve bu fonksiyon içine yalnızca bir Sayı tipinde girdi bekliyor. Amaç Açıklaması biraz daha ileriye gidiyor ve size girdimizin 7 ile çarpıldığını söylüyor. 

Böylelikle farklı saniye sayılarını girdi olarak kullanıp, iki örnek yazabiliriz::

      ; roket-yüksekliği : Sayı -> Sayı

      ; Verilen saniye'yi belirten sayıyı 7 ile çarparak yüksekliği bulur

      (EXAMPLE (roket-yüksekliği 11)

       (* 11 7))

      (EXAMPLE (roket-yüksekliği 72)

       (* 72 7))

      

Not: Yukarıda gösterilen örnekler iki satıra bölünmüştür! Fonksiyonlar ve örnekler çok daha uzun ve karmaşık bir hal alacağı için hepsini tek satıra sıkıştırmak çok zor olacaktır. Çalışma kitaplarınızda, her örnek ve tanım bundan sonra satırlara bölünerek yazılacaktır.

Çalışma kitaplarınızda, iki tane farklı saniye değerleri kullanarak ``roket-yüksekliği`` fonksiyonu yazınız. İki örnek de çok fazla ortak özelliğe sahip olacak (İkisi de ``roket-yüksekliği`` ismini kullacak, ikisi de girdilerini 7 ile çarpacak, vs.) Bitirdiğiniz zaman, örneklerin sadece değişebilir olan bölümlerini daireye alarak işaterleyin.

İki farklı örneği kıyaslayarak neyin değişip neyin değişmediğini söyleyebilmek kolay. Amaç Açıklamaları hazırlığımızı göz önünde bulundurduğumuzda değişen şey roketin uçtuğu saniye sayılarıdır diyebiliriz.

Sayfa üzerinde daire içine aldığınız maddeleri  “saniyeler” olarak etiketleyin.

Değişebilir olan şeyleri etiketlemek, programcılara fonksiyon içerisindeki değişkenlere isim verebilme yetisi kazandırır. Değişkenler, farklı zamanlarda değişebilecek olan değerler için yer tutucu gibidir. Örneğin her ay cep telefonunun mesaj tarifesi için ne kadar ödediğinizi hesaplayan bir fonksiyon olsun. Bu fonksiyonun girdisi olarak içinde bulunduğunuz ay kaç tane mesaj gönderdiğiniz bilgisini tutan bir değişkeni olabilir. Gönderdiğiniz mesaj sayısı aydan aya değişebilir ama yine de her mesajın fiyatı 20 kuruş tutarındadır.

``roket-yüksekliği`` fonksiyonunda kaç değişken vardır? Her değişkenin adı nedir? Örneklerinizden ve Sözleşme ve Amaç Açıklaması bölümündeki bilgilerden yararlanarak fonksiyonu tanımlayın::
 

      ; roket-yüksekliği : Sayı -> Sayı

      ; Verilen saniye'yi belirten sayıyı 7 ile çarparak yüksekliği bulur

      (EXAMPLE (roket-yüksekliği 11)

       (* 11 7))

      (EXAMPLE (roket-yüksekliği 72)

       (* 72 7))

      (define (roket-yüksekliği saniye)

       (* saniye 7))

    

Tasarım Reçetesi programcıya bir adımda bir problem üzerine odaklanmasını ve önceki adımları kullanarak bir sonraki adımları tamamlamasını öğretir.

*    Sözleşme programcıya fonksiyonla ilgili ne anlatır?
*    Amaç Açıklamaları, programcıya fonksiyonla ilgili ne anlatır
*    Sözleşme ve Amaç Açıklamaları, programcıya Örnekler yazması için nasıl yardımcı olur?
*    Örnekler içerisinde değişebilen bölümleri etiketlemek ve daire içine almak neden yardımcıdır?
*    Bütün bu adımlar programcıya bir fonksiyon tanımlama sırasında nasıl yardımcı olur?

Fark etmiş olabileceğiniz gibi Örnekler içinde bulunan ``roket-yüksekliği`` fonksiyonundaki çarpma işlemi direkt (77) sonucu olarak yazılmak yerine ``(* 11 7)`` şeklinde yazılmıştır. Neden çarpmanın hesaplanma yolunu göstermeye zahmet edilmiş olsun? Bunu yaparak, örnekler hangi adımın gerçekleştirileceği konusunda ipuçları sunar. Gösterilen programda (`online roket animasyon programı`_), örnekler yazarken uygulanan işlemlerin gösterilmesinin neden önemli olduğunu göreceksiniz.

“Run” a tıklayın, ve pencerenin en altında bir roket belirene kadar ve en yukarıda “zaman” ve “yükseklik” sayıları görüntülenene kadar bekleyin. Bu animasyon roketi, her boşluk tuşuna basıldığında yenilemek üzere ve zamanı geçiyor gibi göstermek üzere ayarlanmıştır. Boşluk tuşuna birkaç kere basın ve pencerenin üstünde beliren zamanın artışını gözlemleyin. Roket hareket etti mi? Zaman akıyor, ancak roketin yüksekliği değişmiyor! Roket penceresini kapatın, böylece kodu görebilirsiniz.

Bu fonksiyon için Sözleşme doğru: Fonksiyonun Adı, Etkinlik Alanı, Aralığı burada doğru olarak yazılmıştır. Buna rağmen bir sonraki adım kesinlikle bazı problemlere sahip:

*    Sadece bir Örnek var. Bu durum neyin değiştiğini anlamamız konusunda zorluk yaratabilir, böylece değişkenleri anlamaya çalışırken hatalara yol açabilir.
*    Örnek yüksekliğin nasıl hesaplandığını göstermiyor, yapılan işi göstermek yerine sadece “cevabı” yazıyor.

Örnek içindeki bu adımları atlayarak, Fonksiyonu tanımlarken hata yapmak kolaylaşabilir.

Programcının yaptığı hataları görebiliyor musunuz?

Birden fazla Örnek görmeden, bu programcı roketin yüksekliğinin her veri için ayrıca hesaplanacağını fark etmek konusunda sıkıntıya düşmüştür. Bunun yerine, her girdide aynı sayıyı üretmiştir (verilen kodda bu sayı sıfırdır). Sonuç olarak, kaç saniye geçmiş olursa olsun, roket her zaman sıfır yüksekliğindedir.

*    Bu programcının yazdığı Örnekteki hatayı düzeltin.
*    İlkinin altına ikinci bir Örnek yazın.
*    Fonksiyon tanımını tamir edin, böylece fonksiyon saniye sayısını 7 ile çarpar hale gelsin.
*    “Run” a tıklayıp arkasından boşluk tuşunu kullanın ve roket uçsun!

Tasarım Reçetesi Uygulaması (Süre: 40 Dakika)
--------------------------------------------------
Tasarım Reçetesi , programcıların yazdıkları kodların doğruluğundan emin olmak için kullandıkları , fonksiyonları tanımlamak için bir yol haritası niteliğindedir. Her adım bir öncekinin üzerine oluşturulur böylece karşılaşılabilecek hatalar erkenden önlemiş olur. Bu yol haritası bir dizi adıma sahiptir:

* Bir kelime hatasından Sözleşme'ye hareket etmek
* Sözleşmeı göz önünde bulundurarak örnekler yazmak
* Örneklerle uyuşan bir fonksiyon tanımlamak

Bu adımları bir bir uygulayarak başlayın.

Aşağıdaki her problem için Sözleşme'yi yazınız:

* ``mor-yıldız`` adında bir fonksiyon tanımlayın. Fonksiyon içine yıldızın boyutunu alsın ve verilen boyutta çizgisel bir yıldız üretsin.
* ``nokta`` adında bir fonksiyon tanımlayın. Fonksiyon içine renk alsın ve yarıçapı 50 olan, verilen renkte, içi dolu bir daire üretsin.
* İki sayının ortalamasının hesaplanması için iki sayı toplanır ve ikiye bölünür. ``ortalama`` adında bir fonksiyon tanımlayın. Fonksiyon içine iki sayı alsın ve bu iki sayının ortalamasını hesaplasın.

Her fonksiyon için iyi bir İsim bulduğunuzdan emin olun. Girdi Alanı ve Çıktı Alanı sadece Sayı, Görüntü, Metin vb. değerler içerebilir.

Sözleşme bir fonksiyon için temeldir, ve programcıya onu kullanması için yeterli bilgiyi verir: Fonksiyonun adı, fonksiyonun içine aldığı ve çıktı olarak verdiği değerlerin veri tipi.

Şimdi, yukarıdaki üç problem için de Sözleşmeleri tamamlamış bulunuyorsunuz. Her biri için ikişer tane Örnek üretmeye çalışın.

İki ya da daha fazla Örneğe sahip olduğunuzda, aralarında neyin değiştiğine karar verebilmek kolay olacaktır. Aslında, değişen şeylerin sayısı, fonksiyonun girdi alanının içinde olanların sayısıyla eşit olmalıdır. Eğer Girdi Alanı içinde bir Sayı, bir de Metin varsa, bu iki değer sizin örnekleriniz arasında değişen değerler olmalıdır.

Örnekler arasında değişim gösteren şeyleri tanımlayın ve bu bilgiyi kalan diğer fonksiyonları tanımlamak için kullanın.

Çalışma kitaplarınızdan Sayfa 13'ü açın, ve problemi dikkatle okuyun.

* Fonksiyonun ismini daire içine alın ve içine aldığı değerle ürettiği değerin altını çizin.
* Bu fonksiyon için Sözleşme yazın, altını çizdiğiniz değerler size Girdi Alanı ve Çüktü değerlerini bulmanız için yardımcı olacaktır.
* Sözleşmeın altında, Amaç Açıklamalarını, bu fonksiyonun ne yapıyor olduğunu özetleyerek bir cümleyle yazın.

Sözleşme ve Amaç Açıklamaları, programcı nasıl başlayacağından emin olmasa bile, Örnek yazma aşamasına geçmesi için kullanılabilir.

Sadece Sözleşme ve Amaç Açıklamalarını kullanarak aşağıdaki sorulara cevap verebiliyor musunuz görün:

* Her Örnek fonksiyonun adıyla başlar. Fonksiyonun adını nerede bulabilirsiniz?
* Her Örnek, örnek veri içermek zorundadır. Fonksiyonun kaç tane veri girdisine ihtiyaç duyduğunu nereden bulabilirsiniz?
* Her Örnek, veri girdisi verildiği zaman, içinde ne yapıldığını gösteren bir ifade içermeli. Bu fonksiyonun ne yaptığını anlayabilmek için nereye bakmalısınız?
* Kağıdınıza iki Örnek yazın, ardından aralarında değişen değerlerin altını çizin ve etiketleyin.

Fonksiyon tanımı yazarken, yazdıklarınızın hepsinin üç bölümde olduğuna emin olun: Sözleşme ve Amaç Açıklamaları, Örnekler ve Tanım. “Run” a basıldığında, bilgisayar tanımı okuyacak, Örneklerinizi doğru yazılıp yazılmadığını görmek için test edecek ve yaptığınız tanımı bilgisayarın diline ekleyecektir. Bir kere eklendikten sonra fonksiyonu sanki bilgisayarda daha önceden varolan fonksiyonlar gibi kullanabilirsiniz.

`Bu örnek fonksiyonu <http://www.wescheme.org/openEditor?definitionsText=;%20kırmızı-kare%20:%20Number%20-%3E%20Image%0A;%20draw%20a%20solid,%20red%20square%20using%20the%20given%20size%0A(EXAMPLE%20(kırmızı-kare%2042)%20(square%2042%20%22solid%22%20%22red%22))%0A(EXAMPLE%20(kırmızı-kare%2073)%20(square%2073%20%22solid%22%20%22red%22))%0A(define%20(kırmızı-kare%20boy)%20(square%20boy%20%22solid%22%20%22red%22))>`_ farklı girdi değerleri kullanarak test edin.

Bazı fonksiyonlar birden fazla girdi alırlar. ``kırmızı-kare`` fonksiyonu, sadece büyüklüğü değişken değer olarak alarak, her zaman kırmızı bir kare üretecektir. Düşünün, buna rağmen istiyoruz ki bu fonksiyon kırmızı ama istersek içi dolu istersek çizgisel bir kare üretsin. Bu demek oluyor ki hem boyut hem de stil değişebilir, böylece kullanıcı hem ``(kırmızı-kare 50 “solid”)`` girebilir hem de ``(kırmızı-kare 50 “outline”)`` girebilir.

* Bu durum fonksiyonun Etkinlik Alanında nasıl değişiklik gösterir?
* Örnekler ne şekilde değişmek zorunda kalır?
* Tanım ne şekilde değişir?

Yazdığınız kodun, ``kırmızı-kare`` fonksiyonunun içine hem “solid” (katı) hem de “outlined” (çizgisel) verilerini, ikinci değer olarak almasına izin vermesi için, her parçasını değiştirin.

Tasarım Reçetesi, fonksiyonun istenilen sayıda girdi alması için kullanılabilir. Basit bir örnek olarak aşağıdaki problemi ele alalım.

Çalışma kitaplarınızdan sayfa 14'ü açın, ve  problemi dikkatle okuyun.

* Fonksiyonun ismini daire içine alın ve içine aldığı değerle üretilmesini istediklerinin altını çizin.
* Fonksiyon girdi olarak kaç veri alıyor? Bunlar Sayı mı? Metin mi? Görüntü mü?
* Bu fonksiyon için Sözleşme yazın, altını çizdiğiniz değerler size Girdi Alanı ve Çıktı değerlerini bulmanız için yardımcı olacaktır.
* Sözleşme'nin altında, Amaç Açıklamalarını, bu fonksiyonun ne yapıyor olduğunu özetleyerek bir cümleyle yazın.
* Bu fonksiyon için iki Örnek yazın ve içlerinde değişen değerleri daire içine alıp etiketleyin.
* Bu fonksiyon için bir Tanım yazın.


Tasarım Reçetesi (Cebir) (Süre: 40 Dakika)
-----------------------------------------------------
Bir programcının esas gücü bir dili ne kadar iyi bildiği değildir. Esas güç, bildiklerinizi problem çözmek üzerinde ne kadar iyi kullandığınızdır! Buraya kadar problemleri kağıt üzerinde yazıp arkasından bilgisayar üzerinde fonksiyona çevirebilmenize yardım edecek çok kuvvetli bir araç öğrendiniz: Tasarım Reçetesi! Görünen o ki Tasarım Reçetesi size problemleri matematiksel olarak da çözebilmeniz için yardımcı oluyor!

Alışma kitaplarınızın sonlarında EK B'yi açın, problem 1'i dikkatlice okuyun, ve fonksiyon için bir Sözleşme yazın. "Bir roket Dünya’dan Mars’a saniyede 80 kilometre hız ile uçuyor. Roketin aldığı mesafeyi (m), sürenin (s) fonksiyonu ile açıklayan bir fonksiyon yazınız."

Roketin yolculuk ettiği uzaklık kilometre cinsinden sayılarla ölçüldü ve süre da saniye cinsinden sayılarla ölçüldü. Bu bize Sözleşme'yi verir::

    ; uzaklık:Sayı -> Sayı

Daha az önce, Sözleşme bize Örnekleri nasıl yazacağımız hakkında çok güçlü ipuçları verdi. İşte program kodu olarak yazılmış bir örnek::

    (EXAMPLE (uzaklık 5) (* 5 80)) 
    
Burada da aynı Örneğin matematiksel yazılışı: :math:`uzaklık(5)=5×80`

Bu fonksiyon için iki tane daha ek Örnek yazın, matematiksel gösterimi kullanın.

Az önceki gibi, bir fonksiyonun değişkenleri iki Örnek yazarak ve aralarında neyin değişken olduğu gözlemlenerek tanımlanabilir.

Yazdığınız örnekleri kullanarak, Fonksiyon için değişkeni/değişkenleri tanıyın. Ardından fonksiyonu Matematiksel yazım kullanarak tanımlayın.

Tasarım Reçetesi yazılı bir tanımın, usule uygun bir fonksiyona dönüştürülmesine yardım eder.

*    :math:`uzaklık(4)=4×80`
*    :math:`uzaklık(7)=7×80`
*    :math:`uzaklık(t)=t×80`

Çalışma kitaplarınızdan problem 2'yi dikkatle okuyun ve fonksiyonun Sözleşme'sini yazın: “Bir roket Dünya’dan Mars’a saniyede 80 kilometre hız ile uçuyor. Roketin seyahat ettiği süreyi (s) katettiği mesafenin (m) fonksiyonu ile açıklayan bir fonksiyon yazınız.”

Sözleşme olduktan sonra, Örnekleri yazmak kolay:: 

    ; süre: Sayı -> Sayı

Sözleşme'yi kullanarak bu fonksiyon için iki tane Örnek yazın, ardından fonksiyon için gereken değişken/değişkenleri tanıyın.

* Bu fonksiyonda kaç tane değişken var?
* Değişkenlere isim verin.
* Fonksiyonu matematiksel ifadeler kullanarak tanımlayın.

Fonksiyonunuz hazırlandığı anda, değerleri içine yerleştirip sonuçları almak çok basit. Bütün problemlerde en zor bölüm fonksiyonu ilk aşamada hazırlamaktı. Şanslıyız ki, Tasarım Reçetesi , fonksiyonu kurmayı çok daha kolay kılıyor. Tasarım Reçetesini sadece iki ayrı fonksiyonu kurmak için kullandık, bunlar fonksiyonun cevaplarını uzaklık ve zaman cinsinden vermesi için de kullanıldı. Fonksiyonları birer araç olarak kullanarak basit problemleri çözebilir için ya da daha zor olanları çözmek için fonksiyonları bir araya getirebilirsiniz.

Çalışma kitaplarınızdan Problem 3'ü açın, problemi dikkatlice okuyun: “Bir roket Dünya’dan Mars’a saniyede 80 kilometre hız ile hareket ediyor.. Aynı anda Mars'tan kopna bir götaşı da saniyede 70 kilometre hız ile Dünya'ya dolru gelmeye başlıyor. Dünya ile Mars arasındaki mesafe  50.000,000 kilometre ise Roket ve göktaşı ne kadar süre sonra çarpışır?”

* Problemin size verdiği gerçekler nelerdir?
* Problem sizden ne istiyor?
* Cevaplarınızı bir sonraki cümleyi tamamlamak için kullanın: “Verilen …………., üretilenin ………… olduğu bir fonksiyon yazınız.”
* Eğer böyle bir fonksiyon var olsaydı, ismi en iyi ne olabilirdi?

Eğer çarpışma zamanını hesaplayabilen bir fonksiyonumuz olsaydı, bu soruyu cevaplamak sadece fonksiyona Dünya ve Mars arsındaki mesafeyi yerleştirmemiz sonucu kolayca bulunurdu. Onun yerine fonksiyonun kendisini yazabilmek için bir denklem düşünmeye ve Tasarım Reçetesinin adımlarını kullanmaya başlayabilirsiniz.

Bu fonksiyon için Sözleşmeı yazın, ardından farklı uzaklıklar kullanarak iki Örnek yazın.

Şu ana kadar, bu fonksiyonun Sözleşmı ve Amaç Açıklaması elinizde:

*   ``çarpışma: Sayı -> Sayı``
*   :math:`çarpışma(0)=...`

Şimdi, eşittir işretinden sonra gelmesi gereken işlemi bulmalıyız. Şanslıyız ki, elimizde bir ipucu var: ne olacaksa olsun biliyoruz ki, sonuç sıfır olmalı. Bu bilgiyle diyebiliriz ki, çarpıştıkları zaman aralarındaki uzaklık sıfır olacaktır.

Roket saniyede 80 km hızla gidiyorsa ve gök taşı saniyede 70 km hızla gidiyorsa birbirlerine ne kadar hızlı yaklaşıyorlar demektir?
80+70=150, böylece biliyoruz ki birbirlerine git gide yaklaşma hızı saniyede 150 km oluyor. Bu bizim “zaman” fonksiyonumuzdan çok da farklı değil: elimizde bir hız bilgisi var ve verilen mesafeyi gitmenin ne kadar zaman alacağını bilmek istiyoruz. Bu durumda Örneğimiz için ne yazmalıyız?

    :math:`çarpışma(0)=0/150`

İki farklı mesafe kullanarak iki tane Örnek yazın ardından her farklı uzaklık için işe yarayacak bir fonksiyon tanımlayın.

Şu ana kadar, büyük resmi çoktan görmüş olabilirsiniz: problem içinde verilen uzaklık, denkleme herhangi bir fonksiyon tanımlamaya gerek duyulmadan yerleştirilebiliyor. Bazen tasarım reçetesi sizi cevaba hemen ulaştırabiliyor ve hatta bitirmek zorunda olmayabiliyorsunuz bile! Diğer zamanlarda, buna rağmen büyük resmi göremeyebilirsiniz. Bu durumda problemi çözmeye çok daha küçük parçalardan başlamalı ve her küçük parça için kendi fonksiyonunuzu yazmalısınız.


Kapanış (Süre: 5 Dakika)
--------------------------
Bu ünitede, fonksiyonların bir animasyon yazmada ne kadar kullanışlı olduğunu öğrenmeye başladınız: fonksiyonlar size bir oyunun sahnesini yaratabilmeniz için gereken bilginin üretilmesini sağlar (örneğin, roketin yüksekliği). Fonksiyon yazma konusunda fazladan örnekler yapıp Tasarım Reçetesini kullanarak, artık kendi karakterlerinizi hareket ettirebileceğiniz kendi oyunlarınızı yazmaya hazırsınız.


