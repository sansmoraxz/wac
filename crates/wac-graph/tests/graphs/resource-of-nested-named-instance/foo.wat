(component
  (type (instance (export "a:b/c" (instance (export "r" (type (sub resource)))))))
  (import "x:y/q" (instance $q (type 0)))
  (alias export $q "a:b/c" (instance $n))
  (alias export $n "r" (type $r))
  (type (component (alias outer 1 $r (type)) (import "x" (type (eq 0)))))
  (import "a:b/c" (component (type 2)))
)
