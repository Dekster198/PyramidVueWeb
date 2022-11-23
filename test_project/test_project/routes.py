def includeme(config):
    config.add_static_view('static', 'static', cache_max_age=3600)
    config.add_route('home', '/')
    config.add_route('doctors', 'doctors')
    config.add_route('add_doctor', 'add_doctor')
    config.add_route('add_patient', 'add_patient')
    config.add_route('add_reception', 'add_reception')
    config.add_route('receptions', 'receptions')
    config.add_route('add_doctor_api', 'add_doctor_api')