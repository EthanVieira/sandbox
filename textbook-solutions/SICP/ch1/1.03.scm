;;; SICP Ex. 1.3

(define (square a)
  (* a a))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (larger-sum-of-squares a b c)
  (if (> a b)
      (if (> b c)
          (sum-of-squares a b)
          (sum-of-squares a c))
      (if (> a c)
          (sum-of-squares a b)
          (sum-of-squares b c))))

(larger-sum-of-squares 2 7 1) ; test here
