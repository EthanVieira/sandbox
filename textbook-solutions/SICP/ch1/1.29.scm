;; SICP Ex. 1.29

(define (cube x)
  (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (y k)
    (f (+ a (* k h))))
  (define (simp-next x) (+ x 1))
  (define (simp-term k) ; determine the coefficient for the term
    (cond ((= k 0) (y k))
          ((= k n) (y k))
          ((odd? k) (* 4 (y k)))
          (else (* 2 (y k)))))
  (* (sum simp-term 0 simp-next n)
     (/ h 3)))

(simpson cube 0 1 100) ;
(simpson cube 0 1 1000) ;
