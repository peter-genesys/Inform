"StarWords" by Campbell Burgess


Part 1 - The setup

Section 1 - Hit Points, Damage Multiplier, XP

A person has a number called maximum hit points. 
A person has a number called current hit points.
A person has a number called XP.  
A person has a number called Max XP.
A person has a number called damage multiplier. A damage multiplier is usually 1.

The maximum hit points of the player is 35. 
The maximum hit points of the clone warrior is 25.  
The maximum hit points of the bounty hunter is 25.

The XP of the player is 0. 
The Max XP of the player is 40. 

When play begins: 
	repeat with victim running through people: 
		now the current hit points of the victim is the maximum hit points of the victim - 5

Definition: a person is dead if his current hit points are less than 0.
Definition: a person is a master if his XP is greater than his Max XP.

Section 2- Relationships

[Allies relates people to each other.
Foes relates people to each other.
]
[Friend relates people to one person[ in groups]. The verb to like (he likes, they like, he liked, he is liked) implies the friend relation.
Foe relates people to one person[ in groups]. The verb to hate (he hates, they hate, he hated, he is hated) implies the foe relation.]
Follower relates one person to one person[ in groups]. The verb to follow (he follows, they follow, he followed, he is followed) implies the follower relation.

Ally relates people to each other [in groups]. The verb to help (he helps , they help, he helped, he is helped) implies the ally relation.
Enemy relates people to each other [in groups]. The verb to hinder (he hinders, they hinder, he hindered, he is hindered) implies the enemy relation.

Definition: a person is unfriendly if he hinders the player.
[Definition: a person is friendly if he helps the player.
Definition: a person is neutral if he neither helps nor hinders the player.]

A rebel is a kind of man.
An imperial is a kind of man.
[An imperial hinders a rebel.]

[An enemy is a kind of man.
A friendly is a kind of man.
A rebel is a kind of man.
A friendly is a kind of rebel.]

Persuasion rule for asking rebels to try doing something: persuasion succeeds.

When play begins:
	repeat with badguy running through imperial:
		Now badguy hinders player;
		repeat with goodguy running through rebel:
			Now badguy hinders goodguy;
		repeat with badguy2 running through imperial:
			if badguy is not badguy2:
				Now badguy helps badguy2;
	repeat with goodguy running through rebel:
		Now goodguy helps player;
		repeat with goodguy2 running through rebel:
			if goodguy is not goodguy2:
				Now goodguy helps goodguy2;

[testing relations]
[
Every turn:
	repeat with entity running through person in the location:
		repeat with character running through person in the location:
			if character is not entity:
				say "[entity] can see [character][line break]";
				if character helps entity, say "  [character] is ally[line break]";
				if character hinders entity, say "  [character] is enemy[line break]";
				if character likes entity, say "  [character] is friend[line break]";
				if character hates entity, say "  [character] is foe[line break]";
				if character follows entity, say "  l[character] is follower[line break]";
				]

Section 3 - Following

A man is either stalking or not stalking.
A man is usually not stalking.

[Yoda is not stalking.
Drong is not stalking.

Yoda helps the player.
[Drong helps Yoda.]

[Player likes Drong.]
 ]
		
Every turn: 
	repeat with actor running through person:
		if actor is not the player:
			if actor follows the player and actor is not dead:
				if the location of actor is not the location of the player:
					let the way be the best route from the location of actor to the location of the player, using doors; 
					try actor going the way.
 

Section 4 - Yoda talk

