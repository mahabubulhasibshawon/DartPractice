import 'dart:io';

String voteFunc(int age){
  String res = age>= 18 && age <=100 ? "You can vote"
      : age>= 100? "You are a respected citizen"
        : age <= 0? "you are not born yet"
          : "you cannot vote";
  return res;
}

void main(){
  int age = int.parse(stdin.readLineSync()!);
  String vote = voteFunc(age);
  print(vote);
}
