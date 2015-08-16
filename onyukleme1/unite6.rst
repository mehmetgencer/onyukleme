Ünite 6 Fonksiyonlara Karşılaştırma Yapmayı Öğretelim
=====================================================
Öğrenciler mantıksal veri tipini keşfedecek, bunları değerleri karşılaştırarak test eden programlar yazmak ve bu programlarla oyun senaryolarını modellemek için kullanacaklar.

Gözden geçirme (Süre: 15 dakika)
--------------------------------
Şu ana kadar hangi veri tiplerini gördünüz? Sayı tipinde değerler düşününebiliyor musunuz? Metin tipi? Görüntü tipi? Hangi ifadeler bir sayıya değerleniyor? Peki diğer veri tipleri?

Mantıksal veriler (Süre: 10 dakika)
-----------------------------------
$oyexercisestart
Aşağıdaki ifadeler neye değerlenir? (Eğer emin değilseniz bunları girip deneyin!)::

    (+ 1 4)

    (/ 4 2)

    (circle 10 "solid" "blue")

    (< 3 4)

$oyexerciseend

Son ifade, ``(< 3 4)``, sayıları karşılaştıran yeni bir fonksiyon kullanıyor, ve eğer 3 sayısı 4'ten küçükse ``doğru`` değerini döndürüyor. Sayıların yeri değiştirilseydi ne olurdu dersiniz?

$oyexercisestart
Bu ``<`` fonksiyonu bir sayının diğerinden küçük olup olmadığını test eder. Başka testler düşünebiliyor musunuz? Etkileşimler penceresinde onları deneyin.
$oyexerciseend


Burada gördüğünüz ``<``, ``>``, ve ``=`` gibi fonksiyonların hepsi girdi alanı olarak iki Sayı değeri alırlar, ve çıktı alanı olarak **Mantıksal** denilen özel bir türden değer üretirler. Mantıksallar bir evet-mi-hayır-mı sorusunun cevabıdır, ve Mantıksal fonksiyonlar değerleri tet etmek için kullanılırlar. Bir bilgisayar oyununda bir oyuncunun yürürken duvara çarpıp çarpmadığını, veya haklarının sıfıra düşüp düşmediğini test edebilirsiniz. Bir doktorun ofisindeki bir makine bir hastanın kalp atış hızının belirli bir düzeyin üstünde mi altında mı olduğunu test etmek için Mantıksallar kullanır. 

**Mantıksal değerler sadece ``doğru`` veya ``yanlış`` (İngilizce ``true`` veya ``false``) olabilirler.**

$oyexercisestart
Etkileşimler penceresinde bir Sayı girip Enter'a basın. Sonuç olarak ne almayı beklerdiniz? Bir Metin olduğunda? Şimdi bir Mantıksal değer girin, mesela ``false`` gibi. Diğer değerler gibi Mantıksallar da kendilerine değerlenirler. Değerlendirme çemberleri Mantıksallarla da kullanılabilir: Aşağıdaki matematiksel ifadeleri önce değerlendirme çemberine, sonra da koda dönüştürmeyi deneyin::

    10=16.1

    −13>5

    40−1<90∗2

    0=−5+10

$oyexerciseend

.. class:: teacher-note

Öğrencilere bol bol pratik yaptırın. Bu girişin video demosunu şurada bulabilirsiniz : Video Lesson: Intro to Booleans

Mantıksal üreten bir çok başka fonksiyon olabilir. İşte iki Metin'i karşılaştıran bir örnek::

    (string=? "elmalar" "armutlar")

 
$oyexercisestart
Buradaki dört Mantıksal fonksiyonun hepsi için bütün kontrat'ı yazdığınızdan emin olun.
$oyexerciseend

ekrandamı? 1.0 (Süre: 25 dakika)
------------------------------------
`kafes`_ programını açın ve 'Çalıştır'ı tıklayın. Açılan pencerede bir kelebek bulunacaktır, bu kelebeği klavyenizin ok tuşları ile hareket ettirebilirsiniz. Bu kelebeğin adı Neşe, ve ekrandaki pencere de Neşe'nin bahçesidir. Aynı bir bilgisayar oyunu ekranı gibi bu bahçenin ölçüleri var: genişliği 640 piksel, yüksekliği 480 piksel. Gördüğünüz gibi Neşe bu bahçede serbestçe dolaşabilir ve ekranın üst tarafındaki koordinat göstergeleri onun yeri değiştikçe güncellenirler.

.. class:: teacher-note

Nu pratiğe ihtiyaç duyan öğrenciler için koordinat kavramını gözden geçirme fırsatı sunar.

