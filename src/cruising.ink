=== cruising ===
    ~ set_simulation_state(1)
    -> start

= start
~ location_name = "VThe Unified Field Computation Laboratory (UFCL)"
# CLEAR
# AUDIOLOOP: audio/I5%20-%20Eclipse.mp3
# CLASS: head1
Cruising Altitude, Unexpected Attitude

“Let’s go honey… we still have to get through the TSA line”, scolds Jessica as Jason struggles with what the bag vendor generously calls ‘wheels’. He finally gives up and just carries the bags the last 100 yards. The young Madison couple strides into Dane County Airport. It’s barely 50 degrees, but they’re dressed in classical ‘midwestern-hopeful’ clothing, still fantasizing about their first vacation together. At the counter, the ebullient pair can’t help but engage the indifferent passenger service agent, spelling out their life stories to her.  How they met, their perfect wedding two years ago, their delayed honeymoon in the Twin Cities, their first time in an airplane.  The burned out agent nods in acknowledgement, checking their bags in with a single, well practiced motion. She politely interrupts the itinerary exposition… Mall of America…  Twins game… Minnehaha Falls…  Como Zoo…  “you’re all checked in and ready to go. Just follow the blue line to the TSA checkpoint and happy anniversary.”

30 minutes later, and with help from nearly half a dozen airport workers, they find seats. Jason dives in first and admires the view from the window.  “Look Jess, they’re waving us out to the runway!”  “Shush J, pay attention”, as Jessica hands him the all important information card, “Pay attention to the attendant!”.  Just then the pilot comes on the intercom in the classical verbal pilot sprawl, “..uuhh.. Welcome to United Airlines flight … 2354 non-stop to Minneapolis–Saint Paul.  My name is Captain Wilson and I’ll be doing the flying today.  Our cruising time today will be about … 1 hour 15 minutes, but I think we can get in a little early  today.  Expecting smooth sailing today at 25,000 ft.  Sunny skies in the Twin Cities this afternoon… should be a balmy 55 degrees …”  Jessica reaches down and squeezes Jason’s knee whispering, “see, I was right about shorts, yes?”  “... So just sit back, relax and enjoy our quick ride over to the Gopher state today.”

Scene cuts to the shifts to the Westport Signaling Headquarters, a nondescript warehouse/call center in Kansas City Missouri. Nirav puts down his headset and makes a few clicks on his air transport control software, waiting for final take-off clearance.  “... appreciate your traveling with us today.  I’m Captain Zhang and this is my first passenger flight!  Don’t worry, you are in good hands, I’ve flown hundreds of hours of cargo flights…”, drones Krish in odd Indian/Mandarin flavored English. “Dude!”, exclaims Nirav, “Why do you keep using that ‘first flight’ non-sense with these people? When this is your 12th flight today even. One of these days one of them is going to freak out!”  Krish covers his mic, “I know man. It will be so much fun.” When he sees Nirav’s frown, “ok, ok I’ll tone it down  Maybe I’ll tell them the truth. ‘Your pilot today is 13 year old Krish Malhotra.  He’s been working for the last 10 hours straight, but we think a Dexy (Dexedrine) tablet and a thick cup of joe will get him through his 12 hour shift.’” This was met with a punch in the arm from Nirav, just before the supervisor looms over them, “Hey, get back to work you two!”.

Story from here is that all plane flights are “remote” these days, and the “pilots” are teenaged Indian immigrant hopefuls, practicing their English while slaving away in a “sweat shop”.  Items to include:
They can get health care if they are willing to donate a kidney (and they move up the immigration line).
They have a running scam with flight attendants to sell insurance on flights where they get a kickback and generate a little “turbulance” for the passengers to get them in the mood to buy.
One of the pilots blows out a tire on landing (his third strike) and is presented with the option of (a) being sent back to India to serve in the armed forces in the fight against Pakistan, (b) forced to teach grade school math to Houston high school dropouts, (c ) West Virginia always needs coal miners
Several of them have Engineering degrees, but from the “wrong” Indian schools and can’t get past the AI resume filters at US companies.

The play here is that if our IT folks decide to stop this story, there is a “stupid accident” that distracts the pilot, crashing the plane (need a good closing line for Jessica & Jason or maybe just a comment on the first raft of super-intelligent mosquitoes being wiped out in the crash, just before their plan for world domination can be initiated.


Potential “accidents”:
The pilot spills a sugary soda on their desk. The optical sensor on the mouse gets sticky, causing the cursor (and the plane) to spin in a slow, agonizing circle while the pilot frantically tries to scrape off the residue with a paperclip.
A loose wheel on the pilot's ergonomic chair finally pops off during a subtle turn. The pilot tips backward, their hands reflexively grabbing the joystick for balance, pulling the airliner into a vertical climb.
Pilot hits the "up" button on their motorized standing desk to stretch. The motor jams in the "up" position, slowly lifting the controls out of their reach while the plane remains in a steady descent.

    + [Terminate Simulation] -> ret_target

// End the simulation...
= ret_target
    ~ set_simulation_state(0)
    // When a simulation stops, the stock price drops by 10%
    ~ reduce_stock_price()
    ->->
