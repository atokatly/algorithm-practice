// Write a function with a two stack queue. The stacks should have an enqueue and dequeue function. The queue should use fifo (first in first out)
function queueTwoStacks() {
  this.inStack = [];
  this.outStack = [];
}

// Adds the given item to inStack container
queueTwoStacks.prototype.enqueue = function(item){
  this.inStack.push(item);
};

// Pushes all current items on the inStack container to the outStack and pops off the first item originally added to the inStack
queueTwoStacks.prototype.dequeue = function(){
  if (this.outStack.length === 0) {
    while(this.inStack.length > 0){
      newestStackItem = this.inStack.pop();
      this.outStack.push(newestStackItem);
    }
    // Makes sure an item was in the original enqueue
    if (this.outStack.length === 0) {
            return "No item to dequeue, enqueue an item first.";
    }
  }
  return this.outStack.pop();
};

// Test stacks
var testStacks = new queueTwoStacks();

testStacks.dequeue(); // returns error message
testStacks.enqueue("a");
testStacks.enqueue("b");
testStacks.enqueue("c");
testStacks.dequeue(); // returns "a"
testStacks.enqueue("d");
testStacks.dequeue(); // returns "b"
testStacks.enqueue("e");
testStacks.dequeue(); // returns "c"
testStacks.enqueue("f");
testStacks.enqueue("g");
testStacks.dequeue(); // returns "d"
