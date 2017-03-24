type t = { 
  x: float;
  y: float;	
  z: float; 	
}

(*Crée un nouveau point 3D de coordonnées (x,y,z) *)

let make (vx:float) (vy:float) (vz:float) :t=
	{x=vx;y=vy;z=vz;}
 
(*Retourne la coordonnée x*)
let getx (point:t) :float=
	point.x
	
(*Retourne la coordonnée y*)
let gety (point:t) :float=
	point.y

(*Retourne la coordonnée z*)
let getz (point:t) :float= 
	point.z 

(*Setter pour la coordonnée x*)
let setx (point:t) (var:float) :t=
	{x=var;y=point.y;z=point.z}

(*Setter pour la coordonnée y*)
let sety (point:t) (var:float) :t=
	{x=point.x;y=var;z=point.z}
	
(*Setter pour la coordonnée z*)	
let setz (point:t) (var:float) :t=
{x=point.x;y=point.y;z=var}
