#lang rosette

(require (only-in rosette/base/util/array reshape))

(provide generate-symbolic)

;; Instead of (define (get-sym) (define-symbolic* x <type>) x)
;; Use (generate-symbolic x)
(define-syntax (generate-symbolic stx)
  (syntax-case stx ()
    [(_ type)
     (syntax/loc stx
       (with-syntax ([(var) (generate-temporaries #'(gen))])
         (constant (list #'var ((current-oracle) #'var)) type)))]
    [(_ type [ k ... ])
     (syntax/loc stx
       (with-syntax ([(var) (generate-temporaries #'(gen))])
         (reshape (list k ...) (for/list ([i (in-range (* k ...))])
                                 (generate-symbolic type)))))]))
