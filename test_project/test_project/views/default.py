from pyramid.view import view_config
from pyramid.httpexceptions import HTTPFound
import sys
sys.path.insert(1, 'C:\\Users\\olegf\\Desktop\\test\\test_project\\test_project')
from models import sess
from models import Doctor, Patient, Reception

@view_config(route_name='home', renderer='test_project:templates/mytemplate.mako')
def my_view(request):
    return {}

@view_config(route_name='doctors', renderer='test_project:templates/doctors.mako')
def ourDoctors(request):
    dataset = sess.query(Doctor).all()

    return {'dataset': dataset}

@view_config(route_name='add_doctor', renderer='test_project:templates/add_doctor.mako')
def addDoc(request):
    return {}

@view_config(route_name='add_patient', renderer='test_project:templates/add_patient.mako')
def addPatient(request):
    if request.POST:
        surname = request.POST.get('surname')
        name = request.POST.get('name')
        patronymic = request.POST.get('patronymic')
        date_of_birth = request.POST.get('date_of_birth')

        pat = Patient(
                surname=surname,
                name=name,
                patronymic=patronymic,
                date_of_birth=date_of_birth
        )

        sess.add(pat)
        sess.commit()

        return {}
    else:
        return {}

@view_config(route_name='receptions', renderer='test_project:templates/receptions.mako')
def showReceptions(request):
    dataset = sess.execute('select reception.date, doctor.surname, doctor.name, doctor.patronymic, doctor.specialization from reception, doctor where doctor.id = reception.doctor')

    return {'dataset': dataset}

@view_config(route_name='add_reception', renderer='test_project:templates/add_reception.mako')
def infoForReception(request):
    doctors = sess.execute('select doctor.id, doctor.surname, doctor.name, doctor.patronymic, doctor.specialization, doctor.price from doctor')
    patients = sess.execute('select patient.id, patient.surname, patient.name, patient,patronymic from patient')

    return {'doctors': doctors, 'patients': patients}
def addReception(request):
    if request.POST:
        date = request.POST.get('date')
        doctor = request.POST.get('doctor')
        patient = request.POST.get('patient')
        price = request.POST.get('price')

        rec = Reception(
            date=date,
            doctor=doctor,
            patient=patient,
            price=price
        )

        sess.add(rec)
        sess.commit()

        return {}

@view_config(route_name='add_doctor_api', renderer='json', request_method='POST')
def add_doctor_api(request):
    data = request.json_body
    surname = data.get('surname')
    name = data.get('name')
    patronymic = data.get('patronymic')
    specialization = data.get('specialization')
    experience = data.get('experience')
    price = data.get('price')

    doc = Doctor(
        surname=surname,
        name=name,
        patronymic=patronymic,
        specialization=specialization,
        experience=experience,
        price=price
    )

    sess.add(doc)
    sess.commit()

    return {}