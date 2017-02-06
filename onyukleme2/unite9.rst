Oyununuzda Kullanıcı Etkileşimi ve Kompleks Veri Yapısı
=========================================================

Öğrenciler Ninja Kedi oyunundaki aynı teknikleri kullanarak kendi oyunlarının  tuşa basma girişlerine tepki vermesini sağlayacak parçalı fonksiyonlar yazarlar,      ve kendi oyun yapılarının kullanıcı girişi olmadan nasıl değişeceğini belirlerler.

Giriş (Süre: 5 dakika)
------------------------

Oyunlarınız birşeye benzemeye başladı! Bu noktada oyunun basit bir kabuğu ortaya çıktı, ve basit bir animasyon da oldu. Bundan sonraki adımlar Ninja Kedi oyununda yaptıklarınız gibi: tuşa basmalar, ve next-world'un oyun ekranının sınırlarını tespit eden veya rastgelelik içeren daha karmaşık bir versiyonu.

İşkitabınızda sayfa 36'ya gidin. Oyunu hangi tuşların kontrole edeceğini seçin, ve tasarım reçetesini takip edin. Hangi tuşa basılırsa worldA'ya ne olacağına dair test durumlarını yazın. Sonra fonksiyonunuzu tanımlayın. Bir kez Tasarım Reçetesini tamamladınız mı, herşeyi oyununuzun içine geçirin.

Elbette tuşa basmalar bir bilgisayar oyununda karakteri aşağı ve yukarı hareket ettirmekten fazlasını yapabilirler. Mantıksal fonksiyonlarla ilgili öğrendiklerinizi kullanarak daha gelişmiş hareketler ekleyebilirsiniz. Bazı fikirler:

* **Warping/Işınlama** oyuncunun y koordinatını bir hız ekleyerek arttırma veya azaltma yerine oyuncunun aniden ortaya çıkacağı bir yerin koordinatı olarak değiştirin (örneğin "c" tuşuna basınca oyuncu ekranın ortasına, 240 koordinatına gelsin).
* **Sınır tespiti** : Yukarı çıkma koşulunu öyle değiştirin ki oyuncu sadece key ="up" VE oyuncunun y koordinatı ekranın üst sınırından küçükse yukarı doğru hareket etsin. Benzer şekilde "down" için koşulu da oyuncunun y koordinatının 0'dan büyük olduğunu kontrol edecek şekilde değiştirin. İpucu: Önyükleme 1'de herkesin oyun ekranı 640x480 idi. Bootstrap 2'de oyun ekranının boyutu arkaplan resminin boyutuna göre ayarlanıyor. Resminizin boyutunun tam olarak kaç olduğunu bulmak içim aşağıdaki fonksiyonları kullanabilirsiniz::

	# image-height : Image -> Number
	# image-width : Image -> Number

* **Wrapping/Sarma** :Herhangibir tuştan önce oyuncunun y koordinatının ekranın üstünde olup olmadığını kontrol eden bir koşulekleyin. Öyleyse oyuncuyu ekranın alt kısmına ışınlayın. Başka bir koşul ekleyerek te oyuncu aşağıdan dışarı çıkarsa ekranın üstüne ışınlanmasını sağlayın.
* **Meydan Okuma** : "h" tuşuna basılınca karakterin gizlenmesini ve tekrar basılınca son görüldüğü yerde ortaya çıkmasını sağlayın.

Testler ve Sonuçları (Süre: 15 dakika)
----------------------------------------
Şimdi sınır tespiti hakkında öğrendiklerinizi kendi oyununuza uygulama zamanı.

* İşkitabınızda sayfa 41i açın.
* Kendi oyununuzda dünyanın değişmesine neden olan şeyleri düşünün. Karakterler ekranın solundan çıkıp gidiyorlar mı? Ya sağdan? Üst veya alttan? off-top veya off-bottom isimli fonksiyonlar yazmanıza gerek var mı? Belki de oyuncu yüksek bir skor yaptığında, veya sağlığı 0'a indiğinde birşeyler olması gerekir.
* Sayfa 41'in sol sütünunda -Pyret dilinde- dünyaya sorulacak soruların bir listesini yapın. Mesela köpeğe ilişkin olarak onun dünyanın sağ tarafından çıkıp çıkmadığını sormak için `is-off-right(current-world.dogX)` kullanacağımızı söylemiştik. Sağ tarafta eğer sorunun cevabı doğru dönerse nasıl bir dünya olacağını yazın.

next-world Dallanmaları (Süre: 30 dakika)
-----------------------------------------
Ninja Dünyasının next-world fonksiyonundaki ask dallanmalarını düşünün. Hatırlarsanız her ask için bir test ve sonuç olması gerekiyor. Bu tam da işkitabınıza oyuna ilişkin olarak yazdığınızın aynısı. Şimdi tek yapmanız gereken  halıhazırdaki kodunuz bir otherwise bloğunun içindeyken next-world fonksiyonunuzu yeniden kodlayarak ask kullanmasını sağlamak.

next-world'ü öyle uyarlayın ki bir **parçalı fonksiyon** olsun ve sayfa 41'deki yardımcı fonksiyonlardan en az birini kullansın.

Kapanış (Süre: 5 dakika)
---------------------------
Sıfırdan başladınız ve çalışan bir oyun yaptınız! Muhtemelen eklemeniz gereken birkaç şey kaldı, bunlara gelecek ünitede değineceğiz.
