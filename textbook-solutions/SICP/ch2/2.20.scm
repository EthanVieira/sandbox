;; ex 2.20

(define (even-or-odd? x)
  (if (even? x)
      even?
      odd?))

(define (iter first elements ans)
  (if (null? elements)
      (reverse ans)
      (iter first (cdr elements) (if ((even-or-odd? first) (car elements))
                               (cons (car elements) ans)
                               ans))))

(define (same-parity first . elements)
  (iter first elements (list first)))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
