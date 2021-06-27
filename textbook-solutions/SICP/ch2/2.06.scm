;; ex 2.06

(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))


;; substitute the zero procedure into add-1
(define one (lambda (f) (lambda (x) (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

(define (+ a b) (lambda (f) (lambda (x) ((a f) ((b f) x))))
