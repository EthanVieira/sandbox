;;; SICP Ex. 1.5

(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

(test 0 (p))

;; Applicative-order evaluation: 0. It would evaluate the x == 0 before worrying about the (p).

;; Normal-order evaluation: Stuck in infinite (p) definition. This method will fully expand before reducing.
;; This means that it will indefinitely define (p) as (p) without ever evaluating x == 0.
