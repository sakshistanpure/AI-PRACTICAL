%facts

driver(sakshi, kharsundi , vita).
driver(sejal, sangali , karad).
driver(sanjay, satara , goa).

passenger(hitesh, kharsundi , vita).
passenger(smita, sangali , karad).
passenger(sakhi, satara , goa).

%rule

car_pulling(Driver,Passenger):-
driver(Driver,From,To),
passenger(Passenger,From,To).
