var matcher = function(string) {
  var lookup = { '(':')', '[':']', '{':'}' };
  var stack = [];
  var left = Object.keys(lookup);
  var right = Object.values(lookup);
  var str_array = string.split('');
  var balanced = ''
  str_array.forEach(function(character) {
    console.log(stack);
    if (left.includes(character)) {
      stack.push(character);
    }
    else if (lookup[stack.pop()] != character) {
        balanced = 'false';
    }
  });
  if (balanced === 'false') {
    return false;
  } else if (stack.length === 0){
    return true;
  }
};



testA = '{(({[]}))}'; // returns true
testB = '(][](){})'; // returns false

matcher(testB);
matcher(testA);
