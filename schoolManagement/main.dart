import 'School.dart';
import 'Student.dart';
import 'Teacher.dart';
import 'Course.dart';
import 'Classroom.dart';
import 'Grade.dart';

void main() {
  // Creating instances for testing
  var school = School('Greenwood High', '123 Main St', '555-1234');
  var student1 = Student(1, 'John Doe', DateTime(2005, 3, 25), '456 Elm St');
  var teacher1 = Teacher(1, 'Mrs. Smith', 'Mathematics', 'smith@greenwood.edu');
  var course1 = Course('MATH101', 'Algebra I', 'Introduction to Algebra');

  // Register student and assign course
  student1.register(school);
  student1.enroll(course1);

  // Assign teacher and schedule class
  teacher1.assignCourse(course1);
  var classroom1 = Classroom('A101', 30, 'First Floor', teacher1);
  classroom1.assignTeacher(teacher1);
  classroom1.scheduleClass(course1);

  // Adding entities to the school
  school.addTeacher(teacher1);
  school.addStudent(student1);

  // Example of assigning a grade
  var grade1 = Grade(student1.id, course1.code, 'A', DateTime.now());

  print('School: ${school.name}');
  print('Students: ${school.students.map((s) => s.name).join(', ')}');
  print('Teachers: ${school.teachers.map((t) => t.name).join(', ')}');
  print('Courses: ${course1.title}');
  print('Classroom: ${classroom1.number} with teacher ${classroom1.assignedTeacher.name}');
  print('Grade for ${student1.name} in ${course1.title}: ${grade1.grade}');
}
