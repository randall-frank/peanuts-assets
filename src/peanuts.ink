INCLUDE globals.ink
// Include all of the knot files here
INCLUDE station.ink
INCLUDE storyline.ink
INCLUDE mille.ink
INCLUDE backforty.ink
INCLUDE weight.ink
INCLUDE zero.ink
INCLUDE bad.ink
INCLUDE cruising.ink
INCLUDE ubermom.ink
INCLUDE david.ink
INCLUDE battle.ink
INCLUDE solitaire.ink
INCLUDE symptoms.ink
INCLUDE newswire.ink
INCLUDE utilities.ink


-> intro.start

=== intro ===
    
= start
~ location_name = ""
# CLEAR
# AUDIOLOOP: audio/I5%20-%20Silence%20Among%20the%20Stars.mp3
# CLASS: head1
Peanuts, Pickles and Propaganda
# CLASS: head2
Warning: This build is a work in progress.  
# CLASS: head2
While playable, the story is not yet complete.
# IMAGE: locations/splash.png
# CLASS: head2
Copyright © STORY_YEAR Randall Frank & Andrew Florance
# CLASS: head2
Version: STORY_VERSION (STORY_BUILD_DATE)

Peanuts, Pickles and Propaganda is a work of fiction. Names, characters, businesses, places, events, and incidents are either the products of the author's imagination or used in a fictitious manner. Any resemblance to actual persons, living or dead, or actual events is purely coincidental.
    + [Let's begin our story...] -> station.wake_up
    + [Attributions and thanks] -> thanks_to
    + [License] -> license


= thanks_to
# CLEAR
# AUDIOLOOP: audio/I5%20-%20Silence%20Among%20the%20Stars.mp3
# ATTRIBUTION
    + [Back] -> start


= end
~ location_name = "EThe End"
# CLEAR
# AUDIOLOOP: audio/endgame.mp3
And so ends our little tale.  We certainly hope you enjoyed spending some time with us.  We've enjoyed bringing to you!
If you would like to leave some feedback, Itch.io is a good place to do so.
Thanks again,
Andrew and Randy.
    + [Thank you] -> restart

= restart
# RESTART
    + [{continue}] -> start

= license
# CLEAR
# AUDIOLOOP: audio/I5%20-%20Silence%20Among%20the%20Stars.mp3
# HTML: <a target="_blank" href="https:<ss>github.com/randall-frank/peanuts-assets">Peanuts, Pickles and Propaganda</a>
# CLASS: head2
HTML is released under a Creative Commons Attribution License.  
# CLASS: head2
Copyright © STORY_YEAR Randall Frank & Andrew Florance
# HTML: <a target="_blank" href="http:<ss>creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>
The license allows people to use and adapt the work for any purpose, even commercially, as long as they give credit to the creators. Attribution must include the Title, Author, Source and License.  HTML is the complete text of the license agreement.
    + [Back] -> start
