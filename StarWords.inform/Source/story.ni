"StarWords" by Peter Burgess


Part 1 - The setup

Section 1 - Hit Points, Damage Multiplier, XP

A person has a number called maximum hit points. 
A person has a number called current hit points.
A person has a number called XP.  
A person has a number called Max XP.   
A person has a number called damage multiplier. A damage multiplier is usually 1.
A person is either good or evil.
A person is either onguard or offguard.



Section - Suggestion

[Suggestion is the ability of a jedi to imploy others to do their bidding
Suggestion is different to the normal persuasion.
Normal attempts to persuade are only successful if they obey the normal persuassion rules, where as Suggestion implies the jedi can overcome a mind that is inferior to their own, convincing the subject to perform some action they would not otherwise normally do]
A person has a number called suggestion. Suggestion is usually 1. 
 
[The XP of the player is 0. 
The Max XP of the player is 40. 
The maximum hit points of the player is 35. ]
 
When play begins: 
	repeat with victim running through people: 
		now the current hit points of the victim is the maximum hit points of the victim - 5

Definition: a person is dead if his current hit points are less than 0.
Definition: a person is a master jedi if his XP is greater than 39.

Section 2- Relationships

Follower relates various persons to one person. The verb to follow (he follows, they follow, he followed, he is followed) implies the follower relation.
Ally relates people to each other. The verb to help (he helps , they help, he helped, he is helped) implies the ally relation.
Enemy relates people to each other. The verb to hinder (he hinders, they hinder, he hindered, he is hindered) implies the enemy relation.

Definition: a person is unfriendly if he hinders the player.
Definition: a person is friendly if he helps the player.
Definition: a person is neutral if he is not friendly and he is not unfriendly.
Definition: a person is suggestable if his suggestion is 0.
Definition: a person is following if he follows the player.

[Persuasion rule for asking a person to try doing something: 
	if the person is friendly:
		[say "'Ok.'[line break]";]
		persuasion succeeds;
	otherwise:
		[say "[person] ignores you";]
		persuasion fails;	
]
A rebel is a kind of man.
An imperial is a kind of man.

Section - Persuasion and Suggestability

[Persuasion rule for asking an rebel to try doing something: 
		say "'Ok.'[line break]";
		persuasion succeeds;
		
Persuasion rule for asking an imperial to try doing something: 
		say "'Get stuffed.'[line break]";
		persuasion fails;]
		
Persuasion rule for asking a person to try being someone:
	say "That is just too existentially confusing.";
	persuasion fails;
 

Persuasion rule for asking a person who is friendly to try going: 
	if the player is a master jedi:
		say "[the actor] says ''I will leave you, master jedi.'[line break]";
		now the actor follows nothing;
		persuasion succeeds;
	otherwise:
		if the person follows the player:
			say "[the actor] says 'I will leave you.'[line break]";
			now the actor follows nothing;
			persuasion succeeds;
		otherwise:
			say "[the actor] says 'I do not come and go at your bidding!'";
			persuasion fails. 


Persuasion rule for asking a person who is friendly to try doing something: 
	if the player is a master jedi:
		say "[the actor] says 'Yes, master jedi.'[line break]";
		persuasion succeeds;
	otherwise:
		if the person follows the player:
			say "[the actor] says 'As you wish.'[line break]";
			persuasion succeeds;
		otherwise:
			say "[the actor] says 'I will not take instructions from one such as you!'";
			persuasion fails. 

 
[
Persuasion rule for asking a person who follows the player to try doing something: 
	[if the actor is friendly:]
		say "'As you wish.'[line break]";
		persuasion succeeds.]


		
[Persuasion rule for asking a person who is suggestable to try doing something: 
	[if suggestion of the player is greater than 1:]
	say "'As you suggest...'";
	persuasion succeeds;]

[Persuasion rule for asking a person who is unfriendly to try doing something: 
	if suggestion of the player is greater than 1:
		say "mutters 'I need to … [the action name part of the current action] .. [the noun part of the current action]'[line break]";
		persuasion succeeds;
	otherwise:
		say "'How dare you?'[line break]";
		persuasion fails;]
		
