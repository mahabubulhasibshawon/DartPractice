import 'Course.dart';
import 'School.dart';

class Student {
  int id;
  String name;
  DateTime dob;
  String address;
  List<Course> courses = [];

  Student(this.id, this.name, this.dob, this.address);

  void register(School school) {
    school.addStudent(this);
  }

  void enroll(Course course) {
    courses.add(course);
    course.addStudent(this);
  }
}
