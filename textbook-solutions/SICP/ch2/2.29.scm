;; ex 2.29
;a)
(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (car (cdr branch)))

;b)
(define (total-weight mobile)
  (if (null? mobile)
      0
      (if (pair? mobile)
          (+ (total-weight (branch-structure (left-branch mobile)))
             (total-weight (branch-structure (right-branch mobile))))
          mobile)))

;c)
(define (balanced? mobile)
  (define (torque branch) (* (branch-length branch) (total-weight (branch-structure branch))))
  (if (pair? mobile)
      (and (= (torque (leftibranch mobile)) (torque (right-branch mobile)))
           (balanced? (branch-structure (left-branch mobile)))
           (balanced? (branch-structure (right-branch mobile))))
      true))

;d)
;; for the branch-structure and right-branch, you will no longer need the first car. just (cdr x)
