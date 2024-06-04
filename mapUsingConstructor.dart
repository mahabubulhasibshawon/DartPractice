void main(){
  // create map using constructor
  var person = new Map();
  person['name']='Hasib';
  person['age']=24;
  person['dept']='CSE';
  person['Religion']='Islam';
  print(person);
//   pritn keys
  print(person.keys);
// print length
  print(person.length);
  // print entries
  print(person.entries);
  // print values
  print(person.values);
  // check emtry map
  print(person.isEmpty);
  print(person.isNotEmpty);
}
