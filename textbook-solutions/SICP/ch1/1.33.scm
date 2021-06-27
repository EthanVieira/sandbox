;; ex. 1.33
(define (square x) (* x x))
(define (identity x) x)
(define (prime? n)
  (let loop ((d 2))
    (cond ((< n (* d d)) #t)
          ((zero? (modulo n d)) #f)
          (else (loop (+ d 1))))))

(define (rel-prime? n)
  (define (gcd a b)
    (if (= b 0)
      a
      (gcd b (remainder a b))))
  (= (gcd i n) 1))

(define (filtered-accumulate pred combiner null-value term a next b)
  (if > a b)
    null-value
    (if (pred? a)
      (combiner (term a)
                (accumulate term (next a) next b))
      null-value))

;; a) sum of the squares of the prime numbers in the interval a to b
(define (sum-sq-primes a b)
  (filtered-accumulate prime? + 0 square a inc b))


;; b) product of all the positive integers less than n that are relatively prime to n
(define (rel-prime-product n)
  (filtered-accumulate rel-prime? * 1 identity 0 inc n))
