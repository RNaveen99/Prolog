% Write a Prolog program to implement maxlist(L, M) so that M is the maximum number in the list.

maxList([X | T], M):-
    maxList2(T, X, M2),
    M is X.

maxList2([], M, M1):-!.

maxList2([X | T], M, M1):-
    X > M,
    M1 is X,
    maxList2(T, M1, M2);
    maxList2(T, M, M2).
