type t = { 
  x: float;
  y: float;	
  z: float; 	
}

(*Cr�e un nouveau point 3D de coordonn�es (x,y,z) *)

let make (vx:float) (vy:float) (vz:float) :t=
	{x=vx;y=vy;z=vz;}
 
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
	{x=var;y=point.y;z=point.z}

(*Setter pour la coordonn�e y*)
let sety (point:t) (var:float) :t=
	{x=point.x;y=var;z=point.z}
	
(*Setter pour la coordonn�e z*)	
let setz (point:t) (var:float) :t=
{x=point.x;y=point.y;z=var}
