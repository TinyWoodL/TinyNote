; (load "~/note/scheme/src/practice01.scm")

(define (max_sum a b c)
    (cond ((and (< a b) (< a c)) (+ b c))
          ((and (< b a) (< b c)) (+ a c))
          ((and (< c a) (< c b)) (+ a b))
    )
)

; (max_sum 2 3 4)

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)
    )
)

(define (improve guess x)
    (average guess (/ x guess))
)

(define (average x y)
    (/ (+ x y) 2)
)

(define (good-enough? guess x)
    (< (abs (- x (square guess))) 0.001)
)

(define (sqrt x)
    (sqrt-iter 1.0 x)
)

; (sqrt 9)
; if the result tells that the object is not applicable
; that depends on the wrong use of the parentheses
; such as ((+ 2 3)) which calls 5 as a function with no parameters


; the other version
(define (sqrt x)
    (define (good-enough? guess)
        (< (abs (- x (square guess))) 0.001)
    )
    (define (improve guess)
        (average guess (/ x guess))
    )
    (define (average x y)
        (/ (+ x y) 2)
    )
    (define (sqrt-iter guess)
        (if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))
        )
    )
    (sqrt-iter 1.0)
)

; (sqrt 16.00)

; version 1: recursive model
(define (recursive-f n)
    (define (cala x y z)
        (+ x (* 2 y) (* 3 z))
    )
    (cond ((< n 3) n)
          (else (cala (recursive-f (- n 1)) (recursive-f (- n 2)) (recursive-f (- n 3))))
    )
)

; (recursive-f 3)
; version 2: linear model

(define (linear-f n)
    (define (cala x y z)
        (+ x (* 2 y) (* 3 z))
    )
    (define (f-iter a b c count)
        (cond ((< n 3) n)
              ((>= count n) a)
              (else (f-iter (cala a b c) a b (+ count 1)))
        )
    )
    (f-iter 2 1 0 2)
)

; (linear-f 4)

; practice 1-16
(define (fast-expt x n)
    (define (iter a b c)
        (cond ((= c 0) a)
              ((odd? c) (iter (* a b) b (- c 1)))
              (else (iter a (* b b) (/ c 2)))
        )
    )
    (iter 1 x n)
)

; (fast-expt 2 10)