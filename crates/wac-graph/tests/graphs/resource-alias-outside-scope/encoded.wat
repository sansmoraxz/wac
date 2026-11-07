(component
  (import "t" (type (;0;) (sub resource)))
  (type (;1;)
    (instance
      (alias outer 1 0 (type (;0;)))
      (export (;1;) "t" (type (eq 0)))
    )
  )
  (import "a" (instance (;0;) (type 1)))
  (type (;2;)
    (component
      (import "t" (type (;0;) (sub resource)))
      (type (;1;)
        (instance
          (alias outer 1 0 (type (;0;)))
          (export (;1;) "t" (type (eq 0)))
        )
      )
      (import "a" (instance (;0;) (type 1)))
    )
  )
  (import "unlocked-dep=<test:foo>" (component (;0;) (type 2)))
  (instance (;1;) (instantiate 0
      (with "t" (type 0))
      (with "a" (instance 0))
    )
  )
)
