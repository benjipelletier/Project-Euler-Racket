;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname problem4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
;;************************************;;
;;------------ Problem 4 -------------;;
;;************************************;;

(define (is-pal? num)
  (string=? (number->string num) (list->string (reverse (string->list(number->string num))))))

(define (large-pal max)
  (filter is-pal? (quicksort (foldr (lambda (x z) (append (build-list (+ 1 max) (lambda (y) (* y x))) z)) empty (range 1 (+ 1 max) 1)) <)))

(large-pal 999)
