Ünite 5: Klavye Olayları
==========================

Öğrenciler parçalı fonksiyon kavramına geri dönerler. Bu kez anahtar-olay tanımı yaparak belirli tuşlara basıldığında oyun dünyasını değiştiren fonksiyonları oluştururlar.

Giriş (Süre: 10 dakika)
-----------------------

`Luigi'nin Pizzası`_ kodunu açın. Size tanıdık geliyor mu?

* Fonksiyonun adı nedir?
* cost fonksiyonunun sözleşmesi nedir?
* Bu fonksiyon ne yapar?
* cost("cheese") ifadesi neye değerlenir? Peki cost("chicken")?
* birisi menüde olmayan, sela "sausage" pizza isterse ne olacağını düşünürsünüz?

Bu  fonksiyon Önyükleme 1'de çalıştığınız cost fonksiyonuyla aynı, sadece bu seferki Pyret'ta yazılmış. cost Pizza'nın neli olacağını belirten bir metin irdisi alıyor, ve çıktı olarak bir sayı veriyor ki bu da pizzanın fiyatı. Pyret'ta kod dallanmaları yerine `ask` isimli bir anahtar kelime kullanıyoruz. Bu da bilgisayara kodumuzun farklı durumlarda farklı davranacağını ifade ediyor. Aynı Önyükleme 1'de öğrendiğiniz gibi buna **parçalı fonksiyon** denir. Her ask ifadesi `|` ile başlar (buna pipe işareti diyoruz), bir test yani mantıksal bir değer üreten bir ifadeyle devam eder. Buradaki diğer anahtar kelime `then:`. Bu da bilgisayara önceki ifade `true` / `doğru` ise hangi değerin döndürüleceğini söyler. Bizim fonksiyonumuzda eğer pizaa türünü ifade eden metin "pepperoni" ise (`string-equal(topping, "pepperoni")`) o zaman fonksiyon 10.50 değerini döndürecek.

Öğrencilerin menüye kendi pizza çeşitlerini eklemesini ve cost fonksiyonu ile bunların fiyatını hesaplamasını sağlayın.

Racket'te ayrıca bir de `else` ifademiz vardı, bu da önceki testler başarısız olduğunda uygulanıyordu. Pyret'ta aynı şejkilde davranan `otherwise` anahtar kelimemiz var. Eğer bu satır olmasaydı programımız birisi menüde olmayan (mesela "ançuezli" veya "mantarlı") bir pizza istediğinde çakılacaktı. Bu şekilde menü dışına çıkarsanız fonksiyon 0 döndürüyor. Bedava bir pizza!

Son bir sözdizimi notu: fonksiyonun sonunda iki tane `end` olduğuna dikkat edin. Birisi "ask:" dallanmalarını bitiriyor, diğeri ise fonksiyonun kendisini. Ne zaman Pyret'ta parçalı bir fonksiyon yazsanız sizin de fonksiyonu iki tane end ile bitirmeniz gerekecek.

Ninja Dünyasında Klavye Tuşuna Basma (Süre: 30 dakika)
----------------------------------------------------------- 
Geçen ünitede Ninja Kedi oyununuz şekillenmeye başladı: Dünyayı köpeğin x koordinatını, paranın x koordinatını ve kedinin x ve y koordinatlarını içerecek şekilde değiştirdiniz. Ayrıca olay-halledici'leri öğrendiniz ve draw-world ve update-world fonksiyonlarıyla basit animasyonlar yarattınız.

`Ninja Kedi`_ dosyasını açın. Geçen sefer gördüğümüz basit oyuna benzer olmalı.

* Kodun içinde \# KEY EVENTS yazan kısma gidin.
* Burada tanımlanan fonksiyonun adı ne? Girdi alanı ne? Çıktısı ne?
* `keypress` girdi olarak aldığı dünyayı nasıl değiştiriyor? Belirli tuşlara basınca ekranda ne oluyor?
* Şu an için fonksiyon sadece basılan tuşun "yukarı"/"up" tuşu olup olmadığını kontrol ediyor. Ama "aşağı" tuşuna bvasılıp basılmadığını nasıl kontrol edebiliriz, ve kediyi ona göre hareket ettirebiliriz? Partnerinizle birlikte birkaç dakika ayırın ve keypress fonksiyonuna bir satır daha ekleyerek oyuncuyu aşağıya doğru hareket etirin.