.. image:: images/unite6_kelebek.png
    :align: right
    
Neşe'nin annesi ona bahçenin dışına azıcık çıkabileceğini söylemiş. Özellikle de ancak en azından onun bir parçasını görebilecek kadar dışarı çıkmasına izin vermiş. Dolayısıyla Neşe ancak bir parçası ekranda gözüktüğü kadarıyla güvende. Dolayısıyla sol tarafta sıfır noktasını, ve sağ tarafta 640 noktasını biraz geçebilir, ama ne kadar?

$oyexercisestart
İşdefterinize dönün ve 19. sayfaya gidip üst kısmı okuyun. Ok tuşlarını kullanarak Neşe'nin hala bir parçası görülebiliyorken ne kadar sola gidebildiğini belirleyin. Göreceksiniz ki Neşe x-kooridnatı -50'den büyük olduğu sürece ekranda görülebilir, ki bu da işdefterinizdeki ilk probleme cevap olarak verilmiştir.

*    Neşe'Nin hala ekranda gözükürken ne kadar sağa gidebileceğini bulun.
*    İkinci problemin cevabını girin.
*    Her iki ifadeyi de sayfanın altındaki boş çemberleri kullanarak değerlendirme çemberi'ne dönüştürün.

$oyexerciseend

Ne yazık ki şu anda Neşe'nin bahçeden ayrılmasını engelleyecek hiçbirşey yok! Program koduna baktığımızda  üç fonksiyon tanımı görürüz:

*    ``güvenli-sol?``  Neşe'nin x-koordinatını alır ve Neşe sol taraftan güvende mi kontrol eder. Şu anda bu fonksiyon hep 'doğru' değerini döndürüyor.

*    ``güvenli-sağ?`` Neşe'nin x-koordinatını alır ve Neşe sağ taraftan güvende mi kontrol eder. Şu anda bu fonksiyon hep 'doğru' değerini döndürüyor.

*   ``ekrandamı?`` Neşe'nin x-koordinatını alır ve Neşe'nin en azından bir parçası ekranda mı diye kontrol eder.  Şu anda bu fonksiyon bir x-koordinatı'nın güvenli olup olmadığını anlamak için ``güvenli-sol?`` fonksiyonunu kullanıyor.

Halıhazırda bu üç fonksiyonun hepsi de Neşe'nin x-koordinatı ne olursa olsun 'doğru' değerini döndürüyorlar. 

.. class:: teacher-note

Bu noktada üç öğrenci ayağa kalkıp bu fonksiyonları canlandırabilirler:
*    Ask each student to tell you their Name, Domain and Range. If they get stuck, remind them that all of this information is written in their Contract!
*    Practice calling each function, by saying their name and then giving them an x-coordinate. For example, "safe-left? fifty" means that the number 50 is being passed into safe-left?. That student should return "true", since the code currently returns true for all values of x.
*    Do this for all three functions, and have the class practice calling them with different values as well.
*    Note: the volunteer for onscreen? should first call safe-left?, before replying with the value.

``güvenli-sol?`` şu anda Neşe'nin x-koordinatını dikkate almıyor, ve o nerede olursa olsun körlemesine 'doğru' değerini döndürüyor. Bunun yerine bu fonksiyonun ne yapması gerekirdi?

$oyexercisestart
İşdefterinizde sayfa 20'ye gidin. Tasarım reçetesini kullanarak bu fonksiyonu düzeltin, öyle ki ``güvenli-sol?`` fonksiyonu Neşe'nin x-koordinatını alsın ve onun -50'den büyük olup olmadığına göre doğru veya yanlış değerini döndürsün.
$oyexerciseend

Bir kez ``güvenli-sol?`` fonksiyon tanımı ve örnekleri yazdıktan sonra 'Çalıştır'a basın ve Neşe'nin ekranın solundan çıkması engelleniyor mu engellenmiyor mu kontrol edin. Fonksiyonlarınızı etkileşimler penceresinde de test edin, mesela::

    (güvenli-sol? 50)

    (güvenli-sol? -100)

    (ekrandamı? 50)

    (ekrandamı? -100)

 
.. class:: teacher-note

Remind students that they’ve already written the check for this on page 19!

.. class:: teacher-note

Have the three volunteers from earlier stand again, and act out the code now that safe-left? is written properly. As before, make sure students practice calling each function individually: now safe-left? will be able to return true and false (as will onscreen?), while safe-right? still returns only true.

