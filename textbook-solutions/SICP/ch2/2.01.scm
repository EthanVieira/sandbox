;; ex 2.01

(define (xor c1 c2)
  (or (and c1 (not c2)) (and (not c1) c2)))

(define (sign x)
  (if (< x 0)
      -
      +))

(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons ((sign (* n d)) (abs (/ n g)))
          (abs (/ d g)))))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))



(define x (make-rat (- 2) (- 3)))
(print-rat x)
