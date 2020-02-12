;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Structure and Interpretation of Computer Programs, 2. ed.     ;;;;;
;;;;; Instructor Manual, Section 1.1, Exercise M1.3                 ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Student: Abrantes Araújo Silva Filho                          ;;;;;
;;;;; Date: 2019-02-11                                              ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;; Write a Scheme expression whose evaluation would result in an
;;;; error if "and" were a procedure but actually will have a value 
;;;; because and is a special form. Do the same for "or".

(and 1 3 true #t #f (5))
; #f. Note that (5) is an error, but the evaluation stops at "#f", so
;     the result #f is returned.

(or #f false true (2 2))
; #t. Note that (2 2) is an error, but the evaluation stops at "true",
;     so the result #t is returned.
