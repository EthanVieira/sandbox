;;; SICP Ex. 1.6

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< abs (- (square guess) x)) 0.001)

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (new-if predicate then-clause else-clause)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                      x)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                      x)))

;; When Alyssa attempts to use this to compute square roots the else statement is always evaluated.
;; This makes the procedure run indefinitely. The if statement will only evaluate the clause that is required.
