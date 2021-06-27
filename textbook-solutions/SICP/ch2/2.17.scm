;; ex 2.17

(define (last-pair list1)
  (if (null? (cdr list1))
      list1
      (last-pair (cdr list1))))

(last-pair (list 23 72 149 34))
