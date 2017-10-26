oouuttrr_length([],0).
oouuttrr_length([_|T],N):-oouuttrr_length(T,N1),N is N1 + 1.

ccccooommmpppaarree([],[],[],0).
ccccooommmpppaarree([],L,L,Lenght):-
    oouuttrr_length(L,Lenght).
ccccooommmpppaarree(L,[],L,Lenght):-
    oouuttrr_length(L,Lenght).
    
ccccooommmpppaarree([H|T],[H1|T1],[H1,H|R],Length):-
    H > H1,
    ccccooommmpppaarree(T,T1,R,Length1),
	Length is Length1 + 2.

ccccooommmpppaarree([H|T],[H1|T1],[H,H1|R],Length):-
    H =< H1,
    ccccooommmpppaarree(T,T1,R,Length1),
	Length is Length1 + 2.
