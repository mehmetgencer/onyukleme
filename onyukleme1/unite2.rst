Ünite 2 Sözleşmeler, Metinler ve Görüntüler
===================================================
Öğrencilere fonksiyonların bir setten diğerine bir eşleştirme olduğunu, fonksiyonun girdi setindeki nesnelerin çıktı setindeki karşılıklarını verdiği anlatılır.  Değerlendirme Çemberi konusundaki bilgileri ile birleştiğinde, öğrenciler Metinler ve Görüntüler gibi diğer veri türlerini içerecek şekilde fonksiyon anlayışlarını genelleştirirler.

Değerlendirme Çemberi Tekrarı (Süre: 30 dakika)
--------------------------------------------------
Çalışma kitabınızda Sayfa 7'de yer alan çalışma kağıdını kullanarak Değerlendirme Çemberi alıştırması yapın.

*  Her bir satırın sol sütununda birer matematiksel ifade bulunuyor.
*  Bu ifadelerin her birini inceleyin ve her biri için ikinci sütuna Değerlendirme Çemberi'ni çizin.
*  Her birini dönüştürdükten sonra, üçüncü sütuna geçin ve her birini, bilgisayara girilebilecek bir programa dönüştürün. Parantezlerinizi kontrol etmeyi unutmayın ve her bir girdi için boşluk bırakmaya özen gösterin.

.. class:: teacher-note

Öğrencilerin dıştan içe (büyük bir Çember ile başlayıp içini doldurarak) ve içten dışa (en içteki ifadeden başlayıp oluşturarak) Çember çizme alıştırması yaptığından emin olun.

Metinler ve Görüntüler (Süre: 20 dakika)
-----------------------------------------
Değerlendirme Çemberleri güçlü birer araçtır ve sayılardan çok daha fazlası için kullanılabilirler. Burada gösterilen Değerlendirme Çemberi'ni ele alalım.

$dc{ ( star 50 "solid" "red" )}

* Kullanılan fonksiyonun ismi nedir?
* Fonksiyona kaç argüman verilmiştir?
* Sizce bu fonksiyon ne yapar?
 
Bir Değerlendirme Çemberi'ni koda dönüştürmek için kullandığınız kurallar hâlâ geçerli. Bu Çember'in kodu şu şekilde::
 
        (star 50 "solid" "red")

.. class:: teacher-note

Öğrencilerden buradaki bütün yanıtları bilmeleri beklenmez; onlar için amaç, Çemberler için bildiklerini yeni bir ifadeye uygulamak ve kendilerine ne anlam ifade edebileceğini tartışmaktır. Onlardan yanıtlarını gerekçelendirmelerini ve neden doğru olduğunu düşündüklerini açıklamalarını isteyin. Daha önceki Değerlendirme Çemberi örnekleriyle bağlantı kurmak yararlı olabilir.

Bu kodu Etkileşim Penceresi'ne yazın ve "Enter"e basın. Ne gördünüz?

* star fonksiyonu ne yapıyor?
* İfadeyi tekrar yazın; ama bu sefer 50 yerine çok daha büyük bir sayı kullanın. İlk argüman bilgisayara ne söylüyor?
* İfadeyi tekrar yazın ve bu sefer de, "solid" yerine "outline" kullanın, tırnak işaretlerini koruyarak tabii! İkinci argüman bilgisayara ne söylüyor?
* Şimdi de "red" argümanını başka bir şeyle değiştirin (tırnak işaretlerini yine koruyun!). Üçüncü argüman bilgisayara ne söylüyor?

`Denemek için burayı tıklayın <http://www.wescheme.org/openEditor?interactionsText=(star%2050%20%22solid%22%20%22red%22)&>`_!

.. class:: teacher-note

Bu aktivite, öğrencilerin yeni terimler ve kavramlarla oynaması için tasarlandı, böylece olup bitene göre kendi modellerini geliştiriyorlar. Bu noktada, öğrencilerin kodun her bir parçasını anlamaları gerekli DEĞİL. Eğer birçok kod parçası vermek zorunda kaldıysanız, sorun yok, sadece oynamalarını sağlayın!

