;Returns length of a list. Recursive form.
(define (len lista)
    (cond
      [(not (list? lista)) 'error]
      [(null? lista) 0]
      [else (+ 1 (len (cdr lista)))]
      )
    )