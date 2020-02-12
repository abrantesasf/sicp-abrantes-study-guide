;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Structure and Interpretation of Computer Programs, 2. ed.     ;;;;;
;;;;; Section 1.1, Exercise 1.7                                     ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Student: Abrantes Araújo Silva Filho                          ;;;;;
;;;;; Date: 2019-02-12                                              ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;; PART 1:
;;;; The good-enough? test used in computing square roots will not be
;;;; very effective for finding the square roots of very small
;;;; numbers. Also, in real computers, arithmetic operations are
;;;; almost always performed with limited precision. This makes our
;;;; test inadequate for very large numbers. Explain these statements,
;;;; with examples showing how the test fails for small and large
;;;; numbers.
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))


; CASE 1: very large number:

(sqrt 9999999999999999999999999999999)
; ERROR: infinite loop.

; In the case of very large numbers the infinite loop
; occurs because if the result of the expression 
; "(<(abs (- (square guess) x)) 0.001)" is only slightly greater than
; 0.001, there will be a new call to the "sqrt-iter" procedure and
; this can result in an absolute difference that will always remain
; greater than 0.001, and this will cause an infinite loop.

; CASE 2: very small number:
(sqrt 0.00000000000000000000000000001)
;Value: .03125

(square .03125)
;Value: .0009765625

; In the case of very small numbers, the tolerance of 0.001 will be
; very large and the procedure will return a value very far from the
; actual square root. 



;;;; PART 2:
;;;; An alternative strategy for implementing good-enough? is
;;;; to watch how guess changes from one iteration to the next and to
;;;; stop when the change is a very small fraction of the
;;;; guess. Design a square-root procedure that uses this kind of end
;;;; test. Does this work better for small and large numbers? 
(define (good-enough? previous-guess actual-guess)
  (< (/ (- actual-guess previous-guess) previous-guess) 0.001))