Ninja Kedi'yi aşağıda hareket ettirecek satırı ekledikten sonra fonksşyonunuz şuna benzer görünmeli::

	# keypress : World, String -> World
	# Make cat respond to key events
	fun keypress(current-world, key):
	  ask:
	    | string-equal(key, "up") then:
	      world(current-world.dogX, current-world.coinX, current-world.catX, current-world.catY + 10)
	    | string-equal(key, "down") then:
	      world(current-world.dogX, current-world.coinX, current-world.catX, current-world.catY - 10)
	    | otherwise: current-world
	  end
	end

Dosyanın sonunda bir parça daha kod var ve oyunun  tuşlara tepki vermesini sağlıyor. big-bang'in içinde son satır `on-key(keypress)`. `on-key` kullanıcı bir tuşa bastığında bunu algılayan özel bir fonksiyon, ve girdileri kullanıcı girişini hangi fonksiyonun ele alacağını belirtiyor (bu durumda `keypress` fonksiyonu). Şimdi big-bang oyunun durumlarını yönetmek için bütün bilgilere sahip.: saatin her tiktakında oyunu hangi fonksiyonun değiştireceğini belirten `on-tick`, hangi fonksiyonun dünyayı çizeceğini belirten `to-draw`, ve nihayet kullanıcı klavye hareketlerini hangi fonksiyonun ele alacağını belirten `on-key`.

Tuşa Basmayı Geliştirme (Süre: 15 dakika)
--------------------------------------------
Ninja Kediyi yukarı ve aşağı hareket ettirdik, ama orijinal oyunda sola ve sağa da hareket ediyor. Şimdi veri yapılarıyla aşina olduğunuza göre bunu yapmak kolay.

* Kedi sola hareket edince nesi değişir? Sağa? Bu dünyanın neresi?
* Keypress fonksiyonunu nasıl değiştirmelisiniz ki oyuncunun "sol" veya "sağ" tuşlarına bastığını sorsun.
* Oyuncu sol tuşuna basarsa dünyanın nesini değiştirsiniz? Sağa basarsa?
* Keypress fonksiyonunu öyle değiştirin ki kedi basılan yuşa göre sağa ve sola hareket etsin.

Bitirdiğinizde kodunuz şuna benzer görünmeli::

	# keypress : World, String -> World
	# Make cat respond to key events
	fun keypress(current-world, key):
	  ask:
	    | string-equal(key, "up") then:
	      world(current-world.dogX, current-world.coinX, current-world.catX, current-world.catY + 10)
	    | string-equal(key, "down") then:
	      world(current-world.dogX, current-world.coinX, current-world.catX, current-world.catY - 10)
	    | string-equal(key, "left") then:
	      world(current-world.dogX, current-world.coinX, current-world.catX - 10, current-world.catY)
	    | string-equal(key, "right") then:
	      world(current-world.dogX, current-world.coinX, current-world.catX + 10, current-world.catY)
	    | otherwise: current-world
	  end
	end

Dünyaya Sorma (Süre: 30 dakika)
-------------------------------

Şimdi Ninja Kedi yukarı ve aşağı hareket edebiliyor, ama oyuna daha ilginç unsurlar da ekleyebiliriz: Mesela yerçekimine ne dersiniz? Ninja Kedi üzerinde yerçekiminin etkili olduğunu göstermek istersek yerde olmadığı zamanlarda "düşme" hareketi içerisinde görünmeli.

* Kredi aşağı hareket ediyorsa dünyanın nesi değişir?
* Bu "düşme" kendiliğinden  veya kullanıcının bir tuşa basmasıyla olmayacağına göre yerçekimini hangi fonksiyon kontrol etmeli? draw-world, next-world, veya keypress?