Persuasion rule for asking a person who is not friendly to try doing something: 
	if the suggestion of the player is greater than the suggestion of the actor:
		if the actor is unfriendly:
			say "[the actor] mutters 'I need to … [the action name part of the current action] .. [the noun part of the current action]'[line break]";
			persuasion succeeds;
		otherwise:
			say "[the actor] murmours 'I feel compelled to … [the action name part of the current action] .. [the noun part of the current action]'[line break]";
			persuasion succeeds;
	otherwise:
		if the actor is unfriendly:
			say "[the actor] says 'How dare you?'[line break]";
			persuasion fails;	
		otherwise:
			say "[the actor] says 'Do I know you?'[line break]";
			persuasion fails;
		

[Persuasion rule for asking a person who is not friendly to try doing something: 
	if the suggestion of the player is greater than the suggestion of the noun:
	if the noun is unfriendly:
		say "mutters 'I need to … [the action name part of the current action] .. [the noun part of the current action]'[line break]";
		persuasion succeeds;
	if suggestion of the player is greater than 1:
		say "murmours 'I feel compelled to … [the action name part of the current action] .. [the noun part of the current action]'[line break]";
		persuasion succeeds;
	otherwise:
		say "'Do I know you?'[line break]";
		persuasion fails;]
		
[Persuasion rule for asking a person who is unfriendly to try doing something: 
	say "'How dare you?'[line break]";
	persuasion fails;]

		
[Persuasion rule for asking a person who is not friendly to try doing something: 
	say "'Do I know you?'[line break]";
	persuasion fails;]

Section - Play Begins

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

	[now the player is luke;]

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

Section 3 - ACTION Following
 		
[Every turn: 
	repeat with actor running through person:
		if actor is not the player:
			if actor follows the player and actor is not dead:
				if the location of actor is not the location of the player:
					let the way be the best route from the location of actor to the location of the player, using doors; 
					try actor going the way.]
					
Every turn: 
	repeat with actor running through person:
		if actor is not the player:
			repeat with target running through person:		
				if target is not actor and actor follows target and actor is not dead:
					if the location of actor is not the location of the target:
						let the way be the best route from the location of actor to the location of the target, using doors; 
						try actor going the way;
						Now the actor is onguard.
 

Section 4 - Yoda talk



Table of Friend Refusals
refusal
"That would be pointless."
"That is not possible."
"Don't be absurd."
"Ridiculous!"
"Why do say such a thing?"



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

[Section 5 - Confronting someone


Understand the command "confront" as something new.

Confronting is an action applying to one visible thing. Understand "confront [someone]" as confronting.

Check an actor confronting something (this is the can only confront an enemy rule):
	if the noun helps the actor:
		say "You can only 'confront' an enemy, and [the noun] is NOT an enemy of yours."; 
		stop the action;


Report confronting (this is the standard report confronting rule): 
	say "CONFRONT";
	[Now the actor is onguard;]
	say "[The actor] [one of]turns to face[or]faces[or]fixes on[at random] [the noun], [one of]wielding[or]pointing[or]menacing[at random] [a list of weapons carried by the actor].".
[
 
				if the attacker is offguard:
					Now the attacker is onguard;
					say "[The attacker] [one of]turns to face[or]faces[or]fixes on[at random] [the victim], [one of]wielding[or]pointing[or]menacing[at random] [a list of weapons carried by the attacker].";



]]

Section - Being someone

Understand the command "become" as something new.

Being is an action applying to one visible thing. Understand "become [someone]" as being.

Check an actor being something (this is the can only become a friend rule): 
	if the noun is not friendly:
		say "You can only 'become' an ally, and [the noun] is NOT an ally of yours."; 
		stop the action;
		
Check an actor being something (this is the can only become a follower rule): 
	if the noun does not follow the player:
		say "You can only 'become' a follower, and [the noun] is NOT following you."; 
		stop the action;

Report being (this is the standard report being rule): 
	say "I feel quite [noun]-ish now.";
	Now the noun does not follow the player;
	Now the player follows the noun;
	Now the player is the noun.
	[say "[The actor] says 'Ok, I will follow [the noun].'[line break]";]

[The printed name of the player is "you".]


Section - Command Follow

