;Receives list parameter and reverses it. Iterative form
(define (firstL l1 l2) (cons (car l1) l2))
(define (reverse list)
      (define (aux lO lN)
        (cond
        [(null? lO) lN]
        [else (aux (cdr lO) (firstL lO lN))]
        )
        )
      (cond
        [(not (list? list)) 'error]
        [else (aux list '())]
        )
      )