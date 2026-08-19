=== battle ===
# AUDIOLOOP: audio/background_quiet_urban_park_loop_01.mp3
    ~ set_simulation_state(1)
    -> start

= start
~ location_name = "VWaking up Armed"
# CLEAR
# CLASS: head1
BattleTech


'Shit' was the first word Billings thought of.  He could sense that his eyes were well fogged over and could barely open them.  Every muscle in his body hurt, his head pounded, and his stomach felt as if a moose had gone through it.  Most physicians would classify this as a viral infection or some sort of deadly disease.  Billings called it a 'hangover'.

"Ooof." he said.  He went back to sleep.

Colonel Arden Billings was 31 years old.  He had been ripping the hell out of his body since he was 25.  Whether it was walking into an ambush to draw enemy fire or large quantities of alcohol, every day he found himself wishing he could take one in the head and get the whole damn thing over with.

Billings' parents died when he was four, leaving him to defend himself in a successor state  he knew nothing about.  Whenever he would tell people about his 'fucking past' he would mention that he had been in this god-forsaken war so long he had forgotten which house he was fighting for.  'Marik' was the brand he had been given since day one.  Unsure of his origin, Billings spent his time wandering in an activity in which he could be sure of only one thing.  That activity was war.  That thing was death.

"Wake up, lazy-ass!"

William Tanner kicked him in the chest.

If Billings has his way, he would have instantly recovered from his sickness, leaped out of bed, pulled a Hortention plasma rifle off the wall and pointed it straight at Tanners head.  He would then proceed to assault him verbally about violating procedure and being an asshole.

Billings didn't do that.

Instead, he said "Oooh."

"C'mon, big guy, we got a planet to raid.  You're the last one up, got it?"

"Oooh."

"Jesus tits." said Tanner as he walked out the door leaving a trail of smoke.  He left to go do something dangerous in the commons.
    <- common_options("-", -> ret_target, -> drop)
    -> DONE   // suppress compiler warning...

// End the simulation...
= ret_target
    ~ set_simulation_state(0)
    // When a simulation stops, the stock price drops by 10%
    ~ reduce_stock_price()
    ->->

= drop
~ location_name = "VDropday"
# CLEAR

"Oooh." said Billings again.  It was his favorite noise.  He made the final decision to fall out of bed.  Drop vectors, wind resistance factors, and pain shot through his head as he worked his way to the bathroom.  Billings did things in the morning by priority.  Whatever was most important to him came first.  Today, taking several pills came before a shower, and loading his Branton-Hills .55 caliber semi-automatic pistol came in third.

Today was drop-day.  They has spent months planning it and two weeks in an Overlord waiting to get there.  All the waiting would soon be over.

In a small compartment in this Overlord laid Arden Billings, vomiting into a sink.

"Shit." he said again.  It was the only word he had ever used this morning besides "Oooh."  He remembered how much he loved the sunset.  He plopped his pistol into its holster and stepped into the commons. He was greeted by a standing ovation from ten cadets and four officers, all eating what was supposed to be breakfast.  There were many cheers and shouts of "alright" and "it's about time".

Billings told them all to fuck off.

Billings sat down.

Billings collapsed into his breakfast.

"Everybody, everybody, your attention please-"

O'Brien, the medic, always had a flair for the dramatic.  Everyone turned silent.

"I have an important announcement to make - today is Clayton's birthday!"

Many cheers and applause followed.  John Clayton, a cadet, was given many handshakes and slaps on the back.  People said things like "What a way to spend it, huh?"

Billings sadly left the room.
    <- common_options("-", -> ret_target, -> nobirthday)
    -> DONE   // suppress compiler warning...

= nobirthday
~ location_name = "VThe Problem with Clayton"
# CLEAR

Michael Forest, a drop technician followed Billings into his stateroom.

"Arden, you okay?"

Billings was relieved to find that somebody actually cared.  He cleared his throat.  He knew his voice would be cracked and hoarse but he really didn't care anymore.

"Yeah...yeah...I'm fine.  Thanks."

Forest started to leave.

"No, wait.  That's a lie.  Come here."

"What's the problem, Colonel?  It's Clayton, isn't it."

"Yes and no." Billings began speaking slowly.

"What do you mean?"

