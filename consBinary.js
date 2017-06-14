// Given a binary array, find the max consecutive 1s in the array
var consBinary = function(array){
  var highest = 0;
  var cons = 0;
  for(var i = 0; i < array.length; i++){
    if (array[i] === 1) {
      cons += 1;
      highest = Math.max(highest, cons);
    } else {
      cons = 0;
    }
  }
  return highest;
}

consBinary([1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1]); // returns 4
