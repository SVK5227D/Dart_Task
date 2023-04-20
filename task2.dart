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
  MixinClass mix = MixinClass();
  mix.mixFunction();
}

abstract class Declaration{
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

class Printing implements Iteration {
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

  @override
  List? addListValue;
  @override
  set listValue(List listValue) {}
  @override
  void printValue() {}
}

mixin Mixin1 {
  sampleTest(input) {
    input.forEach((iterValue) {
      print(iterValue);
    });
  }
}

mixin Mixin2 {
  List listInput = [];
  sampleTest2(input) {
    for (int i = 0; i < input; i++) {
      print('enter the value ${i + 1}');
      String? y = stdin.readLineSync();
      int convert = int.parse(y!);
      listInput.add(convert);
    }
    return listInput;
  }
}

class MixinClass with Mixin1, Mixin2 {
  Object mixFunction() {
    print('\n Mixin Class Calling \n');
    String? userInput = stdin.readLineSync();
    int mixInput = int.parse(userInput!);
    List value = sampleTest2(mixInput);
    sampleTest(value);
    return 2;
  }
}
