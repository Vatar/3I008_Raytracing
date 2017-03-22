type t = {
  orig: Point.t;
  direct: Vecteur.t;
}


let make (point:Point.t) (vecteur:Vecteur.t) :t=
  let vecteurnorm :Vecteur.t=
    if (norme vecteur !=1)
    then 
      (normalisation (vecteur))
    else
      vecteur 
  in 
  {orig=point;direct=vecteurnorm}

let getorig (rayon:t) :Point.t=
  t.orig

let getdirect (rayon:t) :Vecteur.t=
  t.direct
