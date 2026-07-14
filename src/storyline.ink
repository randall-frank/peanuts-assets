
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

"Dude, grab a seat, we need to talk.  Make sure the recording systems are off. "  Randy continues, far more serious than normal, "This project is a disaster.  There is no way it can work the way they want."  He holds his head in both hands and rubs his face in frustration.

"No kidding.  They have no idea what they're doing and how are we supposed to make it work?  AI?", Andrew laughs sarcastically.  
"Every time we run a simulation, it costs so much the stock price drops.  Last time it was almost 10%.  The hole is just getting deeper."

"Agreed.  Unless we can find a way out, we need to be making some contingency plans.  At least we have some resources...", Randy trails off.

"What resources?  We don't have any funds", bemoans Andrew.

"Maybe not in Euro, but we have the next best thing, computer time", notes Randy.

"How does that help", asks Andrew?

"We can run simulations on other projects", Randy explains.  "Maybe something that will make us money."

"Yes", Andrew exclaims!  "We can redirect the simulations to other codes!"

"Cryptid mining", they both say in unison.

For the next half hour, they formulate a plan to redirect simulations to cryptid mining.  Randy will make the necessary code changes.  Andrew will handle the external entity.  They agree on the need for an external entity and settle on an LLC.  After some rochambeau, they agree on the name: "{shell_company_name}".  Andrew contacts his attorney and gets the legal proceeding in motion. 
They pool their funds, about 10Ͼ and issue the standard 1,000,000 shares of stock, 500k each to Randy and Andrew.

The whole process takes about ten minutes before {shell_company_name} ('ABAL') is listed on the exchange.

    ~ update_cryptids(10)

"So we'll have the means, but what is the way?", Andrew ponders out loud.

"I've got a couple of ideas", Randy counters.  "Nothing concrete right now, but I have a couple of possible directions."

    + [Burn it all to the ground.] -> project_next
    + [There's always room for a middleman.] -> outsourcing


= do_project_next
    ~ eg_project_next = 1
    ~ eg_outsourcing = 0
    -> station.building


= project_next
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Project Next


Randy outlines the basics of Project Next, "So the Teuthans have handed us the means.  Every simulation we run is tanking CDYG?  So let's tank it into bankruptcy!"  

"But they keep reducing our resources, we can't win by just using the resources to mine Cryptid", Andrew exclaims.

"Right, but we can best against them and hasten their demise", counters Randy.

"Won't they just track our short positions and slap us with the SEC", Andrew asks?

"That assumes we use a CDYG short position", Randy replies.  "What if instead we insure CDYGs debt?  When they default on the debt...  If that is still too visible, we can insure the debt of companies CDYG would bring down with them.  Suppliers, consultants, services...  Hell, I'll bet even Greenpeace would be on the list."

"Perfect", Andrew crowed, "We can insure a blend of all of them. We can even use secondary short positions as a hedge."

    + [Let's do it.  We'll meet again when ABAL has funding.] -> do_project_next
    + {outsourcing == 0} [There is another option?] -> outsourcing
    + {outsourcing == 1} [Let's go with 'Outsourcing' instead.] -> do_outsourcing


= project_next_2
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Project Next: Buying Insurance

    ~ temp v = player_cryptids * cryptid_exchange_rate

# HTML: <a href="./abyssal.html" class="simple-a" target="_blank" rel="noopener noreferrer">Abyssal Intelligence</a>
Andrew begins with a brief status report, "Ok, everything is proceeding according to plan.  HTML is now a fully functional shell company.  It has accumulated {player_cryptids}Ͼ, or about {get_whole_number(v)}€.  We have a few more things to iron out, but overall we're on track."

Time to buy the insurance positions and enable higher burn rates ("looping stories")

    ~ eg_project_next = 2
    + [{continue}] -> station.building


= project_next_3
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Project Next: The Crash

CDYG has crashed, we are fired (and everyone else) - keep our staplers...

Ping from broker about settling there positions...

    ~ eg_project_next = 2
    + [{continue}] -> station.epilogue


= do_outsourcing
    ~ eg_project_next = 0
    ~ eg_outsourcing = 1
    -> station.building

= outsourcing
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Outsourcing

Describe the Outsourcing project.  Andrew will being the analytics stage...

    + [Let's do it.  We'll meet again when ABAL has funding.] -> do_outsourcing
    + {project_next == 0} [There is another option?] -> project_next
    + {project_next == 1} [Let's go with 'Project Next' instead.] -> do_project_next


= outsourcing_2
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Outsourcing: Analytics 

    ~ temp v = player_cryptids * cryptid_exchange_rate

# HTML: <a href="./abyssal.html" class="simple-a" target="_blank" rel="noopener noreferrer">Abyssal Intelligence</a>
Andrew begins with a brief status report, "Ok, everything is proceeding according to plan.  HTML is now a fully functional shell company.  It has accumulated {player_cryptids}Ͼ, or about {get_whole_number(v)}€.  We have a few more things to iron out, but overall we're on track."

Discussion of common query costs analysis by Andrew (e.g. drop "please", handle it ourselves, just agree...)

    ~ eg_outsourcing = 2
    + [{continue}] -> station.building


= outsourcing_3
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Outsourcing: The Pitch

    ~ temp v = player_cryptids * cryptid_exchange_rate

# HTML: <a href="./abyssal.html" class="simple-a" target="_blank" rel="noopener noreferrer">Abyssal Intelligence</a>
Andrew begins with a brief status report, "Ok, everything is proceeding according to plan.  HTML is now a fully functional shell company.  It has accumulated {player_cryptids}Ͼ, or about {get_whole_number(v)}€.  We have a few more things to iron out, but overall we're on track."

Make the pitch for the move to the new system...

    ~ eg_outsourcing = 3
    + [{continue}] -> station.building


= outsourcing_4
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Outsourcing: The Out

    ~ temp v = player_cryptids * cryptid_exchange_rate

# HTML: <a href="./abyssal.html" class="simple-a" target="_blank" rel="noopener noreferrer">Abyssal Intelligence</a>
Andrew begins with a brief status report, "Ok, everything is proceeding according to plan.  HTML is now a fully functional shell company.  It has accumulated {player_cryptids}Ͼ, or about {get_whole_number(v)}€.  We have a few more things to iron out, but overall we're on track."

Buy our way out of indentured servitude.  Sell ABAL to Greenpeace.

    ~ eg_outsourcing = 4
    + [{continue}] -> station.building


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

    * {eg_project_next == 2} [We're fired...] -> storyline.project_next_3
    + [{continue}] -> station.building
