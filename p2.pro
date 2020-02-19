% Max of 2 numbers
go:-
    write('Enter first number : '),
    read(A),
    write('Enter second number :'),
    read(B),
    max(A, B, C), nl,
    write('Max is = '),
    write(C).

max(A, B, C):- A > B -> C = A ; C = B.

:- initialization(go).
