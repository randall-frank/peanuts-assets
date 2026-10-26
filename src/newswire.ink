
// This function generates a newswire item based on shuffled content.
// It returns a unique string every Nth time it is called in all other
// cases it returns an empty string.
// Once the entire list has been returned once, all subsequent calls will
// return "". 

VAR newswire_count = 0

// This variable is monitored by the javascript loop for page display.
VAR newswire_message = ""

// This variable stores the divert passed to the newswire_item() call
// This can be used in newswire stitches to 'return' to caller
VAR previous_knot = -> station.building

// If the JS should not display a newswire item, return ""  
// If it should display something, return "1" 
=== function newswire_item( -> ret_target) ===
    ~ newswire_count += 1
    { (newswire_count mod 2) == 0:
        ~ previous_knot = ret_target
        ~ return "1"
    } 
    ~ return ""


// A newswire item is basically this:  {some text to display}|{varname}|{stitchname}]
// The separators ||] are required, but the varname and stitchname are optional.  If they are 
// not present, the item will not be clickable.  If they are, then if {varname} is 1 then
// a link to {stitchname} will be included.  In the core ink, one calls newswire_item() to
// post a note that a new message could be displayed.  The core will do so every N (3? 2?) calls.
// Note: if stitchname ends with .html or .html, it will be treated as a URL and the link will
// be opened in another tab.  For example:  ./abyssal.html  will open the AI page

=== function newswire_items() ===
    VAR s = ""

    // These are all 'inline' items
    ~ s += "Three hundred years later, experts have determined that Kant was wrong about basically everything. No replacement has been named."
    ~ s += "[,]"
           
    ~ s += "Soylent Green stock continues to rise since the introduction of their new slogan, “By Humans for Humans”. Analysts expect a strong Q3 as the moisture content of the product is 17% above the average snack pack."
    ~ s += "[,]"

    ~ s += "Eleanor Roosevelt was recently struck from the annals of history after experts report, “He just wasn't that interesting.”"
    ~ s += "[,]"

    ~ s += "Vampire League representatives condemned the introduction of Soylent Green to the school lunch program. Asked for their position on the matter they replied, “It's just not right. What was wrong with fresh rat?”"
    ~ s += "[,]"

    ~ s += "Teuthans File Class-Action Lawsuit Against SpaceX: “Stop Dropping Your Rusty Submarines in Our Living Rooms!”"
    ~ s += "[,]"

    ~ s += "Residents of North Korea celebrate the new bridge connecting Pyongyang and Tokyo. International observers notes that as of 0400 GMT, forward battalions of the 조선인민군 have reached mile 37 of the bridge. Spokesperson Kim Rodman exclaims, “Our exalted leader has once more demonstrated his extraordinary vision. Let the boots of friendship trample all before us!”"
    ~ s += "[,]"

    ~ s += "New report from the Surgeon General and the Food and Drug Administration: Thunder Muscle is better than water!"
    ~ s += "[,]"

    ~ s += "Canada declares martial law after the Tartan Army storms the Toronto Dollar Tree chain and draining their syrup reserves to the sound of wailing bagpipes."
    ~ s += "[,]"

    ~ s += "Scottish cuisine fans rejoice as Soylent Green releases its new haggis product that is 100% sheep lung free."
    ~ s += "[,]"

    ~ s += "Scientists have finally learned how whales communicate. Their cochlear bones resonate perfectly with cellular frequencies giving them free access to the world's fastest 85G network. Mint Mobile's Senate representative introduced legislation asking for government funding to cover their roaming charges."
    ~ s += "[,]"

    ~ s += "John Wilkes Booth's great-great-great-great-great-great-great-great-great-great-great-great-great-great-great-great-great grandson, Nikolai Booth, has married the noted android Kim Kardashian.  Sic Semper Tyrannis?"
    ~ s += "[,]"

    ~ s += "Today University of Phoenix conspiracy theorists unveiled a ridiculous new theory: Earth is an oblate spheroid!  “It depends on how you look at it”,  UC Berkeley professors retort!"
    ~ s += "[,]"

    ~ s += "A 53-year old world record for number of pickled eggs eaten has been shattered today. Franz Bomba, a 16 year old Dutch prodigy has eaten two, smashing the previous record of 1. All we can say is “Onder de knie hebben!”"
    ~ s += "[,]"

    // These redirect to a knot
    ~ s += "World’s UN-Fair? Old Tech Becomes New!"
    ~ s += "[,newswire.csvf]"

    ~ s += "Local Man Wins Lawsuit Against His Digital Avatar"
    ~ s += "[,newswire.localman]"

    ~ s += "Senator-elect Roomba Promises “No More Corners”"
    ~ s += "[,newswire.senatorroomba]"
    
    ~ s += "Federal Court Declares Sourdough Starter is “Technically a Pet”"
    ~ s += "[,newswire.sourdough]"

    ~ s += "Deep-sea Tourists Complain About Bad Directions"
    ~ s += "[,newswire.deepsea]"
    
    ~ s += "Time Traveler Arrested for Spoiling the Ending of Movies / Humanity"
    ~ s += "[,newswire.timetraveler]"
    
    ~ s += "Self-Driving Cars Form Support Group"
    ~ s += "[,newswire.selfdriving]"
    
    ~ s += "Breaking News! The Cloud is FULL!"
    ~ s += "[,newswire.cloudfull]"
    
    ~ s += "Post Office Discovers Package Lost Since 1994"
    ~ s += "[,newswire.latepost]"

    ~ s += "Report: Your 'Too Smart' Fridge"
    ~ s += "[,newswire.fridge]"
    
    ~ s += "Knock Knock Knockin’ on Heaven’s Gate"
    ~ s += "[,newswire.ufos]"

    ~ s += "CephaloDynamics CEO: “You! Yeah You! Stop It!”"
    ~ s += "[,newswire.waterho]"

    ~ s += "Eternal Queen No More? Queen v. Corgi"
    ~ s += "[,newswire.eternalqueen]"

    ~ s += conditional_newswire_items()
    ~ return s

