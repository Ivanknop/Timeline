Class {
	#name : 'TLTimeline',
	#superclass : 'Object',
	#instVars : [
		'layers',
		'timeLineTitle'
	],
	#category : 'Timeline-Model',
	#package : 'Timeline-Model'
}

{ #category : 'examples' }
TLTimeline class >> example [

  | tl capaPolitica capaSocial |
  tl := self titled: 'Ejemplo - Historia Argentina'.

  capaPolitica := TLLayer titled: 'Política'.
  capaPolitica
    addProcessTitled: 'Dictadura militar'
    from: ( Date year: 1976 month: 3 day: 24 )
    to: ( Date year: 1983 month: 12 day: 10 ).
  capaPolitica addEventTitled: 'Retorno de la democracia' on: ( Date year: 1983 month: 12 day: 10 ).

  capaSocial := TLLayer titled: 'Movimientos sociales'.
  capaSocial addEventTitled: 'Cacerolazos 2001' on: ( Date year: 2001 month: 12 day: 19 ).

  tl layers
    add: capaPolitica;
    add: capaSocial.

  ^ tl
]

{ #category : 'examples' }
TLTimeline class >> example2 [

  | tl politica social economia e73 e76 e83elec e83ret e01 eCord eMadres eCacero eHiper ePlan eDeva |
  tl := self titled: 'Ejemplo - Historia argentina compleja'.

  politica := TLLayer titled: 'Política'.
  social := TLLayer titled: 'Movimientos sociales'.
  economia := TLLayer titled: 'Economía'.

  "----- LAYER POLÍTICA -----"

  e73 := politica addEventTitled: 'Elecciones 1973' on: ( Date year: 1973 month: 3 day: 11 ).
  ( e73 searchEventsForTitle: 'Elecciones 1973' ) first
    addDescription: 'Retorno de elecciones libres tras años de proscripción del peronismo.';
    addTag: 'democracia';
    addTag: 'elecciones';
    addBibliography: 'Loris Zanatta, "Perón y el mito de la nación católica".'.

  e76 := politica addEventTitled: 'Golpe de Estado de 1976' on: ( Date year: 1976 month: 3 day: 24 ).
  ( e76 searchEventsForTitle: 'Golpe de Estado de 1976' ) first
    addDescription:
      'Interrupción del gobierno constitucional y comienzo de la última dictadura militar.';
    addTag: 'dictadura';
    addTag: 'terrorismo-de-estado';
    addBibliography: 'CONADEP, "Nunca Más".'.

  e83elec := politica addEventTitled: 'Elecciones de 1983' on: ( Date year: 1983 month: 10 day: 30 ).
  ( e83elec searchEventsForTitle: 'Elecciones de 1983' ) first
    addDescription: 'Elecciones que marcan el fin del ciclo dictatorial y la victoria de Alfonsín.';
    addTag: 'democracia';
    addTag: 'transicion';
    addBibliography: 'Carlos Altamirano (comp.), "La Argentina democrática".'.

  e83ret := politica
              addEventTitled: 'Retorno de la democracia'
              on: ( Date year: 1983 month: 12 day: 10 ).
  ( e83ret searchEventsForTitle: 'Retorno de la democracia' ) first
    addDescription:
      'Asunción del nuevo gobierno constitucional y restablecimiento pleno de las instituciones.';
    addTag: 'democracia';
    addTag: 'derechos-humanos';
    addBibliography: 'Guillermo O Donnell, Transiciones desde un gobierno autoritario'.

  e01 := politica
           addEventTitled: 'Crisis política de diciembre de 2001'
           on: ( Date year: 2001 month: 12 day: 20 ).
  ( e01 searchEventsForTitle: 'Crisis política de diciembre de 2001' ) first
    addDescription: 'Renuncia presidencial en el contexto de la crisis económica y social.';
    addTag: 'crisis-2001';
    addTag: 'renuncia-presidencial';
    addBibliography: 'Luis Alberto Quevedo (comp.), "Diciembre de 2001".'.

  "----- LAYER MOVIMIENTOS SOCIALES -----"

  eCord := social addEventTitled: 'Cordobazo' on: ( Date year: 1969 month: 5 day: 29 ).
  ( eCord searchEventsForTitle: 'Cordobazo' ) first
    addDescription: 'Pueblada obrera y estudiantil en Córdoba contra la dictadura de Onganía.';
    addTag: 'protesta';
    addTag: 'movimiento-obrero';
    addBibliography: 'James, Daniel, "Resistencia e integración".'.

  eMadres := social
               addEventTitled: 'Ronda de las Madres en Plaza de Mayo'
               on: ( Date year: 1977 month: 4 day: 30 ).
  ( eMadres searchEventsForTitle: 'Ronda de las Madres en Plaza de Mayo' ) first
    addDescription:
      'Consolidación de las rondas de Madres de Plaza de Mayo reclamando por los desaparecidos.';
    addTag: 'derechos-humanos';
    addTag: 'dictadura';
    addBibliography: 'Marguerite Feitlowitz, "Diccionario del horror argentino".'.

  eCacero := social
               addEventTitled: 'Cacerolazos de diciembre de 2001'
               on: ( Date year: 2001 month: 12 day: 19 ).
  ( eCacero searchEventsForTitle: 'Cacerolazos de diciembre de 2001' ) first
    addDescription:
      'Protestas masivas urbanas, protagonizadas por sectores medios, con el lema "que se vayan todos".';
    addTag: 'crisis-2001';
    addTag: 'protesta';
    addBibliography: 'Svampa, Maristella, "La sociedad excluyente".'.

  "----- LAYER ECONOMÍA -----"

  eHiper := economia
              addEventTitled: 'Hiperinflación de 1989'
              on: ( Date year: 1989 month: 7 day: 8 ).
  ( eHiper searchEventsForTitle: 'Hiperinflación de 1989' ) first
    addDescription: 'Pico del proceso hiperinflacionario que erosionó salarios y ahorros.';
    addTag: 'inflacion';
    addTag: 'crisis-economica';
    addBibliography: 'Basualdo, Eduardo, "Estudios de historia económica argentina".'.

  ePlan := economia
             addEventTitled: 'Convertibilidad (Plan de 1991)'
             on: ( Date year: 1991 month: 4 day: 1 ).
  ( ePlan searchEventsForTitle: 'Convertibilidad (Plan de 1991)' ) first
    addDescription:
      'Anclaje del peso al dólar que estabilizó precios, a costa de fuerte endeudamiento.';
    addTag: 'convertibilidad';
    addTag: 'modelo-neoliberal';
    addBibliography: 'Gerchunoff y Llach, "El ciclo de la ilusión y el desencanto".'.

  eDeva := economia
             addEventTitled: 'Devaluación y pesificación de 2002'
             on: ( Date year: 2002 month: 1 day: 6 ).
  ( eDeva searchEventsForTitle: 'Devaluación y pesificación de 2002' ) first
    addDescription:
      'Fin de la convertibilidad, fuerte devaluación y reconfiguración del modelo económico tras la crisis 2001.';
    addTag: 'crisis-2001';
    addTag: 'devaluacion';
    addBibliography: 'Machinea, José Luis, "La salida de la convertibilidad".'.

  "Agregar layers al timeline"
  tl layers
    add: politica;
    add: social;
    add: economia.

  ^ tl
]

{ #category : 'instance creation' }
TLTimeline class >> titled: aTitle [

  ^ self new initializeTitled: aTitle
]

{ #category : 'initialization' }
TLTimeline >> addLayerTitled: aTitle [

  layers add: ( TLLayer titled: aTitle )
]

{ #category : 'initialization' }
TLTimeline >> allEvents [

  ^ layers flatCollect: [ :layer | layer events ]
]

{ #category : 'initialization' }
TLTimeline >> eventsSortedByDate [

  ^ self allEvents asSortedCollection: [ :a :b | a date <= b date ]
]

{ #category : 'initialization' }
TLTimeline >> initializeTitled: aTitle [

  timeLineTitle := aTitle.
  layers := OrderedCollection new
]

{ #category : 'initialization' }
TLTimeline >> layerOfEvent: anEvent [

  ^ layers detect: [ :layer | layer events includes: anEvent ] ifNone: [ nil ]
]

{ #category : 'initialization' }
TLTimeline >> layers [

  ^ layers
]

{ #category : 'initialization' }
TLTimeline >> searchLayerForTitle: aTitle [

  ^ layers select: [ :layer | layer title = aTitle ]
]

{ #category : 'accessing' }
TLTimeline >> title [

  ^ timeLineTitle
]
