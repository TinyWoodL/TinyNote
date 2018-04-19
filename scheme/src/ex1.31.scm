(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))


(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (* result (term a)))))
  (iter a 1))


(product-iter (lambda (x) x)
              1
              (lambda (x) (+ x 1))
              10)

(define (numer-term i)
  (cond ((= i 1)
         2)
        ((odd? i)
         (+ i 1))
        ((even? i)
         (+ i 2))))

(define (denom-term i)
    (if (odd? i)
        (+ i 2)
        (+ i 1)))

(define (pi n)
  (* 4
     (exact->inexact
         (/ (product numer-term
                     1
                     (lambda (x) (+ x 1))
                     n )
            (product denom-term
                     1
                     (lambda (x) (+ x 1))
                     n )))))

(pi 100)