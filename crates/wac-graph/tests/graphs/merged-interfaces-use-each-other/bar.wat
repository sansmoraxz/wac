(component
  (type (instance (type (record (field "x" u32))) (export "u" (type (eq 0)))))
  (import "a:b/y" (instance $y (type 0)))
  (alias export $y "u" (type $u))
  (type (instance (alias outer 1 $u (type)) (export "u" (type (eq 0)))))
  (import "a:b/x" (instance (type 2)))
)
