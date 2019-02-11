;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; MIT 6.001 Fall/1998                                           ;;;;;
;;;;; Problem Set 0                                                 ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Student: Abrantes Araújo Silva Filho                          ;;;;;
;;;;; Date: 2019-02-11                                              ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;; Expressions to evaluate
-37
; -37

(* 8 9)
; 72

(> 10 9.7)
; #t

(- (if (> 3 4)
       7
       10)
   (/ 6 10))
; 9.4

(* (- 25 10)
   (+ 6 3))
; 135

+
; compound procedure

(define double (lambda (x) (* 2 x)))
; undefined

double
; compound procedure

(define c 4)
; undefined

c
; 4

(double c)
; 8

c
; 4

(double (double (+ c 5)))
; 36

(define times-2 double)
; undefined

(times-2 c)
; 8

(define d c)
; undefined

(= c d)
; #t

(cond ((>= c 2) d)
      ((= c (- d 5)) (+ c d))
      (else (abs (- c d))))
; 4

(define applyto3 (lambda (x) (x 3)))
; undefined. Just created procedure that apply it's argumento to the
; the expression 3.

(applyto3 double)
; 6. The applyto3 procedure takes its argument, another procedure
; (double) and apply this procedure to the expression 3 (wich is 3)

(applyto3 (lambda (z) (* z z)))
; 9. The applyto3 procedure take its argument (the lambda expressions
; that is creating an unmaed procedure that multiply z by z) and apply
; to the expression 3).



;;;; Questions
; Q1. According to the Don't Panic manual, what is the stepper and how
;     do you invoke it?
; R1. The "stepper" permits step through evaluation of the expression,
;     element by element and see the evaluation of each
;     subexpression. Stepper is activated with M-s, on Edwin.

; Q2. According to the Guide to MIT Scheme, which of the words, in the
;     scheme expressions you just evaluated above, are ``special
;     forms''?
; R2. define, lambda, if, cond, else

; Q3. After referring to the course policy on collaboration, complete
;     the following two sentences:
;
;     Q3a. ``If you work with other students, ...''
;     R3a. must identify with whom you worked. We expect, however,
;          that you are involved in all aspects of the project. you
;          write and comment your own set of code, and that you write
;          up your results separately.
;
;     Q3b. ``On your homework paper, you should write ...'' 
;     R3b. You write and comment your own set of code, and that you
;          write up your results separately. When you hand in material
;          with your name on it, we assume that you are certifying
;          that this is your work and that you were involved in all
;          aspects of it. Do not just turn in a copy of a single file;
;          write your own version.
