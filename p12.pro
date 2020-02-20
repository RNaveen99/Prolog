% Write a Prolog program to implement reverse (L, R) where List L is original and List R is reversed list.
concatenate([], L, L).

concatenate([H | L1], L2, [H | L3]):-
    concatenate(L1, L2, L3).

rev(L, R):-
    my_reverse(L, [], R).

my_reverse([], A, A):-!.

my_reverse([H | T], A, R):-
    concatenate([H], A, A1),
    my_reverse(T, A1, R).
