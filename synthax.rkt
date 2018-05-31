#lang rosette

(require rosette/lib/synthax)

(provide define-synthax-rule
         (all-from-out rosette/lib/synthax))

(define-syntax-rule (define-synthax-rule (id pats ...) expr)
  (define-synthax id
    ([(_ pats ...) expr])))
