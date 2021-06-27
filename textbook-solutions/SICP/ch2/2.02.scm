;; ex 2.02

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

(define (midpoint-segment segment)
  (cons (/ (+ (car (car segment))
              (car (cdr segment)))
            2)
        (/ (+ (cdr (car segment))
              (cdr (cdr segment)))
              2)))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


(print-point (midpoint-segment (make-segment (make-point 1 1) (make-point 3 3))))
