(component
  (import "r" (type (;0;) (sub resource)))
  (type (;1;)
    (component
      (alias outer 1 0 (type (;0;)))
      (import "x" (type (;1;) (eq 0)))
    )
  )
  (import "c" (component (;0;) (type 1)))
  (type (;2;)
    (component
      (import "r" (type (;0;) (sub resource)))
      (type (;1;)
        (component
          (alias outer 1 0 (type (;0;)))
          (import "x" (type (;1;) (eq 0)))
        )
      )
      (import "c" (component (;0;) (type 1)))
    )
  )
  (import "unlocked-dep=<test:foo>" (component (;1;) (type 2)))
  (instance (;0;) (instantiate 1
      (with "r" (type 0))
      (with "c" (component 0))
    )
  )
)
