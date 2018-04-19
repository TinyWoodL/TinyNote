(define (pascal row col)
  (cond ((> col row)
         (error "wrong argument"))
        ((or (= row col) (= 0 col))
         1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))



(pascal 1 1)
(pascal 4 2)