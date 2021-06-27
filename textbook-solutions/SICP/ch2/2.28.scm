;; ex 2.28

(define nil '())

(define (fringe tree)
  (if (null? tree)
      nil
      (if (pair? tree)
          (append (fringe (car tree)) (fringe (cdr tree)))
          (list tree))))

(define x (list (list 1 2) (list 3 4)))

(fringe x)