"Forest, this is my twenty-first drop.  Sit down here.  Twenty-one drops.  Lots of victory.  Lots of death.  I seem to remember the death, now, more than the victories.  That makes what, now, six years?"

"About."

"Forest, do you have any idea how many cadets Ive lost in the course of that time?" images began to swell in Billings' mind.

"Uh, I..."

"Over four hundred!" Billings grimaced.  He grabbed his stomach.  Finally, all the pain swelled into his head.
    <- common_options("-", -> ret_target, ->fourhundred)
    -> DONE   // suppress compiler warning...

= fourhundred
~ location_name = "VThe Four Hundred"
# CLEAR

"Four hundred lives in my command and I couldn't do a fucking thing about it!!"

He held his face in his hands and sobbed once quietly.

"It hits me over and over again," he looked wistfully out his window. "like a punch.  I've never told anyone, or rather, nobody's really cared.  Do you know what I'm going through, Michael?"

"Sort of.  You're worried about Clayton, right?"

"He never did anything wrong!  To nobody!  God.  So fucking..." he paused "More than worried.  You...uh...you know he's going to die."

"Yeah, I know."

"There's nothing we can do about it either."

"Yeah."

"So what do we do?"

They sat in silence for a long time.

Finally, Forest spoke up, "We tell him he's going to live."

Drop technician Michael Forest left Billings alone in his room and closed the door behind him.

"You're right." said Arden Billings.
    <- common_options("-", -> ret_target, -> act2)
    -> DONE   // suppress compiler warning...

= act2
~ location_name = "VAirborne"
# CLEAR

The dull roar of engines took over the throbbing of pain that used to be in Billings' mind.  He stared ahead.  Training told him to watch readout VFR's and orbit analysis interfaces to make sure nothing happened.  Today he decided to look out the window.  God, how hw missed sunsets.  Readouts chattered endlessly around him and various VFR's spread an eerie blue light across the bridge.

The planet looked beautiful from orbit.  Most of them did.  Pinton 5 was actually a barren sand heap with little atmosphere, slight vegetation, high velocity winds, no civilization, and the largest freshwater lake within forty million parsecs.

Billings' job was to clean it off.

"Computer, standby ASF launch."

"Confirmed, standing by."

Billings flipped on the intercom.

"Hey guys, you fueled up?"

"Affirmative, HQ, we are go for launch at zero six four point niner niner."

"Confirmed, standby."

Billings computed launch vectors, the answers were fed carrier wave to the aerospace fighters.  The control chutes flared up.  A computer began a countdown.
    <- common_options("-", -> ret_target, -> countdown)
    -> DONE   // suppress compiler warning...

= countdown
~ location_name = "VThe Countdown"
# CLEAR

"Twenty...nineteen...eighteen..."

"Pump pressurization -"

"Check."

"Launch computer -"

"Active."

"Fifteen...fourteen...thirteen..."

"Engine flare -"

"Nominal."

"Report status..."

"Ten...nine...eight..."

"All fighters accounted for, all systems standing by, over."

"Six...five..."

Billings started counting with the computer.

"Good luck...four...three...two...one...launch."
    <- common_options("-", -> ret_target, -> launch)
    -> DONE   // suppress compiler warning...

= launch
~ location_name = "VLaunching"
# CLEAR

A loud roar shook the Overlord dropship.

One by one, nine aerospace fighters left the dropship with fiery tails of thrust that distorted the background of stars with ripples of heat.  They accelerated quickly into orbit, then fell evenly into formation.

"Squadron leader to command central, what is our orbit vector, over..."

Billings tapped out readings on a VFR.

"Tracking to zero, zero, zero on my mark, standby."

"We are go with throttle off, confirm, over."

"Confirmed..." replied Billings into his comlink "Mark."

"All fighters throttle off."

The burning trails behind all of the patrol fighters disappeared, leaving them in a gentle orbit around Pinton 5.

"Roll to starboard, tracking niner zero, confirm."

"Confirmed, all fighters, roll complete, over..."

"Proceed with orbit until resistance or full revolution, then land 'em all.  You're on your on-board VFR, do you copy?"

"Affirmative.  See you later, Billings."

He watched them float across the surface of the stratosphere.  He muttered a silent prayer.  A computer spoke up.

