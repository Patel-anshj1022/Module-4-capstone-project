from database.setup import create_tables, SessionLocal
from models.student import Student
from models.course import Course
from models.enrollment import Enrollment
from linked_list.linked_list import LinkedList

def main():
    create_tables()
    session = SessionLocal()
    history = LinkedList()

    while True:
        print("\n1. Add Student\n2. Add Course\n3. Enroll Student\n4. View History\n5. Exit")
        choice = input("Choose: ")

        if choice == "1":
            name = input("Student Name: ")
            email = input("Student Email: ")
            student = Student(name=name, email=email)
            session.add(student)
            session.commit()
            print("Student added!")

        elif choice == "2":
            code = input("Course Code: ")
            title = input("Course Title: ")
            course = Course(code=code, title=title)
            session.add(course)
            session.commit()
            print("Course added!")

        elif choice == "3":
            sid = int(input("Student ID: "))
            cid = int(input("Course ID: "))
            enrollment = Enrollment(student_id=sid, course_id=cid)
            session.add(enrollment)
            session.commit()
            history.add(f"Student {sid} enrolled in Course {cid}")
            print("Enrollment recorded!")

        elif choice == "4":
            print("Enrollment History:")
            for entry in history.get_all():
                print(f"- {entry}")

        elif choice == "5":
            break

if __name__ == "__main__":
    main()
