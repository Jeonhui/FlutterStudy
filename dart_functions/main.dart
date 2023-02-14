/// MARK: - Defining a function
void defineFunction(String name) {
  print("Hello $name, nice to mett you.");
}

// fat arrow syntax
void defineFunction2(String name) => print("Hello $name, nice to mett you.");

/// MARK: - Named parameters
// default value
String namedParametersFunction({
  String name = '',
  int age = 0,
  String country = '',
}) {
  return "Hello $name, you ar $age, and you come from $country";
}

// required
String namedParametersFunction2({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you ar $age, and you come from $country";
}

/// MARK: -  Optional Positional Parameters
String optionalPositionalParametersFunction(String name,
    int age,
    [String? country = 'cuba'] // Optional Positional Parameter
    ) {
  return "Hello $name, you ar $age, and you come from $country";
}

/// MARK: - QQ Operator
// ??, ??=
// String qqOperatorFunction(String? name) => name != nul ? name.toUpperCase() : 'abcd'.toUpperCase();
String qqOperatorFunction(String? name) => (name ?? 'abcd').toUpperCase();

/// MARK: - Typedef
List<int> noTypeDefFunction(List<int> list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef ListOfInts = List<int>;

ListOfInts typeDefFunction(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}


void main() {
  defineFunction("admin");

  print(namedParametersFunction(name: 'admin'));
  print(namedParametersFunction2(
    name: 'admin',
    age: 12,
    country: 'korea',
  ));

  print(optionalPositionalParametersFunction('admin', 10));

  print(qqOperatorFunction('admin'));
  print(qqOperatorFunction(null));
  String? qqOpraterVar;
  qqOpraterVar ??= 'admin';
  print(qqOpraterVar);

  print(typeDefFunction([1, 2, 3, 4, 5]));
}
