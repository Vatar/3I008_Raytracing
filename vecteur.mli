type t = { 
  x: Point.t;

}

val make : float -> float-> float -> t

val getx: t -> float
val gety: t -> float
val getz: t -> float

val setx: t -> float -> t
val sety: t -> float -> t
val setz: t -> float -> t

val add: t -> t -> t
val sous: t -> t -> t

val multi_scal: t -> float -> t
val prod_scal: t -> t -> float
val prod_vect: t -> t -> t

val norme: t -> float
val normalisation: t -> t
