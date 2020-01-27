;Find element in a list and return its index.
(define (find lista elem)
    (define (aux lista e i)
      (cond
      [(null? lista) 'error404]
      [(equal? (car lista) e) i]
      [else (aux (cdr lista) e (+ 1 i))]
     )
     )
    (cond
      [(not (list? lista)) 'error]
      [else (aux lista elem 1)]
      )
    )