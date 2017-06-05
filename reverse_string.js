var reverseString = function(str){
  var reversed = '';
  var index = (str.length - 1)
  while (index > -1) {
    reversed += str[index];
    index -= 1;
  }
  return reversed;
};

reverseString('Anthony is cool');
