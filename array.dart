import 'dart:io';
// ignore_for_file: deprecated_member_use


void main(){
  print('Enter how many row to add');
  String? rowValue = stdin.readLineSync();
  int? row = int.tryParse(rowValue!);
  print('Enter how many column to add');
  String? columnValue = stdin.readLineSync();
  int? column = int.tryParse(columnValue!);
  if(row == null || column ==null){
    print('error!!....');
  }
  else{
    var array = List.generate(row, (i) => [], growable: true);
    // array.forEach((element) {
    //   print(element);
    // });
    // List<int> array = [];
    // for(int i=1;i<=finalRow;i++){
    //   for(int j=1;j<=finalColumn;j++){
    //     String? input = stdin.readLineSync();
    //     int? user = int.tryParse(input!);
    //     array[i].add(user!);
    //   }
    // }
    array[0].add(1);
    array[0].add(2);
    array[1].add(3);
    array[1].add(4);
    array[2].add(5);
    array[2].add(6);
    array[3].add(7);
    array[3].add(8);
    array[4].add(9);
    array[4].add(10);
    print(array);
  }
}