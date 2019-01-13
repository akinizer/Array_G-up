;;; This program takes 2 lists as perimeters, chooses first elements & groups up.
;;; Then returns rest of elements as sublists recursively

;;; pair-up function with perimeters as list 1 and list2
(define pair-up ( lambda (list1 list2) 
  ;;; scope of pair-up
  (
    ;;; check whether list1 is null
    if(null? list1) (
      ;;; check wheher list2 is null
      if(null? list2) '() 
      '() 
      ;;; return nothing if at least one of them is null
    )
    
    ;;; take first elemets of current sublists with cons, group up
    ;;; then group up the current group with pair-up function of sublists of the rest of elements of list1 and list2
    ( cons (cons(car list1) (car list2) ) ( pair-up (cdr list1) (cdr list2))) )
  
    ;;; pseudo result in logic : ( (a.1) ( (b.2) ( (c.3) ( '().'() ) ) ) ) -> actual result : ( (a.1) (b.2) (c.3) )
  )
)

;;; callee for pair-up, lets see what we will find out
(pair-up '(c 3 5) (list 's 1 'PL))