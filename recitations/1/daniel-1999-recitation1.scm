;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; MIT 6.001 Fall/1999                                           ;;;;;
;;;;; Daniel Jackson - Recitation 1: Interpreters & Evaluation      ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Student: Abrantes Araújo Silva Filho                          ;;;;;
;;;;; Date: 2019-02-09                                              ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Evaluate:
(+ 1 2)
; 3

(* 3 5)
; 15

(/ 2 3)
; 2/3 (exacty number)

(* (+ 1 2) 5)
; 15

(> 4 3)
; #t

(< 4 3)
; #f

+
; compound-procedure

(3)
; ERROR, the "3" is been applied to nothing

(if true 1 2)
; 1. "true" is bound to boolean #t value

(if false 1 2)
; 2. "false" is bound to boolean #f value

(if (> 4 3) 1 2)
; 1

(if (> 4 3) + *)
; compound procedure

((if (> 4 3) + *) 2 3)
; 5


;;; Understanding define
(define x 2)
; bound the name "x" to the value of expression "2", wich is 2

(+ x 3)
; 5

(+ y 4)
; ERROR, the name "y" is not bound to anything

(define y 5)
; bound the name "y" to the value of expression "5", wich is 5

(+ x y)
; 7


;;; Some procedures
(define (f a) (+ a 2))
; creates a f procedure wich adds 2 to argument

(f 3)
; 5

(define a 5)
; bound "a" to 5

(define (g a) (+ a b))
; creates the g procedure, which sum its argument to the value of b

(g 3)
; ERROR, "b" is not defined

(define b 4)
; bound "b" to 4

(g 3)
; 7


;;; Create a procedure that computed the area of a disk with inner
;;; radius i and outer radius o
(define pi 3.14)
(define (quadrado x) (* x x))
(define (area-circulo raio) (* pi (quadrado raio)))
(define (area-anel o i)
  (- (area-circulo o) (area-circulo i)))

; test cases:
(area-circulo 5)
(area-circulo 2)
(- (area-circulo 5) (area-circulo 2))

; procedure test:
(area-anel 5 2)



