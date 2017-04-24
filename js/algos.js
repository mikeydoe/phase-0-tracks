// Several ways to do this, you can set a variable equal to 0
// We can then create a loop that iterates through the array by
// setting an index to 0 and if the index < length of the array add 1 to the index.
// Then we can create an if loop that takes the initial variable
// and compares its length to the array[index] (which will be equal)
// to the string based on the index. We then take array[index].length
// and see if it is greater than the last. 

// The way I ultmately found easiest was to sort. By using sort, it just takes
// the longest strings in the array and puts them in the beggining of the array.
// I can then always summon the longest string by calling index 0.
// You can also use the reduce method which eliminates the other string
// however I felt as though I was not trying to delete the other information
// so I went with sort. 

var phrases = ["Here is one", "and another", "This one is longer", "This one is the longest"];
var more_phrases = ["hello hello hello", "short", "woah woah", "come on now this is the longest"];
var person = {name: "Steven", age: 54};
var person2 = {name: "Tamir", age: 54}



function longest_string(array) {
	longest = array.sort(function (a,b) {
		return a.length < b.length
	});

	console.log(longest[0]);
}

longest_string(phrases)
longest_string(more_phrases)


