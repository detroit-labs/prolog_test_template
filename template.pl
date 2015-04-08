add(L,R, Result) :-
Result is L + R.

subtract(L,R, Result) :-
Result is L - R.

listsum([], 0).

listsum([Head|Tail], Result) :-
listsum(Tail, SumOfTail),
Result is Head + SumOfTail.

:- begin_tests(test).

test(add) :-
add(1,2,Sum),
Sum =:= 3.

test(subtract) :-
subtract(2,1,Sum),
Sum =:= 0.

test(listsumEmpty) :-
listsum([], X),
assertion(X == 0).

test(listsumEmpty) :-
listsum([1,2,3], X),
X =:= 4.

:- end_tests(test).