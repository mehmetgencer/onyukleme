Ünite 5 Oyun Animasyonu
=======================
Öğrenciler oyunun özelliklerini oyunun bir anından sonraki anına taşıyacak fonksiyonları tanımlayarak tehlikeleri, hedefleri, ve fırlatma işlemlerini yapabilecekler.

Böcek Avlama (Süre: 20 dakika)
----------------------------------
Böcekten-Arındırma (program kodundaki sorunları bulma ve giderme) programlamanın önemli bir parçasıdır, o yüzden böcekleri avlama iyi bir pratiktir.

`Böcek Avlama <http://www.wescheme.org/openEditor?publicId=lQUC6RJArG&>`_ programını yeni bir pencerede açın ve her ifadedeki böceği bulmaya çalışın. "Run" (Çalıştır) düğmesine basın ve hata mesajını dikkatle okuyun. Herbirini giderdikten sonra tekrar "Run" düğmesine basınca bir sonraki böcek için olan hata mesajını görürsünüz.

.. class:: teacher-note 

Öğrencilere amacın böcekleri gidermek değil sadece onları bulmak olduğunu iyice anlatın.

Tehlike ve Hedef Hareketi (Süre: 30 dakika)
-----------------------------------------------
.. image:: images/unite5_ekran.png
    :align: right
    
Oyununuzun boyutları 640x480'dir ve her oyun karakteri ekranda bir (x,y) koordinatına konulmuştur. Hedefiniz (H), Oyuncu (O) ve Tehlike (T) herbiri x veya y ekseninde hareket ederler, x veya y kordinatları bir animasyon fonksiyonuna bağlı olarak değişir. Bu animasyon fonksiyonlarına basit olarak başlayacağız: şu anki x veya y koordinatını alırlar, ve bir sonraki anın x veya y koordinatını hesaplarlar. Daha sonra daha karmaşık hareketler üretmek, hem x hem de y koordinatını kullanmak için bu fonksiyonları uyarlayabileceksiniz.

İş kitabınızda Sayfa 16'ya gidin ve ``tehlike-güncelle``'ye bakın.

*    Problemi dikkatlice okuyun ve fonksiyonun ne girdi aldığına dikkat edit.
*    Fonksiyon için sözleşme ve amaç ifadesini doldurun, bunu yaparken girdi alanı için neyi işaretlediğinize bakarak karar verin.
*    Fonksiyonunuz için iki örnek yazın.
*    Bu iki örnek arasında neyin farklı olduğunu işaretleyin, ve onu bir değişken ismi ile etiketleyin.
*    Fonksiyonu tanımlayın.

Hepsini birleştiririsek ``tehlike-güncelle``  şu şekilde tanımlanır::  
 

    ; tehlike'nin x koordinatından 50 eksilt

    (EXAMPLE (tehlike-güncelle 171) (- 171 50))

    (EXAMPLE (tehlike-güncelle -90) (- -90 50))

    (define (tehlike-güncelle x) (- x 50))

 

(Not: değişken isimleri için farklı isimler kullanmış olabilirsiniz.)

Kaydettiğiniz Oyun dosyasını açın ve tehlike-güncelle tanımına kadar inin. Sözleşme doğru mu? İş kitabınızdakilerle eşleşmesini sağlayın, ve tanımı düzeltin. "Run" düğmesine bastığınızda tehlike'nin ekranda uçtuğunu görmelisiniz!

Şimdi Hedef'i hareket ettirme zamanı. O ters yöne gidiyor.

İş kitabında safya 17'e gidin ve ``hedef-güncelle``'yi bulun.

*    Problemi dikkatlice okuyun ve fonksiyonun ne girdi aldığına dikkat edit.
*    Fonksiyon için sözleşme ve amaç ifadesini doldurun, bunu yaparken girdi alanı için neyi işaretlediğinize bakarak karar verin.
*    Fonksiyonunuz için iki örnek yazın.
*    Bu iki örnek arasında neyin farklı olduğunu işaretleyin, ve onu bir değişken ismi ile etiketleyin.
*    Fonksiyonu tanımlayın.

Fırlatma Hareketi (Tercihli) (Süre: 15 dakika)
------------------------------------------------
Bu oyunda ayrıca bir de gizemli nesne var, ekranın en altında tanımlanmış. "Gizemli" aslında bir fırlatıcı ve oyuncu "boşluk" tuşuna basında onun olduğu yerde ortaya çıkıveriyor. Gördüğünüz gibi gizemli küçük gri bir yıldız olarak gözüküyor, ama onu istediğiniz görselle değiştirebilirsiniz. Eğer oyuncunun bir maymun olduğu bir oyun yapıyorsanız, gizemli'nin tanımını bir muz resmi olarak yapabilirsiniz, öyle ki her "boşluk"a bastığınızda maymun bir muz fırlatır. Bir uzay oyununda ise kristaller atan bir yaratık yapabilirsiniz, veya bir spor oyununda top atan bir atlet olabilir.

Gizemli'nin tanımını değiştirerek fırlatıcının istediğiniz gibi görünmesini sağlayın. Eğer görseli biraz değiştirmek istiyorsanız ölçekle (``scale``) ve döndür (``rotate``) kullanmayı unutmayın.

Tasarım reçetesini kullanarak ``gizemli-güncelle``'yi fırlatma hareketi soldan sağa olacak şekilde yazın. İpucu: Bu ``tehlike-güncelle`` ve ``hedef-güncelle`` için yaptıklarınıza çok benziyor!

.. class:: teacher-note

Oyuna fırlatma eklerken dikkatli olun! Birçok öğrenci bunları kullanırken fazla yaratıcı olmayabilir. Çoğu eğitmen bu bölümü tamamen atlamayı veya oyunun hepsi bittikten sonra uygulamayı düşünebilir.

Kapanış (Süre: 5 dakika)
---------------------------
Tebrikler, çalışan bir oyunun ilk aşamalarına ulaştınız! Ancak bazı şeyler hala eksik:

*    Oyuncu hareket etmiyor
*    Hedef ve Tehlike ekrandan dışarı çıkınca geri gelmiyor
*    Oyuncu'nun yolu Tehlike veya Hedef ile kesişince birşey olmuyor

Bundan sonraki dersler fonksiyonlar ile ilgili bilgilerinizi genişletecek ve böylece bu eksiklikleri giderebileceksiniz.


