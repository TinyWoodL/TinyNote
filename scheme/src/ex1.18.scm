(define (double a)
  (+ a a))

(define (halve b)
  (/ b 2))

(define (mutil a b tmp)
  (cond ((= b 0)
         tmp)
        ((even? b)
         (mutil (double a)
                (halve b)
                tmp))
        ((odd? b)
         (mutil a
                (- b 1)
                (+ a tmp)))))

(define (* a b)
  (mutil a b 0))

(* 2 7)

(* 3 6)