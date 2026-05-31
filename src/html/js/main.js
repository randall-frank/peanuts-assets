var old_url = window.location.href;
var peanuts_allow_cookies = false;


var init_stock_info = {
    'CDYG': { 'price': 150.25, 'change': 1.45 },
    'GOOG': { 'price': 89.70, 'change': -0.55 },
    'TCEHY': { 'price': 12.10, 'change': 0.83 },
    'XHLD': { 'price': 54.0, 'change': 0.00 }
}

var init_system_info = {
    'cpus': 238234,
    'procs': 1400000,
    'util': 12
}

var init_social_info = {
    'patrons': 78234,
    'subs': 1300000,
    'likes': 2300000000    
}

var sidebar_info = {
    'stock_info': init_stock_info,
    'system_info': init_system_info,
    'social_info': init_social_info
}

function post_location_change(story) {
    if (!peanuts_allow_cookies) return;
    let name = story.state.currentPathString;
    if (!name || name.length === 0) return;

    // Keep the first one or two parts of the path
    let parts = name.split('.');
    if ((parts.length == 1) || (parts[1] === '0')) {
        name = parts[0];
    } else {
        name = parts.slice(0, 2).join(".");
    }
    if (name.length < 3) return;

    // Build the URL from the current path
    let root = window.location.href;
    root = root.split(window.location.pathname)[0];
    const url = root + "/" + name;
    // console.log("Location change: " + url);

    gtag('config', 'G-2CCLGG3BX9', {
        'send_page_view': false,
        'page_referrer': old_url,
        'page_location': url,
        'update': true,
    });
    gtag('event', 'page_view');
    old_url = url;
}


