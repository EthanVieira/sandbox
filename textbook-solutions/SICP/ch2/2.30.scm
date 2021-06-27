;; ex 2.30

(define nil '())
(define (square x) (* x x))

(define (square-tree tree)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (square tree))
        (else (cons (square-tree (car tree))
                    (square-tree (cdr tree))))))

(define (sqr-tree tree)
  (map (lambda (x)
          (cond ((null? x) nil)
                ((not (pair? x)) (square x))
                (else (sqr-tree x))))
        tree))


(square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))

(sqr-tree
(list 1
      (list 2 (list 3 4) 5)
      (list 6 7)))
