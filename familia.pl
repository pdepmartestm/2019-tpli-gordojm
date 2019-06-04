padre(jose,juan).
padre(vivi,juan).
padre(antonio,jose).
padre(pilar,jose).
padre(mirta,vivi).
padre(gabriel,victoria).
padre(karina,victoria).

hermano(gabriel,vivi).
hermano(jose,guille).
hermano(P1,P2):-
	padre(Padre, P1),
	padre(Padre,P2).
hermano(P1,P2):- hermano(P2,P1).

casados(jose,vivi).
casados(antonio,pilar).
casados(gabriel,karina).
casados(P1,P2):- casados(P2,P1).

abuelo(Persona1,Persona2):-
	padre(Persona1,PadreP2),
	padre(PadreP2,Persona2).

cuniado(Persona1,Persona2):-
	casados(Persona1,PMedio),
	hermano(Persona2,PMedio).
	
hijo(Persona1,Persona2):- padre(Persona2, Persona1).

/*primo(Persona1,Persona1):-
	padre(PadreP1,Persona1),
	padre(PadreP2,Persona2),
	hermano(PadreP1,PadreP2).*/

primo(P1,P2):-
	padre(PadreP2,P2),
	tio(PadreP2,P1).

tio(P1,P2):-
	padre(Padre,P2),
	hermano(P1,Padre).