1. create a new flutter project

```cmd
flutter create flutter_project_name
```

2. install packages (already writtin in the pubspec
   = similar to npm install

```cmd
flutter packages get
```

3. types

int, double, num, void, String

- every class is also a type

4. variables

var, types

5. classes

- inheritance: extends => this class is based on other class

- variables inside classes are called properties
- functions inside classes are called methods

6. class Constructor

```dart
void main(){
  var jaehyuk = Person("Jaehyuk", 2);
  print(jaehyuk);
}

class Person{
  String? name;
  int? age;

  Person(String inputName, int age){
    name = inputName;
      this.age = age;
  }
}

```

6. import dependency

```dart
   import "package:packageName/file.dart
```

7. positional argument vs named argument

```dart
void main(){
  var jaehyuk = Person(inputName: 'jaehyuk', age: 2 );
  print(jaehyuk);
}

class Person{
  String? name;
  int? age;

  Person({required String inputName, required int age}){
    name = inputName;
      this.age = age;
  }
}

class Person {
  String? name;
  int? age;

  Person({required this.name, this.age});
}


```
