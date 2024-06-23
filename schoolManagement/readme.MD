## SCHOOL MANAGEMENT SYSTEM
## UML DIAGRAM
![img](https://github.com/mahabubulhasibshawon/DartPractice/assets/96023468/a75ab114-7a62-46fc-83f2-353490625925)

## Explanation:
School

Attributes: name, address, phone
Methods: addStudent(), removeStudent()
Student

Attributes: id, name, dob (date of birth), address
Methods: register(), enroll()
Teacher

Attributes: id, name, subject, email
Methods: assignCourse(), removeCourse()
Course

Attributes: code, title, description
Methods: addStudent(), removeStudent()
Classroom

Attributes: number, capacity, location
Methods: assignTeacher(), scheduleClass()
Grade

Attributes: studentId, courseCode, grade, date
Methods: assignGrade()
Relationships:
School to Student: A school has many students, and a student belongs to one school (1 to * relationship).
School to Teacher: A school has many teachers, and a teacher belongs to one school (1 to * relationship).
Teacher to Course: A teacher can teach many courses, and a course can be taught by many teachers (many-to-many relationship, which can be split into two 1 to * relationships with an intermediary class like TeachingAssignment).
Course to Student: A course can have many students, and a student can enroll in many courses (many-to-many relationship).
Classroom to Course: A classroom can host many courses, and a course can be held in many classrooms (many-to-many relationship, simplified here as one-to-many for brevity).
Grade: Each grade is assigned to a student for a specific course, linking Student and Course through the Grade class.
