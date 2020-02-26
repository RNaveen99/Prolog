% Write a Program in PROLOG to implement sublist(S, L) that checks whether the list S is the sublist of list L or not. (Check for sequence or the part in the same order).

mysublist(L, S):-
    mysublist(L, S, S).

mysublist([], [], S).

mysublist([H1 | T1], [], S).

mysublist([H1 | T1], [H1 | T2], S):-
    mysublist(T1 , T2, S).

mysublist([H1 | T1], L3, S):-
    mysublist(T1, S, S).