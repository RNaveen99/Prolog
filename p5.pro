% Write a Prolog program to implement GCD of two numbers.

gcd(N, 0, N):-!.

gcd(N1, N2, R):-
    N is mod(N1, N2),
    gcd(N2, N, R1),
    R is R1.