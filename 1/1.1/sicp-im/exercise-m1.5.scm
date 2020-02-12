;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Structure and Interpretation of Computer Programs, 2. ed.     ;;;;;
;;;;; Instructor Manual, Section 1.1, Exercise M1.5                 ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Student: Abrantes Araújo Silva Filho                          ;;;;;
;;;;; Date: 2019-02-11                                              ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;; Define a procedure called "true-false" that takes one argument
;;;; and returns 1 if the argument is true and 0 if it is false. Write
;;;; two definitions of "true-false", one that uses if and one that
;;;; uses cond.
(define true-false
  (lambda (p)
    (if p 1 0)))

(true-false (> 3 2))
; 1

(true-false (and (> 3 2) (< 3 1)))
; 0

(define true-false2
  (lambda (p)
    (cond (p 1)
	  (else 0))))

(true-false2 (> 3 2))
; 1

(true-false2 (and (> 3 2) (< 3 1)))
; 0
