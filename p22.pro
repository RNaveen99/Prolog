% Write a program in PROLOG to implement delete_all (X, L, R) where X denotes the element whose all occurrences has to be deleted from list L to obtain list R.

delete_all(X, L, R):-
    delete_all2(X, L, R).

delete_all2(X, [], R).

delete_all2(X, [X | T], R):-
    delete_all2(X, T, R).

delete_all2(N, [X | T], [X | R]):-
    delete_all2(N, T, R).