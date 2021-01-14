Total design idea: entities with more connections are usually placed in the middle (such as STUDENT, CLASS, PROJECT) while entities with less connections are usually placed around (such as LIBRARY, SUPPLIER, and so on.

1) ENROLL is designed as a bridge to connect STUDENT, CLASS, and PROJECT. Each student takes 0 to 6 classes/projects. STUDENT, CLASS, and PROJECT are weak entities which are connected to ENROLL by solid lines.

2) STUDENT: Each student pays exactly one tuition fee. Here I assume that the tuition fee covers all classes and projects.

3) CLASS: I assume each class is taught in one programming language.
          I use a many-to-many relationship between CLASS and TEXTBOOK, since each class may use one or more textbook, and each textbook may be used in one or more classes.
          I also use a many-to-many relationship between CLASS and INSTRUCTOR, since each instructor may teach one or more classes, and each class might be taught by one or more instructors.

4) INSTRUCTOR: Each instructor may favor one or more textbooks while each textbook may be chosen by one or more instructors for teaching.
               Each Instructor is paid one salary corresponding to the hours he/she teaches classes and the hours he/she supervises projects.
               Each instructor may supervise one or more projects while each project may be under supervision of one or more instructors. 

5) PROJECT: Each project requires exactly one microcontroller. 
            Each project requires exactly one group of students.

6) GROUP: Each group contains 1 to 4 students.
          Each group works on one table.

7) SCHEDULE: Both classes and projects are scheduled, and each class/project is scheduled with one room.

8) TABLE: I assume each room contains one or more tables.
          Each table has one box, and each box contains one or more parts inside (including one microcontroller).
          Parts' condition is a required attribute to check if they are in good condition when returned.

9) ORDER: Each order may purchase one or more parts while each part might be selected from one or more orders.
          Each order may come from one or more suppliers while each supplier may prepare one or more orders.

10) SUPPLIER: I assume each supplier makes one or more types of microcontrollers.

11) CHECK_OUT: I assume that each student check out 0 to 4 books.
               I assume that each library allows 0 or more book check outs.
               Action_date attribute is required to check the book return date.

12) LIBRARY: I assume that each library stores one or more textbooks that students would borrow.

13) RATING: I assume that each student gives ratings to one or more classes/projects/instructors.
            I assume that each class/project/instructor is rated at least one times.

 