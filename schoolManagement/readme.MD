## SCHOOL MANAGEMENT SYSTEM
## UML DIAGRAM
![img](https://github.com/mahabubulhasibshawon/DartPractice/assets/96023468/a75ab114-7a62-46fc-83f2-353490625925)

# School Management System

## Overview

A School Management System to manage students, teachers, courses, classrooms, and grades. This system allows for the registration of students, the assignment of teachers to courses, and the scheduling of classes.

## Classes

### School

**Attributes:**
- `name`: String
- `address`: String
- `phone`: String

**Methods:**
- `addStudent()`: Adds a student to the school.
- `removeStudent()`: Removes a student from the school.

### Student

**Attributes:**
- `id`: int
- `name`: String
- `dob`: DateTime (date of birth)
- `address`: String

**Methods:**
- `register()`: Registers the student with a school.
- `enroll()`: Enrolls the student in a course.

### Teacher

**Attributes:**
- `id`: int
- `name`: String
- `subject`: String
- `email`: String

**Methods:**
- `assignCourse()`: Assigns a course to the teacher.
- `removeCourse()`: Removes a course from the teacher's assignments.

### Course

**Attributes:**
- `code`: String
- `title`: String
- `description`: String

**Methods:**
- `addStudent()`: Adds a student to the course.
- `removeStudent()`: Removes a student from the course.

### Classroom

**Attributes:**
- `number`: String
- `capacity`: int
- `location`: String

**Methods:**
- `assignTeacher()`: Assigns a teacher to the classroom.
- `scheduleClass()`: Schedules a course in the classroom.

### Grade

**Attributes:**
- `studentId`: int
- `courseCode`: String
- `grade`: String
- `date`: DateTime

**Methods:**
- `assignGrade()`: Assigns a grade to a student for a specific course.

## Relationships

- **School to Student**: A school has many students, and a student belongs to one school (1 to * relationship).
- **School to Teacher**: A school has many teachers, and a teacher belongs to one school (1 to * relationship).
- **Teacher to Course**: A teacher can teach many courses, and a course can be taught by many teachers (many-to-many relationship, which can be split into two 1 to * relationships with an intermediary class like `TeachingAssignment`).
- **Course to Student**: A course can have many students, and a student can enroll in many courses (many-to-many relationship).
- **Classroom to Course**: A classroom can host many courses, and a course can be held in many classrooms (many-to-many relationship, simplified here as one-to-many for brevity).
- **Grade**: Each grade is assigned to a student for a specific course, linking `Student` and `Course` through the `Grade` class.

