type t = { 
  x: float;
  y: float;	
	z: float; 	
}


exception SizeError (*Exception si x,y,z<0*)

(*Cr�e un nouveau point 3D de coordonn�es (x,y,z) *)

let make (vx:float) (vy:float) (vz:float) :t=
	try
		if( x<0 || y<0 || z<0) then
				raise SizeError
			else
				{x=vx;y=vy;z=vz;}
	with
	| SizeError -> {0;0;0;}


(*Retourne la coordonn�e x*)
let getx (point:t) :float=
	point.x
	
(*Retourne la coordonn�e y*)
let gety (point:t) :float=
	point.y

(*Retourne la coordonn�e z*)
let getz (point:t) :float=
	point.z

(*Setter pour la coordonn�e x*)
let setx (point:t) (var:float) :t=
	{var;point.y;point.z}

(*Setter pour la coordonn�e y*)
let sety (point:t) (var:float) :t=
	{point.x;var;point.z}
	
(*Setter pour la coordonn�e z*)	
let setz (point:t) (var:float) :t=
{point.x;point.y;var}