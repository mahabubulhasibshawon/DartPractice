void main(){
  // declare set
  var myCitySet = <String>{'Dhaka', 'Barisal', 'CoxBazar'};
  print('Set = $myCitySet');
  // add
  myCitySet.add('Khulna');
  print('Add a city in the Set = $myCitySet');
  // add all 
  myCitySet.addAll({"Chittagong", "Rajshahi"});
  print('Add multiple city in the Set = $myCitySet');
}
