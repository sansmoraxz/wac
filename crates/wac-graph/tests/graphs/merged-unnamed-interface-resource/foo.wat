(component
  (type (instance (export "r" (type (sub resource)))))
  (import "a" (instance $a (type 0)))
  (alias export $a "r" (type $r))
  (type (own $r))
  (type (func (param "x" 2)))
  (import "f" (func (type 3)))
)