(function (storyContent) {
    // 1. Initialize Story
    var story = new inkjs.Story(storyContent);
    var storyContainer = document.querySelector('#story');
    var imageContainer = document.querySelector('#images');
    var sidebarContainer = document.querySelector('#sidebar');
    var outerScrollContainer = document.querySelector('.outerContainer');
    theStory = story;

    // 2. Setup Controls
    var savePoint = "";
    var hasSave = false;
    setupButtons(hasSave);
    initStatusSidebar();
    
    // Check for "dev" mode
    story.variablesState.debug = checkDebugMode();

    // Set initial save point
    savePoint = story.state.toJson();

    continueStory(true);

    // 4. Main Loop
    function continueStory(firstTime) {

        var paragraphIndex = 0;
        var delay = 0.0;
        
        // Don't over-scroll past new content
        var previousBottomEdge = firstTime ? 0 : contentBottomEdgeY();

        if (firstTime) {
            storyContainer.innerHTML = ''; 
        }

        // Placeholder for in injected raw HTML
        var HTML_text = '';
        
        // IMAGEHEIGHT specification for the IMAGE option
        var IMAGE_height = null;

        // Record location changes (this is actually the previous location and is only working in debug mode)
        post_location_change(story);

        scrollToTop();

        while(story.canContinue) {
            var paragraphText = story.Continue();

            var tags = story.currentTags;

            // Any special tags included with this line
            var customClasses = [];
            for(var i=0; i<tags.length; i++) {
                var tag = tags[i];

                // Detect tags of the form "X: Y". Currently used for IMAGE and CLASS but could be
                // customized to be used for other things too.
                var splitTag = splitPropertyTag(tag);
				splitTag.property = splitTag.property.toUpperCase();

                // AUDIO: src
                if (splitTag && splitTag.property == "AUDIO") {
                    let audio_tmp = split_audio_name(splitTag.val);
                    set_audio_source(audio_tmp.name, audio_tmp.scale);
                }

                // AUDIOLOOP: src
                else if (splitTag && splitTag.property == "AUDIOLOOP") {
                    let audio_tmp = split_audio_name(splitTag.val);
                    set_audioloop_source(audio_tmp.name, audio_tmp.scale);
                }

                // SBIMAGE: src
                if (splitTag && splitTag.property == "SBIMAGE") {

                    imageContainer.replaceChildren();

                    var imageElement = document.createElement('img');
                    if (splitTag.val) {
                        imageElement.src = splitTag.val;
                    } else {
                        imageElement.src = "items/icon-150x150.png";
                        imageElement.classList.add("glitch");
                    }
                    imageElement.classList.add("sbimage");
                    imageContainer.appendChild(imageElement);

                    imageElement.onload = () => {
                        // console.log(`scrollingto ${previousBottomEdge}`)
                        scrollDown(previousBottomEdge);
                        glitch.glitch(".glitch",  
                            { 
                                intensity: 0.2,
                                layers: 7,
                                shake: false,
                                glitchTimeSpan: {start: 0.25, end: 0.4}
                            });
                    }

                    showAfter(delay, imageElement);
                    delay += 200.0;
                }
                // IMAGEHEIGHT: height   (inline image height)
                else if (splitTag && splitTag.property == "IMAGEHEIGHT") {
                    IMAGE_height = splitTag.val;
                }
                // IMAGE: src   (inline image)
                else if( splitTag && splitTag.property == "IMAGE" ) {
                    var imageElement = document.createElement('img');
                    imageElement.src = splitTag.val;
                    if (IMAGE_height != null) {
                        imageElement.style.height = IMAGE_height + 'px';
                        imageElement.style.width = 'auto';
                        IMAGE_height = null;
                    }
                    storyContainer.appendChild(imageElement);

                    imageElement.onload = () => {
                        // console.log(`scrollingto ${previousBottomEdge}`)
                        scrollDown(previousBottomEdge)
                    }

                    showAfter(delay, imageElement);
                    delay += 200.0;
                }            
                // LINK: url
                else if( splitTag && splitTag.property == "LINK" ) {
                    window.location.href = splitTag.val;
                }

                // LINKOPEN: url
                else if( splitTag && splitTag.property == "LINKOPEN" ) {
                    window.open(splitTag.val);
                }

                // HTML: text
                else if( splitTag && splitTag.property == "HTML" ) {
                    HTML_text = splitTag.val.replace("<ss>", "//");
                }
                    
                // ATTRIBUTION
                else if (tag == "ATTRIBUTION") {
                    let elem = attribution(storyContainer);
                    showAfter(delay, elem);
                    delay += 200.0;
                }
                    
                // BACKGROUND: src
                else if( splitTag && splitTag.property == "BACKGROUND" ) {
                    outerScrollContainer.style.backgroundImage = 'url('+splitTag.val+')';
                }

                // CLASS: className
                else if( splitTag && splitTag.property == "CLASS" ) {
                    customClasses.push(splitTag.val);
                }
                    
                // CLEAR - removes all existing content.
                // RESTART - clears everything and restarts the story from the beginning
                else if( tag == "CLEAR" || tag == "RESTART" ) {
                    removeAll("p");
                    removeAll("img");
                    // Removes the "# COMBO" block
                    removeAll("div");

                    // Comment out this line if you want to leave the header visible when clearing
                    setVisible(".header", false);

                    if( tag == "RESTART" ) {
                        restart();
                        return;
                    }
                }
            }

            // Check if paragraphText is empty
            if (paragraphText.trim().length === 0) {
                continue; // Skip empty paragraphs
		    }

            var paragraphElement = document.createElement('p');
            // Inject # HTML tag into the paragraph text verbatim
            paragraphText = paragraphText.replace("HTML", HTML_text);
            HTML_text = '';
            // fill in the <p> text            
            paragraphElement.innerHTML = paragraphText;
            storyContainer.appendChild(paragraphElement);
            
                        // Add any custom classes derived from ink tags
            for(var i=0; i<customClasses.length; i++)
                paragraphElement.classList.add(customClasses[i]);

            // Fade in paragraph after a short delay
            showAfter(delay, paragraphElement);
            delay += 200.0;

        }

        // 5. Display Choices
        story.currentChoices.forEach(choice => {


            
            var choiceDiv = document.createElement('div');
            choiceDiv.classList.add("choice");
            choiceDiv.innerHTML = `<a href="#">${choice.text}</a>`;
            choiceDiv.addEventListener("click", (e) => {

                // Stop any playing audio item.
                if(audio != null) {
                    audio.pause();
                }
                
                // Don't follow the link, we'll handle it ourselves.
                e.preventDefault();

                // Remove all existing choices
                removeAll(".choice");
                
                story.ChooseChoiceIndex(choice.index);

                // This is where the save button will save from.  The new knot is selected, but
                // not yet generated/displayed.
                savePoint = story.state.toJson();
                
                // You must use CLEAR to clear the screen before continuing.
                //  storyContainer.innerHTML = ''; // Clear for next sequence
                continueStory();
            });
            storyContainer.appendChild(choiceDiv);
        });

        // Update UI
        updateUI();
    }

    // -----------------------------------
    // Various Helper functions
    // -----------------------------------

    // Detects whether the user accepts animations
    function isAnimationEnabled() {
        return window.matchMedia('(prefers-reduced-motion: no-preference)').matches;
    }

    function updateUI() {
        // Update location variable from Ink variable
        let loc = story.variablesState["location_name"] || "EUNKNOWN";
        let loc_name = loc.slice(0, 1);
        let location = document.getElementById("locationname");
        location.innerText = "TERMINAL: " + loc.slice(1);
        if (loc_name === "V") {
            location.className = "locationvirtual";
        } else if (loc_name === "L") {
            location.className = "locationlocal";
        } else {
            location.className = "locationerror";
        }
        updateStatusSidebar();
    }

    function restart() {
        story.ResetState();

        setVisible(".header", true);

        // set save point to here
        savePoint = story.state.toJson();

        continueStory(true);

        outerScrollContainer.scrollTo(0, 0);
    }

    // Fades in an element after a specified delay
    function showAfter(delay, el) {
        if( isAnimationEnabled() ) {
            el.classList.add("hide");
            setTimeout(function() { el.classList.remove("hide") }, delay);
        } else {
            // If the user doesn't want animations, show immediately
            el.classList.remove("hide");
        }
    }

    // scroll to the top of the page
    function scrollToTop() {
        let container = document.getElementById('storyContainer');
        container.scrollTop = 0;
    }

    // Scrolls the page down, but no further than the bottom edge of what you could
    // see previously, so it doesn't go too far.
    function scrollDown(previousBottomEdge) {
        // If the user doesn't want animations, let them scroll manually
        if ( !isAnimationEnabled() ) {
            return;
        }
        return;

        // Line up top of screen with the bottom of where the previous content ended
        var target = previousBottomEdge;

        // Can't go further than the very bottom of the page
        var limit = outerScrollContainer.scrollHeight - outerScrollContainer.clientHeight;
        if( target > limit ) target = limit;

        var start = outerScrollContainer.scrollTop;

        var dist = target - start;
        var duration = 300 + 300*dist/100;
        var startTime = null;
        function step(time) {
            if( startTime == null ) startTime = time;
            var t = (time-startTime) / duration;
            var lerp = 3*t*t - 2*t*t*t; // ease in/out
            outerScrollContainer.scrollTo(0, (1.0-lerp)*start + lerp*target);
            if( t < 1 ) requestAnimationFrame(step);
        }
        requestAnimationFrame(step);
    }

    // The Y coordinate of the bottom end of all the story content, used
    // for growing the container, and deciding how far to scroll.
    function contentBottomEdgeY() {
        var bottomElement = storyContainer.lastElementChild;
        return bottomElement ? bottomElement.offsetTop + bottomElement.offsetHeight : 0;
    }

    // Helper for parsing out tags of the form:
    //  # PROPERTY: value
    // e.g. IMAGE: source path
    function splitPropertyTag(tag) {
        var propertySplitIdx = tag.indexOf(":");
        if( propertySplitIdx != null ) {
            var property = tag.substr(0, propertySplitIdx).trim();
            var val = tag.substr(propertySplitIdx+1).trim();
            return {
                property: property,
                val: val
            };
        }

        return null;
    }
    
    // The Y coordinate of the bottom end of all the story content, used
    // for growing the container, and deciding how far to scroll.
    function contentBottomEdgeY() {
        var bottomElement = storyContainer.lastElementChild;
        return bottomElement ? bottomElement.offsetTop + bottomElement.offsetHeight : 0;
    }

    // Remove all elements that match the given selector. Used for removing choices after
    // you've picked one, as well as for the CLEAR and RESTART tags.
    function removeAll(selector)
    {
        var allElements = storyContainer.querySelectorAll(selector);
        for(var i=0; i<allElements.length; i++) {
            var el = allElements[i];
            el.parentNode.removeChild(el);
        }
    }
    
    // Used for hiding and showing the header when you CLEAR or RESTART the story respectively.
    function setVisible(selector, visible)
    {
        var allElements = storyContainer.querySelectorAll(selector);
        for(var i=0; i<allElements.length; i++) {
            var el = allElements[i];
            if( !visible )
                el.classList.add("invisible");
            else
                el.classList.remove("invisible");
        }
    }

    
    // Save and Load story state...
    // Save current state to a file
    function downloadState() {
        let game = {}
        // game.saved_ink_json = story.state.toJson();
        // Note: we save the savePoint, which is the state of the story at the start of the knot.
        // story.state.toJson(); is after the knot has been displayed
        game.saved_ink_json = savePoint;
        game.saved_loop_audio_src = get_audioloop_source();
        game.saved_loop_audio_scale = get_audioloop_scale();
        game.saved_background_src = outerScrollContainer.style.backgroundImage;
        game.saved_story_version = story_version;
        game.saved_sidebar_info = sidebar_info;
        const text = JSON.stringify(game);
        const a = document.createElement('a');
        a.href = URL.createObjectURL( new Blob([text], { type:`application/json` }) );
        a.download = "peanuts_saved_game.ppp";
        a.click();
    }
    // Load state from an uploaded file
    function uploadState() {
        // Get the file to upload
        const inputFileElement = document.createElement('input');
        inputFileElement.setAttribute('type', 'file');
        inputFileElement.setAttribute('accept', '.json, .ppp');
        inputFileElement.onchange = function() {
            getUploadedJson(this)
        };
        document.body.appendChild(inputFileElement);
        inputFileElement.click();
        inputFileElement.remove();
    }
    // Handle the uploaded file and load the JSON
    function getUploadedJson(fileInput) {
        var files = fileInput.files;
        if (files.length <= 0) return;
        files[0].text().then(function(text) { 
            // console.log(text);
            try {
                if (text.length) {
                    removeAll("p");
                    removeAll("img");
                    const temp = JSON.parse(text);
                    let currentMajorVersion = story_version.slice(0, story_version.lastIndexOf('.'));
                    let savedMajorVersion = currentMajorVersion; // default to current version
                    let savedVersion = story_version;
                    if (temp.hasOwnProperty('saved_story_version')) {
                        savedVersion = temp.saved_story_version;
                        savedMajorVersion = savedVersion.slice(0, savedVersion.lastIndexOf('.'));
                    }
                    if (currentMajorVersion !== savedMajorVersion) {
                        alert("Note: This save file is from a different version of the game. It may not load correctly.\n\n" +
                            "Game version: " + story_version + "\n" +
                            "Save file version: " + savedVersion);
                    }
                    
                    story.state.LoadJson(temp.saved_ink_json);
                    savePoint = story.state.toJson();
                    continueStory(true);
                    let audio_scale = 1.0;
                    if (temp.saved_loop_audio_scale) {
                        audio_scale = temp.saved_loop_audio_scale;
                    }
                    if (temp.saved_loop_audio_src) {
                        set_audioloop_source(temp.saved_loop_audio_src, audio_scale);
                    }
                    if (temp.saved_background_src) {
                        outerScrollContainer.style.backgroundImage = temp.saved_background_src;
                    }
                    if (temp.saved_sidebar_info) {
                        sidebar_info = temp.saved_sidebar_info;
                        updateStatusSidebar();
                    }
                }
            } catch (e) {
                alert("The uploaded save file could not be imported.");
            }
        });
    }

    // Used to hook up the functionality for global functionality buttons
    function setupButtons(hasSave) {

        let rewindEl = document.getElementById("rewind");
        if (rewindEl) rewindEl.addEventListener("click", function(event) {
            removeAll("p");
            removeAll("img");
            setVisible(".header", false);
            restart();
        });

        let saveEl = document.getElementById("save");
        if (saveEl) saveEl.addEventListener("click", function (event) {
            downloadState();
        });

        let reloadEl = document.getElementById("reload");
        reloadEl.addEventListener("click", function (event) {
            uploadState();
        });

    }

})(storyContent);



