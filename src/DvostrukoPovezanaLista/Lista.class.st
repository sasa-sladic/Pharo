Class {
	#name : #Lista,
	#superclass : #Object,
	#instVars : [
		'prvi',
		'poslednji',
		'duzina'
	],
	#category : #DvostrukoPovezanaLista
}

{ #category : #initialization }
Lista >> dodaj: anObject posleCvora: stariCvor [
	
	|noviCvor|
	stariCvor = poslednji ifTrue: [ ^ self dodajNaKraj: anObject ].
	noviCvor := anObject asCvor.
	noviCvor sledeciCvor: stariCvor sledeciCvor.
	stariCvor sledeciCvor: noviCvor.
	noviCvor prethodniCvor: noviCvor sledeciCvor prethodniCvor.
	noviCvor sledeciCvor prethodniCvor: noviCvor.
	duzina := duzina + 1.
	^ noviCvor
]

{ #category : #initialization }
Lista >> dodajNaKraj: anObject [
	
	|noviCvor|
	noviCvor := anObject asCvor.
	noviCvor prethodniCvor: poslednji.
	poslednji := noviCvor.
	prvi ifNotNil: [ poslednji prethodniCvor sledeciCvor: noviCvor ] ifNil:  [ prvi  := noviCvor ].
	duzina := duzina + 1.
	^ noviCvor
]

{ #category : #initialization }
Lista >> dodajNaPocetak: anObject [
	
	|noviCvor|
	noviCvor := anObject asCvor.
	noviCvor sledeciCvor: prvi.
	prvi := noviCvor.
	poslednji ifNotNil: [ prvi sledeciCvor prethodniCvor: noviCvor ] ifNil:  [ poslednji  := noviCvor ].
	duzina := duzina + 1.
	^ noviCvor
]

{ #category : #initialization }
Lista >> duzina [
	
	^ duzina
]

{ #category : #initialization }
Lista >> initialize [
	
	super initialize.
	duzina  := 0.
]

{ #category : #initialization }
Lista >> isEmpty [

	^ prvi isNil and: [ poslednji isNil ]
]

{ #category : #initialization }
Lista >> obrisiCvor: aCvor [
	
	duzina := duzina - 1.
	aCvor prethodniCvor ifNil: [ 
		aCvor sledeciCvor prethodniCvor: nil.
		prvi := aCvor sledeciCvor.
		^ duzina
	].
	aCvor sledeciCvor ifNil: [ 
		aCvor prethodniCvor sledeciCvor: nil.
		poslednji := aCvor prethodniCvor.
		^ duzina.
	].
	aCvor prethodniCvor sledeciCvor: aCvor sledeciCvor.
	aCvor sledeciCvor prethodniCvor: aCvor prethodniCvor.
	^ duzina.
]

{ #category : #initialization }
Lista >> poslednji [
	
	^ poslednji vrednost
]

{ #category : #initialization }
Lista >> prebaciUNizOdPoslednjeg [
	
	| trenutniCvor brojac niz |
	trenutniCvor := poslednji.
	brojac := 0.
	niz := Array new: duzina.
	[ brojac == duzina ] 
		whileFalse: [ 
			brojac := brojac + 1.
	 		niz at: brojac put: trenutniCvor vrednost.
			trenutniCvor := trenutniCvor prethodniCvor.
			].
	^ niz.
]

{ #category : #initialization }
Lista >> prebaciUNizOdPrvog [
	
	| trenutniCvor brojac niz |
	trenutniCvor := prvi.
	brojac := 0.
	niz := Array new: duzina.
	[ brojac == duzina ] 
		whileFalse: [ 
			brojac := brojac + 1.
	 		niz at: brojac put: trenutniCvor vrednost.
			trenutniCvor := trenutniCvor sledeciCvor.
			].
	^ niz.
]

{ #category : #initialization }
Lista >> prvi [
	
	^ prvi vrednost
]
