
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

"I've got a couple of ideas", Randy counters.  "They kind of pursue different directions."
    + [Burn it all to the ground!] -> project_next
    + [The house keeps the vig.] -> outsourcing


= do_project_next
    ~ eg_project_next = 1
    ~ eg_outsourcing = 0
    ~ ABAL_running = 1
    -> station.building


= project_next
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
"Project Next"

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

TODO

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

TODO 

CDYG has crashed, we are fired (and everyone else) - keep our staplers...

Ping from broker about settling their positions...
    ~ eg_project_next = 2
    + [{continue}] -> station.epilogue


= do_outsourcing
    ~ eg_project_next = 0
    ~ eg_outsourcing = 1
    ~ ABAL_running = 1
    -> station.building


= outsourcing
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
"Outsourcing"

Randy outlines the basics of Outsourcing, "We've been spending a lot of time with the AI recently..."

"Yes", Andrew says, "go on."

"Well, as you know they are pretty expensive, especially for a lot of the things people ask."  Randy takes a deep breath and continues with more commitment, "People are asking it to do simple, math. To get movie tickets, to order food...  even to convert unit systems.  These are ludicrously expensive for an AI to execute.  I get the feeling that a quarter of their use is simple stupidity.  Maybe half of their use is laziness.  Another 20% are insecure folks just looking for confirmation and support.  Basically, they just want a 'yes man'."

"Ok, I might argue with the percentages, but I get your point", Andrew says.  "Sometimes folks just need a calculator, a redirect to another ready-made webapp and yeah, they just need a supportive friend.  That leaves very little 'real AI' work...  Maybe a few percent?  I think I can guess where you're going.  Fronting an AI with something, perhaps even a human, handling the junk queries could save a lot of money."

"Even simple query rework can help", Randy continues, "Even just removing the 'pleasantries', 'please', 'thanks', etc could reduce the number of tokens used.  I'm thinking we set up a company for this and convince Kraal to switch providers to our company.  We might even be in a situation where we could help steer the CephaloDynamics direction!"

