ojciec(karol,jan).
ojciec(karol,adam).

dziecko(tomasz,jan).
dziecko(piotr,adam).

dziadek(karol,marek).
dziadek(X,Y):-ojciec(X,Z),dziecko(Y,Z).
