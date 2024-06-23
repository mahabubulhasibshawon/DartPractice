import 'Student.dart';
import 'Teacher.dart';

class School {
  String name;
  String address;
  String phone;
  List<Student> students = [];
  List<Teacher> teachers = [];

  School(this.name, this.address, this.phone);

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
