import 'dart:io';
import 'dart:math';

void main() {
  var firstClass = FirstClass();
  firstClass.random();
  firstClass.valdationList();
  var secondClass = SecondClass();
  secondClass.valueOfMap();
}

abstract class Demo {
  random();
}

class AddListValue extends Demo {
  List? arrayValue = [];
  // After valdation of user input add in seperate list
  @override
  random() {
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
    }
  }

  void printListValue() {
    print(arrayValue);
  }
}

class FirstClass extends AddListValue {
  List? lessValue = [];
  List? greatherValue = [];
  valdationList() {
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
      PrintListValue(lessValue);
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
      PrintListValue(greatherValue);
    } else {
      print('Enter only lesser or grether');
    }
  }

  void PrintListValue(userChooseOutput) {
    // super.printListValue();
    print(userChooseOutput);
  }
}

class AddValueMap{
  valueOfMap() {
    List? valueOfmap = [];
    print('Enter how many want add into map');
    String? y = stdin.readLineSync();
    int? userInput = int.tryParse(y!);
    if (userInput == null || userInput == 0) {
      print('You want type only number');
    } else {
      for (int i = 0; i < userInput; i++) {
          print('Enter the name');
          String? name = stdin.readLineSync();
          print('Enter the year');
          String? year = stdin.readLineSync();
          print('Enter the rank');
          String? rank = stdin.readLineSync();
          valueOfmap.add({'name':name,'Year': year,'Rank': rank});
      }
    }
  }
}

class SecondClass implements AddValueMap  {
    @override
    valueOfMap() {
    List? valueOfmap = [];
    print('Enter how many want add into map');
    String? y = stdin.readLineSync();
    int? userInput = int.tryParse(y!);
    if (userInput == null || userInput == 0) {
      print('You want type only number');
    } else {
      // Adding value in list with the formate of map
      for (int i = 0; i < userInput; i++) {
          print('Enter the name');
          String? name = stdin.readLineSync();
          print('Enter the year');
          String? year = stdin.readLineSync();
          print('Enter the rank');
          String? rank = stdin.readLineSync();
          valueOfmap.add({'name':name,'Year': year,'Rank': rank});
      }
      print('Value of map is');
      print(valueOfmap);
    }
  }
}