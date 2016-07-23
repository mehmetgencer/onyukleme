Ünite 7: Çarpışma Tespiti
=============================

Öğrenciler Pisagor teoremi ve Önyükleme 1'de kullandıkları uzaklık formülüne geri dönerler, bu kez veri yapıları ve tam bir sonraki-dünya fonksiyonu kullanırlar.

Giriş (Süre: 5 dakika)
----------------------
Şu an için Ninja Kedi oyununda oyuncu başka bir karakter ile çarpışınca hiçbirşey olmuyor. Bunu değiştirmek için bir fonksiyon yazmamız gerekiyor. Bu iş biraz matematik gerektirecek, ama şanslıyız ki bu aynı Önyükleme 1'deki gibi oluyor.

.. image:: images/unite7_pict_2.png
    :align: right

* Görselde kedi ve köpek arasındaki uzaklık ne kadar?
* Eğer kedi bir birim sağa hareket etse uzaklıkları ne olur?
* Peki ya köpek ve kedi yer değiştirse durum nedir?

Bir sayı ekseni gib tek boyutta uzaklığı bulmak oldukça kolaydır. Eğer karakterler aynı çizgi üzerindeyse sadece birinin bir koordinatını diğerininkinden çıkaratarak uzaklıklarını bulursunuz. Ancak tüm yaptığımız ikinci sayıyı birinciden çıkartmak olsaydı fonksiyonumuz sadece olası durumların yarısında çalışırdı!

Kedi ve köpek yer değiştirirse köpeğin pozisyonunu mu kedininkinden çıkartırsınız yoksa kedininkini mi köpeğinkinden? Neden?

Tek Boyutta Uzaklık (Süre:10 dakika)
-------------------------------------
Uzaklıklar negatif olamaz, o yüzden her zaman küçük olan sayıyı büyük olandan çıkarttığımızdan emin olmamız gerekir. Bunun anlamı iki durumdan biri olduğudur: (1) birinci sayı büyüktür, veya (2) ikinci sayı büyüktür. 

* Birden fazla koşul durumu varsa nasıl bir fonksiyona ihtiyacımız var?
* Sayfa 27ye gidin.
* Bu fonksiyonun adı ne? Girdileri neler? Çıktısı ne?
* line-length için iki örnek yazın, öyle ki küçük sayıyı büyük olandan çıkartsın. 23 ve 5 sayılarıyla bir örnek yapın, sonra ikinci örneği 5 ve 23 sayılarıyla *verilen sırada* yapın.

::
	    
	examples:
	    line-length(23, 5) is 23 - 5
	    line-length(5, 23) is 23 - 5
	end

Şimdi ask komutun sonuçlarının neler olacağımıza dair bir fikrimiz var, ama ask komutu için aynı zamanda birinci sayının ikinciden büyük olup olmadığını test etmeye de ihtiyacımız var. 

* Bu testi Pyret kodu ile nasıl yaparsınız?
* Bu testin sonucu ne olacak? Eğer a b'den büyükse hangi sayıyı hangisinden çıkartacağız.
* İki sayının eşit olma durumuna dair testi *üçüncü bir ask dallanması eklemeden* nasıl yaparsınız?
* line-length'in tanımını yazın.

::

	fun line-length(a, b):
	    ask:
	      | a > b then: a - b
	      | b >= a then: b - a
	    end
	end

Uzaklık Formülü (Süre: 20 dakika)
---------------------------------
Ne yazık ki iki boyutta uzaklığı hesaplayacak bir kodunuz yok. Elinizde olan x veya y boyutunda uzaklığı söyleyebilecek bir fonksiyon.

.. image:: images/unite7_pict_3.png
    :align: right


* Bu görüntüde iki nokta arasındaki uzaklığı nasıl bulursunuz?
* **Hipotenüs** te denilen C doğru parçasının uzunluğunu nasıl bulursunuz?

Önce şimdiye kadar bildiklerimizle başlayalım: Eğer C'nin x ve y eksenleriyle kesişimlerini A ve B doğru parçaları olarak alırsak bir dik üçgen elde ediyoruz.

* A doğru parçasının uzunluğu nedir? Eğer üçgen aşağıda olsa ve (0,-4) noktasını kesse A'nın uzunluğu farklı mı olurdu?

Hayatınızı biraz kolaylaştırmak için daha önce yazdığınız fonksiyonu kullanın: line-length. Bu örnekte line-length(A) 4 eder ve line-length(B) ise 3 eder. Ama hala C'ninkini bilmiyoruz.

Eski uygarlıklar da benze bir problemle karşılaştılar: onlar da iki boyutta iki nokta arasındaki uzunluğu bulmaya ihtiyaç duydular. Şimdi bu problem üzerinde bir düşünce yolunu çalışacağız: dik bir üçgenin hipotenüs uzunluğu hangi ifade ile bulunur.

