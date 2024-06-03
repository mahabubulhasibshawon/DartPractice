void main(){
  var number = [1,2,3,5];
  number.insert(3, 4);
  print('numbers = $number');
//   insert all
  number.insertAll(3, [0,0,0,0]);
  print('numbers with interall = $number');
}
