=== bad ===
# AUDIOLOOP: audio/I5%20-%20Eclipse.mp3
    ~ set_simulation_state(1)
    -> start

= ret_target
    ~ set_simulation_state(0)
    // When a simulation stops, the stock price drops by 10%
    ~ reduce_stock_price()
    ->->

= start
~ location_name = "VShere, Surrey, England: Gundershot Home"
# CLEAR
# CLASS: head1
Bad to the Bone (aka The Widow’s Acre)

Mrs Gundershot sat quietly sipping her morning tea. She was reading one of those 'tabloid rags'.  What was it today?  "The Morning Hammer"?  "The Standard"?  "Banter"?  Not important, she just needed her morning dose of levity and mock angst.  

She caught a glimpse of the corrections facility van coming up the drive, as it did four mornings a week.  Time to get moving. She took the last sip of the now nearly cold tea, placed the "world's greatest grandmother" cup in the sink along with the now antique teapot Arthur had bought for her when he came back from the war...

Oh Arthur, she could see him there, standing there in his parade uniform.  So fit.  So handsome.  The war machine had 'borrowed' him from her, pressing him into service in the European campaign. He'd been gone for what?  Three, maybe four very lonely years for Mrs Gundershot.  Arthur was lucky and after chasing the Germans back to Berlin, he was one of the unfortunately few to return.  Now he was back and they could start the family that previously only existed in their letters...

A blast from the horn brought her rapidly back to the present. The day's 'pupils' (as she put it) have arrived. She donned her Chore Coat and stuffed leather gauntlets into the pockets.  Finally, she stepped into a worn set of Wellies and headed out the door. 

As always, constable Brable was escorting the young men out of the van, lining them up for her "inspection".  The usual group: Gaz (Gary), Ste (Stephen) and Fran (Francis).

"Sully was out sick this morning Mrs G", noted officer Brable.  “Mr James Drake will be filling in for him today.”  

James Drake steps out of the van last.  Six foot even, longer than legal black hair, chin chiseled from Italian marble.  He takes three, measured steps to his spot in the line of men.  He's one of those people whose very presence is 'announced' before he arrives.  One can almost hear George Thorogood theme music as he enters.
    <- common_options("Hmm, copping a music video?", -> ret_target, ->drake)
    -> DONE   // suppress compiler warning...


= drake
~ location_name = "VOutside Gundershot Home"
# CLEAR

Turning to Drake, Brable threatens as much as he can threaten, "and you had better be on your best behavior!  If I catch one whiff of any disrespect from you, you know what you will have coming when you get back.  If you get back."  Gaz and Ste share a private eye roll.  
Turning back to Mrs Gundershot with a wink, "You know I can always stay ma'am. Just say the word and I'll make sure you get an honest day's work out of all these degenerates."

"Thank-you, but that will not be necessary Karl. I'm sure these fine men will be on their best behavior", says Mrs Gundershot.  "Won't you boys?"

"Yes ma'am", Gaz, Fran and Ste chorus.  "We'll be sure to keep our eyes peeled."

Drake mumbles something incoherent and immediately gets reprimanding glances from the other three.

"Ok, your call Mrs G.", quipped Karl Brable.  "I'll be back around 4PM to collect them as always.   If you have any problems, just call the station and we'll be here in a few minutes."   He gives the group one more condescending gaze and heads back to the van.

As the van pulls away, Mrs. Gundershot addresses her pupils,  "All right, we've got some work to do in the garden today.  I have gloves and boots for all of you in the shed. "  Pausing to talk directly to James, "James, you are new here.  I only ask that you put in an honest day's work here.  Please call me 'Mrs. G' while working here.  It saves us time."  Turning back, "Gaz, Fran, Ste, you know the drill, get James here suited up and I'll meet you at the garden entrance."

"Yes ma'am!", this time audibly from all four of them.
    <- common_options("", -> ret_target, ->garden)
    -> DONE   // suppress compiler warning...


= garden
~ location_name = "VGundershot Garden"
# CLEAR

TODO

    <- common_options("", -> ret_target, ->lunch)
    -> DONE   // suppress compiler warning...


= lunch
~ location_name = "VGundershot Home"
# CLEAR

Mrs Gundershot's feet had swollen uncomfortably and it was time for tea.  As the kettle screamed, her mind drifted back... 
Margaret and Arthur Gundershot welcomed their first and only child, Anne.  For many years it was like living in a fairy tale.  They doted over Anne and watched her grow into a beautiful, successful young woman.  

It is shocking how quickly things change.  The day is forever etched into Margret's being.  A quiet, sunny day.  Margaret had some new plants she wanted to get in the garden and was spending the morning working the rich soil she had worked tirelessly to realize.  Arthur and Anne had planned to spend the morning at the beach.  Margaret planned a picnic lunch at the park after they came back... But they never came back.  She still remembers the Wolseley 6/80 rolling slowly into the driveway.  Two officers and Vicar Thomas nervously emerged from the car.  They started with apologies... they always do when shepherding bad news.  The rest, a blur. 

They recount details, drunk driver, high speed collision, sliding off the road...  Anne was dead.  Arthur was dead.  Her house, empty.  Her world forever changed.  Margaret was determined to pick up the pieces and carry on.  She had been the mother.  She had been the wife.  Now she is the survivor.  Now, she is the one.

TODO

    <- common_options("", -> ret_target, ->unjames)
    -> DONE   // suppress compiler warning...


= unjames
~ location_name = "VGundershot Garden"
# CLEAR

Mrs Gundershot rushed behind the shed at the sound of the commotion before being stopped by Gaz. He put a hand out, "James took an unfortunate spill Mrs G. Tripped over some rock we were moving and accidentally face-planted into an up-turned rake. We'll have to break the news of his escape to Brable, I'm sure he'll be heartbroken.""  She put a hand on his shoulder, "Thank you Gary.  You know what to do. I think the soil around the Begonias in the southwest corner could use a little attention."

"Yes Mrs G.  We’ll get right on it.  Sorry for the inconvenience ma'am. It was shaping up to be a glorious day."  

"Yes it was Gary, but there are just some weeds that must be pulled."

TODO

// End the simulation...
    + [Terminate Simulation] -> ret_target


A couple possible angles here:
Mrs Gundershot could be running a cannabis cultivation operation under her gardens. She is leveraging convict “employees” for work and distribution, kicking back to the corrections facility. Her workers are extremely protective of her and will do anything to make sure she stays safe, etc.  James could make a move and get “corrected”.
She could still be doing (1) or could just be running a clean work program that helps convicts make a real change (perhaps her husband started it and was ‘jumped’ by a rogue convict and the others ‘took care’ of the rogue and their surrogate ‘mother’, Mrs G). Anyway a variation on this is that “bad boys” who need “correction” are brought here and Mrs G’s boys ‘correct’ them. Another variation is that James was involved in her husband’s death and brought to her on a “revenge” notion…

