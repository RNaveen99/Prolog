go:-
    write('Enter a List'), nl,
    createList(L1),
    write('List entered is '),
    printList(L1), nl.

enterElement(X):-
    write('Enter Element: '),
    read(X).

createList(L1):-    
    enterElement(X),
    createList(X, L1).

createList(-1, []):- !.

createList(X, [X|T]):-
    enterElement(X1),
    createList(X1, T).

printList([]).

printList([H|T]):- 
    write(' '),
    write(H),
    printList(T).

% :-initialization(go).

    