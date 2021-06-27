;; ex 1.37
;; a) recursive solution


(define (cont-frac n d k)
  (cond ((= k 0) 0)
        (else (/ (n k) (+ (d k) (cont-frac n d (- k 1)))))))

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           11)

           ; Need k to be between 11-12 to be accurate to 4 decimal places

;; b) iterative solution

(define (cont-frac-iter n d k)
  (define (iterate result k)
    (if (= k 0)
        result
        (iterate (/ (n k)
                    (+ (d k) result))
                 (- k 1))))
  (iterate 0 k))

(cont-frac-iter (lambda (i) 1.0)
                (lambda (i) 1.0)
                12)