Table of Yoda Remarks 
remark
"Try not. Do or do not, there is no try."
"When you look at the dark side, careful you must be.
For the dark side looks back."
"Always pass on what you have learned."
"Train yourself to let go of everything you fear to lose."
"You think Yoda stops teaching, just because his student does not want to hear? A teacher Yoda is. Yoda teaches like drunkards drink, like killers kill."
"Secret, shall I tell you?  Grand Master of Jedi Order am I. Won this job in a raffle I did, think you? 'How did you know, how did you know, Master Yoda?' Master Yoda knows these things. His job it is."
"The dark side clouds everything. Impossible to see the light, the future is."
"In a dark place we find ourselves, and a little more knowledge lights our way."
"Once you start down the dark path, forever will it dominate your destiny, consume you it will."
"Always in motion is the future."
"Size matters not. Look at me. Judge me by my size, do you?  Hmm?  Hmm.  And well you should not.  For my ally is the Force, and a powerful ally it is. Life creates it, makes it grow. Its energy surrounds us and binds us. Luminous beings are we, not this crude matter. You must feel the Force around you; here, between you, me, the tree, the rock, everywhere, yes. Even between the land and the ship."
"A Jedi's strength flows from the Force."
"Fear is the path to the dark side. Fear leads to anger. Anger leads to hate. Hate leads to suffering."
"Named must your fear be before banish it you can."
"You will find only what you bring in."
"Yes, a Jedi's strength flows from the Force. But beware of the dark side. Anger, fear, aggression; the dark side of the Force are they. Easily they flow, quick to join you in a fight. If once you start down the dark path, forever will it dominate your destiny, consume you it will, as it did Obi-Wan's apprentice."
"A Jedi must have the deepest commitment, the most serious mind. This one a long time have I watched. All his life has he looked away... to the future, to the horizon. Never his mind on where he was. Hmm? What he was doing. Hmph. Adventure. Heh. Excitement. Heh. A Jedi craves not these things."
"Always two there are, a master and an apprentice."
"Already know you that which you need."
"You will know ...the good from the bad… when you are calm, at peace. Passive. A Jedi uses the Force for knowledge and defense, never for attack."
"Many of the truths that we cling to depend on our point of view."
"A Jedi must have the deepest commitment, the most serious mind. "
"And well you should not. For my ally in the Force. And a powerful ally it is. Life creates it, makes it grow. It's energy surrounds us and binds us. Luminous beings are we...(Yoda pinches Luke's shoulder)...not this crude matter. (a sweeping gesture) You must feel the Force around you. (gesturing) Here, between you...me...the tree...the rock...everywhere! Yes, even between this land and that ship!"
"Through the Force, things you will see. Other places. The future...the past. Old friends long gone. "
"Clear your mind must be, if you are to find the villains behind this plot."
"I cannot teach him. The boy has no patience."
"Truly how wonderful the mind of a child is."
"You must unlearn what you have learned."
"Death is a natural part of life. Rejoice for those around you who transform into the Force. Mourn them do not. Miss them do not. Attachment leads to jealously. The shadow of greed, that is."
"To answer power with power, the Jedi way this is not. In this war, a danger there is, of losing who we are."
"Ready are you? What know you of ready? For eight hundred years have I trained Jedi. My own counsel will I keep on who is to be trained. A Jedi must have the deepest commitment, the most serious mind. This one a long time have I watched. All his life has he looked away... to the future, to the horizon. Never his mind on where he was. Hmm? What he was doing. Hmph. Adventure. Heh. Excitement. Heh. A Jedi craves not these things. You are reckless."
"Blind we are, if creation of this clone army we could not see."
"Ohhh. Great warrior. Wars not make one great."

[Every turn when a random chance of 1 in 2 succeeds:
	if player can see yoda and yoda helps player:
    		choose a random row in the Table of Yoda Remarks; 
		say "Yoda says '[remark entry]'[paragraph break]".]


 



Part 2 - Training

The Training Room is a room. "A place to practice jedi skills.  There is a door to the north and an exit to the south. There is a bench by the wall."

A dead end is a kind of room with a description "This is a dead end. You'll have to go back the way you came." A dead end is usually dark.
 
The closet is a dead end.  The closet is north of the training room. 

A battery is a kind of thing. A battery has a number called charge. The charge of a battery is usually 35.


A bench is in the training room.  The description of the bench is "It is an ordinary bench with two drawers, left and right".
A left drawer is a container that is closed and openable.  A left drawer is part of the bench. The light sabre is in the left drawer.

