% Write a Prolog program to implement power (Num,Pow, Ans) : where Num is raised to the power Pow to get Ans.

power(_, 0, 1):-!.

power(N, 1, N):-!.

power(N, P, R):-
    N > 1,
    P1 is P - 1,
    power(N, P1, R1),
    R is N * R1.