$oyexercisestart
İşdefterinizde sayfa 21'e gidin. Tasarım reçetesini kullanarak bu fonksiyonu düzeltin, öyle ki ``güvenli-sağ?`` fonksiyonu Neşe'nin x-koordinatını alsın ve onun 690'dan küçük olup olmadığına göre doğru veya yanlış değerini döndürsün.
$oyexerciseend

.. class:: teacher-note

After walking through safe-right? section by section, students should be able to complete this activity on their own. If students are doing well with programming, you might discuss whether to compare the x-coordinate to 690 or (+ 640 50); both yield the same computation, but the second reveals where 690 comes from (screen width plus 50).

Bir kez ``güvenli-sağ?`` fonksiyon tanımı ve örnekleri yazdıktan sonra 'Çalıştır'a basın ve Neşe'nin ekranın sağından çıkması engelleniyor mu engellenmiyor mu kontrol edin. Neler olduğuna şaşıracaksınız. Fonksiyonlarınızı etkileşimler penceresinde de test edin, mesela::

    (güvenli-sağ? 50)

    (güvenli-sağ? 810)

    (ekrandamı? 50)

    (ekrandamı? 810)

 
``güvenli-sağ?`` beklediğiniz gibi çalışıyor mu? ``ekrandamı?`` bekledğiniz gibi çalışıyor mu? ``ekrandamı?`` fonksiyonu sadece ||güvenli-sol?`` fonksiyonunu kullanıyor, bunun anlamı Neşe'Nin sadece sol taraftan korunuyor olmasıdır.

``ekrandamı?`` fonksiyonunun kodunu değiştirin, öyle ki ``güvenli-sol?`` yerine ``güvenli-sağ?`` fonksiyonunu çağırsın. Bu sefer Neşe ekranın sağında korunuyor olacak. ``ekrandamı?`` fonksiyonunun ne yapması gerekirdi?

ve/veya (Süre: 10 dakika)
------------------------------------
Şimdiye kadar Mantıksal değerler üretmeye yarayan pekçok fonksiyon öğrendiniz. Mesela < ve > fonksiyonlarının herbiri uygun girdi değerlerine uygulandığında mantıksal bir değer üretirler. Peki bu kontrolleri birleştirip birden fazla şeyin doğruluğunu kontrol etmek isterseniz ne olur?

Aşağıdaki ifadeleri ele alalım, bunlar doğru mu yoksa yanlış mı?::

            Şeker tatlıdır

            Buz sıcaktır

            Şeker tatlıdır ve buz soğuktur

            Şeker tatlıdır ve buz sıcaktır

            Şeker tatlıdır veya buz sıcaktır

            Şeker tatlıdır veya buz soğuktur

.. class:: teacher-note

Challenge students on their answers here - ask them to explain why they choose "true" or "false" for the compound statements, especially if the individual statements are a mix of true and false.

``ve`` (İngilizce ``and``) ve  ``veya`` (İngilizce ``or``) iki yenmi fonksiyonumuz. ``and`` ancak her iki girdisi de doğruysa doğru değerini döner. ``or`` ise girdilerinden en azından biri doğruysa doğru değerini döner:
         

        ; and: Boolean Boolean -> Boolean

        ; Returns true if BOTH inputs are true

         

        ; or: Boolean Boolean -> Boolean

        ; Returns true if EITHER of the inputs are true

         
$oyexercisestart
İşdefterinizde sayfa 22'yi tamamlayın
$oyexerciseend

ekrandamı? 2.0 (Süre: 25 dakika)
------------------------------------
Artık kontrolleri birleştirmeyi öğrendiğinize göre ``ekrandamı?`` fonksiyonu Neşe'yi ekranda tutmak için her iki testi nasıl birleştirebilir?

$oyexercisestart
İşdefterinizde sayfa 23'e gidin ve ``ekrandamı?`` fonksiyonunu tamamlanmış halini yazın. Örnekleri ve kod tanımını yazın. Bitirince 'Çalıştır'a basın ve Neşe'nin her iki taraftan da korunup korunmadığını deneyin.
$oyexerciseend

.. class:: teacher-note

Have the volunteers stand once again, and ask the class what onscreen? should do. Should it be using and or or? Be sure to give specific examples of points that are onscreen, too far to the left and too far to the right, and challenge the students to justify their answers.


``ekrandamı?`` problemini çözmenin iki yolu var::

        (define (onscreen? x)

          (and (> x -50) (< x 690)))

         

ve...::

        (define (onscreen? x)

          (and (safe-left? x) (safe-right? x)))

         
Hangi yolu izlediğimizin bir önemi var mı?

