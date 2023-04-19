import 'dart:io';
import 'dart:math';
// import 'dart:core';

void main() {
  Printing rng = Printing();
  rng.random();
  // Map sample = Map();
  // sample.adding();
}

class Printing {
  // Main list to add random values
  List? arrayValue = [];
  // After valdation of user input add in seperate list
  List? lessValue = [];
  List? greatherValue = [];

  void random() {
    var rng = Random();
    print('Enter how any random value add in list');
    String? y = stdin.readLineSync();
    int? userInput = int.tryParse(y!);
    if (userInput == null || userInput == 0) {
      print('You want type only number');
    } else {
      // Adding random values in list
      for (int i = 0; i < userInput; i++) {
        arrayValue!.add(rng.nextInt(100));
      }

      // Geting user to choose a search
      print('Enter lesser or greather find in list');
      String? number = stdin.readLineSync();

      // Checking the user choose value that has been converted into to lowercase
      if (number!.toLowerCase() == 'lesser') {
        print('Enter the value to find lesser');
        // Getting the minimu value to find in list
        String? lesserValue = stdin.readLineSync();
        int num = int.parse(lesserValue!);
        print('Lesser then ${num} in List are');

        arrayValue!.forEach((element) {
          // Valdating the list value with userInput value
          if (element < num) {
            lessValue!.add(element);
          }
        });
        print(lessValue);
      } else if (number.toLowerCase() == 'greather') {
        print('Enter the value to find greather find in list');
        // Getting the minimu value to find in list
        String? lesserValue = stdin.readLineSync();
        int? num = (int.parse(lesserValue!));
        print('Greather then ${num} in List are');

        arrayValue!.forEach((element) {
          // Valdating the list value with userInput value
          if (element > num) {
            greatherValue!.add(element);
          }
        });
        print(greatherValue);
      } else {
        print('Enter only lesser or grether');
      }
    }
  }
}

class Map {
  adding() {
    List? value = [];
    print('Enter how any random value add in map');
    String? y = stdin.readLineSync();
    int? userInput = int.tryParse(y!);
    if (userInput == null || userInput == 0) {
      print('Enter some number');
    } else {
      for (int i = 0; i < userInput; i++) {
        print('Enter key value ${i + 1}');
        String? keyValue = stdin.readLineSync();
        print('Enter value of key value ${i + 1}');
        String? valueOfKey = stdin.readLineSync();
        value.add({keyValue: valueOfKey});
      }
      print(value);
    }
  }
  // withoutKey() {
  //   List? value = [];
  //   print('Enter how any random value add in map');
  //   String? y = stdin.readLineSync();
  //   int? userInput = int.parse(y!);
  //   for (int i = 0; i < userInput; i++) {
  //     print('Enter value of name ${i + 1}');
  //     String? valueOfKey = stdin.readLineSync();
  //     print('Enter value of class ${i + 1}');
  //     String? keyOfClass = stdin.readLineSync();
  //     value.add({'name': valueOfKey, 'class': keyOfClass});
  //   }
  //   print(value);
  // }
}
