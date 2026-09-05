=== weight ===
    ~ set_simulation_state(1)
    -> start

= start
~ location_name = "VThe Unified Field Computation Laboratory (UFCL)"
# CLEAR
# AUDIOLOOP: audio/I5%20-%20Eclipse.mp3
# CLASS: head1
The Weight of Gravity (aka Monkeys and Shakespeare)

James watched as the code tests finished...  Success!  James sighed deeply and finally relaxed.  The new simulation launch code was working at least.  The day had been a slog, first trying to reproduce the issue and fixing it soaked up the entire rest of the day.  Yeah, there was the lunch hour at the cafeteria and a half-hour mandatory training course where he learned to lift with his legs.  To tell the truth, James had never lifted a heavy box in the last 10 years at UFCL and he could not even remember what he had for lunch, much less the conversation.  At least he had a commit to show for the day.

James submitted the code pull request and went to get some coffee before heading back to his desk.  Dr Simon Drake had been pushing him to get this code out so that they could start running simulations on the new hardware and he happened to be getting a coffee as well. The two had worked together on this project and James had been working under Dr Drake's direction for several months now.  Simon was a grizzled old physicist, and James had always admired his work ethic and dedication to science.  Simon seems a bit down today however.

"Simon, what's up?" James asked as he joined Simon at the coffee machine.

"Nothing much," Simon replied with a sigh. "I've been reviewing our group's progress or more importantly, the lack thereof.  The gravity calculations are still off by a significant amount.  I'm beginning to question the basic physics we're using.  It has to be a quantum effect, but there is so much we don't understand about those interactions."

James nodded thoughtfully. "It's frustrating when you feel like you're missing something fundamental.  I've been reviewing the code and I think there might be an issue with how we're handling the matrix inversion.  It could be that our assumptions about the initial conditions are off."  

"I mean we have quantum encrypted communication, but we're still routing them in the electromagnetic spectrum, broadcasting through satellites.  Quantum breakthroughs have otherwise had almost no impact outside of niche mass power generation or mutually assured destruction scenarios", Simon lamented. "We know that there are some strange things happening with the neutrinos.  They seem to be interacting with matter in ways that don't quite fit our models.  And then there's dark matter and dark energy.  We still can't even provide concrete proof that they even exist."

James ponders this a bit, "Ok, I'll bite.  What kind of effects might we be missing?"

Simon had never been asked that question directly, "Great question.  Hmm, let's start with something simple.  We have fancy equations we can't prove about the relationship between gravity and electromagnetism.  We know that they're related, but none of the proposed models can be easily exploited without building the "world's largest" machine of some type or another.  Big enough to bankrupt all but the top two or three economies!"

James has seen Simon run off the rails before, but he's also seen him come back with something useful.  "So what do you think?  Is there any way we could exploit these relationships?"
    <- common_options("-", -> ret_target, -> conference_room)
    -> DONE   // suppress compiler warning...


// End the simulation...
= ret_target
    ~ set_simulation_state(0)
    // When a simulation stops, the stock price drops by 10%
    ~ reduce_stock_price()
    ->->


= conference_room
~ location_name = "VLevel 5: East End Conference Room"
# CLEAR

Simon and James are getting some looks.  As the conversation begins to intrude on the practical, they duck into a nearby conference room.  For the next hour or so, They discuss the lack of usable equations for gravity at a distance, particularly in the context of electromagnetic interactions. 

"We have collections of valid equations," Simon says, "but there are two obstacles we must overcome."
James nods, taking notes.
"First, we need to simplify the equations.  In their current form, we rely on numerical approximations that require super-computer class resources to solve.  Second, the equations need to apply in conditions that we can easily reproduce in a laboratory on the surface of Earth.  Solutions that only work under fusion level heat and pressure conditions are not particularly useful", Simon notes.

James looks up from his notes, "And we run experiments to see if the model simplifications are valid?"

"Ah", Simon's eyes brighten for the first time in their conversation.  "We've already made a great number of observations from a variety of experiments and interstellar sensors.  You are basically correct except we've already run the experiments! We can begin by ensuring the simplified models agree with extant experimental observations.  In particular, the observations that remain unexplained by existing models."

