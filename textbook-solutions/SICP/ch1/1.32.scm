;; ex 1.32

; part a: recursive accumulate function
(define (accumulate combiner null-value term a next b)
  (if > a b)
    null-value
    (combiner (term a)
              (accumulate term (next a) next b)))

; part b: iterative accumulate function
(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner (term a) result))))
  (iter a null-value))
