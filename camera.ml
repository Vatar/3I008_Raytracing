type t={
  orig:Point.t; (*origine*)
  dimx:float; (*width:longueur de l'ecran*)
  dimy:float; (*height: largeur de l'ecran*)
  fov:float; (*champ de vision en radian*)
  center:Point.t; (*point de visée/centre de l'ecran*)
}

let make (origin:Point.t) (dx:float) (dy:float) (fofv:float) (cent:Point.t) :t=
  {orig=origin;dimx=dx;dimy=dy;fov=fofv;center=cent}


let throwray (camera:t) :unit= 
  ()
