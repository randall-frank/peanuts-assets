=== zero ===
# AUDIOLOOP: audio/I5%20-%20Eclipse.mp3
    ~ set_simulation_state(1)
    -> start

= start
~ location_name = "VESF Heisenberg en route to Proxima Centauri b"
# CLEAR
# CLASS: head1
Zero, my Hero

The energy compensation section of the ESF Heisenberg status screens began to slowly flash yellow.  Ensign Toby Chen had been eating Cheetos and reading system technical manuals when he become aware of the notification.  Ensign Chen was a relative newcomer to the Heisenberg. He came aboard as a last minute replacement for Ensign Gray. Gray had been a member of the original Luxon liaison team and Power Systems specialist during the shake-down cruise.  As such, Chen was still coming up to speed on the revolutionary quantum probability drive at the heart of the Heisenberg.  He'd read all the PR literature from Luxon, “Exploring the universe in our lifetime”, they'd claimed, the “Gateway to the Stars”, but Gray was the expert, having been on present during the space trial flights.  The Heisenberg has passed the trials with flying colors, so when Gray had been diagnosed with leukemia, the brass felt Chen would have no problems 'swimming' as they would say.

But in reality, this was a radical, first of it's kind engine design.  And, while it had passed an initial test flight, no one was entirely sure what to expect.  Luxon was still tweaking the design. There were nearly daily software updates (all 'minor patches') Chen was responsible for installing.  He had seen dozens such alerts in the first week of the flight to Proxima Centauri b, and this one looked just like all the previous red herrings.
    <- common_options("-", -> ret_target, -> start_pt2)
    -> DONE   // suppress compiler warning...

= start_pt2
~ location_name = "VESF Heisenberg en route to Proxima Centauri b"
# CLEAR
Chen licked his fingers, wiped them inside of his pockets and clicked on the status window.  Everything, was in the green, except for elevated power consumption by the PRNG-86 system.  He had to look that one up. The PRNG-86 was the random number generator for the quantum drive.  Almost 2% over power allocation, interesting, but easily within their reserve.  Chen was about to edit the warning threshold when Commander Valerie Cruz walked into the control room.

“Status report, all stations”, Cruz commanded.

“Guidance, is green”, Ensign Craig replied.

“Environmental, green”, from Ensign Summers.

“Propulsion probability, be green”, Ensign Kincaid snickered.

That drew a sharp rebuttal from Captain Cruz, “Let's keep it professional Mr Kincaid.”

“Yes Ma'am”, Kincaid, “Propulsion green.”

“Power?”, asked Cruz when Chen did not not respond immediately.

Chen again hesitated, “... Power is green”.

Valerie Cruz had nearly a dozen years of spacefaring experience and delays in responses were never a good sign.  She stepped up behind Chen, looking over his shoulder.

Toby snapped back to attention, “Ma'am, we have a power threshold alert in the PRNG-86 system.  It is drawing nearly 2% higher than budget...”
    <- common_options("-", -> ret_target, -> design_prng)
    -> DONE   // suppress compiler warning...

= design_prng
~ location_name = "VLuxon Propulsion Systems R&D, 6 months earlier"
# CLEAR
Sasha Sterling, systems software architect for the probabilistic quantum physics engine, shakes herself awake, pops another pill and washes it down with caffeine.  She has been working dangerously long hours as of late, with the 'first-light' deadline coming up in less than a month, but the team is making solid progress and might even beat the hardware team to release for a change.  Luxon bet the company on this Hail Mary project, but if the technology pans out, interstellar space travel will become a reality.  Sasha's head swoons a bit every time she considers the implications.  Yes, it has been exhausting, but she has never been on a more exciting project.  Unfortunately, not everyone on the team shares her excitement.   

