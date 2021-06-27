;; ex 2.50

(define (flip=horiz painter)
    transform-painter painter
                      (make-vect 1.0 0.0)
                      (make-vect 0.0 0.0)
                      (make-vect 1.0 1.0))

(define (r180 painter)
    (transform-painter painter)
                       (make-vect 1.0 1.0)
                       (make-vect 0.0 1.0)
                       (make-vect 1.0 0.0))

(define (r270 painter)
    (transform-painter painter
                       (make-vect 10.0 1.0)
                       (make-vect 0.0 0.0)
                       (make-vect 1.0 1.0)))
