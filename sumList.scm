;Receives a list of numbers as input and sums its elements
(define (sumList list)
      (cond
        [(not (list? list)) 'error]
        [(null? list) 0]
        [(null? (cdr list)) (car list)]
        [else (+ (car list) (sumList (cdr list)))]
        )
      )