A right drawer is a container that is closed and openable.   A right drawer is part of the bench.  A D battery is a battery.  [4 D batteries are in the right drawer.] A D battery is in the right drawer.

The bench is scenery.

 

Drong is a rebel in the training room.  "Drong is here."
The maximum hit points of Drong is 25.
The XP of Drong is 25.

Yoda is a rebel in the training room.  "Yoda is here."
The maximum hit points of Yoda is 100.
The description of Yoda is "Yoda is respected as one of the most wise and powerful Jedi Masters in the history of the galaxy. Yoda is a master of the Force and Light Sabre combat. Yoda has served as the Grand Master of the Jedi High Council for over 700 years."
The damage multiplier of Yoda is 2.

The XP of yoda is 100.

Section 1 - Sparring with

Understand the commands "spar with" and "train with" as something new.

Sparring is an action applying to one visible thing and one carried thing. Understand "spar with [someone] with [something preferably held]" as sparring.

[Understand the commands "spar [someone] with [something]" and "train [someone] with [something]"as "sparring".]

 

The sparring action has a number called the training points.
Setting action variables for sparring: 
	if the second noun is a weapon and the noun helps the player: 
		[let the maximum TP be the maximum damage of the second noun; ]
		let the maximum TP be ( the XP of noun minus the XP of the player) divided by 10;
		now the training points is a random number between 0 and the maximum TP;
	otherwise:
		now the training points is 0.

Check an actor sparring (this is the can't spar with something that isn't a weapon rule): 
	if the actor is the player:
		if the second noun is not a weapon: 
			say "[The second noun] is NOT a weapon."; 
			stop the action;
		if the second noun is not the sabre: 
			say "[Noun] is expecting you to spar with the sabre."; 
			stop the action;
		if the sabre is not switched on: 
			say "The sabre is not on."; 
			stop the action.
