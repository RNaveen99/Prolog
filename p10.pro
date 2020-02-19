% Write a Prolog program to implement memb(X, L): to check whether X is a member of L or not.

memb(X, L):-
    is_member(X, L).

is_member(H, [H|_]):-
    write('Element Found'),
    !.
is_member(X, [_|T]):-
    is_member(X, T).