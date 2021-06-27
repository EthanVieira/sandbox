;; ex 1.41

(define (inc x) (+ 1 x))

(define (double f)
  (lambda (x) (f (f x))))

((double inc) 1) ;; test double

(((double (double double)) inc) 5) ;; returns 21
