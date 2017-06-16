// Return the first non repeating character from a string
function firstNonRepeatChar(str){
  var len = str.length;
  var char = '';
  var charCount = {};
  for(var i =0; i<len; i++){
    char = str[i];
    if(charCount[char]){
      charCount[char]++;
    }
    else
      charCount[char] = 1;
  }
  for (var j in charCount){
    console.log(j);
    if (charCount[j]==1)
       return j;
  }
}

firstNonRepeatChar('the first non repeating chacracter is'); // f
