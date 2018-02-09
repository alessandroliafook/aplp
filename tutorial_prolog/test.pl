ultimo([X], Y) :- Y = X.
ultimo([_|T], Y) :- ultimo(T, Y). 

pertence(X, Y) :- Y = [X|_].
pertence(X, Y) :- Y = [_|T], pertence(X, T).

soma([H], X) :- X is H.
soma([H|T], X) :- soma(T, Z), X is H + Z.

tamanho([], X) :- X is 0.
tamanho([_|T], X) :- tamanho(T, Y), X is Y + 1.  

remove(H, [H|T], T).
remove(X, [H|T], Y) :- Y = [H | Z], remove(X, T, Z). 

remove_ocorrencia(_, [], []).
remove_ocorrencia(X, [X|T], Y) :- Y = Z, remove_todos(X, T, Z).
remove_ocorrencia(X, [H|T], Y) :- Y = [H | Z], remove_todos(X, T, Z).

remove_todos([], []).
remove_todos([_|T], L) :- remove_todos(T, L).

concatena([], L, L).
concatena([H|T], L1, L2) :- L2 = [H | L3], concatena(T, L1, L3).

add_final(X, [], [X]).
add_final(X, [H | T], L) :- L = [H | L2], add_final(X, T, L2). 

divide(0, L, [], L).
divide(X, [H|T], [H|T1], L) :- Y is X - 1, divide(Y, T, T1, L).

metade(L, L2, L3) :- tamanho(L, X), divide(X/2, L, L2, L3).

merge(L, [], L).
merge([], L, L).
merge([H1|T1], [H2|T2], R) :- H1 =< H2, merge(T1, [H2|T2], R2), R = [H1|R2].
merge([H1|T1], [H2|T2], R) :- H1 > H2, merge([H1|T1], T2, R2), R = [H2|R2].

merge_sort([],[]).
merge_sort([H], [H]).
merge_sort([H1, H2], [H1, H2]) :- H1 =< H2.
merge_sort([H1, H2], [H2, H1]) :- H1 > H2.
merge_sort(L, R) :- metade(L, M1, M2), merge_sort(M1, R1), merge_sort(M2, R2), merge(R1, R2, R). 

:- initialization(main).
main :-
	read(L), nl,
	metade(L, L1, L2),
	write(L1), nl,
	write(L2), nl,
	merge(L1, L2, L3),
	merge_sort(L, L4),
	write(L3), nl,
	write(L4), nl,
	halt(0).
