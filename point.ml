type t = { 
  x: float;
  y: float;	
	z: float; 	
}


exception SizeError (*Exception si x,y,z<0*)

(*Crée un nouveau point 3D de coordonnées (x,y,z) *)

let make (vx:float) (vy:float) (vz:float) :t=
	try
		if( x<0 || y<0 || z<0) then
				raise SizeError
			else
				{x=vx;y=vy;z=vz;}
	with
	| SizeError -> {0;0;0;}


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
	{var;point.y;point.z}

(*Setter pour la coordonnée y*)
let sety (point:t) (var:float) :t=
	{point.x;var;point.z}
	
(*Setter pour la coordonnée z*)	
let setz (point:t) (var:float) :t=
{point.x;point.y;var}