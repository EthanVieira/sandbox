;; ex 2.42

(define nil '()) ;; this is the same as empty-board

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low (enumerate-interval (+ low 1) high))))

(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))

(define (adjoin-position r c remain)
    (cons (list r c) remain))

(define (safe? k positions)
    (let ((x1 (car positions))
          (x2 (caar positions))
          (x3 (cadar positions))
          (rest (cdr positions)))
      (accumulate (lambda (pos result)
                    (let ((row (car pos))
                          (col (cadar pos)))
                    (and (not (= (- x2 x3)
                                 (- row col)))
                         (not (= (+ x2 x3)
                                 (+ row col)))
                         (not (= x2 row))
                         result)))
                  #t
                  rest)))

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list nil)
        (filter
         (lambda (positions) (safe? k positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))
