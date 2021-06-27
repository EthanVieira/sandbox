;; ex 2.45


(define (split x y)
    (define (rect painter n)
        (if (= n 1)
            painter
            (let ((smaller (rec painter (- n 1))))
                (x painter (y smaller smaller)))))
    rect)

(define right-split (split beside below))
(define up-split (split below beside))
