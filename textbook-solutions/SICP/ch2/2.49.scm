;; ex 2.49

(define (segments->painter segment-list)
  (lambda (frame)
    (for-each
     (lambda (segment)
       (draw-line
        ((frame-coord-map frame) (start-segment segment))
        ((frame-coord-map frame) (end-segment segment))))
     segment-list)))

;; a)

(define outline
    (let ((segments '(
                      ((0 0) (0 1))
                      ((0 1) (1 1))
                      ((1 1) (1 0))
                      ((1 0) (0 0))
                     )))
      (segments->painter segments)))

;; b)

(define cross
    (let ((segments '(
                      ((0 0) (1 1))
                      ((0 1) (1 0))
                 )))
      (segments->painter segments)))

;; c)

(define diamond
    (let ((segments '(
                      ((0 0.5) (0.5 1))
                      ((0.5 1) (1 0.5))
                      ((1 0.5) (0.5 0))
                      ((0.5 0) (0 0.5))
                     )))
      (segments->painter segments)))
