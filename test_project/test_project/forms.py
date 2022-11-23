from wtforms import Form, StringField, TextAreaField, IntegerField

class DoctorForm(Form):
    surname = StringField('Фамилия')
    name = StringField('Имя')
    patronymic = StringField('Отчество')
    specialization = StringField('Специализация')
    experience = StringField('Опыт работы')
    price = IntegerField('Цена приёма(в рублях)')