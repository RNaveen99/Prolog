% Write a program in PROLOG to implement towerofhanoi (N) where N represents the number of discs

go:-
    write('Enter number of Disks : '),
    read(N),
    toh(N, 'A', 'B', 'C').

toh(1, From, To, Aux):-
    inform(1, From, To).

toh(N, From, To, Aux):-
    X is N - 1,
    toh(X, From, Aux, To),
    inform(N, From, To),
    toh(X, Aux, To, From).

inform(D, X, Y):-
    write('Move Disk '),
    write(D),
    write(' From '),
    write(X),
    write(' To '),
    write(Y), nl.

:- initialization(go).    