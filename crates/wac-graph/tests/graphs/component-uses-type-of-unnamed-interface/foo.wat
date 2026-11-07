(component
  (type (instance
    (type (record (field "x" u32)))
    (export "t" (type (eq 0)))
    (export "c" (component
      (alias outer 1 1 (type))
      (import "t" (type (eq 0)))
      (import "f" (func (param "t" 1)))
      (export "g" (func (result string)))
    ))
  ))
  (import "i" (instance (type 0)))
)
