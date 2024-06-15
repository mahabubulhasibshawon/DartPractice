import 'dart:convert';

void main() {
  // Sample JSON string representing a list of users
  String jsonString = '''
  [
    {"name": "Alice", "age": 30},
    {"name": "Bob", "age": 25},
    {"name": "Charlie", "age": 35}
  ]
  ''';


  // Decoding JSON string to a Dart list
  List<dynamic> userList = jsonDecode(jsonString);

  // Using for-in loop to iterate over the JSON list
  for (var user in userList) {
    print('Name: ${user['name']}, Age: ${user['age']}');
  }
}
