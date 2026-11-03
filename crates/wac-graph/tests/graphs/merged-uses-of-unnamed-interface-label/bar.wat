(component
  (type (instance (type (record (field "x" u32))) (export "t" (type (eq 0)))))
  (import "a" (instance $a (type 0)))
  (alias export $a "t" (type $t))
  (type (instance (alias outer 1 $t (type)) (export "t" (type (eq 0)))))
  (import "b" (instance (type 2)))
)
