;; ex 2.09

;; adding or subtracting two intervals - you just add or subtract the bounds
(define (sub-interval x y)
  (make-interval (- (lower-bound x) (lower-bound y))
                 (- (upper-bound x) (upper-bound y))))

;; creating the width just subtracts upper and lower bounds.
(define (width x) (* .5 (- (upper-bound x) (lower-bound x))))

;; Using basic rules of arithmetic we can show that the width of a sum/difference of two intervals
;; is a function of their widths
;; .5((upperX + upperY) - (lowerX + lowerY)) = .5(upperX - lowerX) + .5(upperY - lowerY)

;; Multiplication/Division is different because:
;; .5((upperX * upperY) - (lowerX * lowerY)) != .5(upperX - lowerX) * .5(upperY - lowerY)
