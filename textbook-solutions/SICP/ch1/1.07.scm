;;; SICP Ex. 1.7

;; The current good-enough? test is not effective for very small numbers because any number less than
;; .001 will, by default, be considered good enough by that procedure. It is also not very effective for
;; very large numbers because of the limited precision in computers that would be apparent in squaring already
;; large numbers.


(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess)
  (< (/ abs (- (improve guess x) guess) 
        guess)
      0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess)
          (improve guess x)
          (sqrt-iter (improve guess x)
                      x)))
