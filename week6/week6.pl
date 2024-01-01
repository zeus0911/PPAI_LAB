% Facts about students
student(john, computer_science).
student(anna, mathematics).
student(mike, computer_science).
student(lisa, physics).

% Facts about courses
course(computer_science_101, computer_science, instructor_smith).
course(math_201, mathematics, instructor_jones).
course(physics_301, physics, instructor_doe).

% Facts about instructors
instructor(instructor_smith, computer_science).
instructor(instructor_jones, mathematics).
instructor(instructor_doe, physics).

% Inheritance and hierarchies
% Graduate student inherits from student
graduate_student(jane, computer_science).
graduate_student(matt, mathematics).

% Faculty inherits from instructor
faculty(professor_green, computer_science).
faculty(professor_brown, mathematics).

% Example relationships
% John is a student and also a graduate student
student(john, computer_science).
graduate_student(john, computer_science).

% Jane is a graduate student and also faculty
graduate_student(jane, computer_science).
faculty(jane, computer_science).

% Rules for determining if someone is a graduate student
is_graduate_student(X) :-
    student(X, _),
    graduate_student(X, _).

% Rules for determining if someone is faculty
is_faculty(X) :-
    instructor(X, _),
    faculty(X, _).
