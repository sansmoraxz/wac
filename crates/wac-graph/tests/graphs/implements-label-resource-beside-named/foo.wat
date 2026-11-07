(component
  (type (instance (export "r" (type (sub resource)))))
  (import "z" (implements "a:b/c") (instance $z (type 0)))
  (import "a:b/c" (instance $c (type 0)))
  (alias export $z "r" (type $zr))
  (type (instance
    (alias outer 1 $zr (type))
    (export "r" (type (eq 0)))
    (type (own 1))
    (type (func (param "x" 2)))
    (export "f" (func (type 3)))
  ))
  (import "x:y/d" (instance (type 2)))
)
