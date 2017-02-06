Ünite 6: Dünyaya sorma 
=============================

Öğrenciler Soru-Sor ve Veri Yapısı kullanımlarını birleştirerek, bu kez Dünya yapısının herhangi bir kullanıcı girişi olmadan nasıl değişeceğini belirlerler.

Gözden Geçirme (Süre: 10 dakika)
-----------------------------------
Geçen derste Önyükleme 2'de **parçalı fonksiyonların** nasıl işlediğini, ve ask/sorma blokları ile onları yazmak için gerekli Pyret sözdizimini öğrendiniz. Bunları gözden geçirmek için parçalı fonksiyonları yazmak için kullanılan tasarım reçetesinin üzerinden geçelim.

* İşkitabınızdan sayfa 22ye gidin.
* Partnerinizle beraber `red-shape` için tasarım reçetesini doldurun.

**Tercihli:** Erken bitirirseniz sayfa 23e gidin ve `stron-password` için tasarım reçetesini doldurun.

Sınırları Korumak (Süre: 40 dakika)
--------------------------------------

* En son dersten `Ninja Kedi`_ dosyasını açın.
* Dünya/World yapısında ne var?
* next-world fonksiyonu ne yapıyor?
* köpek ekranın ortasında olduğunda dogX değeri nedir? Koda göre sonraki dogX değeri ne olacak?
* köpek ekranın sağ kenarında olduğunda dogX değeri nedir? Koda göre sonraki dogX değeri ne olacak? ve sonra? ve sonra?
* Köpek ekranın sonuna ulaştığında ne olur? Ne olmalı?

Şu an için köpek ekranın kenarından sonra kayboluyor ve hiç geri gelmiyor. Bunu düzeltmenin zamanı geldi.

Aynı Önükleme 1'deki gibi tehlike ve  köpeğin ekranın dışına çıkıp çıkmadığını kontrol eden bir fonksiyona ihtiyacımız var. Birkaç şeyi gözden geçirelim:

* true ve false hangi veri tipinde değerlerdir?
* Hangi fonksiyon iki sayı alır ve ilkinin ikinciden büyük oldup olmadığını kontrol eder?
* Hangi fonksiyon bir sayının diğerinden küçük olduğunu kontrol eder?
* Hangi fonksiyon iki sayı eşit mi diye kontrol eder?

Büyüktü fonksiyonunun sözleşmesi şu şekildedir::

	# > : Number Number -> Boolean
	# İlk sayı ikinciden büyük mü kontrol eder

Bunu sözleşmeler sayfanıza kopyalayın ve ayrıca < ve = için sözleşmeleri yazın.

Kod yazmayı ve test etmeyi kolaylaştırmak için programcılar oyundaki farklı olası durumları test etmek için ayrıca fonksiyonlar yazarlar. Ninja Dünyası oyunumuzda biz de is-off-right (sağdan dışarıda mı) isimli bir fonksiyon yazarak köpeğin ekranın sağından çıkıp çıkmadığını kontrol edeceğiz.

