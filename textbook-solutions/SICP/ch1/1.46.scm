;; ex 1.46

(define (iterative-improve good-enough improve)
  (lambda (x)
    (define (iterate x)
      (if (good-enough x)
          x
          (iterate (improve x))))
    (iterate x)))

(define tolerance .0001)


(define (sqrt x)
  (define (average x y) (/ (+ x y) 2))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (close-enough guess)
    (< (abs (- (* guess guess) x)) tolerance))
  ((iterative-improve close-enough improve) 1.0))

(define (close?-enough initial current)
   (< (abs (- initial current)) tolerance))

(define (fixed-point f guess)
  ((iterative-improve
    (lambda (x) (close-enough? x (f x)))
    f)
    guess))

(sqrt 25)
