;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname problem2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
;;************************************;;
;;------------ Problem 2 -------------;;
;;************************************;;

(define (even-fib-sum first second max)
  (cond [(> second max) 0]
        [(= (modulo second 2) 0) (+ second (even-fib-sum second (+ first second) max))]
        [else (even-fib-sum second (+ first second) max)]))


