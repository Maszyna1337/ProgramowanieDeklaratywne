%Definicja zabawek
zabawka(pilka).
zabawka(klocki).
zabawka(lalka).
zabawka(puzzle).
zabawka(auto).
zabawka(mis).
zabawka(kolejka).
zabawka(kolorowanka).
%Kategoria zabawki
kategoria(pilka, sportowe).
kategoria(klocki, edukacyjne).
kategoria(lalka, figurka).
kategoria(puzzle, edukacyjne).
kategoria(auto, pojazdy).
kategoria(mis, pluszak).
kategoria(kolejka, pojazdy).
kategoria(kolorowanka, kreatywna).
%Przeznaczone dla okreslonej grupy wiekowej
wiek(pilka, 3).
wiek(klocki, 5).
wiek(lalka, 2).
wiek(puzzle, 6).
wiek(auto, 4).
wiek(mis, 1).
wiek(kolejka, 3).
wiek(kolorowanka, 2).
% Wyszukanie wszystkich zabawek dostêpnych dla podanego wieku. Wyswietli
% wszystkie zabawki ktorych restrykcja wieku jest nizsza niz podana
% przez uzytkownika
dla_wieku(Wiek) :-
    wiek(Zabawka, Ograniczenie),
    Ograniczenie =< Wiek,
    write(Zabawka), nl,
    fail.
dla_wieku(_).
%Dostepnosc zabawek podana w sztukach
dostepnosc(pilka, 10).
dostepnosc(klocki, 7).
dostepnosc(lalka, 3).
dostepnosc(puzzle, 0).
dostepnosc(auto, 1).
dostepnosc(mis, 4).
dostepnosc(kolejka, 6).
dostepnosc(kolorowanka, 12).
% Jesli zabawka jest dostepna (dostepnosc>0), zwroci true w przeciwnym
% wypadku false
czy_dostepna(Zabawka):-
    zabawka(Zabawka), dostepnosc(Zabawka, Ilosc), Ilosc > 0.
%Najnizsza cena dla danego rodzaju zabawki w zlotowkach
cena(pilka, 30).
cena(klocki, 100).
cena(lalka, 70).
cena(puzzle, 65).
cena(auto, 33).
cena(mis, 54).
cena(kolejka, 78).
cena(kolorowanka, 12).
%Wyszukanie zabawek w podanym przedziale cenowym
przedzial(Min, Max, Z):-
    findall(Zabawka,(cena(Zabawka,Cena),between(Min,Max,Cena)),Z).
%Firmy produkuj¹ce dane zabawi
firma(klocki, lego).
firma(klocki, kobi).
firma(puzzle, trefl).
firma(auto, hotwheels).
firma(lalka, barbie).
firma(auto, corg).
%Wyswietlenie firm zajmujacych sie produkcja zabawek
produkcja(X,Y):-
    zabawka(X),
    firma(X,Y).
%Przypisanie podrodzajow zabawek
typ(pilka, koszykowa).
typ(pilka, nozna).
typ(pilka, siatkowa).
typ(pilka, dmuchana).
typ(auto, resorak).
typ(auto, sterowane).
typ(mis, duzy).
typ(mis, maly).
typ(kolejka, sterowana).
typ(kolejka, drewniana).
typ(klocki, drewniane).
typ(klocki, plastikowe).
typ(puzzle, duze).
typ(lalka, mala).
typ(kolorowanka, papierowa).
%Wyswietlenie wszystkich dostepnych podrodzajow zabawek
rodzaj(X,Y):-
    zabawka(X),
    typ(X,Y).
%Dziedziczenie kategorii po typie zabawki
kategoria_typu(Podtyp,Kat):-
    typ(Rodzaj, Podtyp),
    kategoria(Rodzaj, Kat).
%Wypisywanie informacji o zabawce
opis_zabawki(Zabawka) :-
    typ(Zabawka, Typ),
    kategoria(Zabawka, Kategoria),
    cena(Zabawka, Cena),
    dostepnosc(Zabawka, Ilosc),
    wiek(Zabawka, Ograniczenie),
    format('Zabawka: ~w, Typ: ~w, Kategoria: ~w, Cena minimalna: ~w, Dostepnosc: ~w, Ograniczenie wiekowe: ~w', [Zabawka, Typ, Kategoria, Cena, Ilosc, Ograniczenie]).











