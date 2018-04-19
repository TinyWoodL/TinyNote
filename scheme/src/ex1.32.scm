(define (accumulate combine null-value term a next b)
  (if (> a b)
      null-value
      (combine (term a)
               (accumulate combine
                           null-value
                           term
                           (next a)
                           next
                           b))))

(define (sum term a next b)
  (accumulate +
              0
              term
              a
              next
              b))