Bu ifadelerde kullanılan tamamıyla yeni bir değer türü var: "solid" ve "red", **Metin** denilen tamamıyla yeni bir veri türünün örnekleri.

**Metin, tırnak işaretleri arasındaki her şeydir.**

Değerleri ilk öğrendiğinizde, bir programın yalnızca bir değer olabileceğini görmüştünüz, örneğin bir sayı. Etkileşim Penceresi'ne bir sayı yazarsanız, o sayı yine kendisini dönecektir. Bunu hatırlamak için Etkileşim Penceresi'nde 716'yı hesaplamayı deneyin. Ne elde etmeyi umdunuz? Metinler de birer değer olduğundan "red" değeri de yine eksiksiz geçerli bir programdır! Tıpkı sayı değerleri gibi metinler de kendilerini dönerler.

Etkileşim Penceresi'ne farklı metinler girmeyi deneyin. Birden çok kelimeyi tırnak işaretleri içinde yazarsanız ne olur? Veya Sayıları?

.. class:: teacher-note

Öğrenciler, Metinleri, Sayıların bir benzeri olarak görmeliler: farklı bir değer türü; ama bu kendisini dönen ve bir fonksiyona argüman olarak girebilen basit bir program. 42 Sayısının ve "42" Metninin farklı değerler olduğunu unutmayın! 42 Sayısını bir sayıyla toplayabilirsiniz; fakat "42" Metnini başka bir sayıya ekleyemezsiniz.

Bu ifade, ayrıca, ``star`` denilen yeni bir fonksiyon içeriyor. Nasıl ki toplama fonksiyonu + iki Sayı alıyorsa, ``star`` da bir Sayı and iki Metin alıyor ve Görüntü denilen yeni bir tür veri üretiyor.

Aşağıdaki her bir değerin veri türü nedir? (Sayı, Metin veya Görüntü)

*            ``42``
*            ``"Merhaba, anne!"``
*            ``9273482.42``
*            .. image:: images/unite2_ucgen.png
*            ``"84729"``
*            ``"Metinler ve Sayılar iki farklı veri türüdür"``
*            .. image:: images/unite2_kahve.png

 .. class:: teacher-note

Öğrenciler şu an üç veri türü görmüş oldular: Sayı, Metin ve Görüntü. Öğrencilerin bunların her birine ait örnekleri doğru tespit ettiğinden emin olmak isteyebilirsiniz.
 
Değer üreten ifadeler de gördünüz, örneğin bir Sayı üreten (* 16 4). Başka ifadeler Metin veya Görüntü üretebilirler.

Aşağıdaki ifadeler hesaplandığında her biri hangi veri türünü dönecek?

*            ``(/ (+ 7 2) 3)``
*            ``(star 500 "solid" "purple")``
*            ``(star (+ 1 3) "outline" "blue")``
*            ``(- (* 4 2) (+ 1 0))``


.. class:: teacher-note

For added practice, have students identify the type of each argument in each of those expressions. Going Further - If time allows, you can go further into Manipulating Images or Making Flags.

Sözleşmeler (Süre: 35 dakika)
--------------------------------
Daha önce, iki Sayı alan birçok fonksiyon gördünüz, örneğin + ve -. Bu arada, ``star``, bir sayı ve iki Metin alıyor. Farklı fonksiyonlar farklı girdiler alır ve her bir fonksiyonun gereksinimlerini takip etmek için bir yol gerekir.

**Bir fonksiyonun Girdisi, o fonksiyonun beklediği veridir.**

Bir fonksiyonun Girdisini bilmenin nasıl bir yardımı olur?

Programcılar, bir dildeki bütün fonksiyonların ve Girdilerinin listesini tutarak her bir fonksiyonun nasıl kullanıldığını rahatlıkla görebilirler. Bununla birlikte, her bir fonksiyonun ne ürettiğini tutmak da önemlidir! Söz gelimi, bir Sayı üretilmeye çalışılıyorsa, programda ``star`` kullanılmayacaktır; çünkü ``star`` sadece Görüntü üretir.

