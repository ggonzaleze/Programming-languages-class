;Receives list as parameter and returns number of elements that are of type different than list
(define (numNoLista lista)
    (cond
      [(not (list? lista)) 'error]
      [(null? lista) 0]
      [(not (list? (car lista))) (+ 1 (numNoLista (cdr lista)))]
      [else (+ (numNoLista (car lista)) (numNoLista (cdr lista)))]
      )
    )