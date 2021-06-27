;; SICP Ex. 1.28

(define (non-trivial-sqrt? n m)
  (cond ((= n 1) false)
        ((= n (- m 1)) false)
        (else (= (remainder (square n) m) 1))))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (let ((x (expmod base (/ exp 2) m)))
           (if (non-trivial-sqrt? x m)
            0
            (remainder (square x) m))))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (miller-rabin n)
  (miller-rabin-test (- n 1) n))

(define (miller-rabin-test a n)
   (cond ((= a 0) true)
         ((= (expmod a (- n 1) n) 1) (miller-rabin-test (- a 1) n))
         (else false)))

;; tests

(miller-rabin 13)
(miller-rabin 561)
(miller-rabin 1105)
(miller-rabin 1729)
(miller-rabin 2465)
(miller-rabin 2821)
(miller-rabin 6601)
