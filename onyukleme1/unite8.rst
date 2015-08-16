Ünite 8: Çarpışma Tespiti
============================

Öğrenciler Pisagor Teoremini türetir, tartışır ve kanıtlar ve ardından çarpışmalarıtespit etmek için bu teoremi kullanırlar.(Boolean'larla birlikte)

**Hazırlık**: `Ünite 8 Hazırlık`_ egzersizini yapın.

1-Boyutta Uzaklık (Süre: 20 dakika)
------------------------------------

Boşlukta hareket eden ve her birinin kendi(x,y) koordinatları iki nesne olduğunu farzedelim. Bunların kenarları ne zaman üst üste gelmeye başlar? Eğer bunların koordinatları aynıysa (x1=x2, y1=y2) bunlar kesinlikle üst üste gelir, ama ya eğer bunların koordinatları küçük uzaklıklarla ayrılmışsa? Peki bunların kenarları değmeden ne kadar küçük bir uzaklık gerekiyor?

.. class:: teacher-note

Görsel araçlar burda anahtar öğeler:bu diagramın panoda olduğuna emin olun


.. image:: images/unite8_overlap.png
    :align: right
 
Tek boyutta, iki nesnenin üst üste geldiğini hesaplamak kolaydır.Bu örnekte, kırmızı çemberin yarıçapı 1,mavi çemberin yarıçapı 1.5 tir. Çemberler arası uzaklık çemberlerin yarıçapları toplamından (1+1.5=2.5) küçük olursa çemberler üst üste gelir. Bu çemberlerin arasındaki mesafe nasıl hesaplandı? Bu örnekte bunların uzaklıkları 3 birimdir, çünkü 4−1=3.

$oyexercisestart
Eğer çemberlerin yerleri değiştirilirse aralarındaki uzaklık değişir mi? Neden evet ya da neden hayır?
$oyexerciseend

.. class:: teacher-note

Birkaç örnek üzerinde çalışıp sayı duğrusunu kullanarak öğrencilere nasıl iki nokta arasındaki uzaklığı hesaplayacaklarını sorduk. Öğrenciler bu işi de iyi yapabildiler:bir sayı doğrusu çiz, iki öğrenci bu sayı doğrusunun farklı noktalarında durdular,kendi araçları ve kesicileriyle objelere farklı boyutlar verdiler.Öğrencileri aralarındaki mesafeyi hesaplayabilmek için birbirine değinceye kadar sayı doğrusu üzerinde hareket ettir Videomuzun ilk saniyelerinde Bootstrap video bu alıştırmanın nasıl olduğu gösteriliyor.

Sana verilen oyun kodu iki nokta arasındaki uzaklığı gösteren ``çizgi-uzunluğu`` fonksiyonunu içeririr. ``çizgi-uzunluğu`` fonksiyonu 2 sayıyı girdi olarak alır ve aralarındaki mesafeyi hesaplar.

$oyexercisestart
Aşağıdaki örneklerin sonucunun ``çizgi-uzunluğu`` fonksiyonuna göre ne olmasını beklersiniz::

            (çizgi-uzunluğu 2 5)

            (çizgi-uzunluğu 5 2)

Sizce ilk girdinin küçük veya büyük olması farketmeksizin aynı sonucu elde edebilir miyiz?
$oyexerciseend

.. class:: teacher-note

Eğer vaktiniz olsa ve kodunuzu örneklerle daha sağlamlaştırmak isteseniz, (EXAMPLE (line-length 2 5) ___) örneğinde olduğu gibi boşlukları dolduran öğrencileriniz olabilir, çemberler arası farkı bulan, ilk rakamın büyük veya küçük olduğunda fark olup olamayacağını hesaplayan. Bundan dolayı line-length fonksiyonunu kodunun bir şarta ihtiyacı olduğu önerilir. Bu durumda ilk şartımız sonucun mutlak değerini almamak olur. (abs fonksiyonu bunu yapar does this); Eğer mutlak değeri bilen eski öğrencilerle çalışıyorsanız onlara gösterebilirsiniz. cond kullanarak, ve ayrıca örnekteki yapının nasıl yükseltiğini vurgulayarak.
        
Oyunundaki ``çizgi-uzunluğu`` ve ``çarpıştı?`` fonksiyonlarını bulana kadar kodun aşağı kısımlarına ilerleyin. ``çizgi-uzunluğu`` fonksiyonunun iki sayı arasındaki farkı bulurken bir koşullu ifade kullanarak hangi sayının daha büyük olduğunu kontrol ettiğine  dikkat edin.

``çizgi-uzunluğu`` fonksiyonunun neden ``cond?`` fonksiyonuna ihtiyacı olduğunu açıklayabilir misin? Kodda dikkat edilmesi gereken  iki koşul nelerdir?

.. class:: teacher-note

Bu iki koşul:  A küçüktür B,     B küçük veya eşittir A


.. image:: images/unite8_overlap2.png
    :align: right
    
Ne yazık ki, ``çizgi-uzunluğu`` fonksiyonu sadece 1 boyutta iki nokta arasındaki (x,y) uzaklığı hesaplayabilir. Peki 2 boyutlu bir düzlemde hareket eden iki nesne arasındaki uzaklık nasıl hesaplanabilir? (Oyun içerisindeki nesne)? ``çizgi-uzunluğu`` fonksiyonu gösterilen grafikteki dikey ve yatay doğruları x-koordinatları ve y-koordinatları arasındaki uzaklığı kullanarak hesaplayabilir. Ancak,bu bize bu iki merkez arasındaki uzaklığı söylemez.

.. image:: images/unite8_overlap3.png
    :align: right

Bir nesnenin merkezinden diğer nesnenin merkezine çizilen doğru kenarları A, B ve C olan bir dik üçgen yaratır.A ve B yatay ve dikey uzaklıklar olup C ile birlikte iki koordinat arasındaki uzaklığı oluşturur. ``çizgi-uzunluğu`` fonksiyonu A ve B yi hesaplamak için kullanılabilir fakat C yi nasıl hesaplayacağız?

.. class:: teacher-note

Öğrencilerin oyun bütün oyun dosyaları *distances-color* denilen boş string kümelerine sahiptir."". Bunu değiştirdiğimizde örneğin "yellow" veya "red", oyun her karakter arasına dik üçgenler çizer ve aralarındaki mesafeleri renkle doldurur.Bunu kendi oyununuzu kullanarak kanıtlayabilirsiniz ve bununla birlikte bunu takip eden öğrencilere sahip olabilirsiniz. İpucu: Dik üçgenleri olabildiğince kolay görmeniz için, arkaplanınız basit olsun.(siyah kare ve yavaş inen animasyon fonksiyonlarıyla)

Bir dik üçgende, 90-derecelik açının karşısındaki kenara *hipotenüs* denir. Çarpışma Tespitini düşündüğümüzde zaman eğer hipotenüs objelerin yarıçapları toplamından küçük ise objeler çarpışır. Hipotenüsün uzunluğunu bilmek çarpışma olup olmayacağına karar vermek açısından önemlidir.

2-Boyutta Uzaklık (Süre: 35 dakika)
------------------------------------

Eski uygarlıklar da aynı problemle uğraştılar: onlar da 2 boyutta nesneler arası uzaklığı bulmak için çabaladılar.Hadi bu problemi detaylı olarak inceleyelim: Dik üçgendeki hipotenüsün uzunluğunu hesaplamayı nasıl ifade edebiliriz?

.. class:: teacher-note
        
Bu alıştırma küçük gruplara ayrılmış öğrencilerle çok iyi yapıldı(2-3 her grupta). Pisagor Teoreminin kanıt malzemelerini [1, 2] her gruba dağıtalım ve onlara hepsini inceletelim:            Bir büyük ve içinde bir küçük beyaz kareler.            Aynı boyutta 4 tane gri üçgen.

.. image:: images/unite8_pisagor.png
    :align: right

Herhangi bir dik üçgeni kullanarak hipotenüsünün bir karenin her dört kenarını oluşturduğu bir çizim yapmak mümkündür. Çizimde gösterildiği gibi beyaz kare 4 tane aynı boyutta kenarları A ve B olan dik üçgen ile çevrilmiştir.  Karenin kendisi her biri C uzunlukta ve bu üçgenlerin hipotenüsü olan dört kenara sahiptir. Eğer karenin alanı kenar∗kenar diye ifade ediliyorsa o zaman beyaz karenin alanı :math:`C^2` olur.

.. class:: teacher-note
        
Öğrencilere gri üçgenleri kağıtlarına çizdir,diagramı eşleştir.

.. image:: images/unite8_anim.gif
    :align: right

Gri üçgenleri hareket ettirerek karemizin içine sığabilecek 2 tane dikdörtgen oluşturmak mümkündür. Üçgenlerin kapladığı bölge kayarken, küçülüp büyümemiştir.Benzer şekilde beyaz boşluk iki tane küçük kareye bölünür ama toplamda geriye yine aynı boyut kalır. A ve B kenarlarının uzunluğunu kullanarak iki karenin de alanları hesaplanabilir.

$oyexercisestart
Küçük karenin alanı nedir? Büyük karenin alanı nedir?
$oyexerciseend

Üçgenin kenar uzunluğunun karenin de bir kenar uzunluğu olabileceğini açık bir şekilde gösterebilirsiniz.

.. image:: images/unite8_pisagor3.png
    :align: right

Küçük karenin alanı :math:`A^2`, ve büyük karenin alanı :math:`B^2`.Bu kareler asıl karenin ikiye bölünmesi ile oluştuğu için bu karelerin alanlarının toplamının asıl karenin alanına eşit olacağını biliyoruz:

.. math::

    A^2+B^2=C^2

$oyexercisestart
Bu eşitlik A ve B nin diğer herhanhi bir değeri için de sağlanır mı?
$oyexerciseend

C yi bulabilmek için A ve B nin karesinin toplamını kök içine almak gerekir:

.. math::

        \sqrt{A^2+B^2}=C

$oyexercisestart
İşdefterinde sayfa 29u açın, orda aynı formülün yazılı olduğunu göreceksiniz,bu sefer de ``çizgi-uzunluğu`` fonksiyonunu kullanarak x ve y eksenleri boyunca uzaklık hesaplayacağız. Değerlendirme çemberinin bir kısmı burada tamamlandı, ama geri kalanını kendiniz bitirmelisiniz. Bir kere bitirince, oradaki işlemleri sayfanın altına koda çevirin.
$oyexerciseend

.. class:: teacher-note

Öğrencilere A ve B nin line-length le hesaplanmış yatay ve dikey uzunluklar olduğunu hatırlatın.


Sayfa 29 daki kod tam olarak merkezleri (3,0) ve (0,4) olan objeler arası uzaklığı hesaplar. Peki ya diğer noktalar? Herhangi iki noktalar kümesi arasındaki uzaklığı hesaplayabilen bir fonksiyon iyi olurdu.

$oyexercisestart
İşdefterinizde sayfa 30'u aç, ve tasarım reçetesini kullanarak kendi ``uzaklık`` fonksiyonunu yaz. Önceki sayfadaki örneklerden yararlanmakta özgürsün ama daha sonra yeni kendi fonksiyonunu yazmalısın.
$oyexerciseend

.. class:: teacher-note

UYARI:Öğrencilerin line-length düzgün koordinatlar verdiğine emin olun. Bir çok öğrenci yanlışlıkla x koordinatları yerine px ve py koordinatlarını yazıyor.Öğrencilerin çalışmalarını dikkatlice kontrol edin.

çarpıştı? (Süre: 25 dakika)
--------------------------------

Şimdiye kadar ``uzaklık`` denilen fonksiyonu tanımladınız: Bu fonksiyonun 4 girdisi var(Bunlar oX, oY, nX ve nY) ve bu fonksiyon bu koordinatlar arası uzaklığı olarak çıktı verir. Eğer oyuncu (320, 240) noktasında duruyorsa ve nesne (400, 159) noktasında ise uzaklık ``(uzaklık 320 240 400 159)`` ifadesiyle hesaplanır.

$oyexercisestart
Her bir oyuncu ve tehlikenin koordinatları için distance fonksiyonunu kullanan bir ifade yazın ve bu ifade noktalar araasındaki uzaklığı hesaplasın. Kod veya değerlendirme çemberi olarak yazabilirsiniz.

*            Oyuncu (100, 225) noktasında ve tehlike (174, 300) noktasında.
*            Oyuncu (48, 20) noktasında ve tehlike (210, 160) noktasında.
*            Oyuncu (300, 60) noktasında ve tehlike (130, 240) noktasında.

$oyexerciseend

Artık iki nesne arasındaki uzaklığı hesaplamayı biliyorsunuz, şimdi iki nesnenin ne zaman çarpışacağına karar vermelisiniz.Bunu daha önceki ünitede çemberleri kullanmayla: yani iki çemberin çarpışması için yarıçapları toplamından az uzaklık olması gerektiğini söylemiştik.Eğer sizin objenizin şekli çemberden daha ilginç ise bu hesaplama bu hesaplamanın daha zor olacağı kesindir. Neyse ki çoğu oyun bu kesinliğe sahip olmak zorunda değildir (insanlara çarpışma anının etkisini göstermek için hızlı hareket ederler). Biz sadece nesnelerin yeterince yakın olduğunu anlamalı ve çarpışma tespitini yapmalıyız.

.. class:: teacher-note

Siz diğer şekiller arasında çarpışma tespitinin nasıl hesaplanacağını bulmak için öğrencilerle ekstra zaman harcayabilirsiniz.Bootstrap ın geri kalanında buna ihtiyacımız yok fakat eğer matematik öğretiyorsanız bu ekstra geometriyle birleştirmek için iyi bir yoldur.

Oyun için seçtiğiniz resimler çok küçük olmadığı sürece,genellikle 50 pixel oyuncu ve tehlike arasındaki uzaklığı tespit etmek için yeterlidir. Eğer çok küçük resimler kullanıyorsanız karakterler arası uzaklık 20 nin altında olduğunda da çarpışma tespiti yapmayı isteyebilirsiniz.

$oyexercisestart
(320, 240) noktası ile (400, 159) noktası arasındaki uzakluğın 50 den az olup olmadığını nasıl kontrol edersiniz. Aynı zamanda bu koordinatlar arasındaki uzaklığın 20 den az olup olmadığını nasıl anlarsınız.
$oyexerciseend

$oyexercisestart
Çalışma Kitabında 31. sayfayı açınız, ve tasarım reçetesini kullanarak eğer koordinatlar arası uzaklık 50 den az ise true sonucunu çıkar. İPUCU: uzaklık fonksiyonunu kullanmalısınız.
$oyexerciseend

$oyexercisestart
``çarpıştı?`` fonksiyonunun tanımını kendi oyun dosyanızın içine giriniz. Oyununuzu oynayınız ve oyuncu ile tehlikeyi çarpıştırınız. Oyununuz artık ``çarpıştı?`` fonksiyonunu yazmadan önceki halinden farklı şeyler yapıyor mu?
$oyexerciseend

    

Kapanış (Süre: 5 dakika)
-------------------------

Tebrikler-oyununuz tamamlandı! Yazdığınız tüm kodları listelemek için bir dakikanızı ayırın ve neler öğrendiğinizi bir düşünün.The Circles of Evaluation programı, veritürleri Number, String, Image ve Boolean gibi,Contract(range,domain)lerin önemi, yazılan kodların amacı ve parçalı fonksiyonlar. Yeni bir programlama dilinin hepsini, ve hatta kelime problemlerini ve programlama zorluklarını çözmeni sağlayan dizayn yöntemlerini ve bu yöntemlerde her aşamaya tek tek odaklanıp bir aşama bitmeden diğerine devam öğrendin.

$oyexercisestart
Programcilar birşeyi calistirinca, kodlarinin hep ustunden gecerler ve okunabilir oldugundan, acik ve diger insanlar icin anlasilir oldugundan emin olurlar.İyi calisan bir araba guzel olabilir ama tamir edilmesi veya geliştirilmesi mümkün değilse sadece iyi olması değerini belirlemez. Kodunuzun içten ve dıştan güzel göründüğüne emin olun.

*            Bütün fonksiyonların contract larını doğru yazılmış mı?
*            Bütün fonksiyonlardaki kodların yazılış amacı tam olarak amacı ifade edebiliyor mu?
*            Bütün fonksiyonlar en az iki ÖRNEK içeriyor mu?
*            "Run" a bastığın zaman bütün örneklerin düzgün çalışıyor mu?

$oyexerciseend
