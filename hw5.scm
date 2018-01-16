;3a                                                                                                                                                                                 
(define shift-left
  (lambda (x)
    (if (null? x)
        x
    (append (cdr x) (list (car x)) )
    )
    )
  )

(define shift-right
  (lambda (x)
    (if (null? x)
        x
     (append (list (car (reverse x))) (reverse (cdr (reverse x))))
     )
  )
)

;3b                                                                                                                                                                                 
(define count
  (lambda (x y)
    (if (null? y)
        0
        (if ( equal? x (car y) )
            (+ (count x (cdr y)) 1)

            (count x (cdr y))
            )
        )
    )
  )
  
;4a                                                                                                                                                                                  
(define formatDate
  (lambda (x)
    (map (lambda (y)

           (cond
            ( (equal? (car y) "January") (string-append "1/" (number->string(car (cdr y))) "/" (number->string(car (cddr y)))))
            ( (equal? (car y) "February") (string-append "2/" (number->string(car (cdr y))) "/" (number->string(car (cddr y)))))
            ( (equal? (car y) "March") (string-append "3/" (number->string(car (cdr y))) "/" (number->string(car (cddr y)))))
            ( (equal? (car y) "April") (string-append "4/" (number->string(car (cdr y))) "/" number->string((car (cddr y)))))
            ( (equal? (car y) "May") (string-append "5/" (number->string(car (cdr y))) "/" (number->string(car (cddr y)))))
            ( (equal? (car y) "June") (string-append "6/" (number->string(car (cdr y))) "/" (number->string(car (cddr y)))))
            ( (equal? (car y) "July") (string-append "7/" (number->string(car (cdr y))) "/" (number->string(car (cddr y)))))
            ( (equal? (car y) "August") (string-append "8/" (number->string(car (cdr y))) "/" (number->string(car (cddr y)))))
            ( (equal? (car y) "September") (string-append "9/" (number->string(car (cdr y))) "/" (number->string(car (cddr y)))))
            ( (equal? (car y) "October") (string-append "10/" (number->string(car (cdr y))) "/" (number->string(car (cddr y)))))
            ( (equal? (car y) "November") (string-append "11/" (number->string(car (cdr y))) "/" (number->string(car (cddr y)))))
            ( (equal? (car y) "December") (string-append "12/" (number->string(car (cdr y))) "/" (number->string(car (cddr y)))))
            )
           ) x
             )
    )
  )

;4b                                                                                                                                                                                  
(define divideAll
  (lambda (x)
    (let ((f
           (filter
            (lambda (y)
              (not (equal? y 0))
              ) x
                )
           )
          )
      (apply / f)
      )
    )
  )