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

int, double, num, void, String, null, Function, enum, List

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

\*\*\* all named argument is by default optional => hence to make it required, add required keyword

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

![image](https://user-images.githubusercontent.com/102004753/219316121-19c3365f-1ec8-4882-b23c-4542d7e5c3e5.png)

8. invoking function using anonymous function

```dart
    Column(
          children: <Widget>[
            const Text("This Question:"),
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () => answerQuestion("1"),
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () => answerQuestion("2"),
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () => answerQuestion("3"),
              child: const Text("Answer 3"),
            ),
          ],
        ),
```

9. array

```dart
    var questions = <String>[
      "What's is your favorite color?",
      "What's your favorite animal"
    ];
    questions[0]
    questions.elementAt(0)

    // this is because array in dart is an object
```

10. states & stateful widget

- extends StatefulWidget

```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
```

- create NameState class

```dart
class MyAppState extends State<MyApp>{}
```

here, State is a generic class type

- initialize state and a function that modifies the state

```dart
class MyAppState extends State<MyApp>{
 var questionIndex = 0;

  void answerQuestion(String question) {
    // when updating state, always use setState method/ function
    setState(() {
      if (questionIndex == 0) {
        questionIndex = questionIndex + 1;
      }
    });

    // ignore: avoid_print
    print(questionIndex);
  }
}

```

![image](https://user-images.githubusercontent.com/102004753/219544695-701ecf0d-f775-4283-8b0d-b8fdf3ba16a6.png)

10. private property
    => make sure somethings (properties + methods) inside the class cannot be manipulated externallly.
    => underscore is a dart convention that makes it private (only be accessed within the current file)

11. custom widget
    => common practice is to have just one widget per file
    => use "st" shortcut to create stateless or stateful widget

12. immutable warning
    => add final to property
    => final: cannot be reassigned (once build)

![image](https://user-images.githubusercontent.com/102004753/219548234-d38c7223-e85d-4928-af7f-7a563ccfc43a.png)

13. "Lifting the state up"
    => to manage the state on the shared, on the common denominator

14. Callback
    => passing function to a class constructor or anther function as a argument
    => why "callback": because the receiving widget/ class calls it in the future

15. final vs const
    => **const variables are compile-time constants**, meaning that their values must be known at compile time. const variables are also single-assignment, just like final variables. However, because their values are known at compile time, they cannot be assigned a value that is determined at runtime.
    =>**In general, you should use final for variables whose values are determined at runtime, while const should be used for variables whose values are known at compile time**.

```dart
  // this is possible
  var questions = const [...]
  questions = []

  // however, this is not
  const questions = const [...]
  questions = []
```
