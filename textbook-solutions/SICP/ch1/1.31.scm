;; ex 1.31

; part a) recursive
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

; factorial
(define (inc n) (+ n 1))
(define (identity x) x)
(define (factorial x)
  (product identity 1 inc x))

; pi product
(define (pi-approx n)
  (define (pi-term k)
    (if (even? k)
      (/ (+ 2 k) (+ 1 k))
      (/ (+ 1 k) (+ 2 k))))
  (* (product pi-term 1 inc n) 4))

(pi-approx 20)

; part b) iterative

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))