**Bir fonksiyonun Çıktısı, o fonksiyonun ürettiği veridir.**

Girdiler ve Çıktılar, programcılara, saçma sapan hataların önüne geçerek ve bundan sonra ne yapacakları hakkında ipuçları vererek daha iyi kod yazmalarında yardımcı olur. ``star`` fonksiyonunu kullanmak isteyen bir programcı Girdiye bakıp ilk girdi türünün  bir Sayı (mesela 100 gibi) olması gerektiğini, hatırlamasına gerek kalmadan hemen bilebilir. Programcı, oraya tekil, sade bir değer yazmak yerine, ``(* 25 4)`` şeklinde bütün bir ifadeyi de yazabilir. Buradaki ``*`` fonksiyonunun Çıktısına bakarak bu kodun uygun bir değer (Sayı) döneceğini biliyoruz; dolayısıyla, ``*``'ın sonucu herhangi bir Sayı değeri yerine kullanılabilir.

.. class:: teacher-note

Girdi ve Çıktı önemli kavramlardır. Basit bir ifade (örneğin (+ 1 2)) üzerinde değişiklik yapılarak ve her adımda sorular sorularak güçlendirilebilirler. Örneğin, +'nın iki Sayı aldığını biliyoruz, örnekte de işte bu yüzden 1 ve 2 kullanıldı. Ancak, o değerlerin her biri bir başka ifade ile, o ifade Sayı döndüğü sürece, yer değiştirilebilirdi. Öğrencilerin her bir değerin bir ifade ile düzenli olarak yer değiştirmelerini sağlayın ve onlardan, Girdi ve Çıktıları kullanarak her bir fonksiyondaki yer değiştirmeyi gerekçelendirmelerini isteyin.

Programcılar, her bir fonksiyonun gereklerini takip edebilmek adına Girdi ve Çıktı bilgilerini içeren sözleşmeler yazarlar.

**Bir Sözleşme üç parçadan oluşur: bir fonksiyonun İsmi, Girdisi ve Çıktısı.**

``star``'ın Sözleşmesi::

        ; star: Sayı Metin Metin -> Görüntü

Bu demek oluyor ki, İsmi ``star`` olan fonksiyon Girdi olarak bir Sayı ve iki Metin alıyor ve Çıktı olarak Görüntü üretiyor. Sözleşme yazarken, daha genel olmasını istediğimizden, değerler yerine türleri kullanırız: bir yıldız herhangi bir boyutta olabilir; onun için, ``star``'ın Girdisi, ilk argümanın herhangi bir Sayı olabileceğini açıkça belirtir. Dili, bir Lego derlemi gibi düşünürsek, Sözleşmeler de, her bir parçanın anahtar-kilit ilişkisine uygun olarak nasıl birleşeceğini anlatır.

Sözleşmeler, bir yerlerde kaydını tutmamızı gerektirecek kadar önemli ve faydalıdır. Çalışma kitabınızın son sayfasında  Sözleşmeler sayfası yer alıyor. Sözleşmeler tablosunun ilk satırına ``star`` için sözleşme yazın.

.. class:: teacher-note

Öğrencilerin ilk kez sözleşme yazarken yaptıkları yaygın hatalar: tür yerine değer yazma (örneğin "Metin" yerine "red") ve argümanları unutma. Sözleşmeler, genellikle (varsa) kavram yanlışlıklarının göstergesi olduğundan öğrencilerinizin yazdıklarını dikkatlice okuyun, ki ilerleyen zamanlarda sürdürmesinler.

Yeni bir fonksiyonun sözleşmesi::

        ; rectangle: Sayı Sayı Metin Metin -> Görüntü

* Bu fonksiyonun İsmi nedir?
* Bu fonksiyonun kaç Girdisi vardır?
* Girdilerin her birinin türü nedir?
* Bu fonksiyonun Çıktısı nedir?
 
Sözleşme, bir fonksiyonun İsmini yazarak ve Girdideki her bir argümana değer vererek size fonksiyonun tam olarak nasıl kullanılacağını söyler. 

