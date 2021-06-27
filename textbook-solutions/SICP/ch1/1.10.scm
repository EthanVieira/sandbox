;; SICP Ex. 1.10

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
;; Ackermann's function
;; The values of the following:
(A 1 10) ; 1024
(A 2 4) ; 65536
(A 3 3) ; 65536

(define (f n) (A 0 n)) ; This gives f = 2n
(define (g n) (A 1 n)) ; This gives g = 2^n
(define (h n) (A 2 n)) ; This gives h = 2^2^.... n-1 times
