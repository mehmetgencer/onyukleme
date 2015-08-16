; maliyet : Metin-> Sayı
; bir Pizza malzemesi verildiğinde o malzemeyle yapılan pizzanın maliyetini jesaplar
(define (maliyet malzeme)
  (cond
    [(string=? malzeme "peynir")     9.00]
    [(string=? malzeme "sucuk") 10.50]
    [(string=? malzeme "tavuk")   11.25]
    [(string=? malzeme "brokoli")  10.25]
    [else "Menüde bu malzeme yok!"]))

;; Çalıştır'a basın ve etkileşim penceresinde maliyet hesabı yapmayı deneyin
;; mesele (maliyet "peynir") ifadesi 9'a değerlenmelidir.
