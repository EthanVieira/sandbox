;; ex 1.45

;; the number of times to damp is log2(n) rounded down

(define (log2 n) (/ (log n) (log 2)))
(define (damp n) (floor (log2 n)))

(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (newline)
    (display guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (average x y)
  (/ (+ x y) 2))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (if (= n 1)
      f
      (repeated (compose f f) (- n 1))))

(define (new-fixed-point f next guess)
  (fixed-point (next f) guess))

(define (nth-term x n) ;; 4th root has x/y^3 term
  (lambda (y) (/ x (expt y (- n 1)))))

(define (nth-root x n)
  (new-fixed-point (nth-term x n) (repeated average-damp (damp n)) 1.0))

(nth-root 16 4)
