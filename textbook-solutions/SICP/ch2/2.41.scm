;; ex 2.41

(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low (enumerate-interval (+ low 1) high))))

(define (equal? triplet s)
  (= (cadr triplet) s))

(define (build-triplet a b c)
  (list (list a b c) (+ a b c)))

(define (find-ordered-triples n s)
  (flatmap (lambda (k)
            (flatmap (lambda (j)
                        (filter equal?
                                (map (lambda (i) (build-triplet i j k))
                                        (enumerate-interval 1 (1- j)))))
                      (enumerate-interval 1 (1- k))))
            (enumerate-interval 1 n)))
