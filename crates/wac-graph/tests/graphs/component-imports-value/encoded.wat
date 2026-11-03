(component
  (type (;0;)
    (component
      (import "v" (value (;0;) string))
    )
  )
  (import "c" (component (;0;) (type 0)))
  (type (;1;)
    (component
      (type (;0;)
        (component
          (import "v" (value (;0;) string))
        )
      )
      (import "c" (component (;0;) (type 0)))
    )
  )
  (import "unlocked-dep=<test:foo>" (component (;1;) (type 1)))
  (instance (;0;) (instantiate 1
      (with "c" (component 0))
    )
  )
)
