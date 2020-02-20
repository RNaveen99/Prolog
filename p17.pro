% Write a program in PROLOG to implement remove_dup (L, R) where L denotes the list with some duplicates and the list R denotes the list with duplicates removed.

is_member(H, [H|_]).

is_member(X, [_|T]):-
    is_member(X, T).

remove_dup([], []).

remove_dup([H | T], R):-
    is_member(H, T),!,
    remove_dup(T, R).

remove_dup([H | T], [H | R]):-
    remove_dup(T, R).