Bir yazar olmak için imla ve gramer bilmekten fazlası gerekir. Mimar veya sanatçı olmak bir köprü inşa etmek veya tuvali boyamaktan daha fazlasını içerir. Bütün bu meslekler bir tasarım bileşeni içerirler. Bunun gibi Programcı olmak ta kod yazmaktan fazlasıdır. Şu ana kadar kod yazmada makul bir yere geldiniz, ve artık birden fazla fonksiyon içeren programlar yazıyorsunuz - tebrikler! Ancak bu aynı zamanda yazdığınız kodu tasarlamanın ne anlama geldiğini düşünmenizi de gerektiririr.

Diyelim ki bir araba yaptınız, ama iyi çalışmıyor. Ne yaparsınız? İdeal olarak arabanın her parçasını teker teker test edersiniz (motor, şansıman, vs.) ve hangisinde problem olduğunu anlamaya çalışırsınız. Aynı şey kod için de geçerlidir! Fonksiyonlar basit ve test etmesi kolaysa, ve karmaşık fonksiyonlar dah basit olanları kullanarak yapıldıysa, o zaman koddaki bir hatayı bulmak çok daha kolaydır. Bu örnekte ``güvenli-sağ?`` ve ``güvenli-sol?`` fonksiyonlarını ``ekrandamı?`` fonksiyonunda birleştirmeden önce ayrı ve bağımsız olarak test edebilirsiniz.

Birsürü basit fonksiyon tanımlananın bir nedeni de programcıların tembellik etmesine izin vermesidir. Farzedin ki bilgisayar oyununda bir sürü oyun karakteri var ve hepsinin ekranda tutulması gerekiyor. Bazıları sadece ``güvenli-sağ?``a ihtiyaç duyabilir, bazıları sadece ``güvenli-sol?``a, ve birkaçı da ``ekrandamı?``ya. Eğer oyunu farklı ekran büyüklükleri olan, mesela sınırın 690 yerine 1000 olduğu bilgisayarlarda çalıştırmak gerekirse ne  olur? Eğer kodunuzda karmaşık fonksiyonlar varsa hepsini değiştirmeniz gerekir. Eğer karmaşık fonksiyonlarınız sadece basit olanları kullanarak yapıldıysa değişiklikleri sadece bir yerde yapmanız yeterli olur!

Kötü tasarlanmış programlar gayet iyi çalışabilirler, ama okunmaları, test edilmeleri zordur ve birşeyler değiştiğinde kolayca bozulurlar. Bir programcı olarak kendinizi geliştirirken sadece "kodu çalıştırmak"tan ötesini düşünmelisiniz. Sadece çalışması yeterli değildir, sanatçı olarak bizim kodun iyi tasarlanıp tasarlanmadığını da umursamamız gerekir. Fonksiyonlar bunu yapmamıza izin verir. Programcılardan matematikçilere kadar herkes karmaşık problemleri küçük olanlara indirgemek, ve zor problemlere zarif çözümler geliştirmek için fonksiyonları kullanır. 

$oyexercisestart
Bir tane karmaşık fonksiyondansa birkaç tane basit fonksiyon olmasının neden daha iyi olduğuna dair üç neden söyleyebilir misiniz?
$oyexerciseend

Yazdığınız sınırları belirleme kodu (``güvenli-sağ?`` ve ``güvenli-sol?``) bilgisayar oyunları için çok kullanışlıdır. Bir oyun karakterinin duvardan geçip kaybolmasını engellemek, veya ekrandan çıkan bir karakteri tekrar ortaya çıkarmak için kullanılabilir.

$oyexercisestart
Oyun dosyanızı açın ve ``güncelle-`` fonksiyonlarından aşağı ``güvenli-sağ?``, ``güvenli-sol?``, ve ``ekrandamı?``yı görene kadar inin. Şu anda hepsi doğru döndürüyorlar. Bilgisayar oyununuzun boyutları Neşe'nin bahçesiyle aynı olduğu için aynı kodu bu üç fonksiyonun herbiri için kullanabilirsiniz! ÖRNEK'leri de koyduğunuza emin olun ki oyun kodunuz fonksiyonları ayrı ayrı test edebilsin.
$oyexerciseend

Closing (Süre: 5 dakika)
---------------------------

Mantıksalları kullanarak oyundaki öğelerin hareketini kısıtlamayı öğrendiniz. Bir sonraki ünitede mantıksalları kullanıcının bastığı tuşa göre oyun ögelerini hareket ettirmek için nasıl kullanacağımızı tartışacağız.
