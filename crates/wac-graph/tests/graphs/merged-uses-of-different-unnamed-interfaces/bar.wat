(component
  (type (instance (type (record (field "x" u32))) (export "t" (type (eq 0)))))
  (import "a" (instance (type 0)))
  (type (instance (type (record (field "x" u32))) (export "t" (type (eq 0))) (export "u" (type (eq 0)))))
  (import "c" (instance $c (type 1)))
  (alias export $c "t" (type $t))
  (type (instance (alias outer 1 $t (type)) (export "t" (type (eq 0)))))
  (import "b" (instance (type 3)))
)
