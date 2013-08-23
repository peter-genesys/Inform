"StarWords" by Campbell Burgess

The training room is a room. "A place to practice jedi skills.  There is a door to the north and an exit to the south". 

A battery is a kind of thing. A battery has a number called charge. The charge of a battery is usually 15.


A bench is in the training room.  "There is a bench by the wall."   The description of the bench is "It is an ordinary bench with two drawers, left and right".
A left drawer is a container that is closed and openable.  A left drawer is part of the bench. A D battery is a battery in the left drawer.
A right drawer is a container that is closed and openable.  A right drawer is part of the bench. The light sabre is in the right drawer.


An enemy is a kind of man.
A friendly is a kind of man.
 

Drong is a friendly in the training room.  "Drong is here."
The maximum hit points of Drong is 25.

Yoda is a friendly in the training room.  "Yoda is here."
The maximum hit points of Yoda is 100.

[Instead of attacking Yoda, say "No way!"]


[A light sabre is here. "A light sabre is discarded nearby"]


A dead end is a kind of room with printed name "Dead End" and description "This is a dead end. You'll have to go back the way you came." A dead end is usually dark.

The closet is a dead end.  The closet is north of the training room. 

The Arena is a room. "Sand, blood, iron. These festivals are normally held on hot days, but the sun has gone behind a cloud and fat drops of rain now and then spatter the arena floor." 

The Arena is south of the training room.  The Arena is dark.

The clone warrior is an enemy in the Arena. "A clone warrior faces you, wielding [a list of weapons carried by the clone warrior]."
The bounty hunter is an enemy in the Arena. "A bounty hunter circles you, pointing [a list of weapons carried by the bounty hunter]."



Section 1 - Hit Points

A person has a number called maximum hit points. 
A person has a number called current hit points.
A person has a number called damage multiplier. A damage multiplier is usually 1.
[The damage multiplier of the player is 1. ]
The maximum hit points of the player is 35. The maximum hit points of the clone warrior is 25.  The maximum hit points of the bounty hunter is 25.
[The damage multiplier of the clone warrior is 1. 
The damage multiplier of the bounty hunter is 1. ]


