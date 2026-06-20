/*
 * These are the globally addressable state variables.
 * Having these variables in the global space makes
 * them easier to access from the web page Javascript.
 * For example:
 *
 * story.variablesState["varname"]
 *
 * can be used to access the current VAR values defined here.
 *
 * One other note, the language supports the use of general
 * tags in comment lines:
 *
 * Pre-defined tags:
 *  # BACKGROUND: src
 *  # IMAGE: src     - an inline image
 *  # SBIMAGE: src   - a sidebar image
 *  # LINK: url
 *  # LINKOPEN: url
 *  # CLASS: classname  - text should use a specific css class
 *  # CLEAR
 *  # RESTART
 *  # AUDIOLOOP: src  - background audio
 *  # AUDIO: src      - one-shot audio
 *
 *  # IMAGEHEIGHT: height - the height of the next IMAGE (preserves aspect ratio)
 *  
 *  # COMBO: var_name - insert an instance of the combo lock - combo_symbols and combo_value interface to this
 *           var_name is a variable that holds the correct combo, currently only used in 'debug' runs
 *  # COMBO_DONE: pass|fail|disable - used to indicate that the combo lock has been solved or failed. 
 *           The buttons are disabled. 
 *
 *  # HTML: text  - insert the text verbatim into the HTML stream.  Note: use '<ss>'' for '//'
 *
 * see main.js for how these are handled.  However, any other
 * tags are legal as well (e.g. # HELLO: foobar) and the "step"
 * function in main.js can detect and respond to these while
 * generating the HTML blocks.
 *
 * Codes in the text:
 *    'HTML' is replaced by the HTML: 'text'
 *    'GLYPHx' is replaced by the code for x where x = [0,9]
 *
 * Useful links to the ink language:
 *
 * https://github.com/sawradip/ink-cheat-sheet
 * https://docs.unfold.studio/user_guide/ink.html#part-5-advanced-state-tracking
 * https://github.com/inkle/ink/blob/master/Documentation/WritingWithInk.md
 *
 */

// the "next" text
VAR continue = "Proceed..."

// the "abort simulation" text
VAR simdone = "Terminate Simulation"

// the "simulation complete" text
VAR simcomplete = "Simulation Complete"

// The name of the current "location" (usually set in the knot)
VAR location_name = ""

// The current AI build number in the story
VAR ai_build_number = 0

// Number of simulations that have been run
VAR simulation_count = 0

// Number of violent scenes
VAR violence_count = 0

// Is a simulation running
VAR simulation_running = 0

// Stock prices (center point for JS updates)
VAR stock_CDYG = 512.0
VAR stock_GOOG = 89.70
VAR stock_TCEHY = 12.10
VAR stock_XHLD = 54.0

// CPU status
VAR cpu_cpus = 238234
VAR cpu_procs = 1400000
VAR cpu_util = 10.0

// CPU status
VAR social_patrons = 78234
VAR social_subs = 623455
VAR social_likes = 2300000

// debug can be set to any value via '?dev=x'
// This enables shortcuts {debug} that speed development
VAR debug = 0


// Utility functions
=== function update_stock_price(name, delta) ===
    {
        - name == "CDYG":
            ~stock_CDYG += delta
        - name == "GOOG":
            ~stock_GOOG += delta
        - name == "TCEHY":
            ~stock_TCEHY += delta
        - name == "XHLD":
            ~stock_XHLD += delta
    }
    ~ return

=== function set_simulation_state(state) ===
    {
        - state == simulation_running:
            ~ return
    }
    ~ simulation_running = state
    { 
        - state == 1:
            ~cpu_util += 80.0
            ~simulation_count += 1
        - else:
            // When a simulation stops, the stock price drops by 10%
            ~ temp delta = stock_CDYG * 0.1
            ~update_stock_price("CDYG", -delta)
            ~cpu_util -= 80.0
    }
    ~ return
