f0(X,Y):-between(2,4,X), between(X,5,Y).
f0(6,6).
f1(X,Y):-!,between(2,4,X), between(X,5,Y).
f1(6,6).
f2(X,Y):-between(2,4,X),!, between(X,5,Y).
f2(6,6).
f3(X,Y):-between(2,4,X), between(X,5,Y),!.
f3(6,6).