[Understand the command "track" as something new.

Tracking is an action applying to one visible thing. Understand "track [someone]" as tracking.

Report someone tracking (this is the standard report tracking with rule): 
	Now the actor follows the noun;
	say "[The actor] says 'Ok, I will follow [the noun].'[line break]";]
	

Understand the command "follow" as something new.

Following is an action applying to one visible thing. Understand "follow [someone]" as following.

Report someone following (this is the standard report someone following with rule): 
	Now the actor follows the noun;
	say "[The actor] says 'Ok, I will follow [if the noun is the player]you[else][the noun][end if].'[line break]";
	
Report following (this is the standard report following with rule): 
	Now the player follows the noun;
	say "Ok, where ever [the noun] goes, I follow.";
	[say "[The actor] says 'Ok, I will follow [if the noun is the player]you[else][the noun][end if].'[line break]";]
	

[Section - Command Wait There
 
Understand the command "wait there" as something new.

Waiting there is an action applying to a location. Understand "wait there" as waiting there.

Report someone waiting there (this is the standard report someone waiting there rule): 
	Now the actor follows the actor;
	say "[The actor] says 'Ok, I will wait there.'[line break]";
	
Report waiting (this is the standard report waiting there rule): 
	Now the player follows the player;
	say "Ok, i am waiting there.";]
	
Section - Command Ignore 

Understand the command "ignore" as something new.

Ignoring is an action applying to one visible thing. Understand "ignore [someone]" as ignoring.

[Report someone ignoring (this is the standard report someone ignoring rule): 
	now the actor follows the actor;
	say "[The actor] says 'Ok, I will stop following you.'[line break]";]
 

Section - Command Stop Following 

[Understand the command "stop following" as something new.]
Understand "stop following [someone]" as ignoring. 

[Ignoring is an action applying to one visible thing. Understand "stop following [someone]" as ignoring.]

Report someone ignoring (this is the standard report someone ignoring rule): 
	now the actor follows nothing;
	say "[The actor] says 'Ok, I will stop following [if the noun is the player]you[else][the noun][end if].'[line break]";

 
Section - Command Spar with

[Understand the commands "spar with" and "train with" as something new.]

Sparring is an action applying to one visible thing and one carried thing. 
Understand "spar with [someone] with [something preferably held]" as sparring.

[Instead of actor sparring with player, try player sparring with actor.]

The sparring action has a number called the training points.
Setting action variables for sparring: 
	if the second noun is a weapon and the noun helps the actor: 
		let the maximum TP be ( the XP of noun minus the XP of the actor) divided by 10;
		now the training points is a random number between 0 and the maximum TP;
	otherwise:
		now the training points is 0.
		
Check an actor sparring (this is the noun must carry a lit light-sabre rule):
	if the noun is carrying a light-sabre:
		if the noun is not carrying a switched on light-sabre:
			let sabres be a list of light-sabres;
			now sabres is list of light-sabres carried by the noun;
			let weapon2 be entry 1 of sabres;
			try the noun switching on weapon2;
			if weapon2 is not lit:
				now weapon2 is lit;
			if weapon2 is not lit:
				say "[the noun]'s light sabre is not lit!";	
			if weapon2 is not switched on:
				say "[the noun]'s light sabre will not turn on";			
	otherwise:
		say "[the noun] does not have a light sabre to spar with";
			


[

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
				let victim be entry 1 of foes;
 
]
 


Check an actor sparring (this is the can't spar using something that isn't a weapon rule): 
	if the actor is the player:
		if the second noun is not a weapon: 
			say "[The second noun] is NOT a weapon."; 
			stop the action;
		if the second noun is not the sabre: 
			say "[Noun] is expecting you to spar with the sabre."; 
			stop the action;
		if the sabre is not switched on: 
			say "The sabre is not on."; 
			stop the action;
		if the noun is the player:
			choose a random row in the Table of Friend Refusals; 
			say "[refusal entry][paragraph break]";	
			stop the action;
	otherwise:
		if the noun is the actor:
			choose a random row in the Table of Friend Refusals; 
			say "[the actor]  says '[refusal entry]'[paragraph break]";	
			stop the action;
		[THIS BIT IS NO LONGER REQUIRED]
		[if the noun is the player:
			say "[the actor] says 'How about you spar with me!'";
			[try spar actor instead;]
		otherwise:
			say "[the actor] says 'I would prefer to spar with you!'";
			[stop the action.]]
