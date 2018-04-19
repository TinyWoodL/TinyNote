(define (fast-expt b n a)
  (cond ((= n 0)
         a)
        ((even? n)
          (fast-expt (square b)
                     (/ n 2)
                     a))
        ((odd? n)
          (fast-expt b
                     (- n 1)
                     (* a b)))))

(define (expt b n)
  (fast-expt b n 1))

(expt 2 2)
(expt 2 10)

