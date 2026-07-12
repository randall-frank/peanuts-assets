
=== storyline ===

// Most changes in the "macro" storyline happen in these stitches

= make_plans
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Making Plans

~ newswire_message = newswire_item()

"Dude, have a seat, we need to talk.  Make sure the recording systems are off. "  Randy continues, far more serious than normal, "This project is a disaster.  There is no way it can work the way they want."

"No kidding.  They have no idea what they're doing and how are we supposed to make it work?  AI?", Andrew laughs sarcastically.  
"Every time we run a simulation, it costs so much the stock price drops.  Last time it was almost 10%.  The hole is just getting deeper."

"Agreed.  Unless we can find a way out, we need to be making some contingency plans.  At least we have some resources..."

"What resources?  We don't have any funds", bemoans Andrew.

"Maybe no Euro, but we have the next best thing, computer time", notes Randy.

"How does that help us", asks Andrew?

"We can run simulations on other projects", Randy explains.  "Maybe something that will make us money."

"Yes", Andrew exclaims!  "We can redirect the simulations to other codes!"

"Cryptid mining", they both say in unison.

"We'll need some place to store the tokens.  Preferably an external entity...  Time to start an LLC", says Randy.

"We'll need to get an attorney", Andrew adds.  "And we'll need some seed money, nothing extravagant, maybe 1000€?"

"I can swing that, if you can set it up.  I've even got a name: '{shell_company_name}'"

Andrew emits a hearty laugh, "I like it.  Zelle me the funds and I'll have it up and running later tonight.  Look for the symbol 'ABAL'"

Randy rapidly enters some numbers into his data pad and Andrew receives the conformational beep.

"Great", Randy says.  "I'll start working on the simulation redirect code right away."

    ~ update_cryptids(1000)
    + [{continue}] -> make_plans_pt2


= make_plans_pt2
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Making Plans


"So we'll have the means, but what is the way?", Andrew ponders out loud.

