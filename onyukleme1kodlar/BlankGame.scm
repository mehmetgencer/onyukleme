(require bootstrap2012/bootstrap-teachpack)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 0. Game title: Write the title of your game here
(define TITLE "My Game")
(define TITLE-COLOR "white") 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Graphics - danger, target, projectile and player images
(define BACKGROUND (bitmap/url "http://www.bootstrapworld.org/clipart/Backgrounds/Night%20Forest.jpg"))
(define DANGER (triangle 30 "solid" "red"))
(define TARGET (circle 20 "solid" "green"))
(define PLAYER (bitmap/url "http://www.bootstrapworld.org/clipart/Monsters/Robot.png"))


;; here's a screenshot of the game, with the PLAYER at (320, 240),
;; the TARGET at (400 500) and the DANGER at (150, 200)
(define SCREENSHOT (put-image DANGER
                                150 200
                                (put-image TARGET
                                           500 400
                                           (put-image PLAYER
                                                      320 240
                                                      BACKGROUND))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 1. Making the Danger and the Target Move

; update-danger: Number -> Number
; given the danger's x-coordinate, output the NEXT x

;; write EXAMPLEs for update-danger below this line


(define (update-danger x)
  x)


; update-target : Number -> Number
; given the target's x-coordinate, output the NEXT x

;; write EXAMPLEs for update-target below this line

(define (update-target x)
  x)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2. Making the Danger and the Target Come Back Again: 
;;    We need to know that they're gone!  
;;    Are they on the screen?

; safe-left? : Number -> Boolean
; Is the character visible on the left side of the screen?

; Write an EXAMPLE that makes this true, and one that makes this false:

(define (safe-left? x)
  true)

; safe-right? : Number -> Boolean
; Is the character visible on the right side of the screen?

; Write an EXAMPLE that makes this true, and one that makes this false:

(define (safe-right? x)
  true)

; onscreen? : Number -> Boolean
; Determines if the coordinate is on the screen

;; EXAMPLEs:

(define (onscreen? x)
  true)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 3. Get our Player moving!

; update-player : Number String -> Number
; given the player's y-coordinate and a direction, output the NEXT y

; EXAMPLEs:

(define (update-player y key)
  y)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 4. Collisions: When the player is close enough to the Target
;;    or the Danger, then something should happen!
;;    We need to know what "close enough" means, and we need to
;;    know how far apart things are.

;; If *distances-color* is set to "yellow", then the game will draw
;; a yellow triangle between the player and each character. 
;; That triangle will be labelled with line-length on the legs,
;; and with distance on the hypotenuse. (This works for any valid color)
(define *distances-color* "")

; line-length : Number Number -> Number
; the distance between two points on a number line
;; some examples - notice that we should always return the
;; same answer, no matter what the order of the inputs is!
(EXAMPLE (line-length 20 10) 10)
(EXAMPLE (line-length 10 20) 10)

(define (line-length a b)
  (cond
    [(> a b) (- a b)]
    [else (- b a)]))
  
; distance : Number Number Number Number -> Number
; The distance between two points on screen:
; We have the player's x and y, and a character's x and y.
; How far apart are they?
; EXAMPLEs:

(define (distance px py cx cy)
  0)

; collide? : Number Number Number Number -> Boolean 
; How close is close enough?  
; We have the player's x and y, and a character's x and y.
; We can ask how far apart they are.  Did they collide?
; EXAMPLEs:
(define (collide? px py cx cy)
  false)



; a final secret:
(define mystery (radial-star 5 5 3 "solid" "silver"))
(define (update-mystery x) 
  x)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PROVIDED CODE

(define g (make-game TITLE TITLE-COLOR 
                     BACKGROUND 
                     DANGER update-danger
                     TARGET update-target
                     PLAYER update-player
                     mystery update-mystery
                     *distances-color* line-length distance
                     collide? onscreen?))

;; click Run and then type this in the Interactions window to 
;; start the game, or uncomment the next line to start the 
;; game automatically when you click Run:
(play g)
