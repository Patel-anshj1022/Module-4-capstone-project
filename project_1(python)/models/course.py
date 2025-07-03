from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import relationship
from database.setup import Base

class Course(Base):
    __tablename__ = 'courses'

    id = Column(Integer, primary_key=True)
    code = Column(String, unique=True)
    title = Column(String)

    enrollments = relationship("Enrollment", back_populates="course")
