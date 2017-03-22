type t={
  orig:Point.t; (*origine*)
  dimx:float; (*longueur de l'ecran*)
  dimy:float; (*largeur de l'ecran*)
  fov:float; (*champ de vision en radian*)
  center:Point.t; (*point de visée*)
}

val make: Point.t -> float -> float -> float -> Point.t -> t

val throwray: Camera.t -> unit
			    