.. image:: images/unite7_pict_4.png
    :align: right

Herhangi bir dik üçgen için hipotenüsün bir karenin her dört kenarını oluşturduğu bir şekil çizilebilir. Bura gösterilen çizimde beyaz kare dört tane birbirine eş kenarları A ve B olan gri dik üçgenlerle çevrelenmiştir. Karenin kendisi dört tane uzunluğu C olan kenara sahip, ki bunlar üçgenlerin hipotenüsünü oluşturuyor. Eğer karenin alanı kenar*kenar olarak ifade edilirse şekildeki beyaz alan :math:`C^2` olarak ifade edilebilir.

.. image:: images/Pythag_anim.gif
    :align: right

Gri üçgenleri kaydırarak orijinal karenin içine sığan iki tane dikdörtgen elde edebiliyoruz. Üçgenlerin kapladığı alan kaydırılırken büyümüyor veya küçülmüyor. Aynı şekilde beyaz alan da daha küçük karelere bölünüyor, ama toplamda aynı büyüklükte kalıyor. A ve B kenar uzunluklarını kullanarak iki karenin alanlarını hesaplayabiliriz.

Küçük karenin alanı nedir? Büyüğünkü nedir?


.. image:: images/unite7_pict_5.png
    :align: right

Küçük karenin alanı :math:`A^2` ve  büyük karenin alanı da :math:`B^2` olarak bulunabilir. Bu kareler orijinal karenin ikiye parçalanmış halinden ibaret olduğundan alanlarının toplamının da orijinal karenin alanına eşit olacağını biliyoruz. 

.. math::

        A^2+B^2=C^2

Bu ifade A ve B'nin her değeri için geçerli mi?

Eğer yalnızca C'yi elde etmek istiyorsak toplamın karekökünü almamız gerekiyor:

.. math::

        \sqrt{A^2+B^2}=C

Pisagor bir hipotenüsün karesinin iki kenarın karelerini toplayarak bulunabileceğini ispatlamıştı. Siz de oyunlarınızda iki karakter arasındaki yatay ve düşey uzaklıkları üçgenin iki kenarı olarak kullanarak üçüncü kenarı bulmak için Pisagor teoremini kullanacaksınız.

* İşkitabınızda sayfa 28e gidin, yazılı formülü kullanacaksınız.
* Değerlendirme çemberini çizin, farkettiğiniz en basit ifadeden başlayın.
* Değerlendirme çemberini bitirince onu Pyret koduna tercüme edin, başlangıcı şöyle olsun::

	check:
	    distance(4, 2, 0, 5) is...
	end

Şimdi elinizde (4,2) ve (0.5) noktaları arasındaki uzaklığı bulan kod var. Ama bunun herhangi iki nokta için çalışmasını istiyoruz. x ve y'leri girdi olacak ve bu hesabı bizim için yapacak bir fonksiyonumuz olsa harika olurdu.

* Sayfa 29a gidin, problemi ve fonksiyon başlangıcını dikkatle okuyun.
* distance fonksiyonunu yazmak için tasarım reçetesini kullanın. Önceki sayfadaki örneği de kullanabilirsiniz, ve yanına yeni bir örnek ekleyebilirsiniz.
* Bitirince line-length ve distance fonksiyonlarınızı oyununuza geçirin, ve neler olduğunu görün. 
* Şeyler çarpışında birşey oluyor mu?

Hala birşeylerin çarpışmasını kontrol edecek bir fonksiyona ihtiyacınız var.

Çarpışma (Süre: 10 dakika)
--------------------------
Peki bu uzaklıkla ne yapacağız?

Çarpıştılar diyebilmemiz için oyuncu ve tehlikenin birbirine ne kadar yakın olması gerekli?

Sayfa 30'un başında is-collision (çarpışma-mı) fonksiyonu için bir problem  tanımı göreceksiniz.

* Sözleşme ve iki örneği doldurun, sonra da fonksitonu tanımlayın. Unutmayın: daha önce yazdığınız distance fonksiyonunu kullanacaksınız.
* Bitirince kodunuzu Ninja Kedi oyununun içine, distance fonksiyonunun altına ekleyin.

next-world (Süre: 30 dakika)
-----------------------------
Şimdi iki şeyin çarpışmasını tespit eden bir fonksiyonunuz olduğuna göre bunu Ninja Dünyasında kullanabilirsiniz.

Oyundaki dört ana fonksiyon içerisinde (next-world, draw-world, keypress, ve big-bang) sizce hangisi çarpışmaları ele almalı?

