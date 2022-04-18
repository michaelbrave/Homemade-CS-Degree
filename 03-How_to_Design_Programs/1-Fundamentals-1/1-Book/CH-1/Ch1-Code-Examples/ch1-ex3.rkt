;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ch1-ex3) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))

; find the func that can insert "_" at i

(define str "helloworld")
;(define id "0123456789") this is here to show number of chars in string, just an example
(define i 5)

(string-append (substring str 0 i) "_" (substring str i))
