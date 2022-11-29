from sqlalchemy import DATETIME, create_engine
from sqlalchemy.orm import Session, sessionmaker
from sqlalchemy import Column, Integer, Text
from sqlalchemy.ext.declarative import declarative_base

engine = create_engine("postgresql+psycopg2://postgres:7895123@localhost/db_web")
postgresengine = create_engine("postgresql+psycopg2://postgres:7895123@localhost/db_web")
engine.connect()
Base = declarative_base(bind=engine)
session = sessionmaker(bind=engine)
sess = session()

class Doctor(Base):
    __tablename__ = 'doctor'
    id = Column(Integer, primary_key=True)
    surname = Column(Text)
    name = Column(Text)
    patronymic = Column(Text)
    specialization = Column(Text)
    experience = Column(Integer)
    price = Column(Integer)

    def __init__(self, surname, name, patronymic, specialization, experience, price):
        self.surname = surname
        self.name = name
        self.patronymic = patronymic
        self.specialization = specialization
        self.experience = experience
        self.price = price

class Patient(Base):
    __tablename__ = 'patient'
    id = Column(Integer, primary_key=True)
    surname = Column(Text)
    name = Column(Text)
    patronymic = Column(Text)
    date_of_birth = Column(DATETIME)

    def __init__(self, surname, name, patronymic, date_of_birth):
        self.surname = surname
        self.name = name
        self.patronymic = patronymic
        self.date_of_birth = date_of_birth

class Reception(Base):
    __tablename__ = 'reception'
    id = Column(Integer, primary_key=True)
    date = Column(DATETIME)
    doctor = Column(Integer)
    patient = Column(Integer)
    price = Column(Integer)

    def __init__(self, date, doctor, patient, price):
        self.date = date
        self.doctor = doctor
        self.patient = patient
        self.price = price