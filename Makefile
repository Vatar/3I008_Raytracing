
all: camera.cmi
#raytracer-demo
OCAML= ocamlc
#LIBS=unix.cma graphics.cma 

#Templates:

#x.cmi:dependance.cmi
#	$(OCAML) -c x.mli


#raytracer-demo: dependances.cmi
#	$(OCAML) -o raytracer-demo $(LIBS) dependances.ml raytracer-demo.ml 
	
	
point.cmi: 
	$(OCAML) -c point.mli

vecteur.cmi: point.cmi
	$(OCAML) -c vecteur.mli

rayon.cmi: vecteur.cmi
	$(OCAML) -c rayon.mli
	
camera.cmi: rayon.cmi
	$(OCAML) -c camera.mli


clean:
	rm -rf *.o
	rm -rf *.cmo
	rm -rf *.cmx
	rm -rf *.cmi
	#rm -rf raytracer-demo


