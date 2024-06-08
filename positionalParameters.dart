Map userMap(String name, int age, String gender, int userClass){
  return{
    "name" : name,
    "age" : age,
    "gender" : gender,
    "class" : userClass
  };
}
void main(){
  Map userData = userMap("Hasib", 24, "m", 14);
  print(userData);
}