"Hmm", James says thoughtfully, "So you are looking for a simplified, exploitable model that integrates gravity and electromagnetic forces?"

"Sure, that would be revolutionary, if it did exist.", simon smiles.  "But these last couple of days of review have left me wondering if it might be possible in my lifetime, or ever."

They are interrupted by an announcement regarding the firing of the collider in the next fifteen minutes.  All active personal are to be at their stations.

"Well, business calls.  Thanks for the patches James.  I'll get them reviewed tonight and hopefully be able to use the new hyper-scalar code launch system sometime tomorrow. Thanks for listening to the ravings of a frustrated old physicist!"  Simon stands up and heads towards the door.

"No problem Dr Drake!  Let me know if you run into any issues.  I'm headed home for the evening and you've given me some interesting ideas I need to mull over.  Good night!"
    <- common_options("-", -> ret_target, -> genetic_algorithms)
    -> DONE   // suppress compiler warning...


= genetic_algorithms
~ location_name = "VLevel 8: Office of Dr Simon Drake"
# CLEAR

"Dr Drake, do you have a few minutes?  I think I have an idea for how we might simplify the equations," James says, "but it will require some experimentation to see if it works."

Dr Drake nods, "One second James. "   He finishes typing an email, clicks 'send' and turns back to James.  "Ok, come on in and have a seat", he gestures at an empty chair at the table behind him.  "Please close the door behind you, thanks!"

The door closes with a soft click and James takes a seat.  Simon's chair rotates to the table and the conversation begins.  James starts by outlining the general nature of the types of equations they desire.  Simon nods in general agreement. He then begins to discuss genetic algorithms and constrained re-randomization techniques.  James explains that evolutionary genetic algorithms leveraging principles such as mutation and crossover to generate new solutions from existing ones.
Simon follows exactly where James is going, noting that naïve randomization techniques lead to a lot of wasted computation time, considering the literally quadrillions of potential equations that would need to be considered.  He also discusses how constrained, informed re-randomization can be used to limit the search space to only those solutions that are likely to be useful, based on some prior knowledge or constraints.
While the basic technique proposed is basically brute force, it would leverage established relationships and simplifications that would make the search sparse enough to be practical.  
The final filter would be the evaluation of proposed solutions against collected observations from astrophysics, electromagnetism, quantum mechanics, optics and nuclear testing to evaluate the predictive nature of the solution.  This would be followed by verification that the working domain of the proposed solution correspond to 'earthbound' conditions.   Nothing at 10,000,000 C or 500000 Pa or 0.99% of the speed of light, the equation must be "useful" (and by useful "exploitable" was implied).
    <- common_options("-", -> ret_target, -> compute)
    -> DONE   // suppress compiler warning...


= compute
~ location_name = "VLevel 8: Office of Dr Simon Drake"
# CLEAR

Dr Drake stands up from his desk and walks over to the window.  He looks out at the rain falling on the forest in the distance.  "I've been thinking about our conversation for some time now as well," he says, "and I think you might be onto something."  "I can outline the parameterization of the function along with a collection of constraints that can be used to inform the re-randomization.  We have tables of observations that can easily be adapted for this use and the 'useful' domain ranges are trivial."  He turns back to James, "You will need to write the code, but I doubt anyone is going to be willing to let us run the algorithm at the necessary scale.  I mean we could run it on our laptops, but it would still take literal eons to complete."

"Leave that last one up to me", said James.  "This task footprint is small, even a single CPU.  It's more like crypto mining than a large simulation.  It just has a lot of states that can be independently tested."

"Yes, it can be a series of small computational packets, but there are a lot of packets," said Dr Drake.  

"And the packets can be sequenced from a packet ID and a fast invalidation check that applies pre-determined re-randomization skips. The 'sparsity filter'", counters James.

"Ok, so you are proposing something closer to Folding@home", asks Simon?

"For the problem partitioning, yes," says James.  "But instead of using people's computers all over the world, I'm planning to include a packet processor in the job launching code for the simulation itself. There are countless unused CPU cycles available as a large scale simulation starts up on 1000s of nodes."

Simon's face reconfigures into a tight smirk and laughs, "Yes, yes!  One could leverage the otherwise garbage cycles missed during launch and MPI initialization.  That will work.  I'll get you the observations and constraints."

