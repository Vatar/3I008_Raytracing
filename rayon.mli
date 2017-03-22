type t = {
  orig: Point.t;
  direct: Vecteur.t;
}


val make : Point.t -> Vecteur.t -> t

val getorig : t -> Point.t

val getdirect : t -> Vecteur.t

