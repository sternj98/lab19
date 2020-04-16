all: aTMcomponents lab19.

aTMcomponents: aTMcomponents.ml
	ocamlbuild aTMcomponents.byte

lab19 : lab19.ml
	ocamlbuild lab19.byte
