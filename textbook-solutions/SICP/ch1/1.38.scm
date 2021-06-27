;; ex 1.38

(define (cont-frac n d k)
  (cond ((= k 0) 0)
        (else (/ (n k) (+ (d k) (cont-frac n d (- k 1)))))))

(define (Dfunc i)
  (if (= (remainder i 3) 2)
      (/ (+ i 1) 1.5)
      1))

(define (e-approx k)
  (+ 2 (cont-frac (lambda (i) 1.0)
                  (lambda (i) (Dfunc i))
                  k)))

(e-approx 100)
