;; ex 2.03

(define (square x) (* x x))

(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (make-segment start end)
  (cons start end))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

(define (distance seg)
  (sqrt (square (- (car (car seg))
                   (car (cdr seg)))
        (square (- (cdr (car seg))
                   (cdr (cdr seg))))))

(define (make-rect l h)
  (cons l h))

;; second implementation using the diagonal of a rectangle
;; carcar is x1, carcdr is y1, cdrcar is x2, cdrcdr is y2
(define (make-rect2 diag)
  (cons (cons (car (car diag))
              (cdr (cdr diag)))
        (cons (car (cdr diag))
              (cdr (car diag)))))

(define (area rect)
  (* (distance (car rect))
     (distance (cdr rect))))

(define (perimeter rect)
  (+ (* 2 (distance (car rect)))
     (* 2 (distance (cdr rect)))))
