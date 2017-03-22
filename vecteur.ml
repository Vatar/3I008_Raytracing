type t = { 
  x: Point.t;
}

(*Cr�e un nouveau vecteur 3D de coordonn�es (x,y,z) *)

let make (vx:float) (vy:float) (vz:float) :t=
	{x=Point.make vx vy vz}

(*Retourne la coordonn�e x*)
let getx (point:t) :float= 
	Point.getx t.x
	
(*Retourne la coordonn�e y*)
let gety (point:t) :float=
	Point.gety t.y

(*Retourne la coordonn�e z*)
let getz (point:t) :float=
	Point.getz t.z

(*Setter pour la coordonn�e x*)
let setx (point:t) (var:float) :t=
	{x=Point.setx t var}

(*Setter pour la coordonn�e y*)
let sety (point:t) (var:float) :t=
	{x=Point.sety t var}
	
(*Setter pour la coordonn�e z*)	
let setz (point:t) (var:float) :t=
	{x=Point.setz t var}
	
(*Addition de deux vecteurs v1 et v2*)
let add (v1:t) (v2:t) :t=
	{x=Point.make (getx v1 + getx v2) (gety v1 + gety v2) 
	(getz v1 + getz v2)}
	
(*Soustraction de deux vecteur v1 et v2*)
let soustrac (v1:t) (v2:t) :t=
	let x:float=getx v2 
	in
	let y:float=gety v2
	in
	let z:float=getz v2 
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
	
(*Multiplication d'un vecteur vect par un scalaire scal*)
let multi_scal (vect:t) (scal:float) :t=
	{x=Point.make ((getx vect) *. scal) ( (gety vect) *. scal ) ( (getz vect) *. scal  )}

(*Produit scalaire de deux vecteurs vect1 et vect2 retournant un float*)
let prod_scal (vect1:t) (vect2:t) :float=
	( (getx vect1 *. getx vect2) +. (gety vect1 *. gety vect2) +. (getz vect1 *. getz vect2) )
	
(*Produit vectorielle de deux vecteurs vect1 et vect2 retournant un nouveau vecteur*)	
let prod_vect (vect1:t) (vect2:t) :t=
	{x=Point.make ( (gety vect1 *. getz vect2) -. (getz vect1 *. gety vect2   ) )  
	( (getz vect1 *. getx vect2) -. (getx vect1 *. getz vect2) ) 
	(  (getx vect1 *. gety vect2) -.  (gety vect1 *. getx vect2)  )  }
	

(*Renvoie la racine carée de x^2 + y^2 + z^2) = longeur du vecteur *)  
let norme (vect:t) :float=
	sqrt ( ((getx vect )**2) +. ((gety vect ) **2) +. ((getz vect)**2)  )
	
	
(*Renvoie un vecteur normalisé tel que sa norme/longueur=1*)
let normalisation (vect:t) :t=
	let long :float=
		norme vect
		in
	{w=Point.make ((getx vect) /. long)  ( (gety vect) /. long  ) ( (getz vect) /. long ) }
	
