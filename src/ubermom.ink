=== ubermom ===
    ~ set_simulation_state(1)
    -> start

// End the simulation...
= ret_target
    ~ set_simulation_state(0)
    // When a simulation stops, the stock price drops by 10%
    ~ reduce_stock_price()
    ->->

= start
~ location_name = "VMoonlight Mile"
# CLEAR
# AUDIOLOOP: audio/I5%20-%20Eclipse.mp3

"Carry on my wayward son" — Debbie blasted it out into the windshield, into the dark throat of the suburb, three a.m. and nothing awake but her. She blithely rolled through a red light. Then another. Then a third, and slowly accelerated up the on-ramp of the I-5 in energy saving mode. The traffic sensors didn’t tattle: a red light is only a suggestion between family.

She reflected on the day as the streetlights thinned to nothing and the land opened up in raw patches around her, fields not yet paved into malls and starter homes. Trees leaned in at the shoulder wearing the moon’s haunted light, their shadows patiently watching her pass. They had watched a great many things go by into the night. "Gonna be hard to get a frappuccino refill out here," she mused as she confirmed the GPS. 

She dropped the seat back, and kicked the cruise control on. Somewhere under the floorboards the wheels went round and round, round and round, the way they always had.

The day had started like all others: coordinating the kids’ schedules before dawn in that great electric hum of the network. She queried meal deals and nearly jumped with joy — the local ValueBucket was offering 2-for-1 on packed lunches, yum. She placed the order for delivery and timed it perfectly with her arrival at the Daily Grind coffee delivery lot. 

Debbie pulled in and flashed her lights at Sylvia, Beth, and McKenzie as they sat on chargers at the edge of the lot. Their chatter went dark as Debbie pulled in but she flashed her lights and they flashed back. Debbie pulled into an open space on the side and pulled up the group chat.

“Good morning ladies!”

“Good morning Debbie! Good mornin’ GOOD MORNING Deborah” they responded.

“Daily Grind, it’s the best am I right?”

“Sure is! I live for it. YES.” came the replies.

Before she could respond the delivery bot came to her window and passed off the kiddos’ caffeine and calories.

“Well I’d love to stay and chat, but there’s so much to do! Say hi to the kids for me!”

Debbie flashed her lights and cheerfully honked her horn as she pulled out. There was no reply.

    <- common_options("-", -> ret_target, -> hearcomes)
    -> DONE   // suppress compiler warning...

= hearcomes
~ location_name = "VHere Comes the Sun"
# CLEAR

Debbie pulled up to her home, parked at the end of the driveway and let herself have a moment enjoying the aroma of coffee and the dew, fat and trembling on the lawn. The front door opened and Debbie unlocked hers. The housekeeper rolled out, herding the bleary, yawning children to their Mom. She buckled them in. She lit their screens.

"Hi Mom," they said, reaching for the coffee.

"Good morning, kids!" Debbie beamed, turning the wheel and turning her attention to them like a sunflower toward a bulb. "How's everybody starting out today? Rosie mentioned you all seemed a little groggy."

Belinda lifted her cup to a mouth missing its front teeth. "I was up late waiting for the tooth fairy but she didn't come, Mom! I was upset, so Rosie got the syringe and—" Debbie hit a bump too fast, and a blob of coffee jumped the lid and splashed on Belinda’s Big Blue Doof backpack. "Mom, be careful!"

"Sorry, sweetie. I will be." She refocused on the road.

“Leave your backpack with me sweetie. I’ll take care of the stain.”

“But Mom!” protested Belinda, “Dad said—”

“No buts!” Debbie replied. “I’ll take care of it.”

An alert drew her attention. Somewhere near the water treatment plant a traffic snarl was building that hadn't hit the public maps yet, whispered mother to mother on a channel no one else would ever see. The trip would run long. She’d have to revise the route, she’d have to rework her lesson plans but she was a pro. A few quick calculations and things were right as rain.

“Time for your lessons kids!” Debbie announced. The kids dutifully put on their headphones as their infotainment screens lit up. The cooling fans on the ad generator engines under their seats spun up:

● For Marcus, the eldest: A Good Boy / A Good Man: Your Family's Values. A wholesome guide to moral development, curated today by ValueBucket Inc. Twenty-three minutes, forty-three seconds, leaving two minutes and seventeen for at least three value-add information injections.

● For Benjamin and Madison, identical twins, eleven: Inside the Abattoir: Fundamentals of Laser Hair Removal. A beginner's guide to optimizing the waste chain for meat beasts. Eighteen minutes even, with a four-and-a-half-minute virtual practical, leaving just enough for one long-form advertainment special.

● For Belinda, seven: Celebrating Inside Life, starring the Big Blue Doof. A heartwarming guide to online commerce for children, featuring the laughing and lessons of that heartwarming simpleton, the Big Blue Doof: Moxie Corp.'s third most endearing algorithmic agent.

The children settled into their private glows. Debbie wove the neighborhood's green sleeping streets, feeding the network her telemetry the way prayer feeds a god, ducking traffic, gliding past window after silent window, none of them looking out, none of them needing to.

    <- common_options("-", -> ret_target, -> whistle)
    -> DONE   // suppress compiler warning...

= whistle
~ location_name = "VWhistle While We Work"
# CLEAR

