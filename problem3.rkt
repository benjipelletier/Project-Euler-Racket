;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname problem3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
;;************************************;;
;;------------ Problem 3 -------------;;
;;************************************;;

(define (is-prime? num start)
  (cond [(> start (/ num 2)) true]
        [(= (modulo num start) 0) false]
        [else (is-prime? num (+ 1 start))]))

(define (large-prime num d max)
  (cond [(is-prime? num 2) num]
        [(> d (/ num 2)) max]
        [(and (= (modulo num d) 0) (is-prime? d 2)) (large-prime (/ num d) 2 d)]
        [else (large-prime num (+ 1 d) max)]))