var collatzSequence = function(){
  var chainLength = {};
  var longest = 0;
  var current = 0;
  var chain = 0;
  var biggestChain = 0;
  array = [...Array(1000000).keys()];
  array.forEach(function(number){
    current = number;
    while (number > 1) {
      if ((chainLength[number] > 0) && ((chain + chainLength[number]) > longest)) {
        chainLength[current] = (chain + chainLength[number]);
        longest = chain + chainLength[number];
        biggestChain = current;
        number = 1;
     } else if (number % 2 === 0) {
        number = number / 2;
      } else {
        number = ((number * 3) + 1);
      }
      chain = chain + 1;
    }
    chainLength[current] = chain;
    if (chain > longest) {
      longest = Math.max(chain,longest);
      biggestChain = current;
    }
    chain = 0;
  });
  return biggestChain;
};

collatzSequence();
