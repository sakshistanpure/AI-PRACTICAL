%fact
likes(sakshi,anjali).
likes(anjali,sakshi).
likes(sejal,kajal).

%rule
friendship(A,B):-
    likes(A,B),
    likes(B,A).
