/*

	Count the non empty trees and multiply that 
    number by 2 
    
    leaves(tree(a, tree(b,tree(d,void,void),void), tree(c,void,void)), X).
    
    Return -> X = 4
    
    leaves(tree(a, void, tree(b,void,void)),X) 
    will return 2 

*/


% 1. Since this node is EMPTY - no child we will not count it. 
leaves_help(tree(_,void,void),0).

% 2. Case where a node have two child - THIS NODE IS NOT EMPTY SO COUNT IT 
leaves_help(tree(_,L,R),N):-
    leaves_help(L,N1),
    leaves_help(R,N2),  
    N is N1 + N2 + 1.

% 3. Case where a node have Right child - THIS NODE IS NOT EMPTY SO COUNT IT 
leaves_help(tree(_,void,R),N):-
    leaves_help(R,N1),  
    N is N1  + 1.

% 4. Case where a node have Left child - THIS NODE IS NOT EMPTY SO COUNT IT 
leaves_help(tree(_,L,void),N):-
    leaves_help(L,N1),
    N is N1 + 1.

% The function we are going to call - Get the non leaves and multiple by 2
leaves(X,N):-
    leaves_help(X,N1),
    N is N1 * 2.
