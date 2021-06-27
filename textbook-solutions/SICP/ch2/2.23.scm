;; ex 2.23

(define (for-each proc items)
  (proc (car items))
  (if (not (null? items))
      (for-each proc (cdr items))
      #t))
