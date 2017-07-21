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