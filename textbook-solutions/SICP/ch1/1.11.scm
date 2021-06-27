;; SICP Ex. 1.11

;; Recursive process

(define (f-recur n)
  (if (< n 3)
    n
    (+ (f-recur (- n 1))
       (* 2 (f-recur (- n 2)))
       (* 3 (f-recur (- n 3))))))

;; Iterative process

(define (fi n)
  (f-iter 0 1 2 n))

(define (f-iter x y z n)
  (if (= n 0)
    x
    (f-iter y z (+ z (* 2 y) (* 3 x)) (- n 1))))