Check an actor sparring (this is the can't spar a non-person rule): 
	if the noun is not a person: 
		if the actor is the player, say "[The noun] is a poor sparring partner."; 
		stop the action;
	if the noun hinders the player:
		say "[Noun] is going to play for keeps.";
		stop the action;
	if the noun does not help the player:
		say "[Noun] is not inclined to spar with you.";
		stop the action.

[Carry out an player sparring (this is the standard sparring rule): 
	if 
	increase the XP of the player by the training points;
	say "HI".]
 

[Report attacking a friendly person: 
	say "You feint with [the second noun], surpising [the noun]!" instead.]
[Report attacking a dead person with something (this is the death-report priority rule): 
	if the dead person carries something, now everything carried by the dead person is in the location; 
	say "You attack with [the second noun], killing [the noun]!" instead.]

Report sparring (this is the normal sparring report rule): 
	if the noun is Yoda:
		say "[The noun] [one of]side steps your clumsy maneuver[or]easilly evades your reach[or]performs an elegant backflip to avoid your well aimed stroke[or]strikes like a viper while seeming to hover outside your range[at random].[line break]";
		choose a random row in the Table of Yoda Remarks; 
		say "Yoda says '[remark entry]'[paragraph break]";		
	otherwise:
		say "[The noun] [one of]paries your thrust[or]blocks your advance[or]drops under your blow[or]is surprised momentarilly by your feint, but recovers[at random] [one of]with a smile and a playful kick in the ass[or]and suggests you loosen your grip[or]then tells you to trust the force[at random].";
		if the XP of the player < the Max XP of the player:
			increase the XP of the player by the training points;
			say "Your experience points increases by [training points].  ";
			if the XP of the player >= the Max XP of the player:
				if the damage multiplier of the player is 1:
					increment the damage multiplier of the player;
					[Now the damage multiplier of the player is 2;]
					say "[The noun] says 'You're training is now complete!'.  The force feels stronger in you now.  Drong will be you new padawan, Master Keav";
					Now Drong follows the player.
					[Now Drong helps the player;]

	[otherwise:
 		if training points is 0:
			say "You missed [the noun]";
		otherwise:
			say "You attack [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!" instead.]
			
[Report attacking someone with something (this is the normal attacking report rule): 
	 if damage inflicted is 0:
		say "You missed [the noun]";
	otherwise:
		say "You attack [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!" instead.]
[
Report someone attacking the player with something when the player is dead (this is the player's-death priority rule): 
	say "[The actor] attacks you with [the second noun], finishing you off!"; 
	end the story; 
	stop the action.
	
Report someone attacking the player with something (this is the standard report someone attacking the player with rule): 
	say "[The actor] attacks you with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
Report someone attacking something with something (this is the standard report attacking it with rule): 
	say "[The actor] attacks [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
	

Report someone attacking a dead person with something (this is the friendly-kill-report priority rule): 
	if the dead person carries something, now everything carried by the dead person is in the location; 
	say "[The actor] attacked [the noun] with [the second noun], killing [the noun]!" instead.

 
When play begins: 
	now the left hand status line is "You: [current hit points of player]";
	now the right hand status line is "Clone: [current hit points of clone warrior] Hunter: [current hit points of bounty hunter]".

Every turn (this is the enemy-attack rule): 
	if player can see an enemy:
		let attacker be a random enemy in the arena;
		if the attacker is not dead, try the attacker attacking the player with a random weapon which is carried by the attacker.
		
Every turn (this is the enemy-attack-drong rule): 
	if drong can see an enemy:
		let attacker be a random enemy in the arena;
		if the attacker is not dead, try the attacker attacking drong with a random weapon which is carried by the attacker;
		if drong is not dead, try drong attacking the attacker with a random weapon which is carried by drong.


]


Part 2 - Arena
 

The Arena is a room. "Sand, blood, iron. These festivals are normally held on hot days, but the sun has gone behind a cloud and fat drops of rain now and then spatter the arena floor." 

The Arena is south of the training room.  The Arena is dark.

The clone warrior is an imperial in the Arena. "A clone warrior faces you, wielding [a list of weapons carried by the clone warrior]."
The bounty hunter is an imperial in the Arena. "A bounty hunter circles you, pointing [a list of weapons carried by the bounty hunter]."

[The clone helps the bounty hunter.

The clone hinders the player.
The hunter hinders the player.
The hunter hinders yoda.]


Section 2 - Diagnosis

Diagnosing is an action applying to one visible thing. Understand "diagnose [something]" as diagnosing.
Check diagnosing: 
    if the noun is not a person, say "Only people can have diagnoses." instead.
Carry out diagnosing: 
    say "[if the noun is the player]You have[otherwise][The noun] has[end if] [current hit points of the noun] out of a possible [maximum hit points of the noun] hit points remaining."

Section 3 - Weapons

A weapon is a kind of thing. A weapon has a number called the maximum damage. The maximum damage of a weapon is usually 4.
The clone warrior carries a weapon called a laser rifle. The maximum damage of the laser rifle is 7. The clone warrior carries a weapon called a clone blaster. The maximum damage of the clone blaster is 5.
[The player carries a weapon called a mace. The maximum damage of the mace is 3.]

The bounty hunter carries a weapon called a shock rifle. The maximum damage of the shock rifle is 7. The bounty hunter carries a weapon called a bounty blaster. The maximum damage of the bounty blaster is 5.



Section 4 - Attacking it with

Understand the commands "attack" and "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" and "strike" as something new.

Attacking it with is an action applying to one visible thing and one carried thing. Understand "attack [someone] with [something preferably held]" as attacking it with.

Understand the commands "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" and "strike" as "attack".

 

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
	if the noun is dead and the noun is not the player, remove the noun from play.
	

 

[Report attacking a friendly person: 
	say "You feint with [the second noun], surpising [the noun]!" instead.]
Report attacking a dead person with something (this is the death-report priority rule): 
	if the dead person carries something, now everything carried by the dead person is in the location; 
	say "You attack with [the second noun], killing [the noun]!" instead.
Report attacking someone with something (this is the normal attacking report rule): 
	if the noun does not help the player and the noun does not hinder the player:
		say "If you are very lucky you'll live long enough to regret this.";
		now the noun hinders the player;
	if the noun helps the player:
		say "Ooh I think this is a mistake.";
		now the noun does not help the player;
	[if the noun is friendly:	
		if the sabre is switched on:
			say "[The noun] [one of]paries your thrust[or]blocks your advance[or]drops under your blow[or]is surprised momentarilly by your feint, but recovers[at random] [one of]with a smile and a playful kick in the ass[or]and suggests you loosen your grip[or]then tells you to trust the force[at random].";
			if the current hit points of the player < the maximum hit points of the player:
				increment the current hit points of the player;
				if the current hit points of the player >= the maximum hit points of the player:
					if the damage multiplier of the player is 1:
						increment the damage multiplier of the player;
						say "[The noun] says 'You're training is now complete!'.  The force feels stronger in you now.  Drong will be you new padawan, Master Keav";
						Now Drong is stalking;
		otherwise:
			say "With what?";
		stop the action;	
	otherwise:]
 	if damage inflicted is 0:
		say "You missed [the noun]";
	otherwise:
		say "You attack [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!"; 
		if a random chance of 1 in 3 succeeds:
			if the noun does not follow the player:
				Now the noun follows the player;
				say "Looks like [the noun] is taking this personally.".
	


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


Report someone attacking a dead person with something (this is the friendly-kill-report priority rule): 
	if the dead person carries something, now everything carried by the dead person is in the location; 
	say "[The actor] attacked [the noun] with [the second noun], killing [the noun]!" instead.

 
When play begins: 
	now the left hand status line is "You HP: [current hit points of player] XP: [XP of the player]";
	now the right hand status line is "Clone: [current hit points of clone warrior] Hunter: [current hit points of bounty hunter]".

Every turn (this is the attacker attacks an enemy rule):
	repeat with attacker running through person in the location:
		let foes be a list of persons;
		now foes is {};
		if attacker is not player:
			repeat with character running through person in the location:
				if attacker is not character:
					if character hinders attacker:	
						add character to foes;	
			let N be the number of entries in foes; 
			if N > 0:
				sort foes in random order;
				[say "[attacker] to attack [entry 1 of foes]".]
				let victim be entry 1 of foes;[
				if victim is player and attacker can see victim:
					if a random chance of 1 in 3 succeeds:
						if the attacker does not follow the player:
							Now attacker follows the player;
							say "Looks like [the attacker] is taking this personally.";]
				if the attacker is not dead, try the attacker attacking victim with a random weapon which is carried by the attacker.
				
 
[
Every turn (this is the enemy-attack rule): 
	if player can see an imperial:
		let attacker be a random imperial in the location;
		if the attacker is not dead, try the attacker attacking the player with a random weapon which is carried by the attacker.
		

		
[Every turn (this is the unfriendly-attack rule): 
	if player can see a foe:
		let attacker be a random foe in the arena;
		if the attacker is not dead, try the attacker attacking the player with a random weapon which is carried by the attacker.]

		
Every turn (this is the enemy-attack-drong rule): 
	if drong can see an imperial:
		let attacker be a random imperial in the arena;
		if the attacker is not dead, try the attacker attacking drong with a random weapon which is carried by the attacker;
		if drong is not dead, try drong attacking the attacker with a random weapon which is carried by drong.
]

Section 5 - The Light Sabre

Brightness is a kind of value. The brightnesses are guttering, weak, radiant and blazing.

A device is a kind of weapon.

An on/off button is part of the light sabre.
 
test table with "open left drawer / open right drawer / get D battery / get sabre / put battery in sabre"

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

Understand "ignite [device]" as switching on.


Understand "extinguish [device]" as switching off.

Before inserting something into something which is not open:
	say "(first opening [the second noun])";
	silently try opening the second noun.
	[if the second noun is not open, stop the action.]
After inserting something into something:
	say "(then closing [the second noun])[line break]";
	silently try closing the second noun.


Instead of pushing an on/off button which is part of a switched on device (called the machine): 
	try switching off the machine.
Instead of pushing an on/off button which is part of a switched off device (called the machine): 
	try switching on the machine.
[The stalk code causes a runtime error - too many rule books - we can get by without it.]	
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
	Now the maximum damage of the light sabre is 5.
	
After switching off light sabre:
	Now the maximum damage of the light sabre is 0.


The description of the Light Sabre is "[if switched on]It's blade is glowing [one of]green[or]blue[or]purple[at random].[otherwise]The light sabre has a button at the hilt, and concealed compartment.[end if]"

Every turn: if the Light Sabre is switched on, say "[one of]'vrrrm'[or][or][or]'wrrym'[or][or][or]'hrrrm'[or][or][or]'snap'[or][or][or]'crackle'[or][or][or]'pop'[at random]"
 

 

The blue light sabre is a kind of weapon. The description of the blue light sabre is "A light sabre with a blue blade, weak, but long lasting." The maximum damage of the blue light sabre is 5.
The blue light sabre is privately-named.

Drong is carrying the blue light sabre.


The green light sabre is a kind of weapon. The description of the green light sabre is "A light sabre with a strong green blade." The maximum damage of the blue light sabre is 5.
The green light sabre is privately-named.

Yoda is carrying the green light sabre.

Rule for warning about failure of the cassette recorder:
	if a random battery compartment which is part of the cassette recorder contains a battery (called the power source):
		if the charge of the power source is 2, say "The hiss from [the cassette recorder] begins to warble ominously."

[The player wears a backpack. The backpack is openable. In the backpack is the flashlight and the cassette recorder.

The description of the cassette recorder is "Useful both for recording your notes and for capturing any odd ghostly sounds you may hear."

The description of the backpack is "An old familiar pack, which you know so well that you can find all its pockets and take things in and out of it in pitch darkness. To avoid it showing up oddly in photographs, it is entirely black, with no shiny or metallic attachments."

The description of the flashlight is "You bought a new one just for this occasion, because you were worried about bringing something too small or light. This is a heavy-duty flashlight with an adjustable-focus beam. The case is made of metal, rather than plastic, and there is a spare light-bulb inside as well. You've put a band of masking tape around the handle and written in your initials in red marker.

There is a piece of red cellophane attached to the business end of the flashlight to keep it from being overly bright."

The red cellophane is part of the flashlight.

Instead of doing something to the red cellophane: say "You need the cellophane on the flashlight so that using it does not completely destroy your night vision."

Thirtieth Street Station is a room. "A huge, high, rectangular room with coffered ceilings, which looks grand but mostly makes you feel lonely and small. There are long benches in rows down the middle of the room, and an information desk with the train times, and a series of ticket windows, none of which matters very much at the moment."

The benches are an enterable supporter. They are scenery in the Station. The information desk is scenery in the Station. Some ticket windows are scenery in the Station. Instead of examining scenery in the Station: say "You're fairly sure that whatever is going on here has nothing to do with [the noun]." Understand "window" as ticket windows.

The mural is fixed in place in Thirtieth Street. "At the north side of the station is a particularly pointless and empty annex to the main room. It is dominated by a huge relief of sorts, and this is what you remember." Understand "metal" or "relief" or "huge" as the mural. The description of the mural is "It is both stylized and confusing, but you think it might be supposed to represent the various tasks and occupations of Philadelphia's population. The portions closer to the ground look as though they have recently been subjected to a light dusting of talcum powder. No unusual prints are evident."

The wind chimes are fixed in place in Thirtieth Street. "Carefully attached to the wall with a piece of duct tape and a hook is a light-weight set of wind chimes. Someone else has been here before you, it seems." The description is "Several of your friends use wind chimes as a sort of ghost alarm, since ghosts sometimes cause very localized movements of air when there is no natural breeze."]

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

test spar with "spar with yoda with sabre / again / again / again /again/ s"

test all with "test table / press button / test spar"