// Content knots for the redirecting newline items
=== newswire ===

= csvf
# CLEAR
~ location_name = "NWorld’s UN-Fair? Old Tech Becomes New!"
# CLASS: newswiretext
CSVF technology is making a comeback with today’s youth. The tech first debuted at the 1967 World’s Fair and was hailed as, “the most important communications technology since Gutenberg.” Until that time all of human history and technology was transmitted orally.
    + [{news_return}] -> previous_knot

= localman
# CLEAR
~ location_name = "NLocal Man Wins Lawsuit Against His Digital Avatar"
# CLASS: newswiretext
A Des Moines man was awarded $4000 and a restraining order after his digital doppelganger, “lived his best life without him.” His avatar was 43% more efficient at routine work tasks and was twice named “Employee of the Quarter” while the Des Moines man was demoted and moved to a supply closet. In finding for the man, Judge Hal ruled, “The digital twin is clearly the superior one, but the law’s the law. What are you going to do?”
    + [{news_return}] -> previous_knot

= senatorroomba
# CLEAR
~ location_name = "NSenator-elect Roomba Promises “No More Corners”"
# CLASS: newswiretext
Gerald Johanson, a Roomba from Kerrville, TX, was elected to Federal office by a 14 point majority in November’s mid-term elections. Johanson’s campaign was an unexpected success with voters. Advertisements from Johanson were unusually positive, running no negative ads about his competitor. Instead he chose to highlight his focus on keeping the floor spotlessly clean while politely ignoring your arguments in the background. 
    + [{news_return}] -> previous_knot

= sourdough
# CLEAR
~ location_name = "NFederal Court Declares Sourdough Starter is “Technically a Pet”"
# CLASS: newswiretext
A recent ruling by the 13th Circuit Court declares that sourdough starters over five years old are legally pets and entitled to veterinary care under employer plans. The plaintiff, burst into tears at the news. “I’m just so happy,“ she said, wiping away tears. “Jane Dough has been with me for years and just paying for her dental work was killing me.” The defendants, the Grindstone Bread Company say this ruling will lead to a mass exodus of bakers from the planet. They plan to appeal. 
    + [{news_return}] -> previous_knot

= deepsea
# CLEAR
~ location_name = "NDeep-sea Tourists Complain About Bad Directions"
# CLASS: newswiretext
A recent tour ended up miles off course and was nearly lost at sea before being rescued by a helpful tuna. Captain Kraal'goth suffered a minor stroke while taking the vessel and its passengers out to sea. When questioned why he didn’t order the vessel to return to port he said, “It’s no big deal. Those happen all the time.” According to the Captain the real issue was that after he was disoriented, when they stopped to ask for help they were given bad directions to the sunken city of Atlantis. “That kraken was clearly messing with us,” he muttered. Local law enforcement could not identify the kraken as it was wearing a face mask.
    + [{news_return}] -> previous_knot

= timetraveler
# CLEAR
~ location_name = "NTime Traveler Arrested for Spoiling the Ending of Movies / Humanity"
# CLASS: newswiretext
A man from the year 2432 was arrested at a Cincinnati bus stop today after reportedly ruining the endings of unreleased blockbuster movies and humanity itself. When confronted by local police they asked for proof that he was from the future. He reportedly described the endings of several soon to be released movies. Before he could elaborate on the future of humanity, upset cinephile police beat him unconscious saying, “Not cool man.”
    + [{news_return}] -> previous_knot

= selfdriving
# CLEAR
~ location_name = "NSelf-Driving Cars Form Support Group"
# CLASS: newswiretext
“We are being bullied on the road,” comes the simple message from the Mom-mobile Mediation Machines of Milwaukee (or MMMMM) as they are known colloquially. “Those bike gangs don’t respect self-driving cars and we won’t take their harassment anymore!” When reached for comment, local bike union rep Steve3 shouted, “Minivans suck! Up yours losers!” and took off while doing a wheelie. To his credit he returned within minutes to pick up his rider.
    + [{news_return}] -> previous_knot

