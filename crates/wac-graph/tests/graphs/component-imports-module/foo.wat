(component
  (type (component
    (import "m" (core module (export "memory" (memory 1))))
    (import "c" (component (export "f" (func))))
    (export "v" (value string))
  ))
  (import "c" (component (type 0)))
)
