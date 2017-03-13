type t = { 
  x: Point.t;
}

(*Crée un nouveau vecteur 3D de coordonnées (x,y,z) *)

let make (vx:float) (vy:float) (vz:float) :t=
	{x=Point.make vx vy vz}

(*Retourne la coordonnée x*)
let getx (point:t) :float=
	t.x
	
(*Retourne la coordonnée y*)
let gety (point:t) :float=
	t.y

(*Retourne la coordonnée z*)
let getz (point:t) :float=
	t.z

(*Setter pour la coordonnée x*)
let setx (point:t) (var:float) :t=
	{x=Point.setx t var}

(*Setter pour la coordonnée y*)
let sety (point:t) (var:float) :t=
	{x=Point.sety t var}
	
(*Setter pour la coordonnée z*)	
let setz (point:t) (var:float) :t=
	{x=Point.setz t var}
	
(*Addition de deux vecteurs v1 et v2*)
let add (v1:t) (v2:t) :t=
	{x=Point.make (Point.getx v1 + Point.getx v2) (Point.gety v1 + Point.gety v2) 
	Point.getz v1 + Point.getz v2()}
	
(*Soustraction de deux vecteur v1 et v2*)
let soustrac (v1:t) (v2:t) :t=
	let x:float=Point.getx v2 
	in
	let y:float=Point.gety v2
	in
	let z:float=Point.getz v2 
	in
	
	let v2x :float=
		if(x>0)
		then
			(x-(2*x))
		else
			(x+(2*x))
		in
		
		let v2y :float=
			if(y>0)
			then
				(y-(2*y))
			else
				(y+(2*y))
		in
		
		let v2z :float=
			if(z>0)
			then
				(z-(2*z))
			else
				(z+(2*z))
		in
		
	add v1 (make (v2x) (v2y) (v2z) )
	

let multi_scal: t -> float -> t
let prod_scal: t -> t -> t
let prod_vect: t -> t -> t

let norme: t
let normalisation: t