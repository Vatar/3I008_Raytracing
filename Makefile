
#all: raytracer-demo
OCAML= ocamlc
#LIBS=unix.cma graphics.cma 

#Templates:

#x.cmi:dependance.cmi
#	$(OCAML) -c x.mli


#raytracer-demo: dependances.cmi
#	$(OCAML) -o raytracer-demo $(LIBS) dependances.ml raytracer-demo.ml 
	
	
clean:
	rm -rf *.o
	rm -rf *.cmo
	rm -rf *.cmx
	rm -rf *.cmi
	#rm -rf raytracer-demo

