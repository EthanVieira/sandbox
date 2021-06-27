;; ex 2.05

(define (divisor? a b)
  (= (remainder b a) 0))

(define (cons x y)
  (* (exp 2 a) (exp 3 b)))s

(define (car n)
  (define (expt-of a n)
    (define (iter n count)
      (if (divisor? a n)
        (iter (/ n a) (+ 1 count))
        count))
    (iter n 0))
  (expt-of 2 n))

(define (cdr z)
  (define (expt-of a n)
    (define (iter n count)
      (if (divisor? a n)
        (iter (/ n a) (+ 1 count))
        count))
    (iter n 0))
  (expt-of 3 n))
