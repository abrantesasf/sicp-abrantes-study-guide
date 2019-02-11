;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Structure and Interpretation of Computer Programs, 2. ed.     ;;;;;
;;;;; Section 1.1, Exercise 1.4                                     ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Student: Abrantes Araújo Silva Filho                          ;;;;;
;;;;; Date: 2019-02-11                                              ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;; Observe that our model of evaluation allows for combinations
;;;; whose operators are compound expressions. Use this observation to
;;;; describe the behavior of the following procedure: 

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; The procedure is the sum of "a" with the absolute value of "b". The
; absolute value is "emulated" by the if procedure in the following
; way:
; a) if "b" is positive, then the if-procedure returns the value "+",
;    which is applied to "a" and "b" (+ a b);
; b) if "b" is negative, then the if-procedure returns the value "-",
;    which is applied to "a" and "b" (- a b). In this case, as "b" is
;    negative, we have: a - (-b) = a + b.
