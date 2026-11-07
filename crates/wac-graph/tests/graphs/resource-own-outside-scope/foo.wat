(component
  (type (instance
    (type (instance
      (export "r" (type (sub resource)))
    ))
    (export "i" (instance (type 0)))
    (alias export 0 "r" (type))
    (type (own 1))
    (type (func (param "x" 2)))
    (export "f" (func (type 3)))
  ))
  (import "a" (instance (type 0)))
)
