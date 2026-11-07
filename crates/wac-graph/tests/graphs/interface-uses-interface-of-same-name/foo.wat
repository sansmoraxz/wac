(component
  (type (instance (export "r" (type (sub resource)))))
  (import "z" (implements "a:b/c") (instance $z (type 0)))
  (alias export $z "r" (type $r))
  (type (instance
    (alias outer 1 $r (type))
    (export "r2" (type (eq 0)))
  ))
  (import "a:b/c" (instance (type 2)))
)
