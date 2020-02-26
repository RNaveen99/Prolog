% Write a prolog program to implement insert_nth(I, N, L, R) that inserts an item I into Nth position of list L to generate a list R.

insert_nth(I, N, L, R):-
    insert_nth2(I, N, L, R).

insert_nth2(I, 0, L, [X | L]):-
    X is I.

insert_nth2(I, N, [X | T], [X | R]):-
    N1 is N - 1,
    insert_nth2(I, N1, T, R).

