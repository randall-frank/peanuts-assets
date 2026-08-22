// Handle the newswire display
// See notes in newswire.ink

// The core display loop calls this function once for each "page"
function updateNewswire() {
    // The ink function newswire_item() will have set 'newswire_message' to a non-empty string
    let newswire = theStory.variablesState["newswire_message"];
    theStory.variablesState["newswire_message"] = "";  // we are handling this item

    // fill in the content
    if (newswire) {
        // Old code
        // document.getElementById('newswire').textContent = "Blue Lagoon Newsflash: " + newswire;

        // remove one from the list and grab the text from it
        if (genericNewswireList.length > 0) {
            const tmp = genericNewswireList.pop();
            document.getElementById('newswire').textContent = "Blue Lagoon Newsflash: " + tmp.text;
        }
    }

    // and make it (in)visible
    const newswireContainer = document.getElementById('newswire_container');
    if (newswire) {
        newswireContainer.style.display = 'block';
    } else {
        newswireContainer.style.display = 'none';
    }
}

var genericNewswireList = [];

// Called once per 'read'.  This resets the array of newswire items.
function resetNewswire() {
    genericNewswireList.length = 0;
    let s = theStory.EvaluateFunction('newswire_items');
    let newswireItems = s.split(']');
    for (let i = 0; i < newswireItems.length; i++) {
        let item = newswireItems[i];    // {foo}[{varname},{stitchname}]
        if (item.length == 0) continue;
        let tmp = item.split('[');
        let text = tmp[0];
        tmp = tmp[1].split(',');
        genericNewswireList.push({text: text, var: tmp[0], stitch: tmp[1]});
    }
    shuffle(genericNewswireList);  // random order
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
