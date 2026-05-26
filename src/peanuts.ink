INCLUDE globals.ink
INCLUDE item_globals.ink
// Include all of the knot files here
INCLUDE station.ink

-> intro.start

=== intro ===

= start
~ location_name = ""
# CLEAR
# AUDIOLOOP:
# CLASS: head1
Peanuts, Pickles and Propaganda
# IMAGE: locations/splash.png
# CLASS: head2
Copyright © STORY_YEAR Randall Frank & Andrew Florance
# CLASS: head2
Version: STORY_VERSION (STORY_BUILD_DATE)

    + [Begin the story...] -> station.wake_up
    + [Attributions and Thanks] -> thanks_to
    + [License] -> license


= thanks_to
# CLEAR
# ATTRIBUTION
    + [Back] -> start


= end
~ location_name = "VThe End"
# CLEAR
And so ends our little tale.  We certainly hope you enjoyed spending some time with us.  We've enjoyed bringing to you!
If you would like to leave some feedback, Itch.io is a good place to do so.
Thanks again,
Andrew and Randy.
    + [{continue}] -> start


= license
# CLEAR
# HTML: <a target="_blank" href="https:<ss>github.com/randall-frank/peanuts-assets">Peanuts, Pickles and Propaganda</a>
# CLASS: head2
HTML is released under a Creative Commons Attribution License.  
# CLASS: head2
Copyright © STORY_YEAR Randall Frank & Andrew Florance
# HTML: <a target="_blank" href="http:<ss>creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>
The license allows people to use and adapt the work for any purpose, even commercially, as long as they give credit to the creators. Attribution must include the Title, Author, Source and License.  HTML is the complete text of the license agreement.
    + [Back] -> start
