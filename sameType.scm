;Returns of elements of a list are all of the same type
(define (type? x)
    (cond
      [(list? x) 'list]
      [(number? x) 'number]
      [(boolean? x) 'boolean]
      [(symbol? x) 'symbol]
      )
    )
(define (mismoTipo? lista)
    (define (aux lista ant)
      (cond
        [(null? lista) #t]
        [(equal? (type? (car lista)) (type? ant)) (aux (cdr lista) (car lista))]
        [else #f]
        )
      )
    (cond
      [(not (list? lista)) 'error]
      [(null? lista) #t]
      [else (aux (cdr lista) (car lista))]
      )
    )