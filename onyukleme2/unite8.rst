Kendi Dünyanızı Kurma 
=====================
Öğrenciler kendi oyunları hakkında düşündükten sonra onu  inşa etme, çizme, ve anime etme konusunda pratik yaparlar.

Giriş (Süre: 15 dakika)
------------------------
Kendi dünyanız için olan Dünya/World'e bakma zamanı

* İşkitabınızda sayfa 31e gidin. Dünyanızdaki şeyler nelerdir? Veri tipleri nedir?
* `Boş Oyun Şablonunu`_ açın.

Önyükleme 1'de oyunun kabuğu olan örnek resim ve fonksiyonlar tanımlı olarak başladınız. Bu derste is oyun şablonu sadece bir dizi yorumdan ibaret, ve sadece size fonksiyon ve değişkenlerinizi nasıl düzenlemeniz gerektiğiniz söylüyor. Gerçek kodun her satırını siz yazacaksınız. Haydi başlayalım:

Dosyanın en üstünde "\# The World" ile başlayan yerde kendi oyununuz için World veri yapısını tanımlayın. (hafızanızı tazelemek için sayfa 32ye bakın). Bir kez world veri yapısını tamamladınız mı kodun aşağısında \# STARTING WORLD yazan yere gidin ve ilk örnek dünyanız olan  worldA'yı oluşturun.ç Sornaki satıra worldB'yi oluşturun.

Şimdi kendi dünyanız olduğuna göre içinde ne olduğunu biliyorsunuz: ama o şeyler nasıl görünüyor? Bazi resimler eklemeniz gerek. Burada image-url fonksiyonunu kullanacağız. Herhangi bir online resmin URLini alıyor (metin olarak) ve o resmi döndürüyor::

	# image-url : String -> Image

* İşkitabınızda sayfa 31e tekrar bakın.  Oyununuzda kaç tane şeyin kendi resmi olması gerekiyor?
* Google resim arama veya benzer bir araç kullanarak hem arkaplan için hem de oyununuzdaki karakterler için resimler bulun.
* Resimlerinizi yeni değişkenler olarak tanımlayın(örn. PLAYER-IMG, DANGER-IMG, gibi) ve yine image-url foksiyonunu kullanarak onları oyununuza ekleyin.

Görüntü bulmakla ilgili bazı ipuçları: Resimleriniz PNG veya GIF formatında olmalı ve URL dosya tipini de içermeli (örn. sonu .png veya .gif olarak bitmeli). Arkaplan resimleri 640x480 ve karakter resimleri ise herhangi bir boyutu 200 pixelden büyül olmamalı. Karakter resimlerinin arkaplanının şeffaf olmasına dikkat edin. Tavsiye: Animated GIF kullanırsanız oyununuz hem daha iyi görünür hem de bu resimler çoklukla şeffaf arkaplana sahiptir.

Dünyayı Çizme (Süre: 35 dakika)
----------------------------------

Şimdi kendi dünya veri yapımız olduğuna göre onu çizmeyi bilmeliyiz.

Hangi fonksiyon dünyayı çizmek için kullanılıyor?

Ninja Dünyasındaki draw-world fonksiyonu gibi draw-world bir veri yapısı alır ve bir resim üretir.

* İşkitabınızda sayfa 34e gidin.
* Fonksiyonun girdisi nedir? Çıktısı?
* Sayfa 34ün başında sözleşmeyi ve fonksiyonun başını yazın.

Fonksiyon başlığının altında put-image'ı ekleyerek sizin için bir başlangıç yaptık, aynı Ninja Dünyasındaki gibi. put-image için sözleşmeyi hatırlıyr musunuz? Bir resim, onu yerleştireceği koordinatlar, ve ilk resmi üzerine yerleştireceği bir başka resmi girdi olarak alıyor::

	# put-image(Image, Number, Number, Image) -> Image
	# Places the first image at the given x and y-coordinates on top of the second image

* Sayfanın en altında resimlerinizden birini ARKAPLAN'a koyarak başlayın.
* Eğer resmin ekranın ortasında olmasını istiyorsanız x ve y koordinatı olarak ne kullanmalısınız? (İpucu: arkaplan resminizin büyüklüğü nedir?)
* Ama muhtemelen resmin arkaplanın tam ortasında olmasını istemezsiniz. Sayfa 31de yaptığınız çizimlere tekrar bakın. Resmin arkaplanın üstünde hangi koordinatlarda olmasını istediğinizi not etmiştiniz.  

