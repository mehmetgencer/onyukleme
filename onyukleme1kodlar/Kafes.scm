(require "bootstrap2012/cage-teachpack")

; güvenli-sol? : Sayı -> Mantıksal
; karakter ekranın sol tarafından korunaklı mı?

(define (güvenli-sol? x)
  true)


; güvenli-sağ? : Sayı -> Mantıksal
; karakter ekranın sağ tarafından korunaklı mı?

(define (güvenli-sağ? x)
  true)

;; ekrandamı? : Sayı -> Mantıksal
;; Kelebek soldan ve sağdan korunaklı mı?

(define (ekrandamı? x)
  (güvenli-sol? x))


(start ekrandamı?)
