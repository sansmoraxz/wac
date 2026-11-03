(component
  (type (instance
    (export "m" (core module
      (import "a" "f" (func (param i32) (result i32)))
      (export "g" (global i64))
    ))
  ))
  (import "i" (instance (type 0)))
)
