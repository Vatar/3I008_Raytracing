type t={
  orig:Point.t; (*origine*)
  dimx:float; (*width:longueur de l'ecran*)
  dimy:float; (*height: largeur de l'ecran*)
  fov:float; (*champ de vision en radian*)
  center:Point.t; (*point de visée/centre de l'ecran*)
}

let make (origin:Point.t) (dx:float) (dy:float) (fofv:float) (cent:Point.t) :t=
  {orig=origin;dimx=dx;dimy=dy;fov=fofv;center=cent}

 
let throw_ray (camera:t) :unit= 

  let op :Vecteur.t=
    Vecteur.make (Point.getx camera.center -. Point.getx camera.orig) 
                 (Point.gety camera.center -. Point.gety camera.orig)
                 (Point.getz camera.center -. Point.getz camera.orig)  in
  let up :Vecteur.t=
    Vecteur.make 0.0 1.0 0.0 in

  let u :Vecteur.t=
    Vecteur.prod_vect up op in

  let v :Vecteur.t=
    Vecteur.prod_vect op u in

  let imgratio :float=
    camera.dimy/.camera.dimx in
  let halfwidth :float=
    tan(camera.fov/.2.0) in
  let halfheight :float=
    imgratio *. tan (camera.fov/.2.0) in

  (* (*Le typage n'a pas de sens, c'est des floats et des vecteurs qui donnent un float? @-@*)

  let C :float=camera.center -. (Vecteur.soustrac (Vecteur.multi_scal u halfwidth)  (Vecteur.multi_scal v halfheight ) in*)

  let x :Vecteur.t= Vecteur.multi_scal u ((2.0 *. halfwidth) /. camera.dimy ) in

  let y :Vecteur.t= Vecteur.multi_scal v ((2.0 *. halfheight) /. camera.dimx ) in

  (* (* C est vecteur peut-être? xe et ye en paramètre de la fonction ou boucle sur tout xe/ye de l'écran?*)
  let q = C + Vecteur.multi_scal x xe? + Vecteur.multi_scal y ye? *)

  ()
