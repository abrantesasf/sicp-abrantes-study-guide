;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Structure and Interpretation of Computer Programs, 2. ed.     ;;;;;
;;;;; Section 1.1, Exercise 1.3                                     ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Student: Abrantes Araújo Silva Filho                          ;;;;;
;;;;; Date: 2019-02-11                                              ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;; Define a procedure that takes three numbers as arguments and
;;;; returns the sum of the squares of the two larger numbers.

;;;; The code below was proposed by "ashitaka", on Stack Overflow:
;;;; https://stackoverflow.com/questions/161666/sicp-exercise-1-3-request-for-comments
(define larger?
  (lambda (x y)
    (if (>= x y) x y)))

(define square
  (lambda (x)
    (* x x)))

(define sum-of-two-largest-squares
  (lambda (x y z)
    (cond ((>= x y) (+ (square x) (square (larger? y z))))
	  (else (+ (square y) (square (larger? x z)))))))

(sum-of-two-largest-squares 1 2 3)
; 13

(sum-of-two-largest-squares 1 3 2)
; 13
(sum-of-two-largest-squares 2 1 3)
; 13

(sum-of-two-largest-squares 2 3 1)
; 13

(sum-of-two-largest-squares 3 1 2)
; 13

(sum-of-two-largest-squares 3 2 1)
; 13

(sum-of-two-largest-squares 1 2 2)
; 8

(sum-of-two-largest-squares 2 1 2)
; 8

(sum-of-two-largest-squares 2 2 1)
; 8
