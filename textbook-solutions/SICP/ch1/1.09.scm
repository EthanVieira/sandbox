;;; SICP Ex. 1.9

(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))

;; The first process is recursive because it generates a (inc (inc (inc (+ ...)))) structure.

(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))

;; The second process is iterative because the original (+ a b) always simplifies to a new (+ a b) which is
;; not adding in width to the visual structure.
