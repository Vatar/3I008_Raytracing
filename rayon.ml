type t = {
  orig: Point.t;
  direct: Vecteur.t;
}


let make (point:Point.t) (vecteur:Vecteur.t) :t=
  let vecteurnorm :Vecteur.t=
    if (Vecteur.norme vecteur !=1.0)
    then 
      (Vecteur.normalisation (vecteur))
    else
      vecteur 
  in 
  {orig=point;direct=vecteurnorm}
 
let getorig (rayon:t) :Point.t=
  rayon.orig

let getdirect (rayon:t) :Vecteur.t=
  rayon.direct
