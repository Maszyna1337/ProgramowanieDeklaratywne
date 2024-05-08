lubi(jan, tatry).
lubi(jan, beskidy).
lubi(jerzy,bieszczady).
lubi(jerzy,beskidy).
lubi(adam,sudety).
lubi(justyna,bieszczady).
bratnia_dusza(X,Y):-lubi(X,G),lubi(Y,G),x\==Y.