* İşkitabınızda sayfa 24e gidin.
* Sayfadaki ilk fonksiyonun ismi ne?
* is-off-right fonksiyonu köpek ekranın sağından dışarıdaysa true döndürecek. Karakter ekrandan çıkmadan önce x koordinatı en fazla kaç olabilir? (Hatırlarsanız karakterin koordinatları resmin merkezinden ölçülüyor, o yüzden en iyisi bir tampon uzaklık belirleyip karakterin tamamının ekrandan çıkmasına izin vermek.
* Bu fonksiyon için sözleşmeyi yazın.

::

	# is-off-right : Number -> Boolean
	# Verilen sayı 690'dan büyükse true döndürür

Şimdi birkaç örnek koordinat belirleyerek testlerimizi kuralım.

* Hangi x koordinatı karakterin ekranın ortasında olması demektir?
* Sağdan dışarı çıktığını nasıl anlarsınız?
* 640tan büyük her x koordinatı sağdan çıkmak demektir, ama biraz daha büyük bir sınır düşüneceğiz ki karakterimizin tüm genişliğiyle ekranın dışına çıkmasına izin verelim. Peki o zaman verilen örnek sayının 690'dan büyük mü olduğunu nasıl test edersiniz?

::

	examples:
	    is-off-right(320) is 320 > 690
	end

Sağdan dışarıda olan başka bir koordinat yazın, değişenin ne olduğunu daire içine alın, ve fonksiyon tanımınızı yazın.

Şimdi bir nesnenin ekranın sağından çıktığını anlayacak bir fonksiyonunuz var. Ama Ninja Dünyasını düşünün: eğer para sola hareket ediyorsa sağdan çıkıp çıkmadığı önemli olur mu?

* Sayfa 24teki is-off-left (soldan-dışarıda-mı) fonksiyonu için tasarım reçetesini tamalayın. Bir sayının 640tan büyük olup olmadığını kontrol etmek yerine neyi kontrol etmelisiniz?
* Bitirdiğinizde fonksiyonlarınızı `Ninja Dünyası`_ dosyasına geçirin, keypress fonksiyonunun altına koyun.

Artık birşeyin ekranın solundan VEYA sağından çıktığını anlayacak fonksiyonlarımız var, ama o durumda ne olacağını hala oyuna söylemedik. Ninja Dünaysında köpek sağdan dışarı çıkınca soldan tekrar ortaya çıkmalı.

Bu durumda dogX 690'dan sonra hangi değeri almalı?

next-world'ü öyle değiştirmeliyiz ki dogX 690'dan büyük olursa sıfıra eşitlenmeli. Neyse ki next-world zaten parçalı bir fonksiyon, yani sadece biraz daha koşul ekleyeceğiz!

İlk koşuşlu düşünün. Bir sayının 690'dan büyük olduğunu söyleyen test nedir?

Büyüktür fonksiyonunu (>) kullanarak aynı kedinin zeminde olup olmadığını belirlerken olduğu gibi iki sayıyı karşılaştırabilirsiniz.Ama zaten bir sayı alan ve onun 690'dan bbüyük olup olmadığını test eden bir fonksiyon yazdınız. `is-off-right` bu işi yapıyor. Peki ama köpeğin sağdan çıkıp çıkmadığını nasıl anlayacağız. Köpeğin x koordinatını dünya'dan çekip almanız gerek.

* Bunun için hangi erişimi kullanacağız?
* Bu durumda is-off-right'ın girdisi ne olacak?
* Bunu next-world fonksiyonunuza ekleyin::

	fun next-world(current-world):
	  ask:
	    | is-off-right(current-world.dogX) then:
		...result...
	    | current-world.catY > 75 then:
	      world(current-world.dogX + 10, current-world.coinX - 5, current-world.catX, current-world.catY - 5)
	    | otherwise:
	      world(current-world.dogX + 10, current-world.coinX - 5, current-world.catX, current-world.catY)
	  end
	end

İlk soru köpeğin x koordinatının ekranın sağından dışarıda olup olmadığını testediyor. Eğer doğruysa sonuç ne olmalı? Bir World döndürmemiz gerektiğini biliyoruz, çünkü next-world'ün çıktısı World. Bu durumda hemen world(...) yazabiliriz::

	fun next-world(current-world):
	  ask:
	    | is-off-right(current-world.dogX) then:
	      world(...dogX..., ...coinX..., ...current-world.catX..., ...catY...)
	    | current-world.catY > 75 then:
	      world(current-world.dogX + 10, current-world.coinX - 5, current-world.catX, current-world.catY - 5)
	    | otherwise:
	      world(current-world.dogX + 10, current-world.coinX - 5, current-world.catX, current-world.catY)
	  end
	end

Bu durumda doxX nasıl değişmeli? Demiştik ki köpeğin ekranın solundan tekrar ortaya çıkmasını istiyoruz. 

* Eğer ekranın soluna giderse dogX'in yeni değeri ne olacak?
* Köpek ekrandan çıkarsa coinX değişir mi? Peki catX? catY?

::

	fun next-world(current-world):
	  ask:
	    | is-off-right(current-world.dogX) then:
	      world(0, current-world.coinX, current-world.catX, current-world.catY)
	    | current-world.catY > 75 then:
	      world(current-world.dogX + 10, current-world.coinX - 5, current-world.catX, current-world.catY - 5)
	    | otherwise:
	      world(current-world.dogX + 10, current-world.coinX - 5, current-world.catX, current-world.catY)
	  end
	end


Şimdi de para için durum nasıl sıra onu düşünmeye geldi...

* coinX'in ekranın **sağ** tarafından çıkması yerine neyi kontrole etmemiz gerekir?
* Bir sayının sıfırdan küçük olduğunu test eden hangi fonksiyonu zaten yazmıştınız?
* next-world'ü nasıl değiştirmek gerekir? İkinci ask dalı nasıl görünecek?
* next-world kodunu tamamlayın ki paranın ekranın solunda çıkmasını da test etsin.

::

	fun next-world(current-world):
	  ask:
	    | is-off-right(current-world.dogX) then:
	      world(0, current-world.coinX, current-world.catX, current-world.catY)
	    | is-off-left(current-world.coinX) then:
	      world(current-world.dogX, 640, current-world.catX, current-world.catY)
	    | current-world.catY > 75 then:
	      world(current-world.dogX + 10, current-world.coinX - 5, current-world.catX, current-world.catY - 5)
	    | otherwise:
	      world(current-world.dogX + 10, current-world.coinX - 5, current-world.catX, current-world.catY)
	  end
	end

**Tercihli**: Soyutlama beceriniz geliştiğine göre is-in-air diye yeni bir fonksiyon yazın ve bu fonksiyon bir sayının 75'den büyük olduğunu test etsin. Daha sonra next-world'deki üçüncü koşulu yeniden yazın ve kedinin zeminden havada oluşunu test etmek için bu yeni fonksiyonu kullanın. Bu kodunuzun daha okunaklı olmasını sağlayacak, ve kedi resmi yerine daha büyük veya küçük resim kullanırsanız kodunuzu daha kolay düzeltebileceksiniz.

Ninja Dünyasına Rastgelelik Ekleme (Süre: 15 dakika)
--------------------------------------------------------
Şimdilik köpek ve para ekranın hep aynı yerinden ortaya çıkyorlar, bu da oyunu kolaylaştırıyor.

Köpeğin y koordinatı hep ne oluyor? Peki ya paranınki?

Eğer köpek ekrandan çıktıktan sonra ekranın hep üstünden ortaya çıkmak yerine rastgele bir y koordinatında ortaya çıksaydı nasıl olurdu? Pyret zaten size bir karakteri ny koordinatı olarak kullanabileceğiniz rastgele bir sayı üretebilecek bir fonksiyona sahip: `num-random`. `num-random` girdi olarak bir sayı alıyor, ve sıfır ile o sayı arasında rastgele bir sayı döndürüyor. Böylece oyun num-random(480) diye bir kod içerirse 1 ile 480 arasında bir sayı geri döndürecek.

num-random için olan sözleşmeyi sözleşmeler sayfanıza geçirin. num-random: Number -> Number

Eğer köpeğin y koordinatının değişmesini istiyorsanız bunu World veri yapısına eklemeniz gerekiyor.

World veri yapısının tanımlandığı sayfanın başına gidin ve oraya `dogY` ekleyin. worldA ve worldB örneklerini yeniden tanımlayarak Wolrd yapısına yeni bir parça eklemeyi unutmayın::

	data World:
	  # The World is the x and y positions of the dog, x position of the coin, and the x and y position of the cat
	  | world(dogX :: Number, dogY :: Number, coinX :: Number, catX :: Number, catY :: Number)
	end

 
Şimdlik draw-world fonksiyonu köpeği x koordinatında ama önceden belirlenmiş bir y koordinatında çiziyor.

* Köpek şu an için hangi y koordinatında çiziliyor?
* Artık World yapısına dogY eklendiğine göre world'den dogY'yi nasıl dışarı alırsınız?
* draw-world fonksiyonunu öyle değiştirin ki köpeği 4000 yerine kendi y koordinatında çizsin.

Köpeğin y koordinatı ekrandan çıktığında değişmeli.

* Hangi fonksiyon oyununun koşullarına göre oyunun durumunu değiştiriyor?
* next-world fonksiyonundaki ilk ask dalı neyi test ediyor?
* Bu test doğru çıkarsa ne olur?
* next-world'deki ilk dalı öyle değiştirin ki eğer köpek ekranın sağından dışarı çıkarsa y koordinatı da 0 ile 480 arasında rastgele bir sayı olsun.

::

	| is-off-right(current-world.dogX) then:
	   world(0, num-random(480), current-world.coinX, current-world.catX, current-world.catY)

Kodunuzu iyice kontrol edin. Artık World veri yapınıza dogY eklediğinize göre `world` oluşturucu fonksiyonunu her kullandığınızda o girdiyi de vererek ve köpeğin y koordinatını girmelisiniz. Bir kere köpeğin ekrandan çıkınca rastgele bir yerden ortaya çıkmasını sağladıktan sonra aynı şeyleri para'nın da rastegele ortaya çıkması için yapmalısınız.

Kapanış (Süre: 5 dakika)
--------------------------

Arkanıza yaslanın ve başardıklarınızı takdir edin: Bu ders sırasında oyununuza oldukça fazla emek ve zaman harcadınız, ve kompleks veri yapıları vegelişmiş hareketler ortaya çıkmaya başladı. Şimdiden Bootstrap 1 oyununuzdan daha karöaşık.  Sıfırdan bir Ninja Kedi oyunu yaratarak kendi oyununuzu yaratırken kullanabileceğiniz bir deneyim kazandınız. Ama hala oyunda eksikler var: Kedi köpekle çarpışınca veya parayı yakalayınca hiçbirşey olmuyor. Bir sonraki ünitede çarpışmaları ele alacaksınız.