function attribution(parent) {
    let attr = document.createElement('div');
    attr.style.width = "100%";
    s = `
<h1>Attributions and Thanks</h1>

<p>This project draws on the inspiration and efforts of a number of folks.
We would like to acknowledge them here and thank them all for their contributions.</p>
<p></p>
<h2>The Writers and Developers</h2>
<p></p>
<table class="devs"><tbody>
<tr>
    <td><img class="glitchem" src="items/randy.png"></img></td>
    <td><img class="glitchem" src="items/andrew.png"></img></td>
</tr>
<tr>
    <td>Randall Frank</td>
    <td>Andrew Florance</td>
</tr>
</tbody></table>
<p></p>
<h2>The Beta Testers</h2>
<ul>
<li>Marina Galvagni</li>
</ul>
<p></p>
<h2>Imagery used with attribution</h2>
<ul>
<li>Various images generated using ArtSpace.ai</li>
<li>Various images generated using Google Gemini</li>
<li>Some Icons by Font Awesome fontawesome.com, Copyright Fonticons, Inc, License: <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank" rel="noopener noreferrer">CC BY 4.0</a></li>
</ul>
<p></p>
<h2>Audio used with attribution from freesound.org</h2>
<p></p>
<table class="attr">
<tr><th>Individual</th><th>Sound number</th><th>License</th></tr>
<tr><td>Jackalgirl</td>
    <td><a href="https://freesound.org/s/683748/" target="_blank" rel="noopener noreferrer">580356</a></td>
    <td><a href="https://creativecommons.org/licenses/by/4.0/" target="_blank" rel="noopener noreferrer">Attribution 4.0</a></td></tr>
</table>
<p></p>
<h2>Licensed audio files</h2>
<p>Audio tracks other than those listed above have been commercially licensed from other sources.  These files are not covered under the overall game CC license.</p>
<ul>
<li>Some audio tracks are licensed from Nicolas Jeudy and <a href="https://darkfantasystudio.itch.io/" target="_blank" rel="noopener noreferrer">DARK FANTASY STUDIO</a></li>
<li>Some audio tracks are licensed through <a href="https://www.gamedevmarket.net/" target="_blank" rel="noopener noreferrer">GameDev Markets</a> under this <a href="https://www.gamedevmarket.net/terms-conditions#pro-licence" target="_blank" rel="noopener noreferrer">license</a></li>
</ul>
<p></p>
`
    attr.innerHTML = s;
    parent.appendChild(attr);
    glitch.glitch('.glitchem',  
    { 
        intensity: 0.2,
        layers: 7,
        shake: false,
        glitchTimeSpan: {start: 0.25, end: 0.4}
    });
    return attr;
}



