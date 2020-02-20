% Write a Prolog program to implement two predicates evenlength(List) and oddlength(List) so that they are true if their argument is a list of even or odd length respectively.

even(L):-
    evenLength(L).
odd(L):-
    oddLength(L).

evenLength([]):-!.

evenLength([_ | T]):-
    oddLength(T).

oddLength([_ | T]):-
    evenLength(T).