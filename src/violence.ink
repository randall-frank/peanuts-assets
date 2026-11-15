=== violence ===

= violence_stage1
~ violence_update_state()

~ location_name = "LEmployee Lounge"
# CLEAR
# SBIMAGE:
# CLASS: head1
An Intervention?

~ newswire_message = newswire_item( -> violence.violence_stage1)

Andrew looks at Randy with concern.  “You okay?” he asks.  

Randy looks at him quizzically, “Yeah, I'm fine.  What's up?” 

“Dude, I'm a little concerned about some of the simulations we've been running with your new code...”, he trails off.

A confused look drapes over Randy's face, “What do you mean?” 

Andrew sighs, “Well, I've been running some simulations with your new code and the results often result in deaths.  I'm seeing a marked increase in ultra-v.  Like, really violent stuff.”

“Interesting.  There's nothing I've encoded into the system for that, at least not explicitly.  We should correlate with the commit logs and look for traces of that behavior.”

“Sounds good.  I'll check the commit logs and see what I can find, ”, Andrew starts pounding out a query.
A minute or so later Andrew face palms, “Looks like we're not the only contributors to the current context.  It looks like the ultra-violent behavior correlates with a new agent.”  Again, he types furiously, “I'm going to need to look into this further.  It looks like the user 'CaptKraal' added and locked in a new agent called 'Daisy'.”

Randy shakes his head, “Alright, we've got to end this project before we lose control.  See what you can do to isolate and insulate Daisy's stream.  We might not be able to remove the effect, but we can certainly lessen it.”

Andrew agrees, “On it.  I'm introducing 'Cletus' as a nuisance  filter to the Daisy stream.  I'll also add a new agent called 'Cooter' that will monitor and report on any anomalies in the system.”

“Good catch man. I'm going to start looking into is we can isolate this project from the rest of the network.”
    + [{continue}] -> station.building


= violence_stage2
~ violence_update_state()

~ location_name = "LEmployee Lounge"
# CLEAR
# SBIMAGE:
# CLASS: head1
Stage 2

~ newswire_message = newswire_item( -> violence.violence_stage1)

Andrew looks at Randy with concern.  “You okay?” he asks.  

TODO

    + [{continue}] -> station.building



=== function violence_update_state() ===
    ~ violence_prev_violence = violence_count
    ~ violence_prev_idiot = idiot_count
    ~ violence_stage += 1 
    ~ return