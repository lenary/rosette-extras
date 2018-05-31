rosette-extras
==============

A few extra utilities for Rosette. 

I am open to more contributions!

Install with:

$ raco pkg install rosette-extras



`(require rosette-extras)`
--------------------------

* `(generate-symbolic [t : solvable-type?])`

   Returns a new symbolic variable of type `t`.
   
* `(generate-symbolic [t : solvable-type?] [s : listof integer?])`
   
   Returns a multidimensional list, of with dimensions given by `s`,
   of new symbolic variables of type `t`.
   
`(require rosette-extras/synthax)`
----------------------------------


* `(define-synthax-rule (id pats ...) expr)`

   Like `define-syntax-rule`, but for `define-synthax`, because
   `define-synthax` has a lot of needless parentheses that make
   single-rule definitions annoying.