"Great", laughs James, "I'll start coding up the packet processor then."

Within the week, the packet processor is implemented and running on the simulation.  It's a simple thing, but it works well enough to be useful.  Project LamarckPhysics is up and running! James hooks it into the simulation launching code and lets it run... for months.   

They both forget about it. 
    <- common_options("-", -> ret_target, -> first_light)
    -> DONE   // suppress compiler warning...


= first_light
~ location_name = "VLevel 7: Office of James Ward"
# CLEAR

James came in a little early this Thursday.  He wanted to get some real work in before a collection of mandatory status and training meetings.  He had been working late and was still a little tired.  Walking through the pile of unopened emails, one stood out:

# CLASS: computer
LamarckPhysics Alert: (2753hrs) Qualified Equation(s) Found!

LamarckPhysics... LamarckPhysics... James' eyes widened.  Over 100 days of computation, but it had found... something.  He was almost afraid to open the email.  The email itself was underwhelming, it simply contained two equation seed numbers:

# CLASS: computer
Validated seeds:<br>605102D1134FF1E663B2088607DB21D2F4E00802D4F762912936D27BC0A23707<br>0D9859BFF347C89DF8CB168F62281B36A5D6835B2B9720EAD2646AA43BF55857

James excitedly brought up the LamarckPhysics prompt and copy/pasted the first seed into the prompt.  An equation was displayed:

# CLASS: formula
∇²ψ_G = α (E² + B²) / ∮ ∂ₜ 𝜏_Q

Hmm, James had no idea what that meant.  He hit the print screen button, grabbed the still warm paper and headed off to find Simon.
    <- common_options("-", -> ret_target, -> first_light_pt2)
    -> DONE   // suppress compiler warning...


= first_light_pt2
~ location_name = "VLevel 8: Office of Dr Simon Drake"
# CLEAR

James, thinks twice, stops just short of barging into Simon's office and quietly knocks on the door frame.

Dr Drake looks up from his desk, "James, come on in.  I'm just finishing the writeup of the latest optocoupling simulations.  We can probably get this published in Physical Review.  What's up?"

"Do you remember our LamarckPhysics project?", James begins.

"Yes..."

"Well, we got a pair of hits."  

James hands the two equations to Simon.  Dr Drake takes the page and examines it closely, "Well, the second one is really just a restating of the symmetry effect, but this first one..."  He turns back to his computer and begins typing, "... interesting ...  maybe ...  but why?"  He stops still, bringing his hand up to rub his chin, thinking deeply.  After a delay he leans back and looks at James, "James ... the algorithm came up with this equation?"

"Yes Dr Drake."

Simon take a deep breath, turning to the equation, "This is... I don't know what to say.  I mean, we've been working on this for years and would have never have come up with this.  If this equation holds..."  Lost in thought he murmurs, nearly in-audibly, to himself, "ten thousand monkeys and a couple months..."  Interrupting himself, he looks back at James, "Have you shared this with anyone else?"

"No, just you Dr Drake.  Is the equation important?"

Simon exhales through pursed lips, "Ok James, I need some time to verify some things, but I think we may have something here. Potentially something big if my rough math is right.  Here's what we are going to do.  I'm going to do a little more analysis and set up a physical test.  We should probably continue this conversation outside of UFCL."

"Outside of the lab?", asked James.

"Yes, James.  We need to be able to discuss this more openly, in a private setting.  Give me about a week and I'll get back to you with my findings.  In the meantime, do you have an LLC?"

"An LLC?", James asks incredulously, "... I do have one from my old consulting business before I joined the lab."

"Yes, that's perfect.  It may come in handy as we explore the potential IP implications.  Look James, I know this is a lot to take in right now, but if this says what I think it says and tests out, we might have to be careful."   Dr Drake senses the tension and changes his tone, "Don't get too excited James. It is equally likely that this is nothing.  I'm just being careful just in case.  I have your gmail, I will ping you when I am more confident, ok?"

"... Ok." James says, "... You have my cell number, text me when you are ready to talk."

    <- common_options("-", -> ret_target, -> the_test)
    -> DONE   // suppress compiler warning...


