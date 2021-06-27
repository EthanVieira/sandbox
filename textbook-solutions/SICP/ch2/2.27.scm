;; ex 2.27

(define (reverse list1)
  (if (null? (cdr list1))
      list1
      (append (reverse (cdr list1))
              (list (car list1)))))

(define (deep-reverse items)
  (if (pair? items)
      (reverse (map deep-reverse items))
      items))

(define x (list (list 1 2) (list 3 4)))

(deep-reverse x)
