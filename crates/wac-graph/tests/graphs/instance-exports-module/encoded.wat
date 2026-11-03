(component
  (type (;0;)
    (instance
      (core type (;0;)
        (module
          (type (;0;) (func (param i32) (result i32)))
          (import "a" "f" (func (type 0)))
          (export "g" (global i64))
        )
      )
      (export (;0;) "m" (core module (type 0)))
    )
  )
  (import "i" (instance (;0;) (type 0)))
  (type (;1;)
    (component
      (type (;0;)
        (instance
          (core type (;0;)
            (module
              (type (;0;) (func (param i32) (result i32)))
              (import "a" "f" (func (type 0)))
              (export "g" (global i64))
            )
          )
          (export (;0;) "m" (core module (type 0)))
        )
      )
      (import "i" (instance (;0;) (type 0)))
    )
  )
  (import "unlocked-dep=<test:foo>" (component (;0;) (type 1)))
  (instance (;1;) (instantiate 0
      (with "i" (instance 0))
    )
  )
)
