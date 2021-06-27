;; ex 1.44

(define (square x) (* x x))

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (if (= n 1)
      f
      (repeated (compose f f) (- n 1))))

(define dx .00001)

(define (smooth f)
  (lambda (x) (/ (+ (f (- x dx))
                    (f x)
                    (f (+ x dx)))
                 3)))

(define (n-fold-smooth f n)
  (repeated (smooth f) n))

((n-fold-smooth square 2) 3) ;; should be 3*3 = 9, then 9*9 = 81 with some error
