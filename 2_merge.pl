
/*
	Merge - we need to combine two list in specified order and 
    get the length of the list as well.
	
    mmerge([10,100],[5,30,300],Length,Result)
    
    returns Result  = [5,10,30,100,300] and 5
    
    mmerge2([10,100],[5,30,300],Length,Result)
    
    returns Result  = [5,10,30,100,300] and 5
    
*/

% Our length recursive
our_length([_],1).
our_length([_|T],N):-
    our_length(T,N1),
    N is N1 + 1. 


% 1. mmerge simple base case 
% a. The main case of the merge 
mmerge(L1,L2,Length,Result):-
    
    % b. Call the helper function
    mmerge_help1(L1,L2,Result),
    our_length(Result,Length).
    
% NOTE: We Alternate the list we are getting the element 
% by changing the List we query from. 

% c. mmerge_help1 takes the SECOND LIST element!
mmerge_help1(L1,[],L1).
    
mmerge_help1(L1,[H|T],Return_array):-
    % mmerge_help1 CALL mmerge_help2
    mmerge_help2(L1,T,Return_array1),
    append([H],Return_array1,Return_array).
    
% d. mmerge_help2 takes the FIRST LIST element!
mmerge_help2([],L2,L2).

mmerge_help2([H|T],L2,Return_array):-
    % mmerge_help2 CALL mmerge_help1
    mmerge_help1(T,L2,Return_array1),
    append([H],Return_array1,Return_array).


% 2. More elegant way of doing
mmerge2(L1,L2,Length,Result):-
    mmerge_help(L1,L2,Result),
    our_length(Result,Length).
    
% Rather than making a custom function for alternative 
% list change - just SWITCH THE VARIABLE PLACE 
% 
% a. Only query from the second List
mmerge_help(L,[],L).

% b. CHANGE THE LOCATION OF VARIABLE 
mmerge_help(L,[H|T],Return_array):-
    
    % c. HERE! 
    mmerge_help(T,L,Return_array1),
    append([H],Return_array1,Return_array).
    
    
    
    
    
    
    
    