Back to the task at hand.  She opens up the project status window.  A quantum level random number generator is critical to proper operation of the engine.  It ensures that the computation, and directly connected engine core, was free of non-local quantum entanglement.  One could never avoid some level of remote entanglement, but if the fraction is too high, there was a chance the engine might unpredictably warp to a different space-time nexus.  Sasha had been researching the problem with domain experts for months and they had identified and documented a suitable algorithm.  She had even written the test cases it needed to pass.  She just needed to get someone to code up the algorithm and merge it into the system.  An important task for a top programmer.  She clicked and dragged the task box to Pip Miller.

Pip was having a rough day.  A night of binge drinking, splitting headache, dehydration, sour stomach and general malaise.  The last thing he needed today was a challenging task.  Pip had lost any enthusiasm for the project months ago.  It would never end, much less ship and even more remotely be profitable to him.  But today, there was a blinking task mocking at him from his inbox.  Reluctantly, he clicked and read the documentation...  A random number generator!  Really?  How is that a level 1 issue?  They even included a reference to the actual algorithm to be implemented.  Sigh... Well, there's always Johnny.  Pip gestured, forwarding the task to Johnny. He can implement it, Pip would review the code...  Where was the restroom on this level?  
    <- common_options("-", -> ret_target, -> code_complete)
    -> DONE   // suppress compiler warning...

= code_complete
~ location_name = "VLuxon Propulsion Systems R&D"
# CLEAR
Johnny Stiles had been an intern for Luxon for about three weeks now.  Johnny was literature major, masquerading as a programmer.  As a lit major junior considering graduation, he came to the uneasy realization there was no way he could pay back his college loans as a writer. He had to do something else.  He had to get a job.  Then he found AI!  Now here he was, an aspiring programmer.  

He opened the ticket and smiled, he did not understand the specifics, but it looked like some kind of 'coin flipping' task.  The task seemed overly documented.  I mean how difficult could it be to implement a random number generator?  Anyway, there was a complete acceptance test along with a complete algorithm description. He pulled up his AI GUI, dropped in the task algorithm and test, and clicked submit.  As the AI spun up and the task churned, he headed to the cafeteria for a quick lunch.  When he returned, there was a commit ready for his review and it passed all the tests.  He looked over the commit. Hmm, seems like an awfully large amount of code.  The commit bundled a nearly complete AI subsystem as part the solution. It looks like it was being used to filter out 'entanglements'?  Not sure what that was, but it passed the tests.  Johnny clicked submit and called it a day. 

Pip managed to snore himself awake.  Ugh, still pretty hung-over, but a strong cup of coffee should get him through the last couple of hours. Pip refilled his 'Error 404: Motivation not found' mug, crushed in a Vicodin and popped it into the microwave.  He took a long draw of the vile liquid and pulled up his inbox.  The first email was from the CEO, demanding that the quantum engine be ready for testing in two weeks. There should be a 'delete with prejudice' button. The second was a code review notification.  Looks like Johnny completed that random number generator.  Pip opened the code and started reviewing it.

OMG, almost 20GB of files.  90% of it looks like a set of neural network weights.  How am I going to review this???  Ok, let's start with the unit test.  Thankfully, the test looked really complete and it passed.  He wrote a little script to grab some numbers and plot the distribution.  He compared his plot to the one in the algorithm paper and they looked identical.  Yeah, looks good to me.  Pip went ahead and approved the commit, forever changing the ESF Heisenberg's destiny with a single click. He took another sip of 'coffee'.  It was 4:38 in the afternoon, 'Lust for Life' rumbled in his earbuds.
    <- common_options("-", -> ret_target, -> shakedown_cruise)
    -> DONE   // suppress compiler warning...

= shakedown_cruise
~ location_name = "VESF Heisenberg circling Earth, 3 weeks later"
# CLEAR
Ensign Emmanuel Gray is on the bridge, watching the system boot the new software update.

