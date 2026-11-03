(component
  (type (instance
    (type (record (field "x" u32)))
    (export "t" (type (eq 0)))
    (export "c" (component
      (import "f" (func (param "x" u32)))
      (export "g" (func (result string)))
    ))
  ))
  (import "i" (instance (type 0)))
)
