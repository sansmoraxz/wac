(component
  (type (instance
    (type (instance
      (type (instance
        (export "r" (type (sub resource)))
      ))
      (export "j" (instance (type 0)))
    ))
    (export "i" (instance (type 0)))
    (alias export 0 "j" (instance))
    (alias export 1 "r" (type))
    (type (borrow 1))
    (type (func (param "x" 2)))
    (export "f" (func (type 3)))
  ))
  (import "a" (instance (type 0)))
)
