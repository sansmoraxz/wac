(component
  (type (instance
    (export "r" (type (sub resource)))
    (export "s" (type (sub resource)))
  ))
  (import "a" (instance $a (type 0)))
  (alias export $a "r" (type $r))
  (type (borrow $r))
  (type (func (param "x" 2) (result u32)))
  (import "g" (func (type 3)))
)
