# Restaurant Management System

This project is a simple restaurant management system implemented in Dart. It demonstrates the use of classes and object-oriented programming concepts to manage a restaurant's menu items, customers, employees, tables, and orders.

## Table of Contents

- [Introduction](#introduction)
- [Project Structure](#project-structure)
- [Classes and Attributes](#classes-and-attributes)
- [Methods](#methods)
- [Usage](#usage)
- [Examples](#examples)
- [License](#license)

## Introduction

The restaurant management system is designed to handle basic operations such as adding menu items, reserving tables, assigning waitstaff, and placing orders. This system is a simple yet effective way to understand the interactions between different entities in a restaurant environment.

## Project Structure

restaurant_management_system/
├── lib/
│ ├── Customer.dart
│ ├── Employee.dart
│ ├── MenuItem.dart
│ ├── Order.dart
│ ├── Restaurant.dart
│ ├── Table.dart
└── main.dart

## Classes and Attributes

### Restaurant
- `name`: String
- `address`: String
- `phone`: String
- `menuItems`: List<MenuItem>
- `customers`: List<Customer>
- `employees`: List<Employee>
- `tables`: List<Table>

### Customer
- `id`: int
- `name`: String
- `phone`: String

### Employee
- `id`: int
- `name`: String
- `role`: String
- `email`: String

### MenuItem
- `id`: int
- `name`: String
- `description`: String
- `price`: double

### Order
- `orderId`: int
- `tableNumber`: int
- `items`: List<MenuItem>
- `totalAmount`: double
- `status`: String

### Table
- `tableNumber`: int
- `capacity`: int
- `isReserved`: bool
- `waitstaff`: Employee?
- `currentOrder`: Order?

## Methods

### Restaurant
- `addMenuItem(MenuItem menuItem)`
- `removeMenuItem(MenuItem menuItem)`
- `reserveTable(Table table, Customer customer)`
- `assignWaitstaff(Table table, Employee employee)`

### Customer
- `placeOrder(Order order)`

### Employee
- `assignTable(Table table)`

### MenuItem
- `updateDescription(String description)`
- `updatePrice(double price)`

### Order
- `addItem(MenuItem item)`
- `removeItem(MenuItem item)`
- `calculateTotal()`
- `updateStatus(String status)`

### Table
- `reserve(Customer customer)`
- `assignWaitstaff(Employee employee)`

## Usage

To run this project, ensure you have Dart installed. Then, follow these steps:

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/restaurant_management_system.git
```
2. Navigate to the project directory:

```sh

cd restaurant_management_system```
3. Run the main Dart file:

```sh
dart run main.dart```
