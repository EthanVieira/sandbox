;;; SICP Ex. 1.4

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

  ;; Instead of the conditional choosing which datum to use, it decides the procedure to be applied to a and b.
  ;; Once again we are reminded how data and procedures are the same.