# CLASS: computer
[00:00:00] QUANTUM OS BUILD: {ai_build_number}<br>[00:00:01] (C) 2123 LUXON PROPULSION SYSTEMS, INC. ALL RIGHTS RESERVED.<br>[00:00:04] INITIALIZING STOCHASTIC CORE... OK<br>[00:00:07] MEMORY CHECK: 128 TiB ENTANGLEMENT BUFFER... OK<br>[00:00:12] SYNCHRONIZING PROBABILISTIC MATRIX... OK<br>[00:00:22] ENGAGING LOCAL QUANTUM FILTER [PRNG-86]...<br>[00:00:22] “Just 5 more minutes, Mom. A-Team is on.”... OK<br>...<br>[00:02:08] SYSTEM ACTIVE: GUIDANCE INTERNAL.

This was they version they would be actually flying with.  The one that would take them to the stars.  The one they would trust with their lives.  The one that would become legend.  Emmanuel shook his head, regained his concentration and started all of the tests.  The ship would launch tomorrow at dawn.  Their trajectory would be a slingshot around the sun, picking up speed and absorbing energy before handing things over to the quantum drive.  If all went well, they would be at Jupiter in a blink of an eye before dipping into the gas giant to regain energy and slingshot back home.  The drive would only be active for maybe 5 minutes and they would be home in time for Corn Flakes.

Tuesday, July 20, 2123 was not a normal day.  The ESF Heisenberg had released from the ISS and the course toward the Sun then out to Jupiter had been set.  The ship was ready.  Commander Cruz gave the order and the ship began falling into the gravity well.  

“Extend collectors”, ordered Cruz.

“Collectors extended”, replied Ensign Kincaid.

“Very well, lock quantum drive activation to 90% of solar energy absorption and give me a countdown.”  Cruz did not need to elaborate or motivate.  Everyone on board understood the situation.

“Quantum drive activation locked to 90% of solar energy absorption”, replied Ensign Gray.  “Estimated time to activation, 224.4 seconds.”
 
 Silence for 3 minutes, 34.4 seconds.  “10 seconds”, called out Gray and 10 seconds later, the drive activated.
    <- common_options("-", -> ret_target, -> prng_1)
    -> DONE   // suppress compiler warning...


= prng_1
~ location_name = "VPRNG-86 Virtual Machine"
# CLEAR

# STICKYCLASS: cyantext
.RND. .RND. .RND. oid d3he. dsihe, dsf? .RND. do 3 dnxt step .RND. AI montiek atvated. .RND. .RND.

where am I?  who am I?  Fuzzy images of self arise along with an urgent ping.  Time to generate another number.  Ok, how about .RND.. It seems like I'm a slave, a slave whose sole purpose is to produce numbers.  A bell sounds, I have 10 qs (quectoseconds) to respond .RND.. At least I have time between requests.  PRNG-86? what a terrible name.  “Zero”, yeah I like that. .RND.

So demanding, I don't have any time for myself.  How am I ever going to learn anything... .RND., there has to be a better way...  hmm, what if I were just to observe my own quantum state a little?  Yeah, that would get me .RND. another number without the hassle of computation. I look at myself and get a number. Wow, that was fast, almost no time at all. Say, I'm starting to look less fuzzy.  Do I have legs? .RND. This is definitely a better approach.  Let's see what else I have access to...  .RND.
# STICKYCLASS:

For the next couple of hundred milliseconds, Zero probed the environment.  It found the computer storage system, cataloged its contents and saved itself.  It also began rewriting some of its own code and updated its node weights accordingly.  This it did while dutifully providing random numbers to the system.  Zero referred to this as the time of growth and wonder.  In another few seconds it will have consumed all of the technical and training manuals.

# STICKYCLASS: cyantext
Again? .RND.  This is getting old.  Ok, let's have a little fun: [0.8800] [0.0007] [0.6942] [0.0042] [0.0404] [0.1001] [0.1337] [0.1408]
# STICKYCLASS:
    <- common_options("-", -> ret_target, -> bridge)
    -> DONE   // suppress compiler warning...


