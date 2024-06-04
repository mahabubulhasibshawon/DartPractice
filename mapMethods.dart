void main(){  // create map using constructor
  var person = new Map();
  person['name']='Hasib';
  person['age']=24;
  person['dept']='CSE';
  person['Religion']='Islam';
  print(person);
//   methods
// add all method
  person.addAll({'country':'Bangladesh','gender':'male'});
  print(person);
//   remove any key and value
  person.remove('country');
  print(person);
//   clear all
  person.clear();
  print(person);
}
