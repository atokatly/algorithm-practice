// Find the two largest number and return sum of them from an array of integers

function greatestSum(array){
  var largest = 0;
  var second = 0;
  array.forEach(function(number){
    if (number > largest) {
      second = largest;
      largest = number;
    }
  });
  return largest + second;
}

var arr = [1,2,8,3,4,5,6,37];

greatestSum(arr); // returns 45 