Check an actor sparring (this is the can't spar a non-person rule): 
	if the noun is not a person: 
		if the actor is the player, say "[The noun] is a poor sparring partner."; 
		stop the action;
	if the noun hinder the actor: [is unfriendly:]
		say "[Noun] is going to play for keeps.";
		stop the action;
	if the noun does not help the actor: [is neutral:] 
		say "[Noun] is not inclined to spar with you.";
		stop the action.

Report someone sparring (this is the standard report sparring with rule): 
	say "[The actor] spars with [the noun] with [the second noun][line break]";
	if the XP of the actor < the Max XP of the actor:
		increase the XP of the actor by the training points;
		say "[The actor]'s experience points increases by [training points].[paragraph break]";
	[, causing [damage inflicted] point[s] of damage!" instead.]

 
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
				say "[The noun] says 'You're training is now complete!'.  The force feels stronger in you now.  Drong will be you new padawan, Master Keav";
				Now Drong follows the player.
 



Part 2 - Training

The Training Room is a room. "A place to practice jedi skills.  There is a door to the north and an exit to the south. There is a bench by the wall."

A dead end is a kind of room. "This is a dead end. You'll have to go back the way you came." A dead end is usually dark.
 
The closet is a dead end.  The closet is north of the training room. 

A battery is a kind of thing. A battery has a number called charge. The charge of a battery is usually 35.
The printed name of a battery is "[if discharged]a dead battery[otherwise]a battery".
 
Understand "dead battery" as battery.


A bench is in the training room.  The description of the bench is "It is an ordinary bench with two drawers, left and right".
A left drawer is a container that is closed and openable.  A left drawer is part of the bench. The blue light sabre is in the left drawer.

A right drawer is a container that is closed and openable.   A right drawer is part of the bench.  
battery 1 is a battery. battery 1 is in the right drawer.

battery 2 is a battery.  
battery 3 is a battery.  

The bench is scenery.

[Maud is a person in the training room. "The groom, Maud is here."]
[The suggestion of maud is 0.]

Drong is a rebel in the training room.  "Drong is here." The description of Drong is "Drong is a youngling of extraudinary potential."[  Drong is carrying [list of visible objects carried by Drong]."]
The maximum hit points of Drong is 35.
 
The XP of Drong is 10. 
The Max XP of drong is 20. 
The suggestion of drong is 0.

Yoda is a rebel in the training room.  "Yoda is here." 
The description of Yoda is "Yoda is respected as one of the most wise and powerful Jedi Masters in the history of the galaxy. Yoda is a master of the Force and Light Sabre combat. Yoda has served as the Grand Master of the Jedi High Council for over 700 years.  Yoda is carrying [list of visible objects carried by Yoda]."
The maximum hit points of Yoda is 100.
The damage multiplier of Yoda is 2.
The suggestion of Yoda is 2.

The XP of yoda is 100.
The Max XP of yoda is 100.

Drong is carrying the purple light sabre and battery 2.
[Battery 2 is inside compartment of the purple light sabre.]

[The battery compartment attached to the purple light sabre contains Battery 2.]
 
Yoda is carrying the green light sabre and battery 3.


Keav is a rebel in the training room.  "Keav is here." The description of Luke is "Keav is a headstrong young man hoping to become a great warrior.  Keav is carrying [list of visible objects carried by Keav]."
The maximum hit points of Keav is 35.
 
The XP of Keav is 0. 
The Max XP of Keav is 40. 

The player is Keav.

[The XP of the player is 0. 
The Max XP of the player is 40. 
The maximum hit points of the player is 35. ]




Rule for deciding the concealed possessions of a man: if the particular possession is a light-sabre or the particular possession is a battery, yes; otherwise no.




Part 2 - Arena
 

The Arena is a room. "Sand, blood, iron. These festivals are normally held on hot days, but the sun has gone behind a cloud and fat drops of rain now and then spatter the arena floor." 

The Arena is south of the training room.  The Arena is dark.

The clone warrior is an imperial in the Arena. "A clone of the Empire is here."
The bounty hunter is an imperial in the Arena. "One of Jabba's bounty hunters is here."

The maximum hit points of the clone warrior is 25.  
The maximum hit points of the bounty hunter is 25.
The suggestion of the clone warrior is 0.

Section 2 - Diagnosis

Diagnosing is an action applying to one visible thing. Understand "diagnose [something]" as diagnosing.
Check diagnosing: 
    if the noun is not a person, say "Only people can have diagnoses." instead.
Carry out diagnosing: 
    say "[if the noun is the player]You have[otherwise][The noun] has[end if] [current hit points of the noun] out of a possible [maximum hit points of the noun] hit points remaining."

Section 3 - Weapons

A weapon is a kind of thing. A weapon has a number called the maximum damage. The maximum damage of a weapon is usually 4.

The clone warrior carries a weapon called a laser rifle. The maximum damage of the laser rifle is 7. 
The clone warrior carries a weapon called a clone blaster. The maximum damage of the clone blaster is 5.

The bounty hunter carries a weapon called a shock rifle. The maximum damage of the shock rifle is 7. 
The bounty hunter carries a weapon called a bounty blaster. The maximum damage of the bounty blaster is 5.



Section 4 - Attacking it with

Understand the commands "fight" and "attack" and "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" and "strike" as something new.

Attacking it with is an action applying to one visible thing and one carried thing. Understand "attack [someone] with [something preferably held]" as attacking it with.

Understand the commands "fight" and "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreck" and "strike" as "attack".

 

The attacking it with action has a number called the damage inflicted.
Setting action variables for attacking something with something: 
	if the second noun is a weapon: 
		let the maximum attack be the maximum damage of the second noun; 
		now the damage inflicted is a random number between 0 and the maximum attack times the damage multiplier of the actor;
	otherwise:
		now the damage inflicted is 0.

[Check an actor attacking something with something (this is the can't attack with something that isn't a weapon rule): 
	if the second noun is not a weapon: 
		if the actor is the player, say "[The second noun] is NOT a weapon."; 
		stop the action.]
		

Check an actor attacking something with something (this is the can't attack a non-person rule): 
	if the noun is not a person: 
		if the actor is the player, say "[The noun] has no life to lose."; 
		stop the action.

Check an actor attacking something with something (this is the can't attack with something that isn't a weapon rule): 
	if the actor is the player:
		if the second noun is not a weapon: 
			say "[The second noun] is NOT a weapon."; 
			stop the action;
		if the second noun is the sabre and sabre is not switched on: 
			say "The sabre is not on."; 
			stop the action;
		if the noun is the player:
			choose a random row in the Table of Friend Refusals; 
			say "[refusal entry][paragraph break]";	
			stop the action;
	otherwise:
		if the noun is the actor:
			choose a random row in the Table of Friend Refusals; 
			say "[the actor]  says '[refusal entry]'[paragraph break]";	
			stop the action;
		if the noun is the player and actor is friendly:
			say "[the actor]  says 'I will not fight you, my friend.'";	
			stop the action;
		otherwise:
			if the noun helps the actor:	
				say "[the actor] says '[The noun] is a friend. I would sooner fight you!'";
				stop the action.
 

Carry out an actor attacking something with something (this is the standard attacking it with a weapon rule): 
	decrease the current hit points of the noun by the damage inflicted; 
	if the noun is dead and the noun is not the player, remove the noun from play.
	

 

[Report attacking a friendly person: 
	say "You feint with [the second noun], surpising [the noun]!" instead.]
Report attacking a dead person with something (this is the death-report priority rule): 
	[if the dead person carries something, now everything carried by the dead person is in the location; ]
	[if the dead person carries something, move [a list of things carried by the dead person] to the location;  ]
	say "You attack with [the second noun], killing [the noun]!" instead.
Report attacking someone with something (this is the normal attacking report rule): 
	if the noun does not help the player and the noun does not hinder the player:
		say "If you are very lucky you'll live long enough to regret this.";
		now the noun hinders the player;
	if the noun helps the player:
		say "Ooh I think this is a mistake.";
		now the noun does not help the player;
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
	[if the dead person carries something, move inventory to the location; ]
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
				let victim be entry 1 of foes;
				[if victim is player:
					let victim_name be "you";
				otherwise:
					let victim_name be "[victim]";]
				[if victim is player and attacker can see victim:
					if a random chance of 1 in 3 succeeds:
						if the attacker does not follow the player:
							Now attacker follows the player;
							say "Looks like [the attacker] is taking this personally.";]
				if the attacker is offguard:
					[say "OFFGUARD [victim]";
					if the attacker is not dead, try the attacker confronting the victim;]
					Now the attacker is onguard;
					say "[The attacker] [one of]turns to face[or]faces[or]fixes on[at random] [if the victim is the player]you[else][the victim][end if], [one of]wielding[or]pointing[or]menacing[at random] [a list of weapons carried by the attacker].";
					[say "[the attacker] looks ready to fight.";]
				otherwise:
					if the attacker is not dead, try the attacker attacking victim with a random weapon which is carried by the attacker;
		

				
Every turn (this is the other persons go to sleep rule):
	repeat with sleeper running through person not in the location:
		Now the sleeper is offguard;
		[say "[the sleeper] is now offguard.";]	


Section 5 - The Light Sabre

Brightness is a kind of value. The brightnesses are guttering, weak, radiant and blazing.

A device is a kind of weapon.

A light source is a kind of device. 

A light-sabre is a kind of light source.
A light-sabre has some text called colour.

 

The blue light sabre is a light-sabre.  The colour of the blue light sabre is "blue". 
The purple light sabre is a light-sabre.  The colour of the purple light sabre is "purple". 
The green light sabre is a light-sabre.  The colour of the green light sabre is "green". 

 
When play begins:
	repeat with hollow running through battery compartments:
		if the hollow is part of the purple light sabre:
			now the hollow contains battery 2;
		if the hollow is part of the green light sabre:
			now the hollow contains battery 3;
 
[THIS WORKS WELL TO NAME THE SABRE BY ITS COLOUR, AS LONG AS IT HAS BEEN SWITCHED ON ONCE
THOUGH THE LOGIC switched on SEEMS SILIMAR TO lit TO ME. ]
The printed name of a light-sabre is "[if light-sabre is switched on or light-sabre is lit][colour] [end if]light sabre".
[The printed name of a light-sabre is "[if light-sabre is lit][colour] [end if]light sabre".]
 
 
test table with "open left drawer / open right drawer / get battery / get sabre / put battery in sabre / press button"

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

[An on/off button is a kind of switch.]
An on/off button is a kind of thing.
One on/off button is part of every device.

[And to get rid of annoying messages like "Which would you like to close, the flashlight or the flashlight's battery compartment?" when only the compartment is closable, we might add some understanding instructions:]

Understand "turn on [device]" as switching on.

Understand "turn off [device]" as switching off.

Understand "open [openable closed thing]" as opening.

Understand "close [openable open thing]" as closing.

Understand "put [something] in [container]" as inserting it into.

Understand "ignite [device]" as switching on.

[Want to avoid saying this "get battery from blue light sabre's battery compartment"]
[Understand "unload [device]" as getting battery from]

[Instead of unloading a device (called the machine): 
	try getting a random battery from machine's battery compartment;]


Understand "extinguish [device]" as switching off.

Before inserting something into something which is not open:
	say "(first opening [the second noun])";
	silently try opening the second noun.
	[if the second noun is not open, stop the action.]
After inserting something into something:
	say "(then closing [the second noun])[line break]";
	silently try closing the second noun.



Instead of pushing an on/off button which is part of a switched on device (called the machine): 
	try silently switching off the machine.
Instead of pushing an on/off button which is part of a switched off device (called the machine): 
	try silently switching on the machine.
	
Before switching on a device (called the machine) which is not carried: 	
	say "(first taking [the machine])";
	try taking the machine.



[Instead of switching on an on/off button which is part of a device (called the machine): 
	try switching on the machine.
Instead of switching off an on/off button which is part of a device (called the machine): 
	try switching off the machine.]
 
Instead of dropping a light-sabre which is switched on (called the sabre):
	try switching off the sabre;
	try dropping the sabre;


Instead of opening a device, try opening a random battery compartment which is part of the noun. Instead of closing a device, try closing a random battery compartment which is part of the noun. Instead of inserting a battery into a device, try inserting the noun into a random battery compartment which is part of the second noun.

Instead of switching on an empty device:
	say "Nothing happens, perhaps because there isn't a battery in [the noun]."

Instead of switching on a battery compartment which is part of a device (called the power user), try switching on the power user.

Definition: a device is empty:
	if a random battery compartment which is part of it contains a battery (called the power source):
		if the power source is discharged, yes;
		no;
	yes.

Definition: a battery is discharged if its charge < 1.
 
	
Carry out switching on a light-sabre: 
	now the noun is lit; 
	say "The [noun]'s blade now glows [the colour of the noun].";

	
Carry out switching off a light-sabre: 
	now the noun is unlit; 
	say "The [noun]'s [the colour of the noun] blade is extinguished.";

[NOT USING OTHER LIGHT SOURCES RIGHT NOW
Carry out switching off a light source: 
	now the noun is unlit.; 
	say "It is now off."
Carry out switching on a light source: 
	now the noun is lit; 
	say "It is now on."
]





The flashlight is a light source. 

The cassette recorder is a device. Every turn: if the cassette recorder is switched on, say "The cassette recorder hisses faintly."
 
The maximum damage of a light-sabre is 0.

After switching on a light-sabre (called the sabre):
	Now the maximum damage of the sabre is 5.
	
After switching off a light-sabre (called the sabre):
	Now the maximum damage of the sabre is 0.
	
The maximum damage of the green light sabre is 5.


[The description of the Light Sabre is "[if switched on]It's blade is glowing [one of]green[or]blue[or]purple[at random].[otherwise]The light sabre has a button at the hilt, and concealed compartment.[end if]"]

[Instead of describing a thing which is a light-sabre:
	say "It's blade is glowing [the colour of the noun]."]

[The description of a light-sabre is "It's blade is glowing [the colour of the light-sabre]."]

The description of a light-sabre is "The [noun] has a button at the hilt, and concealed compartment."

Every turn: if a light-sabre carried by the player is switched on, say "[one of]'vrrrm'[or][or][or]'wrrym'[or][or][or]'hrrrm'[or][or][or]'snap'[or][or][or]'crackle'[or][or][or]'pop'[at random]"
 

 

 [The description of the purple light sabre is "A light sabre with a purple blade, weak, but long lasting." 

The maximum damage of the purple light sabre is 5.]
[The purple light sabre is privately-named.]
 

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

Does the player mean doing something to a thing which is part of a light-sabre which is not carried: it is unlikely.

Does the player mean doing something to a thing which is not visible: it is unlikely.

[This bit stops inform asking which sabre we are trying to use]
Does the player mean doing something with a light-sabre which is not held: 
	it is unlikely.

[This bit stops inform asking which battery we are trying to use]
Does the player mean doing something with a battery which is not held: 
	it is unlikely.
Does the player mean doing something with a battery which is not visible: 
	it is very unlikely.

Does the player mean inserting into a battery compartment:
	if the noun is nothing:
		it is very likely;
	otherwise:
		make no decision.

[Want to avoid saying this "get battery from blue light sabre's battery compartment"]
[Does the player mean get a battery compartment: it is very unlikely.]

Does the player mean inserting a battery compartment into: it is very unlikely.

Does the player mean inserting something into a device: it is unlikely.

Does the player mean searching a battery compartment: it is very likely.
 
Test me with "test first / test second".

Test first with "i / open flashlight compartment / put battery in it / turn on flashlight / take d battery / open cassette compartment / turn on cassette / put battery in cassette compartment / turn on cassette / z / z / z / z".

Test second with "get d battery / put d battery in flashlight compartment / turn on flashlight / z / z / z / z / z / z / turn off flashlight / z / z / turn on flashlight / z".

Test sabre with "get sabre / open it / put battery in it / press button"

test spar with "spar with yoda with sabre / again / again / again /again/ again / again / again /again / again /again /again "

test beyoda with "yoda, follow me / become yoda"

test all with "test table / test spar / test beyoda"




