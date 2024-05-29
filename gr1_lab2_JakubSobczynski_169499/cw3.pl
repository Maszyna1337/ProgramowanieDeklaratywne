na(c,a).
na(c,b).
na(d,c).
pod(X,Y):-na(Y,X).
miedzy(X,Y,Z):-na(Y,X),na(X,Z).
miedzy(X,Y,Z):-na(Z,X),na(X,Y).
