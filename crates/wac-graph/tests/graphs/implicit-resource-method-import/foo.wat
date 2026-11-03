(component
  (import "r" (type $r (sub resource)))
  (type $borrow (borrow $r))
  (type $f (func (param "self" $borrow)))
  (import "[method]r.f" (func (type $f)))
)
