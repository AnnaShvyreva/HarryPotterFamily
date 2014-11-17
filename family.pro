domains
name = symbol

predicates
nondeterm man(name)
nondeterm woman(name)
married(name, name)
nondeterm sister(name, name)
nondeterm brother(name, name)
nondeterm mother(name, name)
nondeterm father(name, name)
nondeterm grandma(name, name)
nondeterm grandfa(name, name)
nondeterm uncle(name, name)
nondeterm aunt(name, name)

clauses
man(james_potter).
man(harry_potter).
man(vernon_dursley).
man(dudley_dursley).
man(arthur_weasley).
man(ronald_weasley).
man(fred_weasley).
man(george_weasley).
man(percy_weasley).
man(william_arthur_weasley).
man(charles_arthur_weasley).
man(james_sirius_potter).
man(albus_severus_potter).
man(fred2_weasley).
man(hugo_weasley).
woman(lily_evans).
woman(petunia_evans).
woman(molly_prewett).
woman(ginevra_molly_weasley).
woman(hermione_granger).
woman(fleur_isabelle_delacour).
woman(audrey).
woman(angelina_jonson).
woman(gabrielle_delacour).
woman(lily_luna_potter).
woman(mary_victuar_weasley).
woman(rose_weasley).
woman(roxanne_weasley).
woman(lusy_weasley).
woman(molly_weasley).
married(james_potter, lily_evans).
married(vernon_dursley, petunia_evans).
married(arthur_weasley, molly_prewett).
married(harry_potter, ginevra_molly_weasley).
married(ronald_weasley, hermione_granger).
married(george_weasley, angelina_jonson).
married(percy_weasley, audrey).
married(william_arthur_weasley, fleur_isabelle_delacour).
father(james_potter, harry_potter).
father(vernon_dursley, dudley_dursley).
father(arthur_weasley, william_arthur_weasley).
father(arthur_weasley, charles_arthur_weasley).
father(arthur_weasley, percy_weasley).
father(arthur_weasley, fred_weasley).
father(arthur_weasley, george_weasley).
father(arthur_weasley, ronald_weasley).
father(arthur_weasley, ginevra_molly_weasley).
father(harry_potter, james_sirius_potter).
father(harry_potter, albus_severus_potter).
father(harry_potter, lily_luna_potter).
father(ronald_weasley, hugo_weasley).
father(ronald_weasley, rose_weasley).
father(george_weasley, fred2_weasley).
father(george_weasley, roxanne_weasley).
father(percy_weasley, lusy_weasley).
father(percy_weasley, molly_weasley).
father(william_arthur_weasley,mary_victuar_weasley).
sister(lily_evans, petunia_evans).
sister(petunia_evans, lily_evans).
sister(fleur_isabelle_delacour, gabrielle_delacour).
sister(gabrielle_delacour, fleur_isabelle_delacour).
sister(X,Y):-
	woman(X),
	woman(Y),	
	father(Z,X),
	father(Z,Y),
	X><Y.
	
sister(X,Y):-
	woman(X),
	man(Y),	
	father(Z,X),
	father(Z,Y),
	X><Y.
	
mother(X,Y):-
	woman(X),
	woman(Y),
	father(Z,Y),
	married(Z,X).
	
mother(X,Y):-
	woman(X),
	man(Y),
	father(Z,Y),
	married(Z,X).

brother(X,Y):-
	man(X),
	woman(Y),	
	father(Z,X),
	father(Z,Y),
	X><Y.
	
brother(X,Y):-
	man(X),
	man(Y),	
	father(Z,X),
	father(Z,Y),
	X><Y.
	
grandma(X,Y):-
	woman(X),
	woman(Y),
	father(Z,Y),	
	mother(X,Z).
	
grandma(X,Y):-
	woman(X),
	woman(Y),
	mother(Z,Y),	
	mother(X,Z).
	
grandma(X,Y):-
	woman(X),
	man(Y),	
	father(Z,Y),
	mother(X,Z).
	
grandma(X,Y):-
	woman(X),
	man(Y),	
	mother(Z,Y),
	mother(X,Z).
	
grandfa(X,Y):-
	man(X),
	woman(Y),
	father(Z,Y),	
	father(X,Z).
	
grandfa(X,Y):-
	man(X),
	woman(Y),
	mother(Z,Y),	
	father(X,Z).
	
grandfa(X,Y):-
	man(X),
	man(Y),	
	father(Z,Y),
	father(X,Z).
	
grandfa(X,Y):-
	man(X),
	man(Y),	
	mother(Z,Y),
	father(X,Z).
	
uncle(X,Y):-
	man(X),
	woman(Y),
	father(Z,Y),	
	brother(X,Z).
	
uncle(X,Y):-
	man(X),
	woman(Y),
	mother(Z,Y),	
	brother(X,Z).
	
uncle(X,Y):-
	man(X),
	man(Y),	
	father(Z,Y),
	brother(X,Z).
	
uncle(X,Y):-
	man(X),
	man(Y),	
	mother(Z,Y),
	brother(X,Z).
	
aunt(X,Y):-
	woman(X),
	woman(Y),
	father(Z,Y),	
	sister(X,Z).
	
aunt(X,Y):-
	woman(X),
	woman(Y),
	mother(Z,Y),	
	sister(X,Z).
	
aunt(X,Y):-
	woman(X),
	man(Y),	
	father(Z,Y),
	sister(X,Z).
	
aunt(X,Y):-
	woman(X),
	man(Y),	
	mother(Z,Y),
	sister(X,Z).


goal
/*sister(X,Y).*/
/*mother(A,B).*/
aunt(X,Y).