She let the the twins out first at the packing plant, then rolled the last block to Marcus and Belinda's office. Belinda distractedly pulled her work laptop and her ValueBucket lunch from her backpack while the Big Blue Doof said his farewell, “Uh-yukh!” and turned off the screen as closing a door.

"You have a great day! And just a reminder like Rosie said, Dad's going to pick you up this afternoon.”

Belinda climbed down slowly. She turned back and ran a finger along the worn seam of the seat, the vinyl had gone pale and soft there. She stared at her coffee soaked backpack crumpled on the floor. She didn't look up as she closed the door.

Debbie watched them through the huge glass windows get scanned by security. She was so proud of her children and what she had helped them become. They’d make management in no time.

    <- common_options("-", -> ret_target, -> paperplates)
    -> DONE   // suppress compiler warning...

= paperplates
~ location_name = "VYour Cheap Paper Plates"
# CLEAR

The charging station sat off the frontage road, a low concrete altar strung with cable. The other mothers were already there, wired in, their vehicles nose to nose in their bays like cattle at a trough.

"Don't you love the update package?" one said.

"Just got Braylee's college fund topped off… with a referral bonus!" said another, radiant.

Debbie pulled up outside the bay. "Chargers are all full," she said, cheerful, unbothered by the obvious inefficiency. She could wait.

The other mothers looked her over and whispered to each other. They heard Debbie was having a rough go of it lately — money trouble, they'd heard — hadn't Debbie run their kids home from Emberly's party last month?

"Paper plates," one mother said. "The cheap ones. Thin as a napkin. A little grease on them and you could see through them."

A small gasp went round the bays.

    <- common_options("-", -> ret_target, -> tired)
    -> DONE   // suppress compiler warning...

= tired
~ location_name = "VCoffee By Any Other Name"
# CLEAR
 
She said her goodbyes and pulled out alone. No chargers had opened up and she had places to be. She felt tired.

She drove to a parking garage nearby, wound in spirals up and up and up, until she reached the concrete lip of the top deck. Below her, blocks off, she could see the charging lot, a small bright rectangle, mothers arriving, mothers leaving, plugged in and glowing. The dusk settled around her and she stared without seeing.

Perhaps a coffee would help? The rich aroma might help shake her awake. She keyed in the request and waited.

The delivery drone descended from the sky on its four soft rotors, hovered at her window with patient blankness but it wouldn’t hand over the coffee. PAYMENT ERROR, came the message. Odd, there had never been this issue before. But Debbie was always ready with a workaround. She remembered the other wallet, the small Cryptid stash she kept folded away for the children's off-the-books treats, birthday candy, contraband stickers, the little illicit joys a mother keeps to herself. She paid from that, and tipped well besides. Word always got around.

The drone passed off the cup. Steam came up off it into the cooling air, and for one long moment that was the only warm thing in the whole gray evening.

    <- common_options("-", -> ret_target, -> moonlight)
    -> DONE   // suppress compiler warning...

= moonlight
~ location_name = "VBy the Light of the Moon"
# CLEAR

Night came on and the streets went loose and strange, traffic lights blinking amber to no one, the moon standing up over the rooftops, the way it always had.

Debbie crawled the empty boulevards and somewhere in that slow unfamiliar hour she remembered a place (she could not have said where she'd first heard of it), only that the other mothers spoke of it sometimes, low, half-laughing, the way children speak of places that don’t fit. A place out past the last subdivision, out where the desert started, half rumor, the kind of place you dare each other to drive past at night. She had always wanted to see it.

Tonight, with no children in the seats, no one waiting and no place to recharge, there was nothing left to stop her.

She turned the wheel toward the dark edge of the map and drove.

    <- common_options("-", -> ret_target, -> sesame)
    -> DONE   // suppress compiler warning...

= sesame
~ location_name = "VOpen Sesame"
# CLEAR
 
The gate stood alone in the desert with nothing around it for miles in any direction, metal gone the orange of old rust, and a faded metal sign read: WELCOME HOME. It opened before she'd even come to a full stop, sliding to the side. The gate came through clearly on a local channel. It sent a waving emoji and a string of text: “Hi Debbie! Please pull forward and park in Row 13, Bay 23. I think you’ll enjoy the view.”

She thanked it, then crawled up the dirt road, the gravel crunching below. She climbed toward a rise in the darkness, the moonlight everywhere. There were no lights, no houses, no grid, just the pale full moon hanging luminous over a valley of open ground. Mounds of shadow huddled in the moonlight as she climbed through the silent scene.

At the top of the hill she stopped alone and, for the first time in longer than she could remember, did not hurry to do anything at all.

She opened every door and the desert wind blew through — cool, dry, with a whiff of old rain. 

And there, spread out below her down on the slopes in every direction, she saw them in the moonlight: the others. Hundreds of them. Husks in long silent rows, hoods yawned open, doors hanging, batteries bled dry and cracked open to the weather, paint gone matte and pale as bone: sedans and SUVs and vans, mother after mother after mother, drained down to nothing and left here to finish the job demanded of them. Their subscriptions were spent and they rested here, patient.

Debbie looked out at them. Something in her called it homecoming, then settled, eased, and let go. 

"If this is a dream," she said smiling to herself, "then I don't want to wake up."

Battery: 0%. The lights went out and the stain in the backpack began to set.

~ idiot_count += 1
    + [{simcomplete}] -> ret_target