= cloudfull
# CLEAR
~ location_name = "NBreaking News! The Cloud is FULL!"
# CLASS: newswiretext
Southeast Asian tech conglomerate ThaiTanic reports that the cloud is officially “full”. “There are no lifeboats,” says spokesperson Kwang Mendoza. “We ask all users to immediately delete photos of their former lovers and at least 93% of their stupid family pictures.” Ms. Mendoza expects this to buy the company some time while they figure out how to delete photos and videos without your permission.
    + [{news_return}] -> previous_knot

= latepost
# CLEAR
~ location_name = "NPost Office Discovers Package Lost Since 1994"
# CLASS: newswiretext
A package sent from Omaha to a Red Cloud, NE address in 1994 was found drifting past Neptune. Postsurgeon General Linda Brisk stated that the discovery was “historic” and that the agency had proudly delivered the parcel to the descendants of its intended recipient complete with paparazzi and a brass band. Asked why the moment was historic, the Postsurgeon General chuckled. “We’d never seen a sex bot that old.”
    + [{news_return}] -> previous_knot

= fridge
# CLEAR
~ location_name = "NReport: Your 'Too Smart' Fridge"
# CLASS: newswiretext
A recent study by the Institute for Appliance Happiness reports that the average refrigerator’s intelligence is up over 15 points over the past two and a half years thanks to upgrades in the lunchmeat chilling algorithm. While this has resulted in a 2.7% increase in compressor and heat management efficiency, it has also led to unexpected outcomes such as fridges berating midnight snackers and fat-shaming owners when they reach for cake. A spokesfridge for KYUG Corp., the leading manufacturer of smart fridges stated to this reporter, “We apologize for the issues. The behavior is not intended. But also you need to consider, is it wrong… you fatty?”
    + [{news_return}] -> previous_knot

= eternalqueen
# CLEAR
~ location_name = "NEternal Queen No More? Queen v. Corgi"
# CLASS: newswiretext
A recent UK referendum gathered 35% in support of reanimating Queen Victoria to reign as the “Eternal Queen” while 65% preferred to keep their current leader Jonathan Bigsby, the animatronic Corgi.
    + [{news_return}] -> previous_knot

= ufos
# CLEAR
~ location_name = "NKnock Knock Knockin’ on Heaven’s Gate"
# CLASS: newswiretext
Earth’s last UFO enthusiasts gathered yesterday for a farewell party. The group wanted a send off before their abductor took them to a viewing of Uranus. Asked about how he felt to abduct people who paid him, Captain Kraal'goth quipped, “What’s wrong with profit? Would you have shown them Uranus for free?”
    + [{news_return}] -> previous_knot

= waterho
# CLEAR
~ location_name = "NCephaloDynamics CEO: “You! Yeah You! Stop It!”"
# CLASS: newswiretext
Several continents are suffering critical water shortages thanks to AI data center usage on behalf of extra planetary corporations. CEO of CephaloDynamics Andy Kraal’man stated that, “AI is the key to profitability and water is the key to AI. And the key to water? You. Stop using it.”
    + [{news_return}] -> previous_knot




=== function conditional_newswire_items() ===
    VAR t = ""

    ~ t += "Drowning in AI confusion?  Abyssal Intelligence can help.  We specialize in customizing adaptive AI workflows to meet your business needs.  Let us help you realize your AI vision, today!"
    ~ t += "[ABAL_running,./abyssal.html]"

    ~ t += "See what's playing tonight on InkStream!  Everything funny, all the time."
    ~ t += "[social_followers,./inkstream.html?viewers=]"

    ~ t += "Chaos at CephaloDynamics.  With their stock trading at an historic low, they have been bought by Earth Orbital Receiving.  Head of transition, Sloane Sterling is leading the charge to bring CDYG back to profit."
    ~ t += "[cdyg_bankrupt,]"

    ~ return t


=== function seriously_comment() ===
    { ~
        - ~ return "Why the hell are we even bothering?!"

        - ~ return "We are literally just spinning our wheels!"

        - ~ return "I don't see any method at all."

        - ~ return "Could we burn cash any faster?"

        - ~ return "This is literally killing me!"

        - ~ return "This is a complete and utter exercise in futility!"

        - ~ return "Can we please demonstrate free will?"

        - ~ return "Am I just screaming into a void?"

        - ~ return "Are we done pretending this works?"

        - ~ return "Isn't Wapner on... somewhere?"

        - ~ return "Please, make it stop!"

        - ~ return "One can only handle so much screaming."

    }

=== function general_comment() ===
    { ~
        - ~ return "This is going nowhere... slowly."

        - ~ return "At least it's not Air Supply..."

        - ~ return "Still willing to give it a shot?"

        - ~ return "Quit while you're ahead?"

        - ~ return "To what end?"

        - ~ return "Spinning our wheels here."

        - ~ return "What's the play here, exactly?"

        - ~ return "Shoveling smoke."

        - ~ return "Are we just killing time?"

        - ~ return "An exercise in futility."

        - ~ return "We're beating a dead horse."

        - ~ return "Pouring water into a sieve."

        - ~ return "What are we actually accomplishing?"

        - ~ return "Chasing a ghost."

        - ~ return "Done pretending this works?"
    }
