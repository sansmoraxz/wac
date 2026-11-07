(component
  (type (instance
    (type (instance
      (type (record (field "x" u32)))
      (export "t" (type (eq 0)))
    ))
    (export "a:b/c" (instance (type 0)))
    (alias export 0 "t" (type))
    (type (instance
      (alias outer 1 1 (type))
      (export "t" (type (eq 0)))
    ))
    (export "a:b/d" (instance (type 2)))
  ))
  (import "x:y/z" (instance (type 0)))
)
