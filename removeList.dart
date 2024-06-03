void main(){
  var number = [1,2,3,4,5];
  print('numbers = $number');
  // remove existing value
  number.remove(3);
  print('remove number = $number');
//   remove last value
  number.removeLast();
  print('removed last number = $number');

  // remove index
  number.removeAt(0);
  print('removed at index number = $number');
}
