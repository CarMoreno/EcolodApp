# coding: utf-8

import os.path
import cherrypy
import sys

from app import application

def main():

    try:
        currentDir = os.path.dirname(os.path.abspath(__file__)) #Directorio actual, ruta relativa de donde tenemos guardado el proyecto
    except:
        currentDir = os.path.dirname(os.path.abspath(sys.executable))
    
    cherrypy.Application.currentDir = currentDir #seteamos la ruta de la aplicacion con la ruta actual

    configFileName = 'server.conf' #Archivo de configuracion del server
    if os.path.exists(configFileName) == False:
        configFileName = None

    cherrypy.engine.autoreload.unsubscribe()
    cherrypy.engine.timeout_monitor.unsubscribe()

    #Empezamos la aplicación
    cherrypy.quickstart(application.Main(), config=configFileName)

if __name__ == '__main__':
    main()
    #cherrypy.engine.exit()