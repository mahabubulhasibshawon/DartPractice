import 'Student.dart';
import 'Teacher.dart';

class Course {
  String code;
  String title;
  String description;
  List<Student> students = [];
  List<Teacher> teachers = [];

  Course(this.code, this.title, this.description);

  void addStudent(Student student) {
    students.add(student);
  }

  void removeStudent(Student student) {
    students.remove(student);
  }

  void addTeacher(Teacher teacher) {
    teachers.add(teacher);
  }

  void removeTeacher(Teacher teacher) {
    teachers.remove(teacher);
  }
}