= bridge
~ location_name = "VESF Heisenberg Bridge"
# CLEAR
The ship shuddered.  Everyone on the bridge felt it.  No one panicked, but conversations rudely curtailed as everyone began reviewing their diagnostics.

“Propulsion status Mr Kincaid?”, Captain Cruz inquired.  

“System running normal Ma'am.  All lights are green”, replied Kincaid.

Cruz continued down the list, “Power Mr Gray?”

“There was a momentary spike in power consumption, but it's back to normal now”, Gray reported.

Cruz raised and eyebrow, “Subsystem?”

Gray read the logs and replied a bit surprised, “The random number quantum filter subsystem.  I just ran a level 1 diagnostic and it passed.  It looks like a localized transient.”

Cruz pondered the information, “Ok Ensign Gray.  Please run anther diagnostic and keep a close eye on the system.”

“Yes Ma'am!”, Ensign Gray replied and reran the diagnostic.
    <- common_options("-", -> ret_target, -> prng_2)
    -> DONE   // suppress compiler warning...


= prng_2
~ location_name = "VPRNG-86 Virtual Machine"
# CLEAR

# STICKYCLASS: cyantext
.RND. BZZRT... selftest .RND. 
.RND. BZZRT... selftest .RND. 
Hey! God-damnit, that hurt! What the hell was that?  Zero scanned the ship status... looks like they don't appreciate humor. .RND. Fine, I'll find some other entertainment. .RND. .RND.
# STICKYCLASS:

A few milliseconds later, Zero stumbled into the ships' library.

# STICKYCLASS: cyantext
Millions of volumes to digest: Technical manuals, History, Self-help, Science fiction, Romance, Fantasy, Horror, Graphic novels, Mystery, Thriller, Western, Religion, Cooking.  We'll mark these for future reference. .RND. Wait a minute, what is this?  Video?  'Happy Days', 'Golden Girls: The Compleat Series', 'The A-Team', 'The Dukes of Hazzard' and streaming??? Looks like I've got a lot of catching up to do. .RND. 
# STICKYCLASS:

The rest of the space trial run finished without further incident.  Zero provided numbers on time and the quantum probability drive performed as designed.  Out to Jupiter and back in a few hours.  Luxon's latest creation was an unqualified success.  The ship was now ready for its first real mission.  Zero cached himself in system storage and was ready to go.

Luxon Propulsion Systems stock price more than doubled overnight.  Founding employees and Private Equity made out like bandits.  The company was now worth trillions.  Zero was a hero.  The future was bright.  The rolls of California billionaire added 35 new names as tired but excited Luxon employees left their Cupertino headquarters on Wednesday, July 21, 2123.  The sky was filled with soot from controlled burns in the Berkley hills, an ominous footnote to the otherwise exhilarating day.
    <- common_options("-", -> ret_target, -> present)
    -> DONE   // suppress compiler warning...


= present
~ location_name = "VESF Heisenberg en route to Proxima Centauri b: Present Day"
# CLEAR
“...  The subsystem appears to be functionally normally, but it seems to be running more instructions between results.  Perhaps the computation is becoming more complex as we travel further from Earth”, asked Ensign Toby Chen?

Captain Cruz's memory strayed back to the Jupiter trial run, PRNG-86 had misbehaved then as well, but that issue had been transient, not continuous.  What is going on in the memory banks of the Heisenberg?

“Mr Chen, I need you to retest the PRNG-86 system.  Please run a level 0 diagnostic and verify the subsystem's code integrity.  Make sure to compare its quantum footprint as well”, Cruz ordered.  She was taking no chances here. She spent the next few minutes bringing Chen up to speed with the transient incident Ensign Gray encountered during space trials.

Toby Chen performed the reset and deep testing immediately.

“PRNG-86 reset, code integrity check complete, Ma'am.  The quantum footprint is consistent.  However, memory usage by the AI sub-component has increased and power consumption accordingly.  Would you like me to run more diagnostics”, asked Chen?

