// function reverse() -- Takes a string arguement adn then
// reverses the order of letters in that string.

function reverse(string) {
  var word = [];
  for (var i = 0, len = string.length; i <= len; i++)
    word.push(string.charAt(len - i));
  return word.join('');
}

var funtion_data = console.log(reverse("Hello"))

