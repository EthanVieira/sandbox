;; ex 2.08

;; create a sub-interval by subtracting corresponding bounds of two intervals
(define (sub-interval x y)
  (make-interval (- (lower-bound x) (lower-bound y))
                 (- (upper-bound x) (upper-bound y))))
