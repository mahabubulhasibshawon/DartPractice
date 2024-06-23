+----------------+             +-----------------+
|    School      |<----------->|   Student       |
+----------------+ 1         * +-----------------+
| -name: String  |             | -id: int        |
| -address: String|            | -name: String   |
| -phone: String |             | -dob: Date      |
|                |             | -address: String|
| +addStudent()  |             | +register()     |
| +removeStudent()|            | +enroll()       |
+----------------+             +-----------------+
|                            ^
|                            |
|                            |
v                            |
+-----------------+ 1         * +----------------+
|    Teacher      |<----------->|   Course       |
+-----------------+             +----------------+
| -id: int        |             | -code: String  |
| -name: String   |             | -title: String |
| -subject: String|             | -description: String|
| -email: String  |             |                |
| +assignCourse() |             | +addStudent()  |
| +removeCourse() |             | +removeStudent()|
+-----------------+             +----------------+
|                            ^
|                            |
|                            |
v                            |
+-----------------+ 1         * +-----------------+
|   Classroom     |<----------->|     Grade       |
+-----------------+             +-----------------+
| -number: String |             | -studentId: int |
| -capacity: int  |             | -courseCode: String|
| -location: String|            | -grade: String  |
|                 |             | -date: Date     |
| +assignTeacher()|             |                 |
| +scheduleClass()|             | +assignGrade()  |
+-----------------+             +-----------------+
