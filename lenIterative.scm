;Returns length of a list. Iterative form.
(define (len lista)
    (define (aux lista contador)
      (cond
      [(null? lista) contador]
      [else (aux (cdr lista) (+ 1 contador))]
        )
      )
    (cond
      [(not (list? lista)) 'error]
      [else (aux lista 0)]
      )
    )