(define (square x) (* x x))

(square (square 3))

(define (sum_of_squares x y) (+ (square x) (square y)))

(sum_of_squares 3 4)

(define (f a)
  (sum_of_squares (* a 1) (+ a 2)))

(f 5)

(define (abs x)
  (cond ((> x 0) x)
        ((< x 0) (- x))
        ((= x 0) 0)))

(abs -1)
(abs 0)
(abs 2)

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

(abs -1)
(abs 0)
(abs 2)

(define (abs x)
  (if (< x 0) (- x) x))

(abs -1)
(abs 0)
(abs 2)

(define (all_greater_than_zero? x y z)
  (and (> x 0) (> y 0) (> z 0)))

(all_greater_than_zero? 1 2 3)
(all_greater_than_zero? 1 -2 0)

(define (any_greater_than_zero? x y z)
  (or (> x 0) (> y 0) (> z 0)))

(any_greater_than_zero? 1 2 3)
(any_greater_than_zero? 1 -2 0)
(any_greater_than_zero? -1 -2 0)

(define (reverter x)
  (not x))

(reverter 1)
(reverter 0)
(reverter false)
(reverter true)
(reverter (> 1 2))

