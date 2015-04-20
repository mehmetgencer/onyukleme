(require bootstrap2012/bootstrap-teachpack)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 0. Oyun başlığı: Oyununuzun adını burada yazın
(define BAŞLIK "My Game")
(define BAŞLIK-RENGİ "white")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Görüntüler - tehlike, hedef, ve oyuncu görselleri
(define ARKAPLAN (bitmap/url "http://www.bootstrapworld.org/clipart/Backgrounds/Night%20Forest.jpg"))
(define TEHLİKE (triangle 30 "solid" "red"))
(define HEDEF (circle 20 "solid" "green"))
(define OYUNCU (bitmap/url "http://www.bootstrapworld.org/clipart/Monsters/Robot.png"))


;; Bu oyunun bir ekran görüntüsü, OYUNCU (320, 240)'ta,
;; HEDEF (400 500)'ta ve TEHLİKE (150, 200)'ta
(define EKRANGÖRÜNTÜSÜ (put-image TEHLİKE
                                150 200
                                (put-image HEDEF
                                           500 400
                                           (put-image OYUNCU
                                                      320 240
                                                      ARKAPLAN))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 1. Tehlike, Hedef, ve oyuncu'yu hareket ettiriyoruz

; tehlike-güncelle: Sayı -> Sayı
; tehlike'nin x koordinatı verildiğinde bir sonraki x koordinatını döndür

;; tehlike-güncelle için örenkleri alta yazın


(define (tehlike-güncelle x)
  x)


; hedef-güncelle : Sayı -> Sayı
; hedef'in x koordinatı verildiğinde bir sonraki x koordinatını döndür

;; hedef-güncelle için örenkleri alta yazın

(define (hedef-güncelle x)
  x)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2. Tehlike ve hedef'in ekrana geri dönmesini sağlıyoruz
;;    Nereye gittiklerini bilmemiz lazım
;;    Ekranın içindeler mi?

; sol-güvenli? : Sayı -> Mantıksal
; Karakter oyun ekranının solundan içeride mi?

; Bunun doğru olduğu ve yanlış olduğu birer örenk yazın

(define (sol-güvenli? x)
  true)

; sağ-güvenli? : Sayı -> Mantıksal
; Karakter oyun ekranının sağından içeride mi?

; Bunun doğru olduğu ve yanlış olduğu birer örenk yazın

(define (sağ-güvenli? x)
  true)

; ekranda? : Sayı -> Mantıksal
; Koordinat ekranın içinde mi belirler

;; ÖRNEKler:

(define (ekranda? x)
  true)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 3. Oyuncuyu hareket ettirelim!

; oyuncu-günceller: Sayı Metin -> Sayı
; oyuncunun y koordinatı ve bir yön bilgisi verildiğinde bir sonraki y koordinatını döndürür

; ÖRNEKler:

(define (oyuncu-güncelle y yön)
  y)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 4. Çarpışmalar: Oyuncu hedefe veya tehlikeye yeterince yaklaştığında birşey olmalı!
;;    Burada "yeterince yakın"ın ne olduğunu bilmemiz gerek, ve nesnelerin birbirinden ne kadar uzak olduğunu bilmeliyiz

;; eğer uzaklık-rengi "yellow" ise program oyuncu ve diğer nesneler arasında sarı bir üçgen çizer.
;; Bu üçgenin kenarlarında kenar uzunluğu gösterilir
;; ve uzaklık ta hipotenüzte gösterilir (bu her renkte olur)
(define *uzaklık-rengi* "")

; çizgi-uzunluğu: Sayı Sayı -> Sayı
; Bir sayı ekseni üzerinde iki nokta arasındaki çizginin uzunluğu
;; bazı örenekler - dikkat edin girdi değerlerinin sırası ne olursa olsun aynı değeri döndürmeliyiz
(EXAMPLE (çizgi-uzunluğu 20 10) 10)
(EXAMPLE (çizgi-uzunluğu 10 20) 10)

(define (çizgi-uzunluğu a b)
  (cond
    [(> a b) (- a b)]
    [else (- b a)]))
  
; uzaklık : Sayı Sayı Sayı Sayı -> Sayı
; Ekrandaki iki nokta arasındaki uzaklık
; Oyuncunun x ve y, ve bir nesnenin x ve y koordinatları verilmiş
; Ne kadar uzaktırlar?
; ÖRNEKler:

(define (uzaklık px py cx cy)
  0)

; çarğıştı? : Sayı Sayı Sayı Sayı -> Mantıksal
; Ne kadar yakın yeterince yakındır?
; Oyuncunun x ve y koordinatları ve bir nesnenin x ve y koordinatları verilmiş
; Ne kadar uzak olduklarına bakıp çarpışıp çarpışmadıklarına karar veririz.
; Örneklers:
(define (çarpıştı? px py cx cy)
  false)



; son bir sır:
(define gizem (radial-star 5 5 3 "solid" "silver"))
(define (gizem-güncelle x) 
  x)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROVIDED CODE

(define g (make-game BAŞLIK BAŞLIK-RENGİ 
                     ARKAPLAN 
                     TEHLİKE tehlike-güncelle
                     HEDEF hedef-güncelle
                     OYUNCU oyuncu-güncelle
                     gizem gizem-güncelle
                     *uzaklık-rengi* çizgi-uzunluğu uzaklık
                     çarpıştı? ekranda?))

;; click Run and then type this in the Interactions window to 
;; start the game, or uncomment the next line to start the 
;; game automatically when you click Run:
(play g)
