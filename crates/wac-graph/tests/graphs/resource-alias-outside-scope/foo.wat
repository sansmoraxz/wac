(component
  (import "t" (type (sub resource)))
  (type (instance
    (alias outer 1 0 (type))
    (export "t" (type (eq 0)))
  ))
  (import "a" (instance (type 1)))
)
