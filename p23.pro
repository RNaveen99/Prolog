% Write a program in PROLOG to implement merge (L1, L2, L3) where L1 is first ordered list and L2 is second ordered list and L3 represents the merged list.

merge(L1, L2, L3):-
    merge2(L1, L2, L3).

merge2([], [], []).

merge2([], L2, L2).

merge2(L1, [], L1).

merge2([H1 | T1], [H2 | T2], [H3 | T3]):-
    H1 < H2,
    H3 is H1,
    merge2(T1, [H2 | T2], T3);
    H3 is H2,
    merge2([H1 | T1], T2, T3).
    
