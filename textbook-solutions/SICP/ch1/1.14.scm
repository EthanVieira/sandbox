;; SICP Ex. 1.14

;                                  (count-change 11) ---> (cc 11 5)
;                                         /                 \
;                                 (cc 11 4)              (cc -39 5)
;                                 /       \
;                           (cc 11 3)    (cc -14 4)
;                           /       \
;                    (cc 11 2)        (cc 1 3)
;                    /        \         /       \
;               (cc 11 1)  (cc 6 2)  (cc 1 2)  (cc -9 3)
;               /       \  /       \  /      \
;           (cc 11 0)
;                     ...etc
;
;; The order of growth of the space required is O(n) because it is proportional to the total height of the tree.
;; The height of the tree increases by one for each cent added (all pennies).
;
;; The order of growth for the number of steps is proportional to the number of unique coins considered.
;; For 1 coin the number of calls to cc is 2n +1, O(n)
;; 2 coins: 2n^2/5+1, O(n^2)
;; 5 coins: O(n^5)
;;
;
;
;
;
;
;
;
;
;
;
;