function stockChangeInfo(change) {
    let cname = 'neutral';
    let pfx = '   ';
    if (change > 0.) {
        cname = 'positive';
        pfx = '▲ +';
    }
    if (change < 0.) {
        cname = 'negative';
        pfx = '▼ ';
    }
    return [cname, pfx];
}

function initStatusSidebar() {
    let stockTickerContainer = document.querySelector('#stockticker');
    let s = `
        <table class="ticker-table">
        <thead>
            <tr>
            <th>Symbol</th>
            <th class="th-right">Price (€)</th>
            <th class="th-right">% Δ</th>
            </tr>
        </thead>
        <tbody>
        `
    for (const [key, value] of Object.entries(sidebar_info.stock_info)) {
        let price = value.price;
        let change = value.change;
        let info = stockChangeInfo(change);
        let cname = info[0];
        let pfx = info[1];
        s += `
            <tr class="${cname}" id="${key}_row">
                <td class="ticker-symbol">${key}</td>
                <td class="price">${price.toFixed(2)}</td>
                <td class="pct-change">${pfx}${price.toFixed(2)}</td>
            </tr>
            `
    }
    s += `
        </tbody>
        </table>
        `
    stockTickerContainer.innerHTML = s;
    
    const formatter = new Intl.NumberFormat('en-US', {
        notation: 'compact',
        compactDisplay: 'short' // Uses 'K', 'M', etc. Use 'long' for 'thousand', 'million'
    });
    
    let patrons = formatter.format(sidebar_info.social_info['patrons']);
    let subs = formatter.format(sidebar_info.social_info['subs']);
    let likes = formatter.format(sidebar_info.social_info['likes']);

    let socialContainer = document.querySelector('#social'); 
    s = `
        <ul class="fa-ul" style="margin-left: 0px">
            <li class="li-gap">
                <span class="fa-li"><i class="fa-solid fa-star" style="color: yellow;"></i> </span>
                <span id='social_patrons'>${patrons}</span> Patrons
            </li>
            <li class="li-gap">
                <span class="fa-li"><i class="fa-solid fa-bell" style="color: yellow;"></i> </span>
                <span id='social_subs'>${subs}</span> Subscribers
            </li>
            <li class="li-gap">
                <span class="fa-li"><i class="fa-solid fa-heart" style="color: red;"></i> </span>
                <span id='social_likes'>${likes}</span> Likes
            </li>
        </ul>
    `
    socialContainer.innerHTML = s;

    let cpus = sidebar_info.system_info['cpus'].toLocaleString('en-US');
    let procs = formatter.format(sidebar_info.system_info['procs']);
    let util = sidebar_info.system_info['util'].toFixed(1);

    let systemStatusContainer = document.querySelector('#systemstatus');
    s = `
        <ul class="fa-ul" style="margin-left: 0px">
            <li class="li-gap">
                <span class="fa-li"><i class="fa-solid fa-microchip" style="color: white;"></i> </span>
                <span id='system_cpus'>${cpus}</span> Processors
            </li>
            <li class="li-gap">
                <span class="fa-li"><i class="fa-solid fa-beat-fade fa-gears" style="color: lightgray;"></i> </span>
                <span id='system_procs'>${procs}</span> Processes
            </li>
            <li class="li-gap">
                <span class="fa-li"><i class="fa-solid fa-spinner fa-pulse" style="color: yellow;"></i> </span>
                <span id='system_util'>${util}</span>% Utilization
            </li>
        </ul>
    `
    systemStatusContainer.innerHTML = s;
}