İşte rectangle ifadesi için bir örnek::

        (rectangle 100 50 "solid" "blue")

`Sizce bu kod ne üretir <http://www.wescheme.org/openEditor?interactionsText=(rectangle%20100%2050%20%22solid%22%20%22blue%22)&>`_?

.. class:: teacher-note

Öğrencilerin, dikkatlerini her zaman Girdiye yönelterek, argüman değerlerini değiştirip denemeler yapmalarını sağlayın.

Fonksiyonlarımız için Sözleşmeler yazarak nasıl kullanıldıklarını kolaylıkla hatırlayabiliriz.

Aşağıda + için sözleşme bulunuyor::

        ; +: Sayı Sayı -> Sayı

Siz de ``*, -, /`` ve ``sqrt``  için sözleşmeler yazabilir misiniz (not: sqrt karekök anlamına gelen square root kelimesinin kısaltılmışıdır)?

Bir ifade yazmak için Sözleşmeyi nasıl kullanacağınızı artık biliyorsunuz. Görüntü üreten birkaç yeni fonksiyonun Sözleşmeleri şu şekilde::

        ; ellipse:  Sayı Sayı Metin Metin -> Görüntü

        ; triangle: Sayı Metin Metin        -> Görüntü

        ; circle:   Sayı Metin Metin        -> Görüntü

         
Başka şekiller çizmek için bu yeni fonksiyonların nasıl kullanıldığını anlayabiliyor musunuz bir deneyin! İşte sizi heveslendirebilecek `bir örnek <http://www.wescheme.org/openEditor?interactionsText=(ellipse%20150%2040%20%22outline%22%20%22black%22)&>`_

.. class:: teacher-note

Öğrencileri, Sayı değerleri ile bütün bir ifadeyi ((star (* 10 5) "solid" "purple") gibi) yer değiştirerek, daha karmaşık ifadeler yazmaları için zorlamaya başlamalısınız. Öğrenciler, bütün bir alt-ifadeyi, onu çevreleyen fonksiyona tekil bir argüman olarak görme konusunda rahat olmalılar.

Çok ilginç bir fonksiyon kullanan bir ifade: ``(bitmap/url "http://bootstrapworld.org/images/icon.gif")``. Bu fonksiyon, İnternette bulabileceğiniz herhangi bir görüntünün URL (bağlantı adresi) bilgisini alır ve programınızda kullanabilmeniz için o görüntüyü üretir.

* Sözleşmeyi oluşturan üç parça nelerdir?
* Bu yeni fonksiyonun İsmi nedir?
* Girdisi kaç elemanlıdır?
* Bu fonksiyonun Girdisi nedir?
* Bu ifade neye değerlenir?

.. class:: teacher-note

Öğrencilerin bitmap/url kullanarak alıştırma yapmalarını istiyorsanız, Google Images veya Bing Images gibi bir görüntü arama motoru kullanmanız önerilir. Öğrencilerin görüntünün kendisinin URL'sine ulaşmayı bildiklerinden emin olun, görüntünün yer aldığı Web sayfasının URL'sine değil.

Sözleşmeler programcılara kod yazarken yardımcı olur; dolayısıyla gördüğünüz her fonksiyon için sözleşme yazmak her zaman için iyi bir fikirdir.

Sadece bazı örnek kodlara bakarak bir fonksiyonun sözleşmesini bilebilir misiniz? `Burada kullanılan <http://www.wescheme.org/openEditor?interactionsText=(text%20%22Bootstrap%22%2030%20%22purple%22)&>`_ fonksiyona bir bakın ve o fonksiyon için İsim, Girdi ve Çıktı yazmaya çalışın.

Bir fonksiyonun Sözleşmesini kod ile karıştırmadığınızdan emin olun! Aşağıdakilerden bazıları sözleşmeler; fakat bazıları sadece o fonksiyonların kullanılış örnekleri. Hangisinin hangisi olduğunu ayırt edebilir misin?::

            ; triangle : Sayı Metin Metin -> Görüntü

            (triangle 100 "outline" "blue")

            (square (+ 200 5) "solid" "red")

            ; square : Sayı Metin Metin -> Görüntü

