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
Lista >> dodajNaPocetak: anObject [
	
	|noviCvor|
	noviCvor := anObject asCvor.
	noviCvor sledeciCvor: prvi.
	prvi := noviCvor.
	poslednji vrednost ifNotNil: [ prvi sledeciCvor prethodniCvor: noviCvor ] ifNil:  [ poslednji  := noviCvor ].
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
	prvi  := Cvor new.
	poslednji  := Cvor new.
	prvi sledeciCvor: poslednji.
	poslednji prethodniCvor: prvi.
]

{ #category : #initialization }
Lista >> isEmpty [

	^ prvi vrednost isNil and: [ poslednji vrednost isNil ]
]

{ #category : #initialization }
Lista >> poslednji [
	
	^ poslednji vrednost
]

{ #category : #initialization }
Lista >> prvi [
	
	^ prvi vrednost
]
