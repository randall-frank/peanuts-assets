// Handle the newswire display
// See notes in newswire.ink

var genericNewswireList = [];
var conditionalNewswireList = [];
var preferConditional = false;
var continueStoryNewswire = null;

// The core display loop calls this function once for each "page"
function updateNewswire() {
    // The ink function newswire_item() will have set 'newswire_message' to a non-empty string
    let newswire = theStory.variablesState["newswire_message"];
    theStory.variablesState["newswire_message"] = "";  // we are handling this item
    // grab the container element
    const newswireContainer = document.getElementById('newswire_container');
    newswireContainer.style.display = 'none';  // start invisible
    // If no newswire, then we are done
    if (!newswire) return;
    // the item to render
    let theItem = null;
    // should we try conditionals first?
    if (preferConditional) {
        preferConditional = false;
        // is there a "ready" conditional item
        for (let i = 0; i < conditionalNewswireList.length; i++) {
            const vName = conditionalNewswireList[i].var;
            if (theStory.variablesState[vName]) {
                theItem = conditionalNewswireList[i];
                conditionalNewswireList.splice(i, 1);  // remove it from the list
            }
        }
    }
    // No item?
    if (theItem === null) {
        // remove one from the list and grab the text from it
        if (genericNewswireList.length > 0) {
            theItem = genericNewswireList.pop();
        }
    }
    preferConditional = true; // try to use conditional display next time
    if (theItem === null) return;  // no items available to display
    // Display the item
    let html = "Blue Lagoon Newsflash: " + theItem.text;
    // theItem.stitch = "./abyssal.html";
    // theItem.stitch = "storyline.make_plans";
    if (theItem.stitch) {
        html += "<br><button class='newswire-button' type='button' onclick='handleNewswireClick()'>Learn more...</button>";
        newswireContainer.setAttribute('data-stitch', theItem.stitch);  // remember the stitch name
    }
    document.getElementById('newswire').innerHTML = html;
    newswireContainer.style.display = 'block';  // make visible
}

function handleNewswireClick() {
    const newswireContainer = document.getElementById('newswire_container');
    const stitch = newswireContainer.getAttribute('data-stitch'); 
    if (stitch.endsWith('.html') || stitch.endsWith('.htm') || stitch.endsWith('?viewers=')) {
        let url = stitch;
        if (stitch.endsWith("?viewers=")) {
            url += theStory.variablesState["social_followers"].toString();
        }
        window.open(url, '_blank')
    } else {
        theStory.ChoosePathString(stitch);
        continueStoryNewswire();
    }
}

// Called once per 'read'.  This resets the array of newswire items.
function resetNewswire() {
    genericNewswireList.length = 0;
    let s = theStory.EvaluateFunction('newswire_items');
    let newswireItems = s.split(']');
    for (let i = 0; i < newswireItems.length; i++) {
        // item structure is: {text}[{varname},{stitchname}]
        let item = newswireItems[i];    
        if (item.length == 0) continue;
        let tmp = item.split('[');
        let text = tmp[0];
        tmp = tmp[1].split(',');
        if (tmp[0].length) { // items with a conditional varname go in another list
            conditionalNewswireList.push({ text: text, var: tmp[0], stitch: tmp[1] });
        } else {
            genericNewswireList.push({ text: text, var: tmp[0], stitch: tmp[1] });
        }
    }
    shuffle(genericNewswireList);  // random order
    shuffle(conditionalNewswireList);
}

function shuffle(array) {
    for (let i = array.length - 1; i > 0; i--) {
        // Pick a random index from 0 to i
        const j = Math.floor(Math.random() * (i + 1));
        // Swap elements array[i] and array[j] using destructuring
        [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
}
