(define (f-recu n)
  (if (< n 3)
      n
      (+ (f-recu (- n 1))
         (* 2 (f-recu (- n 2)))
         (* 3 (f-recu (- n 3))))))

(f-recu 2)
(f-recu 3)
(f-recu 4)

(define (f-iter n)
  (define (f a b c counter)
    (if (< counter 3)
        a
        (f (+ a (* 2 b) (* 3 c))
           a
           b
           (- counter 1))))
  (f 2 1 0 n))

(f-iter 2)

(f-iter 3)

(f-iter 4)