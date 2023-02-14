void main() {
  /// MARK: - Basic Data Types
  // All most Object Type
  String stringVar = "string";
  bool booleanVar = true;
  int intVar = 1;
  double doubleVar = 1.2;

  num numVar = 12;
  numVar = 1.1;

  /// MARK: - Lists
  var intList = [1, 2, 3, 4];
  // == List<int> intList = [1, 2, 3, 4];
  intList.add(5);

  // collection if
  var giveMeFive = true;
  var intList2 = [1, 2, 3, 4, if (giveMeFive) 5];

  // collection for
  var stringList = ['1', '2'];
  var stringList2 = ['3', '4', for (var value in stringList) "+$value"];
  print(stringList2);

  /// MARK: - String Interpolaton
  // "$variable, ${execute}'
  var name = 'admin';
  var age = 10;
  var greeting = 'Hello everyone, my name is $name and I\'m ${age + 2}.';
  print(greeting);

  /// MARK: - Maps
  // Swift - Any == Dart - Object
  var intAndAnyMap = {
    1: 'a',
    2: 1.12,
    3: false,
  };
  Map<int, bool> intAndBoolMap = {
    1: true,
    2: false,
    3: true,
  };
  Map<List<int>, bool> intListAndBoolMap = {
    [1, 2, 3, 4]: true,
  };

  /// MARK: - Set
  var intSet = {1, 2, 3, 4, 5};
  Set<int> intSet2 = {1, 2, 3, 4, 5};
  intSet.add(1);
  print(intSet); // result: {1, 2, 3, 4, 5}
}
