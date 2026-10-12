% City connections
edge(pune, mumbai).
edge(pune, goa).
edge(mumbai, hyderabad).
edge(hyderabad, bangalore).
edge(goa, bangalore).

% BFS algorithm
bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

bfs_queue([[Goal|Rest]|_], Goal, [Goal|Rest]).

bfs_queue([[City|Path]|Queue], Goal, Result) :-
    findall([Next,City|Path],
            (edge(City, Next),
             \+ member(Next, [City|Path])),
            NewPaths),
    append(Queue, NewPaths, NewQueue),
    bfs_queue(NewQueue, Goal, Result).
