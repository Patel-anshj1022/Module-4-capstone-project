from sqlalchemy import create_engine
from sqlalchemy.orm import declarative_base, sessionmaker

Base = declarative_base()
engine = create_engine("sqlite:///students.db", echo=False)
SessionLocal = sessionmaker(bind=engine)

def create_tables():
    from models.student import Student
    from models.course import Course
    from models.enrollment import Enrollment
    Base.metadata.create_all(bind=engine)
