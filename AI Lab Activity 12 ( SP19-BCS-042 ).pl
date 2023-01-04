/*women(mia).
woman(jody).
woman(yolanda).
playAirGuiter(jody).*/

/*female(rehna).
female(sadia).
female(aneela).

male(sohaib).
male(john).
male(mohsin).
male(qudrat).
*/


/*listensToMusic(mia).
happy(yolanda).
playsAirGuitar(mia) :- listensToMusic(mia).
playsAirGuitar(yolanda) :- listensToMusic(yolanda).
%listensToMusic(yolanda):- happy(yolanda).
*/

happy(vincent).
listensToMusic(butch).
playsAirGuitar(vincent):-
    listensToMusic(vincent),
    happy(vincent).
playsAirGuitar(butch):-
    listensToMusic(butch).
