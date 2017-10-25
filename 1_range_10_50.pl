/*
	
    1. This questions are owned by the professor so I cannot 
    	copy exact question - So BIT different
        
     2. Simplest questions that I was able to find - if you are good at prolog 
     	you dont need to listen to this video. 
	
*/

% Range Ten to Fifthy 
% Given two list L1 and L2 - solve_range_ten_fifthy_recursive will 
% query the list alternativly and get the length of the final list 
% if the element is 10 <= S <= 50 - than we are going to include it in our list. 

% 1. When we reach the empty list - give back recusive
solve_range_ten_fifthy_recursive([],[]).

% 2. Case when the element (HEAD) is 10 <= Head <= 50 
solve_range_ten_fifthy_recursive([H|T],R):-
    H >= 10, H=<50,
    solve_range_ten_fifthy_recursive(T,R1),
    append([H],R1,R).

% 3. Case when H is not 10 <= Head
solve_range_ten_fifthy_recursive([H|T],R):-
    not(H >= 10),
    solve_range_ten_fifthy_recursive(T,R).

% 4. Case when H is not Head <= 40
solve_range_ten_fifthy_recursive([H|T],R):-
   	not(H=<50),
    solve_range_ten_fifthy_recursive(T,R).

/*------- Acc --------*/

% 1. Acc base case
solve_range_ten_fifthy_acc([],Acc,Acc).

solve_range_ten_fifthy_acc([H|T],R,Acc):-
    H >= 10, H=<50,
    solve_range_ten_fifthy_acc(T,R,[H|Acc]).

solve_range_ten_fifthy_acc([H|T],R,Acc):-
    not(H >= 10),
    solve_range_ten_fifthy_acc(T,R,Acc).

solve_range_ten_fifthy_acc([H|T],R,Acc):-
    not(H =< 50),
    solve_range_ten_fifthy_acc(T,R,Acc).
