;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Big-Bang'e Giriş|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;; include the image and world libraries, so we can use them
(require 2htdp/image)
(require 2htdp/universe)


;; We want to keep track of the x-position of the dog, 
;; which is just a Number. Here are some sample Numbers:
(define numberA  0)
(define numberB  42)

;; Define a bunch of images that we can use later
(define BACKGROUND-IMG (bitmap/url
  "http://www.bootstrapworld.org/clipart/Curriculum/bg.jpg"))
(define DOG-IMG  (flip-horizontal (bitmap/url
    "http://www.bootstrapworld.org/clipart/Curriculum/dog.png")))
(define COIN-IMG (bitmap/url 
  "http://www.bootstrapworld.org/clipart/Curriculum/coin.png"))
(define NINJA-IMG (bitmap/url
  "http://www.bootstrapworld.org/clipart/Curriculum/ninja.png"))
(define CLOUD-IMG (bitmap/url
  "http://www.bootstrapworld.org/clipart/Curriculum/clouds.png"))

;;####################
;;# GRAPHICS FUNCTIONS
;;####################

;;# draw-world : Number -> Image
;;# Place DANGER onto BACKGROUND at the right coordinates
(define (draw-world current-world)
  (place-image DOG-IMG  current-world  400 BACKGROUND-IMG))


;####################
;# UPDATING FUNCTIONS
;####################

;# next-world : Number -> Number
;# Add 10 dog's x-coordinate
(define (next-world current-world)
  (+ current-world 10))

;;###################################
;;# big-bang using the START world
;;# on a tick-event, use next-world
;;# on a draw-event, use draw-world 
;;###################################

(big-bang numberA
  
       (on-tick next-world) (to-draw draw-world)
)