Şuna benzeyen bir kodla başlayın, ama KENDİ resim ve koordinatlarınızı (veya nokta-erişimlerinizi) koyun::

	fun draw-world(current-world):
	   ...
	   ...
	   ...
	   put-image(IMAGE, 320, 240, BACKGROUND)
	end

Hatırlayın ki eğer bu resimlerin pozisyonu değişecekse (Ninja Dünyasında köpek ve paranın ekranda hareket etmesi gibi), o zaman hep aynı koordinata yerleştirilmeyecekler. put-image'da belirli sayılar kullanmak yerine **nokta-erişimi** yardımı ile karakterlerin koordinatlarını kullanmalısınız. Sizin kendi oyun yapınıza göre hangi nokta-erişimlerini kullanacağınıza karar vermelisiniz.

WorldA'yı kullanarak draw-world ile Ninja Dünyasını oluşturmanın bir örneği şöyle olurdu::

	draw-world(worldA) is put-image(NINJA-IMG, worldA.catX, worldA.catY,
		                 put-image(COIN-IMG, worldA.coinX, 300,
		                     put-image(DOG-IMG, worldA.dogX, worldA.dogY,
		                         put-image(CLOUD-IMG, 500, 400, BACKGROUND-IMG))))

* Resimlerinizden birini daha ilk put-image ifadesiyle oluşan resmin üstüne yerleştirin. (Unutmayın: put-image'ın çıktısı bir resim, o yğzden o ifadeyi bir sonraki karakter resmini üzerine yerleştireceğiniz resim olarak kullanabilirsiniz)
* Üzerine eklemeye devam edin, ta ki oyununuzdaki bütün resimler yığılana kadar.
* Bitirdiğinizde fonksiyonunuzu draw-world(worldA) komutunu etkileşim penceresine girerek test edin ve oyununuzun başlangıçtaki ekran görüntüsünü görün.

Dünyayı Güncelleme (Süre: 35 dakika)
-------------------------------------

#UPDATING FUNCTIONS kısmını görene kadar aşağı inin. Bu kısım dünyayı otomatik olarak değiştirmekten sorumlu olacak.

Buraya hangi fonksiyon gelmeli? Girdisi nedir? Çıktısı?

Bildiğiniz gibi next-world bir dünya alır ve güncellenmiş bir dünya döndürür::

	next-world : World -> World

* World yapınıza geri dönün. Ne değişiyor? Hanfi alanları kullanıcı birşey yapınca (mesela bir tuşa basınca)  değil de *kendi kendine* değişiyor?
* Sayfa 35te next-world'ün amaç ifadesinde nelerin değiştiğinin ve nasıl değiştiğinin bir listesini yapın.
* next-world için tanımlamış olduğunuz worldA'yı kullanarak bşr örnek yazın. Dünyanın nasıl değiştiğini göstermek için nokta-erişimlerini kullanın.
* Yeni bir dünya yaratan başka bir next-world örneği yazın. Güncellenmiş dünya nasıl gözükecek?

Aşağıda next-world için Ninja Dünyasının basit bir versiyonundan örnekler var::

	examples:
	      next-world(worldA) is world(worldA.dogX + 10, orldA.coinX - 5)
	      next-world(worldB) is world(worldB.dogX + 10, worldB.coinX - 5)
	end

İlk örnekte yeni bir World yaratıyoruz (oluşturucu fonksiyonu olan `world` kullanarak): bunu worldA'nın dogX'ine 10 ekleyerek ve coinX'inden 5 çıkartarak yapıyoruz. İkinci örnekte aynı şeyi worldB kullanarak yapıyoruz.

Yazdığınız iki örnek arasında değişen nedir? Değişenleri çember içine alıp etiketleyin, ve sonra next-world fonksiyonunun tanımını yazın. Sözleşmesine bakın: size fonksiyonun ne döndürmesi gerektiğini söylüyor? Bir World!

Kapanış (Süre: 5 dakika)
---------------------------

Şimdi bilgisayara oyununuzun basit bir versiyonunu elde ettiniz: karakteriniz arkaplanın üstüne yerleşti ve hareket ediyor. Ama kullanıcıdan giriş almak için henüz bir fonksiyon yazmadık. Eğer oyuncunun hareket etmesini istiyorsanız keypress fonksiyonunu yazmanız gerekece, ve oyuncular çarpışınca da birşey yapmalısınız. Bunun için distance ve is-collision fonksiyonlarını yazmalısınız. Sonraki birkaç ünite tamamen kendi oyununuz üzerinde çalışmakla ilgili, ve Ninja Kedi'den öğrendiğiniz herşeyi uygulayacaksınız.