Bazen kod yazarken hata yaparız ve sözleşmeye uymayan bir değer kullanırız. Neyse ki, bilgisayar, bu gibi durumları tespit eder ve sorunu bulmamızda ve düzeltmemizde bize yardım etmek için **hata mesajları** verir. Hata mesajları, kodun hata içeren kısımlarını belirtir ve bilgisayarın sorunu bulduğu yeri açıklar.

Aşağıdaki doğru olmayan her bir ifade için koda bakın ve hatayı görmeye çalışın. Ondan sonra, kodu Etkileşim Penceresine yazın ve hangi hata mesajını alacağınızı görün. Hata, sizin tespit ettiğinizle aynı mı?::

            (+ 4 "merhaba")

            ("merhaba" + "anne")

            (* (+ 4 5) "pizza")

            (star "solid" "red" 40)

            (star "40" "solid" "red")

            (star 40 "red" "solid")

            (star 40 "solid" "yelow")

            (star (* 4 10) "blue")

            (cirle 25 "outline" "blue")

.. class:: teacher-note

Controlled practice with error messages helps students gain confidence in dealing with them later on. It is fine if students don’t spot the errors for themselves at first, though having students explain the problems in their own words should reinforce correct use of these functions later in the course.

Girdi olarak Görüntü alan birkaç fonksiyon daha var. Örneğin, bir görüntüyü soldan sağa döndürmek istediğinizi varsayalım; ki böylece simetrisi görünüyor olacak. Hem Girdi hem de Çıktı olarak Görüntü kullanan ``flip-horizontal`` fonksiyonunu kullanabilirsiniz. Sözleşme (ve fonksiyonun bir örneği) için aşağıya bakınız::

        ; flip-horizontal : Görüntü -> Görüntü

        (flip-horizontal (text "backwards" 50 "red"))


.. class:: teacher-note

Girdi olarak Görüntü alan fonksiyonlar başlangıçta öğrenciler için genellikle çok zordur; çünkü öğrencilerin bu tür fonksiyonların birleşimini gerçekten çok iyi anlamaları gerekir. Eğer öğrenci bu kavram sorunuyla boğuşuyorsa, onlara, buradaki örneğin Değerlendirme Çemberi'ni çizdirin ve koda daha sonra çevirtin.

Çalışma kitabınıza aşağıdaki her fonksiyon için Sözleşme yazın ve örnek kod ile denemeler yapın. Fonksiyonların Görüntüye nasıl etki ettiğini hesaplayabilir misiniz?  ::

        ; flip-vertical : Görüntü -> Görüntü

        (flip-vertical (text "upside-down" 50 "red"))

         

        ; scale : Sayı Görüntü -> Görüntü

        (scale 2 (text "resize" 10 "purple"))

         

        ; rotate : Sayı Görüntü -> Görüntü

        (rotate 45 (text "spin" 30 "green"))

         

.. class:: teacher-note

Daha öncekiler gibi, zorlanan öğrencileri bunların her biri için Değerlendirme Çemberi çizmelerine teşvik edin.

Kapanış (Süre: 5 dakika)
--------------------------
Bu ders, Metinleri ve Görüntüleri (Sayılar ile birlikte) kapsayacak şekilde Değerlendirme Çemberleri, ifade ve kod kavramını genişletti. Sayılarda kullanılan fonksiyonlarla ilgili bildiğiniz her şeyin, Metinler ve Görüntülerde de çalıştığını öğrendiniz, ki bu programlarınızı daha ilginç kılar. Kendi görüntülerinizi oluşturmak için Görüntü fonksiyonlarının ve var olan Görüntülerin nasıl kullanıldığını öğrendiniz (bitmap/url aracılığıyla).

Bir sonraki ünitede, işten tasarruf etmek için kendi fonksiyonlarınızı nasıl oluşturacağınızı öğreneceksiniz (oyun yazmanın önemli bir bölümünü oluşturacak). Ayrıca, oyun tasarımınızdaki unsurlar için oyununuzu ihtiyaca uygun olarak düzenlemeye başlayacaksınız.

