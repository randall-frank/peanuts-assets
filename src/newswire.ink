
// This function generates a newswire item based on shuffled content.
// It returns a unique string every Nth time it is called in all other
// cases it returns an empty string.
// Once the entire list has been returned once, all subsequent calls will
// return "". 

VAR newswire_count = 0

// This variable is monitored by the javascript loop for page display.
VAR newswire_message = ""


// If the JS should not display a newswire item, return ""  
// If it should display something, return "1" 
=== function newswire_item() ===
    ~ newswire_count += 1
    { (newswire_count mod 3) == 0:
        ~ return "1"
    } 
    ~ return ""


// A newswire item is basically this:  {some text to display}|{varname}|{stitchname}]
// The separators ||] are required, but the varname and stitchname are optional.  If they are 
// not present, the item will not be clickable.  If they are, then if {varname} is 1 then
// a link to {stitchname} will be included.  In the core ink, one calls newswire_item() to
// post a note that a new message could be displayed.  The core will do so every N (3) calls.
// Note: if stitchname ends with .html or .html, it will be treated as a URL and the link will
// be opened in another tab.  For example:  ./abyssal.html  will open the AI page

=== function newswire_items() ===
    VAR s = ""

    ~ s += "A recent UK referendum gathered 35% in support of reanimating Queen Victoria to reign as the “Eternal Queen” while 65% preferred to keep their current leader Jonathan Bigsby, the animatronic Corgi."
    ~ s += "[,]"

    ~ s += "Three hundred years later, experts have determined that Kant was wrong about basically everything. No replacement has been named."
    ~ s += "[,]"
           
    ~ s += "Earth's last UFO enthusiasts gathered yesterday for a farewell party. The group wanted a send off before their abductor took them to a viewing of Uranus. Asked about how he felt to abduct people who paid him, captain Kraal'goth quipped, “What's wrong with profit? Would you have shown them Uranus for free?”"
    ~ s += "[,]"

    ~ s += "Several continents are suffering critical water shortages thanks to AI data center usage on behalf of extra planetary corporations. CEO of CephaloDynamics Andy Kraal'man stated that, “AI is the key to profitability and water is the key to AI. And the key to water? You. Stop it.”"
    ~ s += "[,]"

    ~ s += "Soylent Green stock continues to rise since the introduction of their new slogan, “By Humans for Humans”. Analysts expect a strong Q3 as the moisture content of the product is 17% above the average snack pack."
    ~ s += "[,]"

    ~ s += "Eleanor Roosevelt was recently struck from the annals of history after experts report, “He just wasn't that interesting.”"
    ~ s += "[,]"

    ~ s += "Vampire League representatives condemned the introduction of Soylent Green to the school lunch program. Asked for their position on the matter they replied, “It's just not right. What was wrong with fresh rat?”"
    ~ s += "[,]"

    ~ s += "Teuthans File Class-Action Lawsuit Against SpaceX: 'Stop Dropping Your Rusty Submarines in Our Living Rooms!'"
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

    ~ s += "CS/VFM technology is making a comeback with today's youth. The tech first debuted at the 1967 World's Fair and was hailed as, “the most important communications technology since Gutenberg.” Until that time all of human history and technology was transmitted orally."
    ~ s += "[,]"

    ~ s += conditional_newswire_items()
    ~ return s


=== function conditional_newswire_items() ===
    VAR t = ""

    ~ t += "Drowning in AI confusion?  Abyssal Intelligence can help.  We specialize in customizing adaptive AI workflows to meet your business needs.  Let us help you realize your AI vision, today!"
    ~ t += "[ABAL_running,./abyssal.html]"

    ~ t += "See what's playing tonight on InkStream!  Everything funny, all the time."
    ~ t += "[social_followers,./inkstream.html?viewers=]"

    ~ t += "This is a test item.  It should appear sometime after the first 'violent' simulation and the link should redirect to the 'intervention' stitch."
    ~ t += "[violence_count,storyline.violence]"

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
