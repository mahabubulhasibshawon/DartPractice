import 'Course.dart';

class Teacher {
  int id;
  String name;
  String subject;
  String email;
  List<Course> courses = [];

  Teacher(this.id, this.name, this.subject, this.email);

  void assignCourse(Course course) {
    courses.add(course);
  }

  void removeCourse(Course course) {
    courses.remove(course);
  }
}
