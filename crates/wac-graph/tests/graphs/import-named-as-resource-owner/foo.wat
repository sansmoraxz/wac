(component
  (type (instance (export "r" (type (sub resource)))))
  (import "z" (implements "a:b/c") (instance $z (type 0)))
  (alias export $z "r" (type $r))
  (type (component (alias outer 1 $r (type)) (import "x" (type (eq 0)))))
  (import "a:b/c" (component (type 2)))
)
