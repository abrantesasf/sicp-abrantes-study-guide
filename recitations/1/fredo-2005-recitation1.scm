;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; MIT 6.001 Fall/2005                                           ;;;;;
;;;;; Frédo Durand - Recitation 1: Basic scheme expressions         ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Student: Abrantes Araújo Silva Filho                          ;;;;;
;;;;; Date: 2019-02-10                                              ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Value of the following scheme expressions?
(+ 3 5)
; 8

(7)
; Error, 7 is been applied to nothing

7
; 7

-
; compound procedure

(= 2 3)
; #f

(> 4 5)
; #f

(7 - 4)
; Error, 7 is not an operator and is not applicable

(* (+3 5) (-5 2))
; Error, subexpressions do not have an operator and "+3" and "-5" are
; not applicable

(= #t #f)
; Error! The "=" procedure is for INTEGERS. As a matter of fact, the
; "=" name is bounded to "integer-equal?" procedure.



;;; Value of the sequence of expressions:
(define wouldyouaddthesetwonumbersplease +)
(define one 1)
(define two (+ one one))
(wouldyouaddthesetwonumbersplease one two)
; 3



;;; Translate do Scheme
; 5+1
(+ 5 1)

; 2*(4+1)
(* 2 (+ 4 1))

; 3*4+2*7
(+ (* 3 4)
   (* 2 7))



;;; Write an expression that evaluates to 3. Write a more interesting
;;; expression.
3

(/ 9 3)



;;; Value of the following scheme expressions?
(and true true)
; #t

(not true)
; #f

(or false true)
; #t











