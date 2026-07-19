=== ubermom ===
    ~ set_simulation_state(1)
    -> start

= start
~ location_name = "VSarasota, Florida"
# CLEAR
# AUDIOLOOP: audio/I5%20-%20Eclipse.mp3
# CLASS: head1
Uber-Mom

Spin on the “Soccer Mom” notion.  Woman runs the ‘perfect’ family, from her Escalade.  Sub-culture of mothers who can best run their ecosystems from the front seat of their vehicles.  They talk to their own kind with a bespoke communication network their AIs find buried in the ‘standard’ SUV core.  They spend all their time scheduling their lives, ordering food that is delivered to their vehicles and they drop it off to “easy-bake oven” systems at their homes that make meals for their families. Ladies night out is basically a virtual drive in theater where they can catch up on the latest soaps, etc w/o leaving their SUVs.  Children and partners try to get them out of the vehicles, but they can’t function w/o their support ecosystem.  …   how does one reproduce???  Faking she has kids, found out that she’s faking it…  midwife comes out to the car…  

TODO
~ idiot_count += 1
    + [{simcomplete}] -> ret_target

// End the simulation...
= ret_target
    ~ set_simulation_state(0)
    // When a simulation stops, the stock price drops by 10%
    ~ reduce_stock_price()
    ->->
