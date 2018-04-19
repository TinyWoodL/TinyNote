(define (sqrt-iter guess x last-guess)
  (if (good-enough? guess last-guess)
      guess
      (sqrt-iter (improve guess x) x guess)))

(define (good-enough? guess last-guess)
  (< (abs (- guess last-guess)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average guess y)
  (/ (+ guess y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x x))

(sqrt 9)

(sqrt 100)

(sqrt 0.000005)