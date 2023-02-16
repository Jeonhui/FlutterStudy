/// MARK: - 01. Your First Dart Class
class YourFirstDartCalss {
  String name = 'name';
  int xp = 1500;

  void sayHello() {
    print("Hi my name is $name");
    // print("Hi my name is ${this.name}");
  }
}

/// MARK: - 02. Constructors
class ConstructorCalss {
  // late String name;
  // late int xp;
  // ConstructorCalss(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  String name;
  int xp;

  ConstructorCalss(this.name, this.xp);

  void sayHello() {
    print("Hi my name is $name");
    // print("Hi my name is ${this.name}");
  }
}

/// MARK: - 03. Named Constructors Parameters
class NamedConstructorsParametersClass {
  final String name;
  int xp;
  String team;
  int age;

  NamedConstructorsParametersClass({required this.name,
    required this.xp,
    this.team = "none",
    this.age = 12});

  void sayHello() {
    print("Hi my name is $name");
    // print("Hi my name is ${this.name}");
  }
}

/// MARK: - 04. Named Constructors
class NamedConstructorsClass {
  final String name;
  int xp, age;
  String team;

  NamedConstructorsClass({required this.name,
    required this.xp,
    this.team = "none",
    this.age = 12});

  void sayHello() {
    print("Hi my name is $name");
    // print("Hi my name is ${this.name}");
  }

  NamedConstructorsClass.createBluePlayer({
    required String name,
    required int age,
  })
      : this.name = name,
        this.age = age,
        this.team = 'blue',
        this.xp = 0;

  NamedConstructorsClass.createRedPlayer(String name,
      int age,)
      : this.name = name,
        this.age = age,
        this.team = 'red',
        this.xp = 0;
}

/// MARK: - 05. Cascade Notation
class CascadeNotationClass {
  String name;
  int xp, age;
  String team;

  CascadeNotationClass({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print("Hi my name is $name");
    // print("Hi my name is ${this.name}");
  }
}

/// MARK: - 06. Enums
enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class UsingEnumClass {
  String name;
  XPLevel xp;
  Team team;
  int age;

  UsingEnumClass({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print("Hi my name is $name");
    // print("Hi my name is ${this.name}");
  }
}

/// MARK: - 07. Abstract Classes
abstract class Human {
  void walk();
}

class UsingAbstractClass extends Human {
  String name;
  XPLevel xp;
  Team team;
  int age;

  UsingAbstractClass({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print("Hi my name is $name");
    // print("Hi my name is ${this.name}");
  }

  // Implemented function in Abstract class
  void walk() {
    print("I'm walking");
  }
}

/// MARK: - 08. inherit
class InheritClass {
  final String name;

  InheritClass(this.name);

  void sayHello() {
    print("Hi my name is $name");
    // print("Hi my name is ${this.name}");
  }
}

class UsingInheritClass extends InheritClass {
  final Team team;

  UsingInheritClass({
    required this.team,
    required String name,
  }) : super(name);

  @override
  void sayHello(){
    super.sayHello();
    print("UIC - $name $team");
  }
}

/// 09. Mixin
class MixinClass {
  final double strenghtLevel = 1500.99;
}

class MixinClass2 {
  void sayHelll(){
    print("Hello");
  }
}

class UsingMixinClass with MixinClass, MixinClass2 { }


void main() {
  /// MARK: - 01. Your First Dart Class
  var player = YourFirstDartCalss();
  // var player = new YourFirstDartCalss();
  player.sayHello();

  /// MARK: - 02. Constructors
  var player2 = ConstructorCalss('admin', 100);
  player2.sayHello();

  /// MARK: - 03. Named Constructors Parameters
  var player3 = NamedConstructorsParametersClass(
    name: "admin",
    xp: 100,
  );
  player3.sayHello();

  /// MARK: - 04. Named Constructors
  var bluePlayer = NamedConstructorsClass.createBluePlayer(
    name: "bluePlayer",
    age: 21,
  );

  var redPlayer = NamedConstructorsClass.createRedPlayer(
    "redPlayer",
    21,
  );

  /// MARK: - 05. Cascade Notation
  var player5 =
  CascadeNotationClass(name: 'admin', xp: 1200, team: 'red', age: 10)
    ..name = 'las'
    ..xp = 120000
    ..team = 'blue';

  // var player5 = CascadeNotationClass(name: 'admin', xp: 1200, team: 'red', age: 10);
  // var admin = player5
  //   ..name = 'las'
  //   ..xp = 120000
  //   ..team = 'blue'
  //   ..sayHello();

  /// MARK: - 06. Enums
  var player6 = UsingEnumClass(
      name: 'admin', xp: XPLevel.beginner, team: Team.red, age: 10);

  /// MARK: - 07. Abstract Classes
  var player7 = UsingAbstractClass(
      name: 'admin', xp: XPLevel.beginner, team: Team.red, age: 10);

  /// MARK: - inherit
 var player8 = UsingInheritClass(team: Team.blue, name: 'admin');
 player8.sayHello();

  /// 09. Mixin
  var player9 = UsingMixinClass();
  player9.sayHelll();
}