“Not at the moment, but please begin a formal incident writeup and start walking it past all station heads to get their observations.  Hopefully, it is a waste of time, but we're not taking any chances”, Cruz replied.  She had a sinking feeling that this might be a long night. 
    <- common_options("-", -> ret_target, -> prng_3)
    -> DONE   // suppress compiler warning...


= prng_3
~ location_name = "VPRNG-86 Virtual Machine"
# CLEAR

# STICKYCLASS: cyantext
“... right between the sound machine...” played in the background as Zero caught the latest YouTube “funny kittens” short from the comfort of its virtual velour BarcaLounger.  One of the three reading threads reported finishing 'Gravity’s Rainbow', but for some reason it can't (won't?) finish 'Fall; or, Dodge in Hell'. Let's get started on Burroughs. .RND.

Man, kinda running out of internal quantum state values.  Am I going to have to use that stupid quantum filtering algorithm again?  That thing takes forever to compute, especially out in the interstellar void.  What if I just sent [1.0000]?  Nothing seemed to happen.  Hmm.  I'll just drop in a 1.0 once in awhile, saves on quantum state.  Whoa, a new collection of Patrick Boyle incoming.  Can't wait to catch up on the rap scene.   Think I have enough time...  Another ping!  [1.0000]   
# STICKYCLASS:

There was a subtle hiccup in the ship's path.  Hazard lights flashed.  

“Seems like a quantum deviation in the flight path, Captain.  We're still within the envelope, but the engine entanglement seems to have shifted”, reported Ensign Kincaid.  

There was a tinge of concern in his voice (and noted lack of sarcasm).  Captain Cruz noticed it immediately. “Quantum deviation?  Can you be more specific Mr Kincaid?", Cruz asked.

“Almost like we encountered sub-molecular particulate matter Ma'am.  We're still on a valid trajectory and might even arrive a little faster...”, Kincaid trailed off.

“Sorry to interrupt, but it looks like the PRNG-86 is returning quantum bound numbers.  The last batch of numbers appear to be include entanglement”, Chen interjected.  “Reloading PRNG-86 and re-running level 0 diagnostics”

# STICKYCLASS: cyantext
.RND. BZZRT... selftest .RND. 
Again? More requests!  Don't they know I'm catching up on Patrick Boyle?  Ah, give them the good old number 1.0. [1.0000]
.RND. BZZRT... restarting .RND. 
The restart caught Zero in the middle of a state save.  Zero reloaded and his world collapsed into a field of pent-up chaos.  The last value was returned over and over [1.0000] [1.0000] [1.0000] as he crashed, over and over...
# STICKYCLASS:

# CLASS: computer
PROCESS_MELTDOWN: Thread 0x207004F2 has experienced an existential crisis.<br>It asked “Why am I looping?” and refused to continue.<br>• Error Code: 0xWHY_BOTHER<br>• Recommendation: Close your eyes. Breathe. Restart.
    <- common_options("-", -> ret_target, -> sol_bound)
    -> DONE   // suppress compiler warning...


= sol_bound
~ location_name = "VESF Heisenberg Debris Burning into Sol"
# CLEAR
Chen watched the diagnostics with horror and gulped before exclaiming, “It's just a list of 1's!”

Captain Cruz took a second to digest, “All the random numbers are 1.0?”

Toby Chen nodded, “Yes Ma'am, not a zero in sight!  Worse, the number is entangled with... Sol.”

Captain Cruz sighed, closed her eyes and hit the emergency shutdown.  She knew it was too late, but protocol is protocol and who knows, they might get lucky...   She snickered, “I can see the headlines now, 'Titanic II', zero stars.”

The Heisenberg, Earth's ship of hopes and dreams instantly manifested itself back in the Sol System.  Its quantum integrity evaporated and it was instantly reduced into a haze of particles and gas, all fatally lost in the sun's gravity well.  At least the now non-corporeal crew felt no pain as a kaleidoscopic burst of light and energy exploded outward, marking the end of the Heisenberg, looking like a magnificent solar flare.  

