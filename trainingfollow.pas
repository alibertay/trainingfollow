program trainingfollow;
uses crt;

type
sport = record
	name: string;
	age, pushup, shuttle: integer;
	time: real;

end;

var
athlete: array[0..500] of sport;
loopkey: integer;

procedure newregister;

var
i: integer;

begin
i := 0;
write('Member number: ');readln(i);
	write('Member name: ');readln(athlete[i].name);
	write('Age: ');readln(athlete[i].age);
	write('Succesfull! Member Name: ', athlete[i].name, ' Member Age: ', athlete[i].age, ' ');

end; 

procedure training;

var
i: integer;
npushup: integer;
nshuttle: integer;
ntime : real;
begin
i := 0;
write('Member number: ');readln(i);
	write('Push-ups: ');readln(npushup);
	athlete[i].pushup := athlete[i].pushup + npushup;
	
	write('Shuttles: ');readln(nshuttle);
	athlete[i].shuttle := athlete[i].shuttle + nshuttle; 
	
	write('Time per second: '); readln(ntime);
	athlete[i].time := athlete[i].time + ntime;
	
	write('Adding to: ', athlete[i].name);
	write('Succesfull! Push-ups: ', athlete[i].pushup, ' Shuttles: ', athlete[i].shuttle, ' Time: ', athlete[i].time:100:2, ' second. ');
end;

procedure search;

var
i: integer;
key: integer;
begin
i:= 0;
key := 3;
while (key <> 0) do
begin
write('0 - Main menu 1 - trainings, 2 - information about member: ');readln(key);
	if (key = 1) then
	begin
		write('Member number: ');readln(i);
		write('Total push ups: ', athlete[i].pushup, ' Total shuttles: ', athlete[i].shuttle, ' Total time: ', athlete[i].time:100:2, 'second. ')
	end
	else if (key = 2) then
	begin
		write('Member number: ');readln(i);
		write('Member name: ', athlete[i].name, ' Member age: ', athlete[i].age);
	end
	else if (key = 0) then
	begin
	write('Going to main menu.. ');
	end
	else
	begin
		write('Invalid!')
	end;
	
	end; 

end;

begin
clrscr;
loopkey := 5;
while (loopkey<>0) do
begin
write('0 - Quit, 1 - Add new member, 2 - Add new training, 3 - Search');readln(loopkey);
	if (loopkey = 1) then
	begin
	newregister;
	end
	else if (loopkey = 2) then
	begin
	training;
	end
	else if (loopkey = 3) then
	begin
	search;
	end
	else if (loopkey = 0) then
	begin
	write('You lose eveything... ')
	end
	else
	begin
	write('Invalid!')
	end;
end;
readln;
end.
