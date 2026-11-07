(component
  (type (instance
    (type (record (field "x" u32)))
    (export "t" (type (eq 0)))
  ))
  (import "a:b/c" (instance $a (type 0)))
  (alias export $a "t" (type $t))
  (type (instance
    (type (instance
      (alias outer 2 $t (type))
      (export "t" (type (eq 0)))
    ))
    (export "inner" (instance (type 0)))
  ))
  (import "d:e/f" (instance (type 2)))
)
