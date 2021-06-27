;; SICP Ex. 1.22

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time) n)
      false))

(define (report-prime elapsed-time n)
  (newline)
  (display n)
  (display " *** ")
  (display elapsed-time))
  (newline)

(define (search-for-primes start n)
  (cond ((= n 0) (void))
        ((odd? start)
          (if (timed-prime-test start)
            (search-for-primes (+ 2 start) (- n 1))
            (search-for-primes (+ 2 start) n)))
        (else (search-for-primes (+ 1 start) n))))


;; They all run faster than 1 ms, but if you increase the numbers by a factor of n, the time increases by ~ sqrt(n)

(search-for-primes 1000 3)
(search-for-primes 10000 3)
(search-for-primes 100000 3)
(search-for-primes 1000000 3)