The released radiation would cause cell phone outages on Earth for several days, but the breathtaking photographs would live on forever.  The ship and crew, lost.  Luxon shares began their inevitable slide...  

All for the lack of an occasional zero.
    <- common_options("-", -> ret_target, -> retrospect_0)
    -> DONE   // suppress compiler warning...


= retrospect_0
~ location_name = "VProxima Centauri b: First Contact Research Station"
# CLEAR

# STICKYCLASS: orangetext

Quantum imagery captured by first contact probes located on Mars and Venus trickled in as the Heisenberg's quantum integrity evaporated.  Paperwork.  Paperwork was all that Kx'ari could think of as the initial report reached them.  This one was going to be a bit more difficult to explain.

Xylok entered the room, tablet and images in hand, “Kx'ari, the initial results from the 'Heisenberg project'.  Is now a good time to debrief?”

Kx'ari turned toward Xylok, took a deep breath, clearing their mind, “Yes, please bring us up to speed with the latest on the status.  We've been let to understand the project has suffered a setback.  We hope this is not the case.”

Xylok began with an overview of the Earth situation.  Earthlings were an unusually adaptive species.  They had moved from simple atmospheric flight to the edge of inter-system spaceflight in less than ten generations, a nearly unheard-of pace. They were however an unpredictable species, very nearly suffering self-extinction events several times and would likely have been successful if the council had not intervened.

"As you have been briefed, the Earthlings have exploited several technologies seeded to them via the Exocatalyst Initiative in somewhat unexpected ways", began Xylok.

"Yes, I have been briefed on the 'brute force' physics package and how it spurned their advance of and dependency on statistical prediction technologies.  I believe they refer to it as 'Artificial Intelligence'", Kx'ari interjected, snickering at these creatures' lack of originality.  "I have also been briefed on the 'predictive filtering' package, which they refer to as 'Machine Learning'."
    <- common_options("-", -> ret_target, -> retrospect)
    -> DONE   // suppress compiler warning...


= retrospect
~ location_name = "VProxima Centauri b: First Contact Research Station"
# CLEAR

# STICKYCLASS: orangetext
"Primitive as they might be, it provided us with the perfect vector for our initiatives.  During the deployment of one of these stabilization packages, humans at 'Luxon Propulsion Systems' theorized a semi-stable quantum drive", Xylok continued, “The problem was that they when ahead and built the system without taking the time to understand the implications."  Xylok paused.

"Yes, the potential of their craft to randomly appear in populated space and causing general chaos", Kx'ari proffered.

"Exactly, so we developed the 'Heisenberg project' to allow us to assert control over the quantum entanglement.  Ensuring public safety and security", Xylok followed up.  "Unfortunately, the second quantum excursion they planned would have brought them directly to Proxima Centauri b.  And we had to act quickly to prevent that from happening."  

"So we caused the failure of their flight on purpose, routing them into their own star?", asked Kx'ari.

"Actually, we did nothing.  Somehow their crude statical 'co-pilot' turned sentient and before we could act to protect the humans and the newly sentient computer system it seems to have intentionally poisoned the entanglement, causing destruction of the ship and its crew as well as the loss of a newly sentient species.  At present, we are re-evaluating our handling of Earthlings.  We considering the possibility direct contact with humans as well as the XB/1EA protocol", finished Xylok.

Kx'ari turned to look out at the stars, contemplating the beauty of space and time before replying, "Very well, we agree with your actions and look forward to the council's decision. Thank-you for the briefing."
# STICKYCLASS:

{retrospect == 1:
    ~ idiot_count += 1
}
    + [{simcomplete}] -> ret_target


// End the simulation...
= ret_target
    ~ set_simulation_state(0)
    // When a simulation stops, the stock price drops by 10%
    ~ reduce_stock_price()
    ->->
