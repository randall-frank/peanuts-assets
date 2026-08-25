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
Bad to the Bone (aka The Widow's Acre)

# IMAGE: locations/badtothebone.png

Mrs Gundershot sat quietly sipping her morning tea. She was reading one of those 'tabloid rags'.  What was it today?  "The Morning Hammer"?  "The Standard"?  "The Daily Shocker"?  Not important, she just needed her morning dose of levity and mock angst.  

She caught a glimpse of the corrections facility van coming up the drive, as it did four mornings a week.  Time to get moving. She took the last sip of the now nearly cold tea, placed the cup into the sink next to the "world's greatest grandmother" mug and the now antique teapot Arthur bought for her when he came back from the war...

Oh Arthur, she could see him there, standing there in his parade uniform.  So fit.  So handsome.  The war machine had 'borrowed' him from her, pressing him into service for the European campaign. He'd been gone for what?  Three, maybe four very lonely years for Mrs Gundershot.  Her Arthur was lucky.  After chasing the Germans back to Berlin, he was one of the tragically few to return.  But he was back and they could start the family existing previously only in their letters...

A blast from the horn brought her rapidly back to the present. The day's 'pupils' (as she put it) have arrived. She donned her Chore Coat and stuffed leather gauntlets into the pockets.  Finally, she stepped into a worn set of Wellies and headed out the door. 
    <- common_options("Hmm, copping a music video?", -> ret_target, ->drake)
    -> DONE   // suppress compiler warning...


= drake
~ location_name = "VOutside Gundershot Home"
# CLEAR

As always, constable Brable was escorting the young men out of the van, lining them up for her "inspection".  The usual group: Gaz (Gary), Ste (Stephen) and Fran (Francis), plus one.

"Sully was out sick this morning Mrs G", noted officer Brable.  "Mr James Drake will be filling in for him today."  

James Drake steps out of the van last.  Six foot even, longer than legal black hair, chin chiseled from Italian marble.  He takes three, measured steps to his spot in the line of men.  He's one of those people whose very presence announces himself even before he arrives.  One can almost hear George Thorogood background music as he enters.

Turning to Drake, Brable threatens (as much as he can threaten), "and you had better be on your best behavior!  If I catch one whiff of any disrespect from you, you know what you will have coming when you get back.  If you get back."  Gaz and Ste share a private eye roll.  Turning back to Mrs Gundershot, "You know I can always stay ma'am. Just say the word and I'll make sure you get an honest day's work out of all these degenerates."

"Thank-you, but that will not be necessary Karl. I'm sure these fine men will be on their best behavior", says Mrs Gundershot.  "Won't you boys?"

"Yes ma'am", Gaz, Fran and Ste chorus.  "We'll be sure to keep our eyes peeled."

Drake mumbles something incoherent and immediately gets reprimanding glances from the other three.

"Ok, your call Mrs G.", quipped Karl Brable.  "I'll be back around four to collect them as always.   If you have any problems, just call the station and we'll be here in a few minutes."   He gives the group one more condescending gaze and heads back to the van.  He stops as he passes Mrs Gundershot, making eye contact and whispering, "Watch Drake closely.  He seems like a runner to me."  He discretely slides a piece of paper into her pocket before heading back to the van with a wink and thin smile.  

As the van pulls away, Mrs Gundershot addresses her pupils,  "All right, we've got some work to do in the garden today.  I have gloves and boots for all of you in the shed."  Pausing to talk directly to Drake, "James, you are new here.  I only ask that you put in an honest day's work.  And please call me 'Mrs G', it saves time."  Turning back, "Gaz, Fran, Ste, you know the drill, get James here suited up and I'll meet you at the shed."

"Yes ma'am!", audibly from all four of them.
    <- common_options("", -> ret_target, ->shed)
    -> DONE   // suppress compiler warning...


= shed
~ location_name = "VGarden Shed"
# CLEAR

The little shed at the edge of the garden was perhaps a bit larger than others in the neighborhood.  The five walked to the door, led by Mrs Gundershot.  The door and indeed the entire shed were of exceedingly sturdy construction for a simple garden shed.  The door opened with a creak and Mrs Gundershot stepped in, motioning the rest of them follow her.  The interior was surprisingly large.

The floor was covered with a heavy tarp and the walls lined with shelves of tools and work garments.  The air was filled with the musky scent of soil and aging cut grass.  The five of them stepped into the shed. Mrs Gundershot motioned to Fran, who pulled the light chain and closed the door behind them.  The door locked with a soft click as as the glowing filaments of the bare bulb flickered into existence.  She then flipped up the tarp, exposing a locked door in the floor. 

Mrs Gundershot reached for the chain around her neck, pulling it over her head.  The lock key dangled from the end of the chain as she handed it to Gaz.  He took the chain and unlocked the door.  He handed the chain back as he swung the door open, revealing stairs leading into a unexpectedly large underground room.

"Whoa!", breathed James.  "What's going on here?"

"This is the 'Herbary' James. ", answered Mrs Gundershot, leading them all down into the cellar.

The room is filled with planter boxes, each growing a dozen or so mature cannabis plants.  Hanging above each box, a red-blue growing lamp leaving the room bathed in glowing violet. The scent of damp earth and skunky cannabis permeates the moist, thick air.   James just stared, open mouthed.

"Yes, James, the finest in Shere, maybe in Surrey.", Mrs Gundershot continued.  "We're getting close to a harvest and we need to start collecting the leaves to dry.  That's today's main task, start the harvest."

Gaz, Fran and Ste all knew the drill, "Got it Mrs G."  They produced their shears and started taking cuttings.  They were all experienced at this, and worked efficiently.   

Mrs Gundershot, "Ste, would you please help me stake the tomatoes topside?  I'd like to keep the fruit off the ground as much as possible."

"Yes ma'am, Mrs G." Ste replied, following her back up the stairs.
    <- common_options("", -> ret_target, ->garden)
    -> DONE   // suppress compiler warning...


= garden
~ location_name = "VGundershot Garden"
# CLEAR

# IMAGE: locations/garden.jpg

The garden has has been worked daily for decades.  Mostly vegetables with some table flowers along the house, it is immaculate.  Healthy carrots, onions and tomatoes fill most of the rows.  Mrs Gundershot certainly has a green thumb.  Ste and Mrs Gundershot begin to stake up the row of tomatoes.  She and Ste discuss the latest prison goings on and the latest town gossip as they work.  She is a no-nonsense woman, but has a soft spot for Ste and he would do anything she asked.

As the finished the row, Mrs G stood up to stretch her back a bit, wiping her hands on her work apron.  A break in the clouds exposes a few rays of sunlight.  She smiles, letting the sunlight warm her face.  Her hand finds the piece of paper Karl had slipped her earlier.  She unfolds the page and begins to read.

It is James Drake's rap sheet.  She scans it in silence. The life of a troubled young man outlined in simple black ink on the off-white vegetable fiber mat.  Running with the bad crowd from a young age.  Petty theft and fighting leads to a series of bad choices, and a life spiraling out of control.  She sighs, shaking her head.  In and out of institutions from he late teens, he developed a serious drinking addiction and graduated to more serious crimes.  She shakes her head again, wondering how he could have ended up here.
    <- common_options("", -> ret_target, ->garden_2)
    -> DONE   // suppress compiler warning...


= garden_2
~ location_name = "VGundershot Garden"
# CLEAR

"You ok Mrs G?" Ste asks, looking over his shoulder.

After being released from his third stint in the clink, he went on a serious bender.  While driving back to Guildford, he fell asleep, crossing the centerline and crashed head-on into one Mary Patrice Brown.  She was on her way back from visiting her elderly parents and was killed instantly.  The police found James passed out on the side of the road, thrown from his vehicle in the impact.  He was charged with vehicular manslaughter and sentenced to 5 years in prison.  

Gravity lead a tear along a grimy path on her well worn face.  She imagined Ms Brown, driving home without a care in the world. Window down, singing along "... If she finds that I've been 'round to see you ...".   

"Mrs G!?" A concerned Ste stops working, "Are you alright?"

Mrs Gundershot looks up, her trance broken.  She sniffed and wiped her face, leaving her eyes, red and puffy.  "I'm fine Ste, just a bit shaken up."

"You should take a break ma'am.  I can finish this work.  Do you need me to call someone for you?"

For a second, she considered several courses of action.  After a long pause, she straightens, "Yes Ste.  I think I will take a tea break. "  Another second, she adds, "Ste, I have to ask for your help."

"Yes, ma'am of course.  What do you need?"

"Constable Brable passed me James' sheet."

Ste's gaze turned downward, understanding the implication, "I'm sorry ma'am.  I'll take care of it."

"Thank-you Ste."  She reached out and placed a hand on his shoulder.  "I know you will."

Ste patted her hand, "You can count on me."  He turned and strode to the shed, determinism in his step.

Mrs Gundershot took a deep breath and headed back into the house.
    <- common_options("", -> ret_target, ->break)
    -> DONE   // suppress compiler warning...


= break
~ location_name = "VGundershot Home"
# CLEAR

Mrs Gundershot's feet had swollen uncomfortably and it was time for tea.  She put the kettle on, and sat down to get off her feet.  As the kettle came up to speed, her mind drifted back...

Margaret and Arthur Gundershot welcomed their first and only child, Anne.  It was like living in a fairy tale.  They doted over little Anne and watched her grow into a beautiful, successful young woman.   

It is shocking how quickly things change.  The day is forever etched into Margret's being.  A quiet, sunny day.  Margaret had some new plants she wanted to get in the garden and was spending the morning working the rich soil she had worked tirelessly to realize.  Arthur and Anne had planned to spend the morning at the lake.  Margaret planned a picnic lunch at the park after they came back... But they never came back.  

She still remembers the Wolseley 6/80 rolling slowly into the driveway.  Two officers and Vicar Thomas nervously emerged from the car.  They started with apologies... they always do when shepherding bad news.  The rest, a blur. 

They recount details, drunk driver, high speed collision, sliding off the road...  Anne was dead.  Arthur was dead.  Her house, empty.  Her world forever changed.  Margaret was determined to pick up the pieces and carry on.  She had been the mother.  She had been the wife.  Now she is the survivor.  Now, she is the one.

The kettle screamed, snapping Mrs Gundershot from her trance.  She poured herself a cup of tea, prepared a bag of the finest Shere muggle for constable Brable along with a bouquet of marigolds and antirrhinums for his wife Susan. 
    <- common_options("", -> ret_target, ->deadjames)
    -> DONE   // suppress compiler warning...


= deadjames
~ location_name = "VGundershot Garden"
# CLEAR

Mrs Gundershot rushed from the house and headed toward the back of the shed at the sound of the commotion before being stopped by Gaz.  He put a hand out, "James took an unfortunate spill Mrs G. Tripped over some rock we were moving and accidentally face-planted into an up-turned rake.  We'll have to break the news of his escape to Brable, I'm sure he'll be heartbroken."  She put a hand on his shoulder, "Thank you Gary.  You know what to do.  I think the soil around the Begonias in the southwest corner could use a little attention."

"Yes Mrs G.  We'll get right on it.  Sorry for the inconvenience ma'am. It was shaping up to be a glorious day."  

"Yes it was Gary, but there are just some weeds that must be pulled."
// End the simulation...
~ violence_count += 1
    + [Terminate Simulation] -> ret_target

