(component
  (import "r" (type $r (sub resource)))
  (type (component
    (alias outer 1 $r (type))
    (import "x" (type (eq 0)))
  ))
  (import "c" (component (type 1)))
)