function updateStatusSidebar() {
    add_random_sidebar();
    update_social(sidebar_info.social_info);
    update_system(sidebar_info.system_info);
    update_stock(sidebar_info.stock_info);
    
    setTimeout(updateStatusSidebar, 5000);
}

function random_norm(bias) {
    return Math.random() * 2.0 - 1.0 + bias; 
}

function random_fraction(num, frac, bias) {
    return random_norm(bias) * num * frac;
}

function add_random_sidebar() {
    sidebar_info.social_info.likes += random_fraction(sidebar_info.social_info.likes, 0.02, 0.05);
    sidebar_info.social_info.patrons += random_fraction(sidebar_info.social_info.patrons, 0.005, 0.0);
    sidebar_info.social_info.subs += random_fraction(sidebar_info.social_info.subs, 0.01, 0.02);

    sidebar_info.system_info.procs += random_fraction(sidebar_info.system_info.procs, 0.01, 0.0);
    sidebar_info.system_info.util += random_fraction(sidebar_info.system_info.util, 0.05, 0.0);

    for (const [key, value] of Object.entries(sidebar_info.stock_info)) {
        let price = value.price + random_fraction(value.price, 0.02, 0.0);
        let change = random_fraction(1.5, 1., 0.0);  // 2.5% max change
        change = Math.trunc(change * 100) / 100;
        sidebar_info.stock_info[key].price = price;
        sidebar_info.stock_info[key].change = change;
    }
}

