(component
  (type (instance (type (record (field "x" u32))) (export "t" (type (eq 0)))))
  (import "a:b/x" (instance $x (type 0)))
  (alias export $x "t" (type $t))
  (type (instance (alias outer 1 $t (type)) (export "t" (type (eq 0)))))
  (import "a:b/y" (instance (type 2)))
)
