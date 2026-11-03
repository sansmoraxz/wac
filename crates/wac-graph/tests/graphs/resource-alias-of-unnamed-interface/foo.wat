(component
  (type (instance
    (export "r" (type (sub resource)))
  ))
  (import "a" (instance $a (type 0)))
  (alias export $a "r" (type $r))
  (import "r" (type (eq $r)))
  (type (own 2))
  (type (func (param "x" 3)))
  (import "f" (func (type 4)))
)
