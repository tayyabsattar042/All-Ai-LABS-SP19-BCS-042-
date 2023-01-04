*% Expert system for booking airplane tickets

% Define the available flights and their routes
flight(1, 'New York', 'Chicago', 'American Airlines', 500).
flight(2, 'Chicago', 'San Francisco', 'United Airlines', 700).
flight(3, 'New York', 'San Francisco', 'Delta', 1000).
flight(4, 'New York', 'Toronto', 'Air Canada', 300).
flight(5, 'Toronto', 'Chicago', 'WestJet', 250).

% Define the rules for booking flights
book_flight(Origin, Destination, Airline, Price) :-
    flight(_, Origin, Destination, Airline, Price).

book_flight(Origin, Destination, Airline, Price) :-
    flight(_, Origin, Intermediate, Airline, Price1),
    book_flight(Intermediate, Destination, Airline, Price2),
    Price is Price1 + Price2.

% Run the expert system
run_expert_system :-
    write('Enter the origin city: '),
    read(Origin),

    write('Enter the destination city: '),
    read(Destination),

    book_flight(Origin, Destination, Airline, Price),
    write('The cheapest flight from '),

    write(Origin),
    write(' to '),

    write(Destination),
    write(' is with '),

    write(Airline),
    write(' and costs $'),
    write(Price),
    !.

run_expert_system :-
    write('No flights found that go from the origin to the
    destination.').











