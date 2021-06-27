;; SICP Ex. 1.27


(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (fermat-test n times)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (- times 1)))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n times) (fast-prime? n (- times 1)))
        (else false)))

(fast-prime? 561 561)
(fast-prime? 1105 1105)
(fast-prime? 1729 1729)
(fast-prime? 2465 2465)
(fast-prime? 2821 2821)
(fast-prime? 6601 6601)
