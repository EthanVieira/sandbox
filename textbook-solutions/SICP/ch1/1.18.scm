;; SICP Ex 1.18

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (even? x)
    (= (remainder x 2) 0))

(define (mul a b)
  (*-iter a b 0))

(define (*-iter a b n)
  (cond ((= b 0) n)
        ((even? b) (*-iter (double a) (halve b) n))
        (else (*-iter a (- b 1) (+ n a)))))

(mul 5 4) ; test
