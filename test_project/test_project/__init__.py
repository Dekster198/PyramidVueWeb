from pyramid.config import Configurator
from .models import Doctor, Patient, Reception
from .models import sess

def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    with Configurator(settings=settings) as config:
        config.include('pyramid_mako')
        config.include('.routes')
        config.scan()
    return config.make_wsgi_app()