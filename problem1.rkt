;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname problem1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
;;************************************;;
;;------------ Problem 1 -------------;;
;;************************************;;

(define (mult-3-5 num max)
  (cond [(>= num max) 0]
    [(or (= (modulo num 3) 0) (= (modulo num 5) 0)) (+ num (mult-3-5 (+ 1 num) max))]
    [else (mult-3-5 (+ 1 num) max)]))
