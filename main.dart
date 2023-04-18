import 'dart:io';
// ignore_for_file: unused_local_variable

void main() {
  SecondClass obj1 = SecondClass();
  ThridClass obj2 = ThridClass();
  MixinClass mix = MixinClass();
  List value = obj1.functionOne();
  if (value.length == 0) {
    print('You want to enter some number');
  } else {
    obj2.functionPrint(value);
    Constract obj3 = Constract(value);
    ImplementOne obj4 = ImplementOne();
    ImplementTwo obj5 = ImplementTwo();
    obj4.functionImp();
    obj5.functionImp();
    Object val = mix.mixFunction();
    if (val == 1) {
      print('You want to enter some number');
    } else {
      Asynchronous fileInput = Asynchronous();
      fileInput.asynchronous();
    }
  }
}

abstract class FirstClasas {
  functionOne();
}

class SecondClass extends FirstClasas {
  // After checking the condition the function will run
  List value1 = [];

  // Geting input form user length of list
  functionOne() {
    String? x;
    print("How many value you want enter in List");
    x = stdin.readLineSync();
    int value2 = int.parse(x!);
    int a = value2;
    for (int i = 0; i < a; i++) {
      print('enter the value ${i + 1}');
      dynamic y = stdin.readLineSync();
      value1.add(y);
    }
    return value1;
  }
}

class ThridClass extends SecondClass {
  functionPrint(List value) {
    print("ThridClass Function");
    value.forEach((element) {
      print(element);
    });
  }
}

class Constract extends ThridClass {
  Constract(List value) {
    print("Constract Class");
    value.forEach((element) {
      print(element);
    });
  }
}

class ImplementOne {
  functionImp() {
    print('Implement Class one');
  }
}

class ImplementTwo implements ImplementOne {
  @override
  functionImp() {
    print('Implement Class two');
  }
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
    if (userInput.runtimeType == String) {
      return 1;
    } else {
      int mixInput = int.parse(userInput!);
      if (mixInput == 0) {
        return 1;
      } else {
        List value = sampleTest2(mixInput);
        sampleTest(value);
        return 2;
      }
    }
  }
}

class Asynchronous {
  asynchronous() async {
    print('\n Asynchronous \n');
    File fs = File('/home/e2infoadmin/Documents/try/map.dart');
    Future<String> fileInput = fs.readAsString();
    fileInput.then((data) => print(data));
    // Write
    var fileWrite = fs.writeAsString('Sample');
    print("Write complete");
    // Read
    Future<String> fileInput2 = fs.readAsString();
    await fileInput2.then((data) => print(data));
    print('Read Complete');
  }
}
