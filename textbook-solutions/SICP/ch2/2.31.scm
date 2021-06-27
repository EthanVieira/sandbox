;; ex 2.31

(define nil '())
(define (square x) (* x x))

(define (tree-map proc tree)
  (map (lambda (x)
          (cond ((null? x) nil)
                ((not (pair? x)) (proc x))
                (else (tree-map proc x))))
        tree))

(define (square-tree tree) (tree-map square tree))
