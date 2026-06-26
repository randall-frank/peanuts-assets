
// This function generates a newswire item based on shuffled content.
// It returns a unique string every Nth time it is called in all other
// cases it returns an empty string.
// Once the entire list has been returned once, all subsequent calls will
// return "". 

VAR newswire_count = 0

// This variable is monitored by the javascript loop for page display.
VAR newswire_message = ""

=== function newswire_item() ===
    ~ newswire_count += 1
    { (newswire_count mod 3) == 0:
        { shuffle once:
        - ~ return "A recent UK referendum gathered 35% in support of reanimating Queen Victoria to reign as the “Eternal Queen” while 65% preferred to keep their current leader Jonathan Bigsby, the animatronic Corgi."

        - ~ return "Three hundred years later, experts have determined that Kant was wrong about basically everything. No replacement has been named."
            
        - ~ return "Earth's last UFO enthusiasts gathered yesterday for a farewell party. The group wanted a send off before their abductor took them to a viewing of Uranus. Asked about how he felt to abduct people who paid him, captain Kraal'goth quipped, “What's wrong with profit? Would you have shown them Uranus for free?”"

        - ~ return "Several continents are suffering critical water shortages thanks to AI data center usage on behalf of extra planetary corporations. CEO of CephaloDynamics Andy Kraal'man stated that, “AI is the key to profitability and water is the key to AI. And the key to water? You. Stop it.”"

        - ~ return "Soylent Green stock continues to rise since the introduction of their new slogan, “By Humans for Humans”. Analysts expect a strong Q3 as the moisture content of the product is 17% above the average snack pack."

        - ~ return "Eleanor Roosevelt was recently struck from the annals of history after experts report, “He just wasn't that interesting.”"

        - ~ return "Vampire League representatives condemned the introduction of Soylent Green to the school lunch program. Asked for their position on the matter they replied, “It's just not right. What was wrong with fresh rat?”"

        - ~ return "Teuthans File Class-Action Lawsuit Against SpaceX: 'Stop Dropping Your Rusty Submarines in Our Living Rooms!'"

        - ~ return "Residents of North Korea celebrate the new bridge connecting Pyongyang and Tokyo. International observers notes that as of 0400 GMT, forward battalions of the 조선인민군 have reached mile 37 of the bridge. Spokesperson Kim Rodman exclaims, “Our exalted leader has once more demonstrated his extraordinary vision. Let the boots of friendship trample all before us!”"

        - ~ return "New report from the Surgeon General and the Food and Drug Administration: Thunder Muscle is better than water!"

        - ~ return "Canada declares martial law after the Tartan Army storms the Toronto Dollar Tree chain and draining their syrup reserves to the sound of wailing bagpipes."

        - ~ return "Scottish cuisine fans rejoice as Soylent Green releases its new haggis product that is 100% sheep lung free."

        - ~ return "Scientists have finally learned how whales communicate. Their cochlear bones resonate perfectly with cellular frequencies giving them free access to the world's fastest 85G network. Mint Mobile's Senate representative introduced legislation asking for government funding to cover their roaming charges."

        - ~ return "John Wilkes Booth's great-great-great-great-great-great-great-great-great-great-great-great-great-great-great-great-great grandson, Nikolai Booth, has married the noted android Kim Kardashian.  Sic Semper Tyrannis?"

        - ~ return "Today University of Phoenix conspiracy theorists unveiled a ridiculous new theory: Earth is an oblate spheroid!  “It depends on how you look at it”,  UC Berkeley professors retort!"

        - ~ return "A 53-year old world record for number of pickled eggs eaten has been shattered today. Franz Bomba, a 16 year old Dutch prodigy has eaten two, smashing the previous record of 1. All we can say is “Onder de knie hebben!”"

        - ~ return "CS/VFM technology is making a comeback with today's youth. The tech first debuted at the 1967 World's Fair and was hailed as, “the most important communications technology since Gutenberg.” Until that time all of human history and technology was transmitted orally."

        }
    } 
    ~ return ""
    

 

