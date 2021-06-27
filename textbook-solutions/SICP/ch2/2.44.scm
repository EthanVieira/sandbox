;; ex 2.44

(define (up-split painter n)
    (if (= n 0)
        painter
        (let ((other (right-split painter (- n 1))))
          (beside painter (below other other)))))