= the_test
~ location_name = "VDr Simon Drake's home office/lab"
# CLEAR

The text comes eight days later.

# CLASS: computer
I'va come to some conclusions.  Please meet me at my house on Saturday around 10AM.  335 Lincoln Ave NE.

James pulls up at 9:55 and heads to the door.  A haggard, but excited Dr Drake beckons him in.  They head to the basement which serves as his office and home laboratory.  He hands James a wire-wrapped device.  It looks like a "communications" device?  It is little more than an earbud wired to a breadboard, but there is an odd looking transducer that James does not recognize.  It looks to be hand milled, but he cannot identify the material.  Simon gestures for him to put it on, which he does slowly, taking care not to touch any bare wires or break press-fit connections.

"Mr Ward, come here, I want to see you." crackles in Jame's ear as Simon speaks into an identical device smiling ear to ear.  James looks up in surprise. 

"It was that or 'one small step'... ", laughs Simon.  

"So this is...", began James.

"A 'gradational telephone'.", Simon interjects.  "It needs a better name, I liked 'Aetherdrop' or 'Barycentric Intercom', but I'm sure they'll call it the 'Gravitophone'. "

"So the equation works?" James asks.

"Yes, and it's far better than I imagined", Simon says.  "Not only does the phone work at effectively any distance, through any block of matter, it works instantaneously.  No lag, no delay."

    <- common_options("-", -> ret_target, -> the_test2)
    -> DONE   // suppress compiler warning...


= the_test2
~ location_name = "VDr Simon Drake's home office/lab"
# CLEAR

The realization hits James hard and fast, "So this means that we can communicate with anyone, anywhere?  No satellites, no transmission delays?"

Simon responds, "Well maybe not in the entire universe, but certainly within our solar system.  It is even more powerful than that.  Basically, it allows for an 'atomic gravitational singularity' whose electromagnetic deflection can be modified and measured using traditional circuitry.  Your 'phone' has two such singularities in it, transmit and receive.  Think more like 'shared memory' between any two devices anywhere in our solar system."

James sits down, thinking for a few seconds, "no more wires?  How much bandwidth?"

"You catch on quick James", Simon quips.  "Bandwidth is limited by the design of the readout circuitry, not the tangled singularities.  Your prototype is probably only a few megabits per second, but with some tweaking and optimization, we could be looking at terabytes per second or even petabytes per second as we go parallel.  So yeah, your graphics card could be located in the arctic and it can display to any screen, anywhere on earth."

The implications begin to hit James like bricks, "No more cell phone towers and transmission satellites.  Real-time telepresence.  Robotic exploration.  Massive distributed datacenters.  Plenty of downsides as well.  Security concerns, privacy issues, outright warfare..."

Simon nods in agreement, "You missed what might be the biggest danger."

"Oh?"

"Economic collapse." Simon paused for effect, "Think of it James.  Overnight, tens of thousands of business models are obsolete.  Trillions of dollars of assets become worthless overnight.  The world economy could crash and burn in a matter of months.  And that's assuming the governments don't start fighting over control of this technology.  On top of that, we don't even understand the physics behind this equation."

James sighs, "I guess I never thought about it like that before.  We're just a small team here and could easily be brushed aside...  But we do have the equation and it is not going away."

Simon smiles, "That's right.  I think we should approach this slowly.  Work up some prototypes with an eye toward getting more resources and going public.  We'll need some folks with deep pockets to build devices at scale and to protect our interests, but that is for another day."

They discussed options and potential for several hours before hunger interrupts.  

    <- common_options("-", -> ret_target, -> the_test3)
    -> DONE   // suppress compiler warning...


= the_test3
~ location_name = "VDr Simon Drake's home kitchen"
# CLEAR

Microwave burritos and ice cold lawnmower beer later, they agreed there was a lot of work to do, but they would not finish it tonight.  Work was translated into action lists and action lists were prioritized. James and Simon both agreed to meet again after sleeping on it and make adjustments.

Simon suddenly remembered the second question he was going to ask, "James, is LamarckPhysics still running?"

James was taken a little aback, "Uh, yeah.  Yes it is still running."
 
"Still considering the same set of potential equations?", asked Simon.

