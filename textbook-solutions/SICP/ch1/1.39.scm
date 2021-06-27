;; ex. 1.39

(define (cont-frac n d k)
  (cond ((= k 0) 0)
        (else (/ (n k) (+ (d k) (cont-frac n d (- k 1)))))))

(define (tan-cf x k)
  (cont-frac (lambda (i)
                    (if (= i 1)
                        x
                        (- (* x x))))
              (lambda (i) (- (* i 2) 1))
              k))
(tan-cf 1 5)
