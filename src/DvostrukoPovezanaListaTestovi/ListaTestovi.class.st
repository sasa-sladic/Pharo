Class {
	#name : #ListaTestovi,
	#superclass : #TestCase,
	#category : #DvostrukoPovezanaListaTestovi
}

{ #category : #tests }
ListaTestovi >> testDodajNaPocetak [

	| lista |
	lista := Lista new.
	1 to: 3 do: [ :each | lista dodajNaPocetak: each ].
	lista dodajNaPocetak: 7.
	self assert: lista prvi equals: 7.
]

{ #category : #tests }
ListaTestovi >> testDuzina [

	| lista |
	lista := Lista new.
	1 to: 10 do: [ :each | lista dodajNaPocetak: each ].
	self assert: lista duzina equals: 10.
]

{ #category : #tests }
ListaTestovi >> testIsEmpty [

	| lista |
	lista := Lista new.
	self assert: lista isEmpty.
]
