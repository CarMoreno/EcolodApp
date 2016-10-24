# -*- coding: utf-8 -*-

import cherrypy
from rdflib import Namespace, BNode, Literal, RDF, URIRef
from conexion import connection
from mako.template import Template
from mako.lookup import TemplateLookup
from urllib import quote_plus
from app.view import View

lookup = TemplateLookup(directories=['templates'], output_encoding='cp1252') #Con esta codificacion no da error en tildes
con=connection('http://190.14.254.238:8080/openrdf-sesame/') #Conexion al servidor

con.use_repository('SYSTEM') # Repositorio de la ruta del maiz
#Namespaces
con.addnamespace('dbpedia', 'http://dbpedia.org/resource/')
con.addnamespace('wikidata', 'http://www.wikidata.org/entity/')
con.addnamespace('facebook', 'https://www.facebook.com/')
con.addnamespace('twitter', 'https://www.twitter.com/')
con.addnamespace('productos_principe','http://principeh.com/producto/')
con.addnamespace('productos_juanmaria', 'http://hoteljuanmaria.com/es/habitaciones/')
con.addnamespace('productos_cf', 'http://hotelcafeplaza.com/producto/')
con.addnamespace('wo', 'http://purl.org/ontology/wo/')
con.addnamespace('GR', 'http://purl.org/goodrelations/v1#')
con.addnamespace('ACCO', 'http://purl.org/acco/ns#')


class Main(object):

    def __init__(self):
        self.views = View(cherrypy.Application.currentDir)


    @cherrypy.expose
    def index(self):
        return self.views.create("index.mako")


    @cherrypy.expose
    def rutaMaiz(self):
        return self.views.create("rutaMaiz.mako") 


    @cherrypy.expose
    def flora(self):
        consulta = con.query('SELECT ?sub WHERE {?sub ?pred  wo:TaxonName.}')
        valores = []
        titulo = ""
        for sujeto in consulta:
            objetos = con.query('SELECT ?obj WHERE {<'+ sujeto['sub']['value'] +'> ?pred  ?obj.}')    
            valores.append(objetos)
        return self.views.create("flora.mako", valores, titulo)  
    

    @cherrypy.expose
    def empresas(self):
        consulta = con.query('SELECT ?sub WHERE {?sub ?pred  GR:BusinessEntity.}')
        return self.views.create("empresas.mako", consulta) 


    #/**
    # * Permite obtener todas las tripletas del repositorio
    # */
    @cherrypy.expose
    def verTodo(self):
        todos = con.query('SELECT ?sub ?pred ?obj WHERE { ?sub ?pred ?obj.}')
        for res in todos:
            return res['sub']['value']


    #/**
    # * Permite obtener los datos desde SESAME
    # * id, criterio de consulta
    # */
    @cherrypy.expose
    def view(self, id):
        nombre = id.title().encode('utf-8')#La primera en mayuscula, el resto en minuscula
        sa = con.query('SELECT ?sub WHERE {?sub ?pred  ?obj . FILTER (regex(?obj, "'+ nombre +'")).}')
        valores = []

        for sujeto in sa:
            objetos = con.query('SELECT ?obj WHERE {<'+ sujeto['sub']['value'] +'> ?pred  ?obj.}')    
            valores.append(objetos)
        nom = ""
        return self.views.create("resultados.mako", valores, nom)
 