next-world içerisindeki ask dallanmalarına yenilerini eklememiz gerekiyor. Eğer kedi köpekle çarpışırsa köpeği ekran dışına almalıyız ki tekrar saldırmak için geri dönebilsin.

* Şu test ile başlayın: kedi ve köpeğin çarpışmasını nasıl tespit edersiniz? Bunu yapacak bir fonksiyon yazdınız mı?
* Girdiler ne olmalı?
* Dünya veri yapısından catY'yi nasıl çekersiniz? Peki catX?
* Dünya veri yapısından dogY'yi nasıl çekersiniz? Peki dogX?

::

	| is-collision(
	    current-world.catX,
	    current-world.catY,
	    current-world.dogX,
	    current-world.dogY)
	  then: ...result...

Unutmayın ki next-world bir dünya üretiyor, öyleyse sonucunuzda hangi fonksiyon ilk olmalı?::

	| is-collision(
	    current-world.catX,
	    current-world.catY,
	    current-world.dogX,
	    current-world.dogY)
	  then:
	  world(
	    ...dogX...,
	    ...dogY...,
	    ...coinX...,
	    ...catX...,
	    ...catY...)

Peki kedi ve köpek çarpışınca ne olmalı? Köpeği ekranın solundan dışına çıkartacak bir sayı düşünebiliyor musunuz? Ya köpeğin y koordinatı? Bir sayı belirleyip onu her seferinde aynı y koordinatına koyabiliriz, ama onu rastgele bir y koordinatına koyabilecek bir fonksiyon biliyoruz.::
 
	| is-collision(
	    current-world.catX,
	    current-world.catY,
	    current-world.dogX,
	    current-world.dogY)
	  then:
	  world(
	    -100,
	    num-random(480),
	    ...coinX...,
	    ...catX...,
	    ...catY...)

Kedi ve köpek çarpıştığında coinXd değişiyor mu?Peki ya catY. Bunların her birini dünya veri yapısından nasıl alırsınız?::?


	| is-collision(
	    current-world.catX,
	    current-world.catY,
	    current-world.dogX,
	    400)
	  then:
	  world(
	    -100,
	    num-random(480),
	    current-world.coinX,
	    current-world.catX,
	    current-world.catY)

Bir dakika arkanıza yaslanın ve yaptığınız işi takdir edin. Pyret kullanarak Ninja Kedi'nin kendi versiyonunuzu, veri yapılarınızı, ve karmaşık fonksiyonlarınızı yarattınız. Bu oyun şu an için bile Önyükleme 1'dekinden daha gelişkin ve onu sıfırdan oluşturdunuz! Artık bir oyun Pyret ile nasıl yaratılır bilgisine sahip olduğunuza göre kendi oyununuzu düşünmenin zamanı geldi.

Oyun için beyin fırtınası (Süre: 15 dakika)
----------------------------------------------
Artık NinjaKedi için gereken işleri gördüğünüze göre karmaşık bir oyun yaratmak için neler lazım biliyorsunuzç Bir sonraki egzersiz için kendi oyununuzun en basit halini düşünmeye çalışın. Bunu yaptıktan sonra daha ileri özellikleri eklersiniz. Kaç tane karakteriniz olacak ve dünyanızda neler yer alacak? Skoru veya karakterin koordinatlarını takip etmek için sayıları kullanabilirsiniz. Dünyanınzda bir resim olabilir, böylece karakterinizin görünümü değişebilir ya da skor belirli bir düzeye gelince arkaplanı değiştirebilirsiniz. Bir kez basit bir oyun ortaya çıkartınca daha fazla özellik eklemek kolaydır.

* işkitabınızda sayfa 31e gidin.
* Oyununuzun başlayınca nasıl görüneceğini çizin, sonra da kullanıcı bir eylem yapmaksızın bir saniye sonra nasıl görüneceğini çizin. Neler kendi kendine hareket ediyor?
* Tabloya oyununuz için gerekli resimleri listeleyin.
* Sayfanın altında bir andan ötekine değişen şeyleri listeleyin. Dünya veri yapınızda neleri takip etmeniz gerekecek? Bir şey hareket ediyorsa onun x, y, veya her iki koordinatını birden takip etmek gerekir. Değişen bir skor da olacak mı?

Değişen şeylerin bir listesini yaptıktan sonra onları bir World veri yapısına dönüştürme zamanı.

* İşkitabınızda sayfa 32ye gidin, ve ikinci tabloya değişebilen şeyler olarak yazdıklarınızı kullanarak World veri yapınzı oluşturun.
* Dünya veri yapınızın altında worldA ve worldB diye iki örnek oluşturun.
* Son olarak worldA'nın alanlarına ulaşmak için gerekli nokta-erişimlerini yazın.
