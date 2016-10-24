import os.path
from mako.lookup import TemplateLookup

class View(object):
    def __init__(self, path):
        self.templatesPath = os.path.join(path, 'templates')#Seteamos la ruta relativa a las templates
        self.myLookup = TemplateLookup(directories=[self.templatesPath], input_encoding='utf-8')#Donde cherry buscara las templates
    

    def create(self, templateName, data=None, identificador=None):
        """Vistas sin argumentos"""
        myTemplate = self.myLookup.get_template(templateName)
        return myTemplate.render(datos=data, nombre=identificador)