class Person {
  String name;
  String address;

  Person({required this.name, required this.address});

  getName() {
    return name;
  }

  getAddress() {
    return address;
  }

  setAddress(String aaddress) {
    address = aaddress;
  }

  toString() {
    return " name is $name with address $address ";
  }
}
///------------------------------------------------
class Student extends Person {
  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];

  Student({required super.name, required super.address});

  @override
  String toString() {
    return "Student " + super.toString();
  }

  addCourseGrade(String courseName, int grade) {
    courses.add(courseName);
    grades.add(grade);
  }

  printGrades() {
    for (int grade in grades) {
      print(grade);
    }
  }

  getAverageGrade() {
    int sumOfGrades = 0;
    for (int i = 0; i < grades.length; i++) {
      sumOfGrades += grades[i];
    }
    return sumOfGrades / grades.length;
  }
}

class Teacher extends Person {
  int numOfCourse = 0;
  List<String> courses = [];

  Teacher({required String name, required String address})
      : super(name: name, address: address);

  @override
  String toString() {
    // TODO: implement toString
    return "Teacher" + super.toString();
  }

  addCourse(String courseName) {
    if (courses.contains(courseName)) {
      return false;
    } else {
      courses.add(courseName);
      return true;
    }
  }

  removeCourse(String courseName) {
    if (courses.contains(courseName)) {
      courses.remove(courseName);
      return true;
    } else {
      return false;
    }
  }
}

main() {
  Student student = Student(name: "khaled mahamed", address: "9 street");
  Student student1 = Student(name: "ahmed mahamed", address: "9 street");
  Student student2 = Student(name: "sayed mahamed", address: "9 street");
  Student student3 = Student(name: "amr mahamed", address: "9 street");
  Student student4 = Student(name: "abas mahamed", address: "9 street");
  Student student5 = Student(name: "dola mahamed", address: "9 street");
  student.addCourseGrade("oop", 4);
  student.addCourseGrade("oop2", 5);
  student.addCourseGrade("oop3", 6);
  student.addCourseGrade("oop4", 0);
  student.addCourseGrade("oop5", 7);

  student.printGrades();
  print(student.getAddress());
  print(student.getAverageGrade());
  print(student.toString());

  ///-------------------------------------
  Teacher teacher = Teacher(name: "mr/ samy", address: "nasr city");
}
