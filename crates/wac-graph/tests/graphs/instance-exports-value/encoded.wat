(component
  (type (;0;)
    (instance
      (export (;0;) "v" (value u32))
    )
  )
  (import "i" (instance (;0;) (type 0)))
  (component (;0;)
    (type (;0;)
      (instance
        (export (;0;) "v" (value u32))
      )
    )
    (import "i" (instance (;0;) (type 0)))
  )
  (instance (;1;) (instantiate 0
      (with "i" (instance 0))
    )
  )
)