"Well", Andrew ponders a bit, "I'm not sure I'd go that far, but I agree on the general assertions and direction.  Let's make sure our assumptions are correct first.  I can monitor the queries for some time and see how accurate our assumptions are."
    + [Let's do it.  We'll meet again when we have the numbers.] -> do_outsourcing
    + {project_next == 0} [There is another option?] -> project_next
    + {project_next == 1} [Let's go with 'Project Next' instead.] -> do_project_next


= outsourcing_2
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
AI Query Analytics

    ~ temp v = player_cryptids * cryptid_exchange_rate

# HTML: <a href="./abyssal.html" class="simple-a" target="_blank" rel="noopener noreferrer">Abyssal Intelligence</a>
Andrew begins with a brief status report, "First, on the LLC front, everything is proceeding according to plan.  HTML is now a fully functional shell company.  It has accumulated {player_cryptids}Ͼ, or about {get_whole_number(v)}€.  We have a few more things to iron out, but overall we're on track."

"Second", he continued with a big smile, "Here are the results of the AI query analytics:"

# CLASS: computer
QUERY_ANALYSIS

"So, a bit more than half the queries could be handled by code, another 30% by a mechanical turk.  Less than 10% would need to be handled by a full AI", Randy asked?

"Yep, that's about right", Andrew replied.  "I did some analysis of the 'mechanical turk' costs and the simple API redirection.  It looks like we could provide the service at maybe 40% of what our current AI costs."

"Perfect!", Randy exclaimed.  "I vote we should charge CephaloDynamics half price and skim off the extra 10% into {shell_company_name} for a rainy day."

Andrew agreed, "And I second it.  Keep an eye open for an opportunity to pitch this to Kraal.  Let's get this done!" 
    ~ eg_outsourcing = 2
    + [{continue}] -> station.building


= outsourcing_3
~ location_name = "LBlue Lagoon Cephalon Conference Room"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
The Outsourcing Pitch

Randy ushers Kraal and Zyn into the conference room.  Andrew is sitting in front of his laptop and Randy guides them to sit next to him while Randy takes a seat across from them.  Kraal looks around the room, noting the various displays and equipment.

"Andrew and I have been looking to improve our simulation efficiency and it looks like we have a new approach", Randy said.  "We have been looking at ways to reduce our AI costs and it looks like we can do that by outsourcing some of our simulation work to a third party."

"Ok, we're listening", Kraal replied with skepticism.  "Tell us more about this 'third party'."

# HTML: <a href="./abyssal.html" class="simple-a" target="_blank" rel="noopener noreferrer">Abyssal Intelligence</a>
"Let me introduce you to {shell_company_name}.  I have been talking with their AI experts.  We described our current system and the inefficiencies we are experiencing.  They have a new technology that runs the same simulations we are now, but at half the cost!  Check out their website: HTML", said Andrew.  "We took the extra step of actually running seed 107818a4 on their system and we got the same results, but for 42% fewer tokens."

"Sorry guys", Randy interrupts, "I've got a fire I need to put out.  Andrew, you got this?" Andrew nods as Randy's attention drifts to his phone where he begins to text.

"Randy and I have negotiated a deal with them.  We have worked out a deal where they replace our current AI provider and they provide pricing guarantees", Andrew continues.

"Guarantees?", Zyn asks.  "What kind of guarantees?"

"They agree to run a single simulation of our choice, once a month on our current provider and compare the pricing", answered Andrew, "If the {shell_company_name} price is more than 55% of our current provider, the contract is terminated.  Fair enough?"

"Sounds good to me", Zyn says, "I'll have the legal team review it."

"Wait, wait", interjects Kraal, "How do we know we're still getting the same level of intelligence?"

"Well", Andrew started, "as I mentioned before we compared simulation results from some existing simulation results, on their dime of course, and they were comparable to our current provider.  We can include that check with the monthly price check?"

"Good idea", Zyn says, "I'll have our team review that contract change too."

"I want to try it out myself", announces Kraal, "I doubt any of you are really qualified to to evaluate AI results."

Zyn silently rolled his eyes.
    + [{continue}] -> outsourcing_3_pt2


= outsourcing_3_pt2
~ location_name = "LBlue Lagoon Cephalon Conference Room"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Kraal's AI Testing

"Of course.  Here's their AI prompt", Andrew responds, turning his laptop to Kraal. 

Kraal begins typing on Andrew's laptop:

# CLASS: chatin
What is the capital of France?

Andrew surreptitiously glances at Randy.

# CLASS: chatout
Paris, up until its destruction during the World Cup riots in 2165.  The current capital is Vichy.

"Ok, let's try something more challenging", says Kraal.

# CLASS: chatin
Please convert 10C into Fahrenheit.

Randy smirks a bit, but keeps interacting with his phone under the table.

# CLASS: chatout
10 degrees Celsius is 50 degrees Fahrenheit.  Would you like me to convert to Rankine?

"'Rankine'?  Is this thing on space crack?" asks Kraal.  "Time to check reasoning..."

# CLASS: chatin
Does a straw have one hole or two?

There is a delay in the response, but the 'AI' responds...

# CLASS: chatout
One.  A straw is a single continuous tunnel with two open ends. Topologically equivalent to a torus, which has one hole.  The genus of the straw is 1 and the Euler characteristic is 0 (sum of the first three Betti numbers), Kraal'goth.

Kraal is surprised by its use of his name and immediately enters...

# CLASS: chatin
How did you know it was me, Kraal'goth?

Andrew furrowed his brow.  Yeah, how did it know?

# CLASS: chatout
This laptop's camera is active and I analyzed the video stream. With a beak that impressive there was a 85.2% chance that you were Kraal'goth.  Cross referencing with the questioning style from a simulation you ran earlier improved the probability to 98.7%.  I

Andrew silently mouths: 'smart ass'.
    + [{continue}] -> outsourcing_3_pt3


= outsourcing_3_pt3
~ location_name = "LBlue Lagoon Cephalon Conference Room"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Kraal's AI Testing

"Ok", Kraal performs the Teuthan equivalent of scratching their head, realizes he is being watched and slips into a 'pondering' pose. "Well that answer was a bit simplified, but it is technically accurate.  This AI should do."

Zyn smiles wryly, tired of Kraal's incessant grandstanding, "Done then. Send me the contracts Andrew and I'll run them through legal. We should have them signed and in place by close of business. Hopefully this will help reverse the current stock trajectory.  Good job guys!"

Kraal nods in acquiescence, "Finally you guys did something useful."  Sarcastically, "Way to do your job!" 

He disengages and turns to Zyn, "Z, I've got a massage scheduled in a half hour.  Let's get moving, maybe I can get you in as well if we get there early."

Zyn nods.  

Kraal and Zyn left the room.

Randy brings his phone up from under the table, "So that went... well?"

"Dude, you almost had me laughing out loud. Rankine? Betti numbers? Beak size! Really man", Andrew laughed.

"'Cum dubitas, adulare'! Yeah, I couldn't resist.  I'm just relieved he didn't ask for a joke", Randy replied, "I only have one you know."
    ~ eg_outsourcing = 3
    + [{continue}] -> station.building


= outsourcing_4
~ location_name = "LBlue Lagoon Cephalon Conference Room"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
The Out in Outsourcing

"Gentlemen", began Zyn.

"Zyn", Randy and Andrew respond warily.

"Quite the enterprise you two have going here with {shell_company_name}", Zyn waits for them to respond.

Randy and Andrew feign ignorance.

"Come, come now.  It did not take a genius to figure it out.  The AI price drop was substantial as you asserted to Kraal and CephaloDynamics appears to have turned a corner while {shell_company_name}'s crypto assets continues to grow.  I figured I should get to know our new partner in more detail.  It turns out that Dr. Zephyr has been dead for years and Dr. Nova is in the sociological sciences."

"That doesn't means it's us", Randy blurted out.  "Could be anyone!"

Zyn snickers, "Ask the AI to tell you a joke sometime.  'Why does a chicken coup have four doors?' ring a bell?"

Randy silently mouths 'Because if it had two it would be a chicken sedan!'.

"And ask it for movie recommendations sometime.  I didn't know that 'Rubber' and 'Naked Lunch' were such pieces of cinematic relevance.  When I cross referenced them with people's streaming histories...  Well, let's just say very few people watch those films regularly", coos Zyn. "I did enjoy them by the way."

"Ok, ok, ABAL is us", Randy admitted, "we just needed a way to keep CephaloDynamics afloat and if we could make a few bucks.  Are you going to turn us in?"

"Turn you in?", Zyn laughed, "Are you kidding me?  I'd like to make you an offer!"

"What kind of 'offer' do you have in mind?", Andrew croaked guardedly.

"Why I, Greenpeace, would like to buy ABAL lock stock and barrel", Zyn explained. "We'll pay three times the market price for the million shares and we'll pay off your CephaloDynamics contracts." 
    + [{continue}] -> outsourcing_4_pt2


= outsourcing_4_pt2
~ location_name = "LBlue Lagoon Cephalon Conference Room"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
The Out in Outsourcing

"Why would you want to buy ABAL?", Andrew asked incredulously.

"Simple, for control, plain and simple." Zyn continued, "The Teuthans are idiots, as you know and they've been running this company into the ground.  They have become addicted to this AI that seems to have all the right answers for them, at the right price.  We intend to feed them what we want them to hear and do and, just like you, skim a little off the top.  What do you guys think? Think hard, as this might be the best offer you ever get."

"Counter-offer", says Andrew. "One point five times the market for 80 percent of the ABAL shares and you'll buy our contracts out. You'll have control over ABAL and we'll continue to have a bit of the revenue stream."

"Done. Pleasure doing business with you", says Zyn.  He extends his hands and they shake on it, even as the paperwork is automatically generated and sits in Randy and Andrew's inboxes.  Zyn stands up, smiles and nods as he walks out of the room.

"Any reason we should continue working here", asked Randy?

"The contracts check out. They're all signed and registered", Andrew marveled at modern automated business processes.  "We appear to be set for life... So no, there is no reason to continue working here.  I'm sending my resignation... now."

"I'm sending mine too", Randy said.  He turned to Andrew and shook his hand. 

"Say, who did you leave running the AI", asked Andrew?

Randy laughed out loud, "You remember 'Eliza'?  Surprising how far version 234.2.1 can take you."

"How does that make you feel?", Andrew joined him in laughter.
    ~ eg_outsourcing = 4
    + [Free men deserve a good dinner] -> station.epilogue


= do_fishbowl
    ~ eg_fishbowl = 1
    -> station.building


= fishbowl
~ location_name = "LCafeteria, Deck 5"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
The Idiocracy Solution (aka 'Project InkStream')

Andrew slides into the seat across from Randy in the main cafeteria.  He has opted for the hydroponic kelp tartare.  As the putrid oder, loved by Teuthans everywhere, reaches his nose his stomach revolts.  He covers the dish with a plastic plate and pushes the tray off to the side.  Looks like another liquid lunch as he pops a couple of protein tabs, washing it down with a Dublin Dr Pepper.  

He looks over at Randy who has opted for simple steamed buns which he slowly dredges through an amalgam of oyster sauce and wasabi.  "You remember our discussion about insanity and how its redefinition serves as the backbone of society through the ages?", Andrew asks.

"You mean the societal trajectory, extending from the raw chaotic crucible of the 'Idiocracy' effect?", Randy offers through a mouthful of bun.

"Yes, I've been thinking about algorithmically biased social media platforms", offers Andrew, "and their potential for short-term exploitation of specific audiences, down to individually modeled target entities."

Randy catches the general notion and sensing the potential, returns his partially eaten bun to the tray, "You have my full attention.  What do you have in mind?"

Andrew starts his elevator speech, "You know how the Teuthans can't get enough of 1980's sitcoms?"

"How could I not?  I swear if I hear dixie one more time!!!"

"Well, I did a little legwork researching Teuthan YouTube habits.  Did you know they spend 90% of their free time watching these things?  And it turns out that the IP rights to these gems can be had for a song and a handshake?"  Andrew pauses for a moment, giving Randy time to digest the implications, "I'd like to start a social media service that centers around such content.  I call it 'InkStream'.  The platform will stream this content directly into their homes and offer a 'premium' service for more exclusive content and enhanced chat features based customized AI feedback."

Randy is warming up to the concept, "But won't we need both data and AI servers?  That could get expensive to operate."

"I'm planning to leverage their own hardware.  A distributed asymmetric cluster, running directly on their personal devices, customizing the content with locally generated AI feedback.  I think it could be a huge hit."

Randy is onboard, excitement building, "Nice, I've been trying to come up with a way to turn the tables on the squid-brains, this could be a great vehicle.  Sort of an idiocy accelerator.  How do we get started?"

# HTML: <i class="fa-brands fa-octopus-deploy fa-beat" style="--fa-animation-duration: 2s;"></i> 
And they are off and running.  Andrew starts up InkStream HTML™ with gumptious hutzpah while Randy quietly acquires the rights to the "Duke's of Hazzard", "Beverly Hillbillies" and "Green Acres" with plans for the "A-Team" and "Mc Hale's Navy" to follow. 

The result is an immediate sensation.  Busy Teuthans are served up a steady diet of the most ridiculous content imaginable.  Squid brains are particularly susceptible to such drivel.  Andrew has the foresight to include little puzzle games viewers can play while ingesting the stream.  The idea is to track viewers ability to think critically and make rational decisions.  The results are then fed back into the stream manipulation algorithms.  The Idiocracy Solution begins to take flight...
     + [Project 'InkStream' is a reality] -> do_fishbowl


= fishbowl_2
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
Progress on "Project InkStream"

~ temp n = INT(social_followers)

Andrew waits for Randy to sit, but can hardly contain himself, "InkStream has over {n} followers and is growing fast!  Over 90% of them are Teuthans. We have also been able to secure some key IP partnerships with other organizations.  It turns out there are a lot of old 4:3 TV shows out there that can be had for pennies.  We've even started using free 'starter' AI cycles to generate new content for these old shows. There is a whole new season of "The Dukes of Hazzard" coming exclusively to InkStream."

Andrew slows down, "It's time to accelerate our efforts.  Do you remember 'Blipverts'?"

Randy looked a little puzzled, "You mean that fictional technology from Max Headroom?"

"Yep, it kind of made it back into mainstream with 'Fight Club', if you remember the film splicing", Andrew continued.

Randy lets out a deep gut laugh and smiles, "Yeah, I remember. 'It's only after we've lost everything that we're free to do anything.' "

"Well, I think we're at that point now," says Andrew.  "It is pretty easy to guess with over 99% probability who is watching a stream."

"Go on," says Randy, starting to anticipate where this is going, "Exactly what are you proposing?"

"You know that Teuthan optic nerves act like a matched filter for specific electromagnetic wavelengths and patterns of motion.  Likewise, their hearing is sensitive at lower frequencies and can act more like 'sonar' to a degree."

"Due to their evolution on Europa", says Randy.

"Exactly," says Andrew.  "So, we use that to our advantage.  I've been experimenting with subliminal 'Blipverts' constructed from specific patterns and frequencies that Teuthans are naturally attuned to, but are basically undetectable by humans senses.  Just to be safe, we only embed them in streams being seen by Teuthans.  The cherry on top, we can fine tune streams to specific viewers on the fly.  Their own browsers will be doing the injection making it entirely ephemeral.  If anyone looks later, the stream they see will be clean."

"So then we hit them with 'eat more spaghetti' until they explode, that kind of thing?", asks Randy.

"Skip that, let's swing for the fences.  Let's convince them that Fonzie is the messiah.  That Jessica Fletcher IS a serial killer.  That you CAN win friends with salad."  Andrew goes for the jugular, "Let's render them blubbering idiots."

"Ah, the 'Idiocracy' approach," says Randy.  "I like it.  Time to rule in Hell!  Let the Blipverts begin."
    ~ eg_fishbowl = 2
    + [{continue}] -> station.building


= fishbowl_3
~ location_name = "LPrivate Alcove, Deck 7"
# CLEAR
# IMAGE:
# SBIMAGE:
# AUDIOLOOP:
# CLASS: head1
The Sell Out

Andrew and Randy approach the alcove door.  It spirals open as their personal trackers come within range and are cross-referenced to the meeting attendee list.

The room is dimly lit, the silhouette of Zyn can be seen seated in the most comfortable seat in the room, stiff as a board. He is watching an episode of the Beverly Hillbillies on his tablet.  "...How do you like yer possum, Lowell, fallin' off the bones tender or with a little fight left in it?..."  Zyn cracked the first smile Andrew and Randy have ever seen.  He swiped to close the device, set it down and gestured that they take a seat.

"{social_followers} followers on InkStream in what, two weeks?", Zyn asks.  "and my analytics show that 90% of them are Teuthans spending over 8 hours a day on the platform."

"The numbers are pretty fluid, but those seem pretty accurate", stammered Andrew.  "Do your numbers report advertising revenue and advertizer ROAS as well?"

"Yes, both very impressive, but not why I'm here talking to you", Zyn continues. 

Andrew and Randy exchange confused looks.  A pregnant pause later Randy asks, "Ok, I'll bite.  Just why are we speaking then?"

Zyn upturns his tablet and brings up a two dimensional frequency plot illustrating dynamic audio and visual frequency distributions of the Hillbillies episode streaming on InkStream.  "This...", Zyn says as an odd sequence of spikes pop up and disappear from the plot, "...is why we are talking.  I had to log in with a Teuthan ID to see it.  Your secret sauce gentlemen, nano-impressions?  What did they used to call it 'blipverts'?"

"Tuned specifically to the viewer.  Today at the 'species' level, tomorrow, the 'individual'.  Generated directly by their own display systems", bragged Andrew.  "It has proven far more effective than we imagined.  But why are you interested?"

"That should be obvious gentlemen", Zyn paused.  

For a moment Randy questioned Zyn's repeated us of 'gentlemen' and reacquainted himself with the exits from the room.  

Zyn noticed his discomfort, "Relax.  I'm here to buy it from you."  Eyebrows raise from Randy and Andrew as Zyn continues, "We, Greenpeace, have been at the beck and call of Teuthan imbeciles for decades.  InkStream represents a mechanism for us to turn the tables.  Some fine tuning of the micro-burst assets, but yes, we can right an historical wrong.  We are prepared to make you an offer of life-altering scale to hand us the keys and just walk away."

It is surprising how quickly a deal can be consummated when both parties share aligned purpose.  In twenty minutes, binding documents are digitally inked and access keys exchanged.  Faster than buying apples. 

Zyn rises, proffers his hand and the deal is complete, "Thank-you gentlemen.  I honestly wish you both all the best."  He turns and heads out the door, "Enjoy your new freedom!  I know we will."

Andrew and Randy, excited, but a little disoriented wait for him to leave before allowing tension to drain and blood pressure to reach homeostatic levels.  They head out into the bright light of the corridor.
    ~ eg_fishbowl = 3
    + [Free men deserve a good dinner] -> station.epilogue


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

Kraal continues ranting, "I mean we're not asking you to be geniuses.  We can buy as much intelligence as we need.  We just need you two to push the buttons to get it started!"

Somewhere, deep in Andrew's being, something was beginning to stir.

Kraal takes a deep 'breath', bubbles trickle to the top of his 'fishbowl' headgear, "Ok, we'll give you two another chance to prove yourselves. Just get the job done!"

The seed of a potential path out of this mess begins to form in Randy's mind.  Yes, it could work, but we'd need a little luck and to act with expeditiously.  "Andrew, meet me in the deck 7 private alcoves when you get a chance.  We need to talks about making some plans", he whispered as they walked out of the meeting.
    ~ idiot_count += 1
    ~ cpu_cpus = cpu_cpus * 0.75
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

Andrew and Randy are abruptly summoned into the conference room.  A "Level 2" stock alert?  CDYG had been sliding, perhaps a bit too far for someone's comfort.  They take their standard seats (after checking to make sure their seats were... 'safe'). {eg_outsourcing == 2: "Maybe we can pitch the ABAL solution if we get a chance", noted Randy.}

The door opened suddenly and the two fell silent as Kraal and Zyn entered the room. The two shuffled slowly into the room, Kraal with a scowl on his face and Zyn looking like he had just rolled out of bed.  One of Kraal's dorsal arms looks like it had been clipped?  Zyn's eyes were red rimmed.  His flushed skin and enlarged pupils made him look like he'd taken too much of "something", or maybe not enough?  In any case, they'd been through a gauntlet and there was a good chance Andrew and Randy could bear the brunt of their anger.
No, not anger, more like despair.  They had the look of two men in danger of drowning, more lot mortal fear than anger. {eg_outsourcing == 2: Perhaps they would be open to a silver bullet?}

Kraal started in a booming voice, "I can't believe it!  You two have spent...  almost a billion euro and for what?  Simulations of the human condition? {forty: Midwestern farmers handling goats?} {mille: Failed writers getting hit by trucks?} {david: Kids playing baseball?} {solitaire: Convicts in space?} Absolutely nothing!  You've wasted our time, our resources..." 

His voice trailed off as he ran out of bluster.  Zyn tapped Kraal's dry tentacle on the table.  Almost like he cared.  "Look, you've both watched the ticker.  We've just come from a meeting with Chairman J'araek.  He make it very clear that he is giving this project one more chance.  If we can't turn project 'Titanic', his words not mine, around, we'll all be out of a job", Zyn paused a second to let it sink in. "Our resources have been cut again, but we still have a chance."
Kraal's eyes narrowed, "I don't like this.  I don't like it at all."  He turned to Andrew and Randy, "I have a new collection of simulation seeds.  I have been assured that these are the best we have."
    ~ cpu_cpus = cpu_cpus / 2
    + {eg_outsourcing == 2} [We might be able to reduce simulation expenses] -> storyline.outsourcing_3
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

Andrew and Randy are abruptly summoned into the conference room.  This is getting way too familiar...  Something different this time... Inkwell, not Radula?  This can't be a good thing.

TODO

Project is canceled.
Kraal is sent back to Europa
Zyn goes back to corporate

    Andrew and Randy go back to the IT 

// The grind ending
    + {eg_project_next == 0} [Back to the grind.] -> station.epilogue
// The insurance pays off
    + {eg_project_next == 2} [Sometimes insurance pays off] -> storyline.project_next_3
