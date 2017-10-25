
/*
	
    Two very simple way to implement member

*/

% 1. Base case when Element is the head of the list
memeber_recursive(E,[E|_]).

% 2. Case when the list is not EMPTY and Head is not THE ELEMENT
memeber_recursive(E,[H|T]):-
    H \= E,
    memeber_recursive(E,T).

% 3. More elegant way of doing things. 
memeber_append(E,L):_

	% Is there an element in the list? 
	append(_,[E|_],L).
