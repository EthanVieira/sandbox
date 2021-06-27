;; ex 2.47

; selectors for the first constructor given:

(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))
(define (origin frame) (car f))
(define (edge1 frame) (cadr f))
(define (edge2 frame) (caddr f))

; selectors for the second constructor given:

(define (make-frame origin edge1 edge2)
  (cons origin (cons edge1 edge2)))
(define (origin f) (car f))
(define (edge1 f) (cadr f))
(define (edge2 f) (cddr f)) 