"I've got a couple of ideas", Randy counters.

    + [Burn it all to the ground.] -> project_next
    + [There's always room for a middleman.] -> outsourcing


= project_next
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Project Next


TODO

    ~ eg_project_next = 1
    + {outsourcing == 0} [There's always room for a middleman.] -> outsourcing
    + [Return to server control room] -> station.building


= outsourcing
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Outsourcing


TODO

    ~ eg_outsourcing = 1
    + {project_next == 0} [Burn it all to the ground.] -> project_next
    + [Return to server control room] -> station.building


= violence
~ location_name = "LEmployee Lounge"
# CLEAR
# SBIMAGE:
# CLASS: head1
An Intervention?

~ newswire_message = newswire_item()

Andrew looks at Randy with concern.  "You okay?" he asks.  

Randy looks at him quizzically, "Yeah, I'm fine.  What's up?" 

"Dude, I'm a little concerned about some of the simulations we've been running with your new code...", he trails off.

A confused look drapes over Randy's face, "What do you mean?" 

Andrew sighs, "Well, I've been running some simulations with your new code and the results often result in deaths.  I'm seeing a marked increase in ultra-v.  Like, really violent stuff."

"Interesting.  There's nothing I've encoded into the system for that, at least not explicitly.  We should correlate with the commit logs and look for traces of that behavior."

"Sounds good.  I'll check the commit logs and see what I can find, ", Andrew starts pounding out a query.
A minute or so later Andrew face palms, "Looks like we're not the only contributors to the current context.  It looks like the ultra-violent behavior correlates with a new agent."  Again, he types furiously, "I'm going to need to look into this further.  It looks like the user 'CaptKraal' added and locked in a new agent called 'Daisy'."

Randy shakes his head, "Alright, we've got to end this project before we lose control.  See what you can do to isolate and insulate Daisy's stream.  We might not be able to remove the effect, but we can certainly lessen it."

Andrew agrees, "On it.  I'm introducing 'Cletus' as a nuisance  filter to the Daisy stream.  I'll also add a new agent called 'Cooter' that will monitor and report on any anomalies in the system."

"Good catch man. I'm going to start looking into is we can isolate this project from the rest of the network."
    + [{continue}] -> station.building


= stock_drop_level1
~ location_name = "LBlue Lagoon Radula Conference Room"
~ set_simulation_state(0)
# CLEAR
# IMAGE:
# SBIMAGE: items/squid4.png
# AUDIOLOOP:
# CLASS: head1
Emergency Stock Alert Meeting

~ newswire_message = newswire_item()

Andrew and Randy are abruptly summoned into the conference room.  Expecting another superfluous status meeting, they are a bit surprised to see that Kraal and Zyn are already there.  They both look a little unsure of themselves, a very different look from their usual cocky selves.  Zyn was disheveled, unshaven and lacking his ubiquitous white suit.  Kraal's globe water was muddy and his vestigial 10th tentacle seems to have developed (likely drug induced) Parkinson's.

Kraal turned at their entrance and pointed at Andrew and Randy interrupting the private conversation he and Zyn must have been having online, "... these two are responsible.  ", long pause, "Yes, Zyn and I are dealing with them right now.  We expect to have this under control by tomorrow."  Shorter pause, "Yes, thank you Blessed Chairman J'araek, we ..." The other end of the connection must have dropped.

Kraal and Zyn appear to sag even more.  They look at each other and take a moment to regain some level of composure.  

Kraal's anger quickly rebounds, "You two are going to ruin everything!  What are you imbeciles doing?"

Randy and Andrew look at each other, confused, but smart enough to know that Kraal is not in the mood to welcome any response from them.

Zyn reads their confusion and fills in the blanks, "Have you gentlemen seen the current stock price?", he glances down, "It's down to {get_whole_number(stock_CDYG)}.{get_decimal_part(stock_CDYG)}€!", he looks up, "We have to get this under control before the stockholders start demanding answers!"

Kraal continues, "This is the most most powerful AI ever developed.  Just look at how expensive it is to run!  Every one of your simulations is costing billions.  We can't afford to keep running them without turning up something to exploit!"

Andrew and Randy look perplexed. 

This infuriates Kraal further, "Look, any Chimpanzee can make money with it, even Zyn!"

Andrew is about to say something, but a surreptitious nudge from Randy stops him. 
    + [{continue}] -> stock_drop_level1_pt2


= stock_drop_level1_pt2
~ location_name = "LBlue Lagoon Radula Conference Room"
# CLEAR
# IMAGE:
# SBIMAGE: items/squid4.png
# AUDIOLOOP:
# CLASS: head1
Emergency Stock Alert Meeting

~ newswire_message = newswire_item()

"Do I have to do everything! Here, I'll show you inbred primates how it's done," Kraal hovers over the terminal, typing in 'how to make quick easy money'.

# CLASS: computer
Become an independent entrepreneur! Leverage a universally recognized portfolio of premium health, beauty, and home care products people already use every day. Instead of just earning retail profits on personal sales, the real magic happens when one mentors and builds a dedicated team of like-minded individuals, unlocking exponential residual income as everyone succeeds together. A turnkey opportunity to build a scalable asset and secure true financial independence.

Kraal steps back, supremely proud of his work, "See, how can you two be so stupid?  Zyn, look into this business opportunity immediately before someone else does!  We might be able to assuage the shareholders a little while until the pair of ingrate morons figure out how to make us some real money."

It takes a supreme effort by Randy and Andrew to remain stoic, but the alternative could be deadly.

Kraal takes a deep 'breath', bubbles trickle to the top of his headgear, "Ok, we'll give you two another chance to prove yourselves.  Thanks to the two of you, we can't afford to waste any more resources, so we'll be cutting your CPU allocation.   Just get the job done!"

A seed of a potential path out of this mess begins to form in Randy's mind.  Yes, it could work, but we'd need a little luck and need to act with expeditiously.  "Andrew, meet me in the deck 7 private alcoves when you get a chance.  We need to talks about making some plans", he whispered.
    ~ cpu_cpus = cpu_cpus / 2
    + [{continue}] -> station.building



= stock_drop_level2
~ location_name = "LBlue Lagoon Radula Conference Room"
~ set_simulation_state(0)
# CLEAR
# IMAGE:
# SBIMAGE: items/squid4.png
# AUDIOLOOP:
# CLASS: head1
Emergency Level 2 Stock Alert Meeting

~ newswire_message = newswire_item()

Andrew and Randy are abruptly summoned into the conference room.

TODO

    + [{continue}] -> station.building


= stock_drop_level3
~ location_name = "LBlue Lagoon Inkwell Conference Room"
~ set_simulation_state(0)
# CLEAR
# IMAGE:
# SBIMAGE: items/squid4.png
# AUDIOLOOP:
# CLASS: head1
Emergency Level 3 Stock Alert Meeting

~ newswire_message = newswire_item()

Andrew and Randy are abruptly summoned into the conference room.

TODO

    + [{continue}] -> station.building
