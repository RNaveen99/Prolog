% Write a Prolog program to implement maxlist(L, M) so that M is the maximum number in the list.

maxList([H | T], M):-
    maxList(T, H, M).

maxList([], M, M):-!.

maxList([H | T], M, M2):-
    H > M,
    M1 is H,
    maxList(T, M1, M2);
    maxList2(T, M, M2).
