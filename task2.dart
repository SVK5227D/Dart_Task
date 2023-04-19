import 'dart:io';
import 'dart:math';

void main() {
  AddingValue addList = AddingValue();
  List addValue = addList.getValue();
  Iteration print = Iteration();
  print.listValue = addValue;
  print.printValue();
  Printing rng = Printing();
  rng.random();
}

abstract class Declaration {
  getValue();
}

class AddingValue extends Declaration {
  List value = [];
  @override
  getValue() {
    String? x;
    print("How many value you want enter in List");
    x = stdin.readLineSync();
    int convert = int.parse(x!);
    for (int i = 0; i < convert; i++) {
      print('Enter the value to add list ${i + 1}');
      String? userInput = stdin.readLineSync();
      value.add(userInput);
    }
    return value;
  }
}

class Iteration {
  List? addListValue;
  set listValue(List listValue) {
    this.addListValue = listValue;
  }

  void printValue() {
    print('Useing set method');
    addListValue!.forEach((element) {
      print(element);
    });
  }
}

class Printing {
  List? arrayValue = [];
  void random() {
    var rng = Random();
    print('Enter how any random value add in list');
    String? y = stdin.readLineSync();
    int? userInput = int.parse(y!);
    // Adding random values in list
    for (int i = 0; i < userInput; i++) {
      arrayValue!.add(rng.nextInt(100));
    }
    // Geting user to choose a search
    print('Enter lesser or greather in list');
    String? number = stdin.readLineSync();
    // Checking the user choose value that has been converted into to lowercase
    if (number!.toLowerCase() == 'lesser') {
      print('Enter the value to find lesser');
      // Getting the minimu value to find in list
      String? lesserValue = stdin.readLineSync();
      int? num = int.parse(lesserValue!);
      print('Lesser then ${num} in List are');
      arrayValue!.forEach((element) {
        // Valdating the list value with userInput value
        if (element < num) {
          print(element);
        }
      });
    } else {
      print('Enter the value to find greather');
      // Getting the minimu value to find in list
      String? lesserValue = stdin.readLineSync();
      int? num = int.parse(lesserValue!);
      print('Greather then ${num} in List are');
      arrayValue!.forEach((element) {
        // Valdating the list value with userInput value
        if (element > num) {
          print(element);
        }
      });
    }
  }
}
