;; ex 2.52

; a)
(define wave
    (segments->painter (list (make-segment (make-vect 0.4 0.7) (make-vect 0.5 0.7)))))

; b)
(define (corner-split painter n)
    (if (= n 0)
        painter
        (beside (below painter (up-split painter n))
                (below (right-split painter n) (corner-split painter (- n 1))))))

; c)
(define (square-limit painter n)
    (let ((combine (square-of-four flip-vert r180
                                    (identity flip-horiz)))
      (combine (corner-split painter n)))))
