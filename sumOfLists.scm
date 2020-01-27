;Takes two lists of same len as parameters and creates another list with the sum of their elements. Uses reverse func also in this repo
(define (sumaListas L1 L2)
      (define (aux L1 L2 Ls)
        (cond
        [(null? L1) Ls]
        [else (aux (cdr L1) (cdr L2) (cons (+ (car L1) (car L2)) Ls))]
        )
       )
      (cond
        [(and (not (list? L1)) (not (list? L2)))  'error]
        [else (reverse (aux L1 L2 '()))]
        )
      )