Ünite 2: Veri yapılarına giriş
===================================================
Geçen derste hazır yapılmış veri yapıları (Kekler) ile çalışan öğrenciler bu kez kendi veri yapılarınıtanımlayarak, alanlarına erişerek, ve onları ğreten fonksiyonlar tanımlayarak anlayışlarını genelleştiriler.


Gözden geçirme: Party yapısı (Süre: 15 dakika)
----------------------------------------------

Geçen derste Cake isimli yeni bir veri yapısı öğrendiniz. Ancak Cake tek yapı cinsi değil: istediğimizi yaratabiliriz. Şimdi başka bir tane yaratalım. Bu egzersizde siz bir parti planlayıcı olacaksınız. Veri yapıları planlamakta olduğunuz her partiyi temsil etmek, yerini, temasını, ve misafir sayısını takip etmek için önemli olacak.

* Partinin yerini temsil etmek için hangi veri tipi uygun olur?
* Peki ya partinin teması? (Bu tema mesela "50'ler" veya "laser işaretleme" gibi birşey olabilir)
* Peki davetli sayısı?

İşkitabınızın 13. sayfasında Party yapısının tanımını doldurun::
 

	# a Party is a location, theme, and number of guests
	data Party:
	  | party(location :: String,
		  theme    :: String,
		  guests   :: Number)
	end

Bir kez Party yapısı tanımlandığında yeni bazı kod parçalarına erişiminiz olur: party oluşturacak bir fonksiyon, ve yer, tema, davetli sayısı bilgilerine erişim için 3 tane nokta-erişimcisi.

* Bir Party oluşturan fonksiyonun adı nedir?
* Fonksiyonun girdi alanı nedir?
* Fonksiyonn çıktı alanı nedir?
* Sayfa 13'te oluşturucu fonksiyonu kullanarak iki tane Party örneği tanımlayın.
* Partilerinizin hemn altına party2'nin alanlarına nasıl erişeceğinizi yazın. party2'nin yer bilgisine nasıl erişirsiniz? 

* `Parti Planlayıcı`_ dosyasını açın. Tanımlar kısmında ilk dört satırı inceleyin. İşkitabınıza yazdığınız Party tanımıyla örtüşüyor mu?
* Şimdi kendiniz iki tane Party tanımlayın. Planladığınız parti ne olursa olsungirdilerin doğru sırada verildiğinden emin olun.

Sizin Fırın (Süre: 80 dakika)
------------------------------

Geçenderste Cake isimli yeni bir veri yapısı öğrenmiştiniz.

* Bir Cake nedir? Cake veri yapısının parçaları nelerdir?
* hangi fonksiyon bir Cake oluşturur.
* Bir Cake'in çeşit bilgisine nasıl erişirsiniz? Peri ya rengine?

Bir fırın işletmenin parçası olarak Cake'ler için sipariş alacağız ve müşterilere bu siparişe uygun hazırlayacağız. Bunu yapmak için gerekli fonksiyonları nasıl yazacağımıza bakalım.

İşkitabınızda sayfa 14'e gidin. `change-flavor` isimli bir fonksiyon yazın.Bir Cake ve bir metin alsın ve verilenle aynı ancak sadece çeşidi istenilene uygun değiştirilmiş bir Cake döndürsün.

* Bu fonksiyonun girdi alanı nedir? Hangi Cake'i aldığımızı ve hangi çeşit olacağını bilmemiz gerekiyor.
* Buna karşılık fırınımız ne verecek, yani `change-flavor` un çıktı alanı ne olacak.

Örnek::

	# change-flavor: Cake String -> Cake:
	# consumes a Cake and produces a Cake that is the same as the original, but has the given flavor.

İlk örneğinizde orijinal `cake1`'i kullanın ve ınu çilekli yapın. Biliyoruz ki müşterimiz geriye bir Cake dönmesini bekler: yanlış çeşitte yapılmış bir Cake'i fırına geri götürüp karşılığında bir hata mesajı almayı beklemezsiniz! Ama fonksiyonumuzdan aynı Cake'i de geri döndürmeyeceğiz.  rengi, mesajı, kat sayısı aynı, ama sadece çeşidi farklı bir Cake yapmalıyız.

Bir fonksiyonun çıktı alanı olarak Cake yazdığınız anda bilirsiniz ki `cake` oluşturucusunu çağırmanız ve ona beş şey vermeniz gerekecek: çeşit, renk, mesaj, kat sayısı, ve dondurmalı-mı bilgileri::

	examples:
	    change-flavor(cake1, "strawberry") is cake(....)
	end

* Cake'in renginin ne olacağını da biliyoruz: verilen Cake ile aynı! Peki verilen Cake'in sadece renk kısmını elde edip onu cake fonksiyonunda nasıl kullancaksınız? Nokta- erişimcisini kullanarak! Cake'in mesajı da değişmiyor. Onu cake1'den nasıl alacaksınız?
* Çeşidi değiştirirseniz katların da değişmesi gerekmez. cake1'den kat sayısını nasıl alırsınız.

Cake uyapısın son alanın unutmayın: `is-iceCream`! `change-flavor` için verilen amaç ifadesi Cake'in içinin değişmesine ilişkin birşey söylemiyor, o halde orijinal is-iceCream'i cake1'den nasıl alacaksınız?::

	examples:
	    change-flavor(cake1, "strawberry") is cake("strawberry",
		                             cake1.color,
		                             cake1.message,
		                             cake1.layers,
		                             cake1.is-iceCream)
	end

* change-flavor fonksiyonu için bir örnek daha yazın, bu kez cake2'yi vanilyalı yapın.
* Daha sonra örnekten örneğe neyin değiştiğini çember içine alıp etiketleyin. Bu fonksiyon kaç tane değişkene ihtiyaç duyuyor? Şimdi de yazdığınız örneklerin yardımıyla fonksiyon tanımını yapın.

Değişen şeyleri değişkenlerle yer değiştirince tanımınız şöyle görünecektir::

	fun change-flavor(a-cake, new-flavor):
		cake(new-flavor,
			a-cake.color,
			a-cake.message,
			a-cake.layers,
			a-cake.is-iceCream)
          end

İşkitabınızda 15. sayfaya gidin. Fırınınızın bazı Cake'lerin dondurulup dondurulmayacağını bilmesi gerekiyor. Eğer sıcaklık 32 dereceden yüksek ve verilen pasta dondurmalı ise fonksiyon doğru değerini döndürmelidir.

* Fonksiyon için sözleşme ve Amaç İfadesini yazın
* `erir-mi`'in nasıl kullanılacağına dair iki örnek yazın
* Örnekten örneğe neyin değiştiğini işaretleryip bir değişken ismiyle etiketleyin.
* Fonksiyonu tanımlayın.

Kapanış (Süre: 5 dakika)
--------------------------

Şimdiye kadar üç veri yapısıyla çalıştık: Coord, Party, ve Cake. Sonraki derste bir oyunu ayrıştırırken yeni bir veri yapısına bakacaksınız, ve onu kendi oyununuzda kullanmanız gerekecek.

