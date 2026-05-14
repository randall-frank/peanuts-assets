var old_url = window.location.href;
var peanuts_allow_cookies = false;

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

    update_followers(story, true);
    update_stock(story, true);
    update_system(story, true);

    // 2. Setup Controls
    document.getElementById("rewind").addEventListener("click", () => {
        story.ResetState();
        continueStory(true);
    });

    // 3. Audio Handlers (Standard Volume Control)
    const volSlider = document.querySelector('#volume_slider');
    volSlider.addEventListener('input', (e) => {
        // current_volume logic from utilities.js[cite: 2]
        console.log("Volume adjusted to: " + e.target.value);
    });

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
                    var imageElement = document.createElement('img');
                    imageElement.src = splitTag.val;
                    imageContainer.appendChild(imageElement);

                    imageElement.onload = () => {
                        // console.log(`scrollingto ${previousBottomEdge}`)
                        scrollDown(previousBottomEdge)
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
                e.preventDefault();
                story.ChooseChoiceIndex(choice.index);
                storyContainer.innerHTML = ''; // Clear for next sequence
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

    continueStory(true);

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
<li>Textures: www.myfreetextures.com</li>
<li>Some images used from wikipedia under <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank" rel="noopener noreferrer">CC BY 4.0</a></li>
<li>Some Icons by Font Awesome fontawesome.com, Copyright Fonticons, Inc, License: <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank" rel="noopener noreferrer">CC BY 4.0</a></li>
</ul>
<p></p>
<h2>Audio used with attribution from freesound.org</h2>
<p></p>
<table class="attr">
<tr><th>Individual</th><th>Sound number</th><th>License</th></tr>
<tr><td>Apollo89</td>
    <td><a href="https://freesound.org/s/648208/" target="_blank" rel="noopener noreferrer">648208</a></td>
    <td><a href="http://creativecommons.org/publicdomain/zero/1.0/" target="_blank" rel="noopener noreferrer">Creative Commons 0</a></td></tr>
<tr><td>Janaund</td>
    <td><a href="https://freesound.org/s/274763/" target="_blank" rel="noopener noreferrer">274763</a></td>
    <td><a href="https://creativecommons.org/licenses/by/3.0/" target="_blank" rel="noopener noreferrer">Attribution 3.0</a></td></tr>
<tr><td>klankbeeld</td>
    <td><a href="https://freesound.org/s/580356/" target="_blank" rel="noopener noreferrer">580356</a></td>
    <td><a href="https://creativecommons.org/licenses/by/4.0/" target="_blank" rel="noopener noreferrer">Attribution 4.0</a></td></tr>
<tr><td>Universfield</td>
    <td><a href="https://freesound.org/s/730122/" target="_blank" rel="noopener noreferrer">730122</a></td>
    <td><a href="https://creativecommons.org/licenses/by/4.0/" target="_blank" rel="noopener noreferrer">Attribution 4.0</a></td></tr>
<tr><td>qubodup</td>
    <td><a href="https://freesound.org/s/722375/" target="_blank" rel="noopener noreferrer">722375</a></td>
    <td><a href="https://creativecommons.org/licenses/by/4.0/" target="_blank" rel="noopener noreferrer">Attribution 4.0</a></td></tr>
<tr><td>0ktober</td>
    <td><a href="https://freesound.org/s/188828/" target="_blank" rel="noopener noreferrer">188828</a></td>
    <td><a href="http://creativecommons.org/publicdomain/zero/1.0/" target="_blank" rel="noopener noreferrer">Creative Commons 0</a></td></tr>
<tr><td>Aemyn</td>
    <td><a href="https://freesound.org/s/564166/" target="_blank" rel="noopener noreferrer">564166</a></td>
    <td><a href="http://creativecommons.org/publicdomain/zero/1.0/" target="_blank" rel="noopener noreferrer">Creative Commons 0</a></td></tr>
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

function update_stock(story, init=false) {
    var stockTickerContainer = document.querySelector('#stockticker');
    s = `
        <table class="ticker-table">
        <thead>
            <tr>
            <th>Symbol</th>
            <th class="th-right">Price (€)</th>
            <th class="th-right">% Δ</th>
            </tr>
        </thead>
        <tbody>
            <tr class="positive">
                <td class="ticker-symbol">CDyG</td>
                <td class="price">150.25</td>
                <td class="pct-change">▲ +1.45</td>
            </tr>
                <tr class="negative">
                <td class="ticker-symbol">GOOG</td>
                <td class="price">89.70</td>
                <td class="pct-change">▼ -0.55</td>
            </tr>
                <tr class="positive">
                <td class="ticker-symbol">TCEHY</td>
                <td class="price">12.10</td>
                <td class="pct-change">▲ +0.83</td>
            </tr>
                <tr class="neutral">
                <td class="ticker-symbol">XHLD</td>
                <td class="price">55.00</td>
                <td class="pct-change">0.00</td>
            </tr>
        </tbody>
        </table>
    `
    stockTickerContainer.innerHTML = s;
}

function update_followers(story, init=false) {
    var followersContainer = document.querySelector('#followers'); 
    var s = `
        <ul class="fa-ul" style="margin-left: 0px">
            <li class="li-gap">
                <span><i class="fa-solid fa-star"></i></span> 78K Patrons
            </li>
            <li class="li-gap">
                <span><i class="fa-solid fa-heart"></i></span> 1.3M Verified
            </li>
            <li class="li-gap">
                <span><i class="fa-regular fa-circle-question"></i></span> 2.3B Anonymous
            </li>
        </ul>
    `
    followersContainer.innerHTML = s;
}

function update_system(story, init=false) {
    var systemStatusContainer = document.querySelector('#systemstatus');
    var s = `
        <ul class="fa-ul" style="margin-left: 0px">
            <li class="li-gap">
                <span><i class="fa-solid fa-microchip"></i></span> 238,234 Processors
            </li>
            <li class="li-gap">
                <span><i class="fa-solid fa-gears"></i></span> 2.1M Processes
            </li>
            <li class="li-gap">
                <span><i class="fa-solid fa-spinner fa-pulse"></i></span> 12% Utilization
            </li>
        </ul>
    `
    systemStatusContainer.innerHTML = s;
}
