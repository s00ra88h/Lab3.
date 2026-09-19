male(adel).
male(saad).
male(faris).
male(naif).
male(hakm).

female(maitha).
female(norah).
female(sarah).

parent(adel, saad).
parent(adel, faris).
parent(adel, naif).
parent(adel, hakm).
parent(adel, norah).
parent(adel, sarah).

parent(maitha, saad).
parent(maitha, faris).
parent(maitha, naif).
parent(maitha, hakm).
parent(maitha, norah).
parent(maitha, sarah).

father(F, C) :-
    male(F),
    parent(F, C).

mother(M, C) :-
    female(M),
    parent(M, C).

sister(S, P) :-
    female(S),
    S \= P,
    father(F, S),
    father(F, P),
    mother(M, S),
    mother(M, P).

brother(B, P) :-
    male(B),
    B \= P,
    father(F, B),
    father(F, P),
    mother(M, B),
    mother(M, P).
