;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Structure and Interpretation of Computer Programs, 2. ed.     ;;;;;
;;;;; Instructor Manual, Section 1.1, Exercise M1.4                 ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Student: Abrantes Araújo Silva Filho                          ;;;;;
;;;;; Date: 2019-02-11                                              ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;; Define a procedure "sign" that takes a number as its argument and
;;;; returns 1 if the number is positive, -1 if the number is
;;;; negative, and 0 if the number is 0.
(define sign
  (lambda (x)
    (cond ((< x 0) -1)
	  ((> x 0) 1)
	  (else 0))))

(sign -99)
; -1

(sign 99)
; 1

(sign 0)
; 0