Şu an için next-world bir dünya alıyor ve bir sonraki dünyayı oluşturmak için köpeğin ve paranın x koordinatlarını değiştiriyor. next-world her çalıştığında kedinin y koordinatınında değişmesini istiyoruz. Ama kedinin ekran boyunca düşüp ekrandan çıkmasını sitemiyoruz. Yerçekimi onun düşmesine sebep olmalı ama sadece zeminde olmadığı zamanlarda (yani y koordinatı 75 pixelden fazla ise). Bazen fonksiyonumuzun köpeğin ve  paranın yanısıra kediyide oynatmasını istiyoruz ama Ninja Kedi zeminde ise    sadece köpek ve para hareket etmeli. Bu yüzden next-world fonksiyonumuzun **parçalı fonksiyon** olması gerekecek.

* İşkitabınızın 20. sayfasına gidin.
* next-world fonksiyonunun yeni versiyonu için sözleşme ve amaç ifadesini yazın.

Şimdi örnekleri düşünme vakti:

Ninja kedinin zeminden yukarıda olduğu bir dünya için bir örnek, ve zeminde olduğu bir dünya için başka bir örnek yazın. Her örnekte dünyanın nesi değişmeli? Köpeğin x koordinatı her iki durumda da değişmeli mi? Neden?

Örnekleriniz şuna benzer görünmeli::

	examples:
	    next-world(worldA) is
	    world(worldA.dogX + 10, worldA.coinX - 5, worldA.catX, worldA.catY - 5)
	    next-world(worldB) is
	    world(worldB.dogX + 10, worldB.coinX - 5, worldB.catX, worldB.catY)
	 end

Örnekten örneğe değişenşeyleri daire içerisine alıp etiketleyin. Girdi alanında belirttiğinizden daha fazla şey mi değişti? Bazen kedinin y koordinatından 5 çıkartıyoruz, ama bazen pozisyonu aynı kalıyor.

* Kedinin 75 pixelden yukarıda olup olmadığını anlamak için hangi soruyu sormalıyız? Hangi nokta-erişimini kullanmalıyız?
* İlk koşulumuz kedinin y koordinatının 75'ten büyük olup olmadığı. Eğer bu doğruysa dünyanın nesi değişmeli?
* next-world için tasarım reçetesini tamamlayın ve kodunuzu `Ninja Kedi`_ dosyasına girin.

next-world için tamamlanan kod şuna emzer görünmeli::

	# next-world: World -> World
	fun next-world(current-world):
	   ask:
	     |current-world.catY > 75 then: world(current-world.dogX + 10, current-world.coinX - 5, current-world.catX, current-world.catY - 5)
	     |otherwise: world(current-world.dogX + 10, current-world.coinX - 5, current-world.catX, current-world.catY)
	   end
	end 

 
Ninja kedi yerçekiminin sonucu olarak yavaşça düşüyor, ama şimdi onu hızla yukarı götürmek zorlaştı. Onu zıplatmanın bir yolunu bulmalıyız.

Oyunda böyle bir zıplamayı nasıl gerçekleştirebileceğinizi düşünün.

* Oyuncu karakteri nasıl zıplatır?
* Ninja Kedi zıplarsa dünyanın nesi değişir?
* Ninja Kedi zıpladığında kaç piksel yukarı çıkmalı?
* Tuşa basma olaylarına tepki veren hangi fonksiyondur?
* keypress fonksiyonuna inin. Seçtiğiniz tuşa basaılınca Ninja Kedinin y koordinatını arttıracak şekilde keypress fonksiyonunu değiştirin. İpucu: bolşuk tuşu boş bir metin olarak yazılabilir: " "

Kapanış (Süre: 5 dakika)
-------------------------

**Parçalı fonksiyonlar** kullanarak birkaç satırda karakterlerin hareket etmesi gibi  birsürü şey yapabilirsiniz. karakterlerden bahsetmişken: köpek veya para ekrandan çıkınca ne oluyor? Gidiyorlar ancak geri gelmiyorlar. Bu sorunla Önizleme 1'de de karşılaşmıştık.  Gelecek bölümde bununla ilgileneceğiz.
