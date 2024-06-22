# Encapsulation in Dart

## Overview

This README provides an overview of encapsulation in Dart, demonstrating how to create well-structured, maintainable, and secure code. Encapsulation is a key principle in object-oriented programming that bundles data and the methods that operate on that data, while restricting direct access to some of the object's components.

## Table of Contents

- [Introduction](#introduction)
- [Creating Classes and Objects](#creating-classes-and-objects)
- [Private Variables and Methods](#private-variables-and-methods)
- [Getters and Setters](#getters-and-setters)
- [Conclusion](#conclusion)

## Introduction

Encapsulation in Dart involves:
1. Defining classes.
2. Declaring private variables and methods using an underscore `_` prefix.
3. Providing public getter and setter methods to control access to private variables.

## Creating Classes and Objects

In Dart, a class is defined using the `class` keyword followed by the class name. Below is a simple class definition:

```dart
class Person {
  String name;
  int age;
  
  Person(this.name, this.age);
}
```

## Private Variables and Methods
To restrict access to the internal state of an object, declare variables and methods as private by prefixing their names with an underscore _.

```dart
class Person {
  String _name;
  int _age;
  
  Person(this._name, this._age);
  
  void _privateMethod() {
    print('This is a private method');
  }
}
```
Attempting to access _name, _age, or _privateMethod from outside the class will result in an error.

## Getters and Setters
Getters and setters allow controlled access to private variables. A getter retrieves the value of a private variable, and a setter updates it.

```dart
class Person {
  String _name;
  int _age;
  
  Person(this._name, this._age);
  
  // Getter for _name
  String get name => _name;
  
  // Setter for _name
  set name(String newName) {
    if(newName.isNotEmpty) {
      _name = newName;
    }
  }
  
  // Getter for _age
  int get age => _age;
  
  // Setter for _age
  set age(int newAge) {
    if(newAge > 0) {
      _age = newAge;
    }
  }
}
```

## Conclusion
Encapsulation is a vital principle in Dart, promoting modular and maintainable code by controlling access to an object’s internal state. Using private variables and methods with public getters and setters allows you to safeguard your data and ensure it is accessed and modified in a controlled manner.
