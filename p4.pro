% Write a program in PROLOG to implement generate_fib(N,T) where T represents the Nth term of the fibonacci series.

generate_fib(N, T):-
    fib(N, T).

fib(0, 0):-!.

fib(1, 1):-!.

fib(2, 1):-!.

fib(N, R):-
    N > 2,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, R1),
    fib(N2, R2),
    R is R1 + R2.