(define (curt-iter guess pre-guess x)
  (if (good-enough? guess pre-guess)
      guess
      (curt-iter (improve guess x) guess x)))

(define (good-enough? guess pre-guess)
  (< (abs (- guess pre-guess)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (curt x)
  (curt-iter 1.0 x x))

(curt 27)

(curt 8)