// // class Person {
// //   String name = "Once";
// //   String? address;
// //   final String country = "Indonesia";

// //   Person(this.name, this.address);

// //   void sayHello(String paramsname) {
// //     print("Hello $paramsname, My name is $name");
// //   }
// // }

// // class Manager {
  
// // }

// // void main() {
// //   var person1 = Person("Garrent", "Kediri");

// //   person1.sayHello("NetNot");

// //   print (person1.name);
// //   print (person1.address);
// //   print (person1.country);
// // }



// class Manager {
//   String? name;

//   void sayHello(String name) {
//     print("Hello $name, My name is ${this.name} and I'm your manager");
//   }
// }


// class VicePresident extends Manager {
//   void sayHello(String name) {
//     print("Hello $name, My name is ${this.name} and I'm your vice president gladd to meet you");
//   }
// }

// void main() {
//   var manager = Manager();
//   manager.name = "Garrent";
//   manager.sayHello("NetNot");

//   var vp = VicePresident();
//   vp.name = "NetNot";
//   vp.sayHello("Garrent");
// }

abstract class location {
  String? name;
}

class City extends location {
  City(String name) {
    this.name = name;
  }
}

void main() {
  var city = City("Kediri");
  print(city.name);
}