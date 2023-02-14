import 'dart:ffi';

void main() {
  // MARK: - Variable
  String stringVariable = 'stringVariable';
  stringVariable = '_';

  var stringVariable2 = "stringVariable2";
  stringVariable2 = '_';
  print("$stringVariable, $stringVariable2");

  // MARK: - Dynamic Variable
  dynamic dynamicVariable;
  dynamicVariable = '1';
  dynamicVariable = 2;
  var dynamicVariable2;
  dynamicVariable2 = '1';
  dynamicVariable2 = 2;

  if (dynamicVariable is String) {
    print(dynamicVariable.length);
  }
  if (dynamicVariable2 is Int) {
    print(dynamicVariable2);
  }

  // MARK: - Null Safety
  bool isEmpty(String? string) => (string?.length ?? 0) == 0;

  String? nullString = '1';
  print(isEmpty(nullString)); // false
  print(nullString.isNotEmpty);

  // MARK: - Final variable
  final String finalVariable = 'finalVariable';
  // finalVariable = 'noFinalVariable'; // [Error]
  final finalVariable2 = 'finalVariable2';

  // MARK: - Late Variable
  late final String lateFinalString;
  // print(name); // [Error]
  lateFinalString = 'lateFianlString';
  print(lateFinalString);

  // MARK: - Const Keyword
  // const - Compile time constant
  // Data must be saved before Compile Time
  const constVariable = '1234';
  // const API = fetchAPI(); // [Error] -> This is not determined at compile time.
  // -> final const API = fetchAPI; (O)

  //
}
