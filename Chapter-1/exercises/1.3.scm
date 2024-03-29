(define (sum_of_squares_of_large_two x y z)
	(cond ((and (> x y) (> x z))
           (+ (* x x) 
              (if (> y z) 
                  (* y y)
                  (* z z)
              )
           )
          )
          ((and (> y x) (> y z))
           (+ (* y y) 
              (if (> x z) 
                  (* x x)
                  (* z z)
              )   
           )
          )
          ((and (> z x) (> z y))
           (+ (* z z) 
              (if (> x y) 
                  (* x x)
                  (* y y)
              )
           )
          )
    )  
)

(sum_of_squares_of_large_two 1 3 4)

# Another approach

(define (square x) (* x x))

(define (sum-of-squares x y z)
  	(cond (
           (and (> x z) (> y z))
           (+ (square x) (square y)) 
  		  )
          (
           (and (> x y) (> z y))
           (+ (square x) (square z)) 
  		  )
          (
           (and (> y x) (> z x))
           (+ (square y) (square z)) 
  		  )
    )
)

(sum-of-squares 1 2 3)
(sum-of-squares 1 3 2)
(sum-of-squares 2 3 1)
(sum-of-squares 3 2 1)
(sum-of-squares 2 1 3)
(sum-of-squares 3 1 2)
(sum-of-squares 100 20 3)
