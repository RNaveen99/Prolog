% Write a Prolog program to implement sumlist(L, S) so that S is the sum of a given list L.

sum(L, S):-
    sumList(L, S).

sumList([], 0):-!.

sumList([H | T], S):-
    sumList(T, S1),
    S is H + S1.