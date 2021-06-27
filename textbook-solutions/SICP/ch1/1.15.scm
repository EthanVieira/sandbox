;; SICP Ex. 1.15

(define (cube x) (* x x x ))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

;; a) 12.15 can be divided by 3.0 five times before it is < 0.1, so the procedure p is applied five times.

;; b) The order of growth in space and time is logarithmic, O(log a), because the angle that is evaluated is divided by a
;; constant at every 'loop' in the procedure.
