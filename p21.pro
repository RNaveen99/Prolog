% Write a Prolog program to implement delete_nth (N, L, R) that removes the element on Nth position from a list L to generate a list R.

delete_nth(N, L, R):-
    delete_nth2(N, L, R).

delete_nth2(0, [H | T], T).

delete_nth2(N, [H | T], [H | R]):-
    N1 is N - 1,
    delete_nth2(N1, T, R).