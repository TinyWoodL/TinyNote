(define (* a b)
  (cond ((or (= b 0) (< b 0))
         0)
        ((even? b)
         (* (double a)
            (halve b)))
        ((odd? b)
         (+ a
            (* a
               (- b 1))))))

(define (double a)
  (+ a a))

(define (halve b)
  (/ b 2))

(* 2 7)

(* 3 6)