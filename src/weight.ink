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

    <- common_options("-", -> ret_target)
    + [{continue}] -> conference_room

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

"Ah", Simon's eyes brighten for the first time in their conversion.  "We've already made a great number of observations from a variety of experiments and interstellar sensors.  You are basically correct except we've already run the experiments! We can begin by ensuring the simplified models agree with extant experimental observations.  In particular, the observations that remain unexplained by existing models."

"Hmm", James says thoughtfully, "So you are looking for a simplified, exploitable model that integrates gravity and electromagnetic forces?"

"Sure, that would be revolutionary, if it did exist.", simon smiles.  "But these last couple of days of review have left me wondering if it might be possible in my lifetime, or ever."

They are interrupted by an announcement regarding the firing of the collider in the next fifteen minutes.  All active personal are to be at their stations.

"Well, business calls.  Thanks for the patches James.  I'll get them reviewed tonight and hopefully be able to use the new hyper-scalar code launch system sometime tomorrow. Thanks for listening to the ravings of a frustrated old physicist!"  Simon stands up and heads towards the door.

"No problem Dr Drake!  Let me know if you run into any issues.  I'm headed home for the evening and you've given me some interesting ideas I need to mull over.  Good night!"

    <- common_options("-", -> ret_target)
    + [{continue}] -> genetic_algorithms


= genetic_algorithms
~ location_name = "VLevel 8: Office of Dr Simon Drake"
# CLEAR


"I think I have an idea for how we might simplify the equations," James says, "but it will require some experimentation to see if it works."




The discussion moves toward genetic algorithms and an absurd idea comes up.  What if we just tried every equation possible?  Chop up all of the equations we know, throw them together in ways that make sense (e.g. at least dimensionally sound) and then compare them vs collections of interesting observations from every domain: nuclear testing, astrophysics, …  Finally, filter the equations to those that might actually work with “earthbound” conditions.  Not at 10,000,000 C or 5000 Pa…  i.e. useful conditions.   We'll never get anyone to fund this, but the software engineer has been working on the system that loads programs into supercomputers and while that is happening, there are trillions of cycles that are going unused.  Carve up the problem into packets and run it on GPUs before the main application spins up.  They both laugh, but he implements it and lets it run… for months.  They both forget about it. 


One day there is an interesting ping.  The algorithm found an equation! They talk about it and it is correct.  The physicist sets up an experiment and it works.  Now this one is not useful for anything, but it validates the technique.  A few days later another couple of related equations pop up.  These are a different story.  They describe how electromagnetic signals can be converted to/from gravitational waves. First, near 'instantaneous' transmission of information. Second, it can travel through things. Third, it can be done with reasonable power…  Consider instant telecommunications w/o the need for satellites?  Drones, space travel, etc Consider computer design where components need not be in the same physical case (e.g. the gravitation bus).  All memory on the entire planet can be accessed by any device with quantum access control.   
They have no idea how to publish this (we just found it?) and decide to start a company that partners with the existing number 2 chip manufacturer to create cell phones and graphics cards, with CPUs coming afterward…   


    + [{simcomplete}] -> ret_target
