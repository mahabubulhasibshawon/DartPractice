/*Write a program that takes a list of numbers for example

a = [5, 10, 15, 20, 25]
and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.
*/

import 'dart:io';
import 'dart:math';

void main(){
  // int a = int.parse(stdin.readLineSync()!);
  final random = Random();
  List<int> randList = List.generate(10, (_)=>random.nextInt(100));
  print(randList);
  print(newList(randList));
  // print(list[0]);
  // print(list[list.length-1]);
}
List<int> newList(List<int> initailList){
  return [initailList.first, initailList.last];
}
