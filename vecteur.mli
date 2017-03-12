type t = { 
  x: Point.t;

}

exception SizeError

val make : float -> float-> float -> t

val getx: t -> float
val gety: t -> float
val getz: t -> float

val setx: t -> float -> t
val sety: t -> float -> t
val setz: t -> float -> t