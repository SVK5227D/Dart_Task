import 'dart:io';

void main() {
  dynamicArray();
}

void dynamicArray() {
  print('Enter how many row to add');
  String? rowValue = stdin.readLineSync();
  int? row = int.tryParse(rowValue!);
  print('Enter how many column to add');
  String? columnValue = stdin.readLineSync();
  int? column = int.tryParse(columnValue!);
  if (row == null || column == null || row == 0 || column == 0) {
    print('You want to enter number or more than zero');
  } else {
    var array = List.generate(row, (i) => [], growable: true);
    for (int i = 0; i < row; i++) {
      for (int j = 0; j < column; j++) {
        print('Enter the value of ${i + 1} ${j + 1}');
        dynamic input = stdin.readLineSync();
        array[i].add(input);
      }
    }
    var arraymap = [];
    array.forEach((element) {
      arraymap.add(element.asMap());
    });
    // Map dumy = {};
    List name = [];
    List rank = [];
    arraymap.forEach((element) {
      // dumy.addAll(element);
      // dumy.forEach((key, value) {
      //   if(key==0){
      //     name.add(value);
      //   }
      //   else{
      //     rank.add(value);
      //   }
      // });
    });
    print(name);
  }
}