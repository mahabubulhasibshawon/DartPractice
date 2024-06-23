import 'Teacher.dart';
import 'Course.dart';

class Classroom {
  String number;
  int capacity;
  String location;
  Teacher assignedTeacher;
  List<Course> scheduledCourses = [];

  Classroom(this.number, this.capacity, this.location, this.assignedTeacher);

  void assignTeacher(Teacher teacher) {
    assignedTeacher = teacher;
  }

  void scheduleClass(Course course) {
    scheduledCourses.add(course);
  }
}