"Launch program complete, all systems nominal."

After that, the ship went totally silent.

Billings fell asleep in his chair.

His bottle fell to the floor.
    <- common_options("-", -> ret_target, ->act3)
    -> DONE   // suppress compiler warning...

= act3
~ location_name = "VBattleTech: Act III"
# CLEAR

"Billings?...Colonel?...Wake up, sir."

Billings awoke with a start.  His foot kicked the now empty bottle of whiskey.  He sat up to find himself being shaken by a cadet.

"Wh...oh, jeez."

"You okay, Colonel?  We're about on schedule."

"What time is it?" Billings rubbed his eyes.

"14:20"

"Shit... Gimme time to shower.  Prime the mechs.  You can fly voice MIU, can't you?" he stood up.

"Sure."

"Bring her into low orbit, 200 kilometers and call me in my quarters when the drop force is ready."

"Affirmative."

Billings laughed.  It was the first time he had laughed in days.

"Yes or no will be fine."

"Yes, sir."

Billings smiled and put a hand on the cadet's shoulder.  He left the room as the trainee took a seat in front of the MIU.

Billings stopped.

"Clayton?"

"Yes, sir?"

There was a long pause.

"Never mind."

Billings left.

He trudged slowly down the hall.  Billings smelled the nauseous odor of Tanner's cigars as he passed the commons.
    <- common_options("-", -> ret_target, -> deckfive)
    -> DONE   // suppress compiler warning...

= deckfive
~ location_name = "VDeck Five"
# CLEAR

"Hi, Colonel!"

"Oh...how are you O'Brien."

"Not bad.  You look terrible.  Did you know we drop in half an hour?"

"Yeah...yeah...I...uh...overslept.  I'm gonna shower.  I'll be ready."

"Okay, see you in drop bay."

"Later." said Billings as he watched O'Brien walk down the hall.  Billings continued his trek.  He stepped in front of his door, and the security camera above it signaled a green light to indicate that it recognized Billings surgical implant.  But the door didn't open.  Billings wrinkled his forehead as he grabbed the manual release.

No sooner had Billings touched it when the control unit erupted in sparks, sending Billings reeling to the other wall in surprise.  An alarm went off.  Billings reached for a fire extinguisher as he intercomed to the bridge.

"Billings, deck five, I have an electrical fire, respond."

"Affirmative, we have it on camera and on track.  We're cutting the power."

The sparking died and the flame started to as the security unit powered down and all of the status lights winked out.

"Deck five, we are coming down with a replacement unit, confirm."

"Negative, I leave in twenty-five minutes.  Don't bother.  I'll be out in a sec."

"All right, Colonel, bridge out."
    <- common_options("-", -> ret_target, -> itends)
    -> DONE   // suppress compiler warning...

= itends
~ location_name = "VFriendly Neighbors"
# CLEAR

Billing slid open the door and stepped in.  He never remembered his stateroom smelling this bad.  Billings closed the door and stepped into the bathroom long enough to start the shower.  He went back into his room to strip off his clothes ans his sidearm.  His right shoulder was very stiff.  He swung it around for a while, then stepped over the pile of clothes and into the shower.

The water ran slowly over his body, reviving it from the hole it had been in that morning.  He closed his eyes and ran his head underneath the spray.  His ears were still in very good condition, considering, and they heard something over the noise of the water spray that most ears would not have caught.

They heard his door open.

Billings stood perfectly still.  His heart suddenly raced.  The first thing that went through his mind was 'Where is my pistol?'.  The door closed.  he detected the noise of a Brenton KNK 'Silent load' sub-machinegun loading.  There were no lights in the bathroom.  Good, he thought, no shadows to give me away.  Slowly and silently, he crouched down in the bathtub, and eventually laid down in the bottom.

He heard footsteps getting closer to the shower.  His heart beat faster.  He was as still and quiet as possible.

He waited.

A rail of bullets cut through the shower curtain above him and kicked up porcelain upon impact with the other side.  Golf-ball sized holes appeared in succession up and down the plastic drape, leaving black, scorched rings.  If Billings had been standing up, he would have taken several of them in the head and chest.

God, how he missed sunsets.

~ violence_count += 1
    + [{simcomplete}] -> ret_target
