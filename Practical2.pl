%user defined
like(sakshi,comedy).
like(sejal,action).

%movie database
movie(gadhavach_lagn,comedy).
movie(dj,action).

%rule
recommend(USER,MOVIE):-
like(USER,CATEGORY),
movie(MOVIE,CATEGORY).