"I guess so.  The parameters have not changed.  It would be interesting to see if it comes up with variations of the same equations or something new.", James replied.

"We need to get it working on a new problem.  Are you familiar with 'Perturbative Quantum Chromodynamics' and 'Effective Field Theory'? ", Simon begins.

Way over James' head, "Sorry, I have no idea what you are talking about.  I'm not a physicist."

"Basically, we're looking for a shortcut mapping αₛ between frameworks.  This would allow us to calculate quark-gluon interactions directly at low energies and", Simon continues.

"Not following you doc...", interjected James, "please simplify for me."

Simon realizes he is rambling, "Uh, yeah.  Ok, chrysopoeia!"  A confused look and shaking head from James.  Simon tries again, "Alchemy, transmutation of lead into gold.  If we can link these two frameworks via a simple equation, we can begin talk about changing atomic numbers without the help of a big bang."

"... Ok ...", James concedes.  "I'm not following, but if you have equation fragments, data examples the desired operational limits, I can set LamarckPhysics to it.   I have no idea if it will come up with anything, but I can start it looking." 

"That's all I can ask", Simon says.  He hands James a USB stick. "I've already written down the details."

"I can probably get it started tonight. Top of my action list", James instinctively yawned.

They were both exhausted and decided to call it a night.

James chose to walk back home.  He needed the time to think and plan.  The crisp spring air heightened his senses and seemed to sharpen his thinking.

He pulled out his phone and brought up his trading app.  Slowly he picked through his portfolio and began selling.  Funny how one's perspective can change so quickly.

    <- common_options("-", -> ret_target, -> first_contact)
    -> DONE   // suppress compiler warning...


= first_contact
~ location_name = "VProxima Centauri b: First Contact Research Station"
# CLEAR

# STICKYCLASS: orangetext

# STICKYCLASS: orangetext

Kx'ari digests the tele-probe output, slowly shaking their head.  They detach the neural connection cable and propel themselves down the central tube to central control.  "Xylok, the initial results from the Sol Earth are now available."

Xylok detaches and acknowledges Kx'ari, "Earth ... Earth ...  We remember, first contact seeding operation, correct?"

"Yes. Similar to the Gliese 12 b operation.  The planet atmosphere is in danger of catastrophic failure.  3I/ATLAS is likely to strip it in the next 200 of their 'years'.  It was agreed to begin to accelerate their evolution via scientific seeding", replied Kx'ari.

"There has been much success with the Exocatalyst Initiative in the past", acknowledged Xylok.  "Some half-dozen new contacts have been achieved this way.  Several species were even spared extinction."

"Earth has been seeded with the first few information payloads.  Biological and atomic payloads have been sent.  These were exploited almost immediately by Earthlings.  The next payload in the series is communication.  It was sent and nearly instantly exploited", noted Kx'ari.

"Excellent Kx'ari!  We are prepared to receive their first communication"?, asked Xylok.

"Of course, but we are prepared for first contact.  But there is a concern."

"The nature of that concern?" asked Xylok.

"Well, the Earthlings immediately began to try to guess solutions to trans-QCD/Hadronic Physics", sighed Kx'ari.

Xylok responded, "So, another potential Skithrax event?" 

Kx'ari recalled the Skithrax.  Similar situation, planet in danger, species at risk, attempt to accelerate evolution to save them.  They were sent a solution for matter transmutation, hoping to help them deal with a resource challenged home planet.  Within a month, half the planet had been converted into a radioactive transuranic powerhouse and the other half into what the Skithrax perceived as 'precious materials'.  Ultimately, the acceleration doomed the Skithrax. Both they and their home world no longer exist. 

"Yes, I'm afraid.  Earthlings may prove far too immature for first contact.  We are preparing protocol XB/1EA, if they prove a danger to themselves or others", remarked Kx'ari.

"Very well Kx'ari.  Continue the Exocatalyst protocol and provide them the desired information, but invoke XB/1EA at the first sign of danger", ordered Xylok.

Kx'ari floated back to their station.  The information would be transmitted to Earth shortly.  In the meantime, a fleet was dispatched to watch and if necessary, extirpate and cauterize. 

# STICKYCLASS:
    + [{simcomplete}] -> ret_target