function update_stock(info) {
    for (const [key, value] of Object.entries(info)) {
        let price = value.price;
        let change = value.change;
        let info = stockChangeInfo(change);
        let cname = info[0];
        let pfx = info[1];
        let tre = document.getElementById(key + "_row");
        tre.className = cname;
        let price_tde = tre.querySelector(".price");
        price_tde.innerHTML = price.toFixed(2);
        let change_tde = tre.querySelector(".pct-change");
        change_tde.innerHTML = pfx + change.toFixed(2);
    }
}

function update_social(info) {
    const formatter = new Intl.NumberFormat('en-US', {
        notation: 'compact',
        compactDisplay: 'short' // Uses 'K', 'M', etc. Use 'long' for 'thousand', 'million'
    });
    let patrons = formatter.format(info['patrons']);
    let subs = formatter.format(info['subs']);
    let likes = formatter.format(info['likes']);
    document.getElementById("social_patrons").innerHTML = patrons;
    document.getElementById("social_subs").innerHTML = subs;
    document.getElementById("social_likes").innerHTML = likes;
}

function update_system(info) {
    const formatter = new Intl.NumberFormat('en-US', {
        notation: 'compact',
        compactDisplay: 'short' // Uses 'K', 'M', etc. Use 'long' for 'thousand', 'million'
    });
    let cpus = info['cpus'].toLocaleString('en-US');
    let procs = formatter.format(info['procs']);
    let util = info['util'].toFixed(1);
    document.getElementById("system_cpus").innerHTML = cpus;
    document.getElementById("system_procs").innerHTML = procs;
    document.getElementById("system_util").innerHTML = util;
}
