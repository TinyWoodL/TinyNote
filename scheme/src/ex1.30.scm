(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))


(define (inc a)
  (+ a 1))

(define (identify a)
  a)

(sum identify 1 inc 100)