[In our simpler version of this example we set the current hit points by hand, but in a game with many characters this would get dull and repetitive, so here we'll use a "when play begins" to set all current hit point values automatically to maximum:]

When play begins: 
	repeat with victim running through people: 
		now the current hit points of the victim is the maximum hit points of the victim - 5

Definition: a person is dead if his current hit points are less than 0.

Section 2 - Diagnosis

Diagnosing is an action applying to one visible thing. Understand "diagnose [something]" as diagnosing.
Check diagnosing: 
    if the noun is not a person, say "Only people can have diagnoses." instead.
Carry out diagnosing: 
    say "[if the noun is the player]You have[otherwise][The noun] has[end if] [current hit points of the noun] out of a possible [maximum hit points of the noun] hit points remaining."

Section 3 - Weapons

A weapon is a kind of thing. A weapon has a number called the maximum damage. The maximum damage of a weapon is usually 4.
The clone warrior carries a weapon called a laser rifle. The maximum damage of the laser rifle is 7. The clone warrior carries a weapon called a blaster. The maximum damage of the blaster is 5.
[The player carries a weapon called a mace. The maximum damage of the mace is 3.]

The bounty hunter carries a weapon called a shock rifle. The maximum damage of the shock rifle is 7. The bounty hunter carries a weapon called a bounty blaster. The maximum damage of the bounty blaster is 5.

 
[A sabre is a kind of thinghere. "A light sabre is discarded on the ground."  The sabre is unlit.
The sabre has a handle.  The handle has a green button and a red button.]
 

Section 4 - Attacking it with

Understand the commands "attack" and "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" and "strike" as something new.

Attacking it with is an action applying to one visible thing and one carried thing. Understand "attack [someone] with [something preferably held]" as attacking it with.

Understand the commands "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" and "strike" as "attack".

[oringal code][
The attacking it with action has a number called the damage inflicted.
Setting action variables for attacking something with something: 
	if the second noun is a weapon: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 1 and the maximum attack.
		 
Check an actor attacking something with something (this is the can't attack with something that isn't a weapon rule): 
	if the second noun is not a weapon: 
		if the actor is the player, say "[The second noun] does not qualify as a weapon."; 
		stop the action.
		]
		[
Check an actor attacking something with something (this is the can't attack a non-person rule): 
	if the noun is not a person: 
		if the actor is the player, say "[The noun] has no life to lose."; 
		stop the action.]
		[
Carry out an actor attacking something with something (this is the standard attacking it with a weapon rule): 
	decrease the current hit points of the noun by the damage inflicted; 
	if the noun is dead, remove the noun from play.
	]
[commented out to check failure]

The attacking it with action has a number called the damage inflicted.
Setting action variables for attacking something with something: 
	if the second noun is a weapon: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 0 and the maximum attack times the damage multiplier of the actor;
	otherwise:
		now the damage inflicted is 0.

Check an actor attacking something with something (this is the can't attack with something that isn't a weapon rule): 
	if the second noun is not a weapon: 
		if the actor is the player, say "[The second noun] is NOT a weapon."; 
		stop the action.
Check an actor attacking something with something (this is the can't attack a non-person rule): 
	if the noun is not a person: 
		if the actor is the player, say "[The noun] has no life to lose."; 
		stop the action.

Carry out an actor attacking something with something (this is the standard attacking it with a weapon rule): 
	decrease the current hit points of the noun by the damage inflicted; 
	if the noun is dead, remove the noun from play.
	

[put original code in
Report attacking a dead person with something (this is the death-report priority rule): 
	say "You attack with [the second noun], killing [the noun]!" instead.
Report attacking someone with something (this is the normal attacking report rule): 
	say "You attack [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
Report someone attacking the player with something when the player is dead (this is the player's-death priority rule): 
	say "[The actor] attacks you with [the second noun], finishing you off!"; 
	end the story; 
	stop the action.
Report someone attacking the player with something (this is the standard report someone attacking the player with rule): 
	say "[The actor] attacks you with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
Report someone attacking something with something (this is the standard report attacking it with rule): 
	say "[The actor] attacks [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
]
[Commented out this code to figure out why it died]

[Report attacking a friendly person: 
	say "You feint with [the second noun], surpising [the noun]!" instead.]
Report attacking a dead person with something (this is the death-report priority rule): 
	say "You attack with [the second noun], killing [the noun]!" instead.
Report attacking someone with something (this is the normal attacking report rule): 
	if the noun is friendly:	
		if the sabre is switched on:
			say "[The noun] [one of]paries your thrust[or]blocks your advance[or]drops under your blow[or]is surprised momentarilly by your feint, but recovers[at random] [one of]with a smile and a playful kick in the ass[or]and suggests you loosen your grip[or]then tells you to trust the force[at random].";
			if the current hit points of the player < the maximum hit points of the player:
				increment the current hit points of the player;
				if the current hit points of the player >= the maximum hit points of the player:
					if the damage multiplier of the player is 1:
						increment the damage multiplier of the player;
						say "[The noun] says 'You're training is now complete!'.  The force feels stronger in you now.";
		otherwise:
			say "With what?";
	otherwise:
 		if damage inflicted is 0:
			say "You missed [the noun]";
		otherwise:
			say "You attack [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
			
[Report attacking someone with something (this is the normal attacking report rule): 
	 if damage inflicted is 0:
		say "You missed [the noun]";
	otherwise:
		say "You attack [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!" instead.]

Report someone attacking the player with something when the player is dead (this is the player's-death priority rule): 
	say "[The actor] attacks you with [the second noun], finishing you off!"; 
	end the story; 
	stop the action.
	
Report someone attacking the player with something (this is the standard report someone attacking the player with rule): 
	say "[The actor] attacks you with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
Report someone attacking something with something (this is the standard report attacking it with rule): 
	say "[The actor] attacks [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
	



When play begins: 
	now the left hand status line is "You: [current hit points of player]";
	now the right hand status line is "Clone: [current hit points of clone warrior] Hunter: [current hit points of bounty hunter]".
[Every turn (this is the enemy looking rule):
	if the player is in the arena:
		attacker is a random enemy;
		say "[attacker] is looking at you".	]
		
[Every turn:
	if the clone warrior is not dead:
		say "the clone is alive".]
		
[Every turn (this is the clone warrior-attack rule): 
	if the player is in the arena:
		say "lets attack";
		if the clone warrior is not dead, try the clone warrior attacking the player with a random weapon which is carried by the clone warrior.]

[Every turn (this is the clone warrior-attack rule): 
	if the clone warrior is not dead, try the clone warrior attacking the player with a random weapon which is carried by the clone warrior.]

Every turn (this is the enemy-attack rule): 
	if the player is in the arena and the light sabre is switched on:
		if the clone warrior is not dead, try the clone warrior attacking the player with a random weapon which is carried by the clone warrior;
		if bounty hunter is not dead, try the bounty hunter attacking the player with a random weapon which is carried by the bounty hunter.		
[
Every turn (this is the bounty hunter-attack rule): 
	if the player is in the arena and the light sabre is switched on and bounty hunter is not dead, try the bounty hunter attacking the player with a random weapon which is carried by the bounty hunter.
Test gladiator with "hit gladiator with mace / kill gladiator / drop mace / attack gladiator / attack gladiator with mace / g / g".]

Section 5 - The Light Sabre


A device is a kind of weapon.

An on/off button is part of the light sabre.
 
test table with "open left drawer / open right drawer / get D battery / get sabre / kill yoda with sabre"

Every turn:
	repeat with hollow running through battery compartments:
		if the hollow is part of a switched on device (called the machine):
			if a battery (called cell) is in the hollow:
				decrement the charge of the cell;
				carry out the warning about failure activity with the machine;
				if the cell is discharged, carry out the putting out activity with the machine;
			otherwise:
				carry out the putting out activity with the machine.

Warning about failure of something is an activity.

Rule for warning about failure of a device (called the machine):
	if a random battery compartment which is part of the machine contains a battery (called the power source):
		if the charge of the power source is 2, say "[The machine] is obviously going to go out quite soon."

Putting out something is an activity.

Rule for putting out a device (called the machine):
		say "[The machine] loses power and switches off![line break]";
		silently try switching off the machine.

A battery compartment is a kind of container. A battery compartment is usually closed and openable. One battery compartment is part of every device. Instead of inserting something which is not a battery into a battery compartment, say "Only batteries should go in a battery compartment."

[And to get rid of annoying messages like "Which would you like to close, the flashlight or the flashlight's battery compartment?" when only the compartment is closable, we might add some understanding instructions:]

Understand "turn on [device]" as switching on.

Understand "turn off [device]" as switching off.

Understand "open [openable closed thing]" as opening.

Understand "close [openable open thing]" as closing.

Understand "put [something] in [container]" as inserting it into.



Instead of pushing an on/off button which is part of a switched on device (called the machine): 
	try switching off the machine.
Instead of pushing an on/off button which is part of a switched off device (called the machine): 
	try switching on the machine.
[The follow code causes a runtime error - too many rule books - we can get by without it.]	
[Instead of switching on an on/off button which is part of a device (called the machine): 
	try switching on the machine.
Instead of switching off an on/off button which is part of a device (called the machine): 
	try switching off the machine.]
 

Instead of opening a device, try opening a random battery compartment which is part of the noun. Instead of closing a device, try closing a random battery compartment which is part of the noun. Instead of inserting a battery into a device, try inserting the noun into a random battery compartment which is part of the second noun.

Instead of switching on an empty device:
	say "Nothing happens, perhaps because there isn't a charged battery in [the noun]."

Instead of switching on a battery compartment which is part of a device (called the power user), try switching on the power user.

Definition: a device is empty:
	if a random battery compartment which is part of it contains a battery (called the power source):
		if the power source is discharged, yes;
		no;
	yes.

Definition: a battery is discharged if its charge < 1.


A light source is a kind of device. 
Carry out switching on a light source: now the noun is lit; say "It is now on."
Carry out switching off a light source: now the noun is unlit.; say "It is now off."

The flashlight is a light source. 

The cassette recorder is a device. Every turn: if the cassette recorder is switched on, say "The cassette recorder hisses faintly."
 
The light sabre is a light source.  The maximum damage of the light sabre is 0.

After switching on light sabre:
	Now the maximum damage of the light sabre is 10.
	
After switching off light sabre:
	Now the maximum damage of the light sabre is 0.


The description of the Light Sabre is "[if switched on]It's blade is glowing [one of]green[or]blue[or]purple[at random].[otherwise]The light sabre has in on/off switch at the hilt.[end if]"
 

Rule for warning about failure of the cassette recorder:
	if a random battery compartment which is part of the cassette recorder contains a battery (called the power source):
		if the charge of the power source is 2, say "The hiss from [the cassette recorder] begins to warble ominously."

The player wears a backpack. The backpack is openable. In the backpack is the flashlight and the cassette recorder.

The description of the cassette recorder is "Useful both for recording your notes and for capturing any odd ghostly sounds you may hear."

The description of the backpack is "An old familiar pack, which you know so well that you can find all its pockets and take things in and out of it in pitch darkness. To avoid it showing up oddly in photographs, it is entirely black, with no shiny or metallic attachments."

The description of the flashlight is "You bought a new one just for this occasion, because you were worried about bringing something too small or light. This is a heavy-duty flashlight with an adjustable-focus beam. The case is made of metal, rather than plastic, and there is a spare light-bulb inside as well. You've put a band of masking tape around the handle and written in your initials in red marker.

There is a piece of red cellophane attached to the business end of the flashlight to keep it from being overly bright."

The red cellophane is part of the flashlight.

Instead of doing something to the red cellophane: say "You need the cellophane on the flashlight so that using it does not completely destroy your night vision."

Thirtieth Street Station is a room. "A huge, high, rectangular room with coffered ceilings, which looks grand but mostly makes you feel lonely and small. There are long benches in rows down the middle of the room, and an information desk with the train times, and a series of ticket windows, none of which matters very much at the moment."

The benches are an enterable supporter. They are scenery in the Station. The information desk is scenery in the Station. Some ticket windows are scenery in the Station. Instead of examining scenery in the Station: say "You're fairly sure that whatever is going on here has nothing to do with [the noun]." Understand "window" as ticket windows.

The mural is fixed in place in Thirtieth Street. "At the north side of the station is a particularly pointless and empty annex to the main room. It is dominated by a huge relief of sorts, and this is what you remember." Understand "metal" or "relief" or "huge" as the mural. The description of the mural is "It is both stylized and confusing, but you think it might be supposed to represent the various tasks and occupations of Philadelphia's population. The portions closer to the ground look as though they have recently been subjected to a light dusting of talcum powder. No unusual prints are evident."

The wind chimes are fixed in place in Thirtieth Street. "Carefully attached to the wall with a piece of duct tape and a hook is a light-weight set of wind chimes. Someone else has been here before you, it seems." The description is "Several of your friends use wind chimes as a sort of ghost alarm, since ghosts sometimes cause very localized movements of air when there is no natural breeze."

[And this last bit, borrowed from the chapter on Understanding, adds some special instructions to help Inform decide when the player is likely to be referring to a compartment and when he's likely to be referring to the device itself.]

Does the player mean doing something other than searching to a battery compartment: it is unlikely. [We discourage Inform from choosing a compartment when the player uses just the name of a device or the word 'battery'.]

[We also need to deal with commands like PUT BATTERY IN FLASHLIGHT, where Inform might construe BATTERY as the D battery, the flashlight's battery compartment, or the cassette recorder's battery compartment -- and might also construe FLASHLIGHT as either the flashlight's battery compartment or the flashlight itself.]

Does the player mean inserting into a battery compartment:
	if the noun is nothing:
		it is very likely;
	otherwise:
		make no decision.

Does the player mean inserting a battery compartment into: it is very unlikely.

Does the player mean inserting something into a device: it is unlikely.

Does the player mean searching a battery compartment: it is very likely.
 
Test me with "test first / test second".

Test first with "i / open flashlight compartment / put battery in it / turn on flashlight / take d battery / open cassette compartment / turn on cassette / put battery in cassette compartment / turn on cassette / z / z / z / z".

Test second with "get d battery / put d battery in flashlight compartment / turn on flashlight / z / z / z / z / z / z / turn off flashlight / z / z / turn on flashlight / z".

Test sabre with "get sabre / open it / put battery in it / press button"

test fight with "attack yoda with sabre / again / again / again /again/ s"

test all with "test table / test sabre / test fight"




