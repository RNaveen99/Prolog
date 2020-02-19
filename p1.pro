% Sum of 2 numbers
go:-
    write('Enter first number : '),
    read(A),
    write('Enter second number :'),
    read(B),
    sum(A, B, C), nl,
    write('Sum is = '),
    write(C).

sum(A, B, C):- C is A + B.

:- initialization(go).
