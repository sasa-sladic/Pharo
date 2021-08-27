Class {
	#name : #ListaTestovi,
	#superclass : #TestCase,
	#category : #DvostrukoPovezanaListaTestovi
}

{ #category : #tests }
ListaTestovi >> testDodajNaKraj [

	| lista |
	lista := Lista new.
	lista dodajNaKraj:  3.
	lista dodajNaKraj:  7.
	lista dodajNaKraj:  1.
	self assert: lista poslednji equals: 1.
]

{ #category : #tests }
ListaTestovi >> testDodajNaPocetak [

	| lista |
	lista := Lista new.
	1 to: 3 do: [ :each | lista dodajNaPocetak: each ].
	lista dodajNaPocetak: 7.
	self assert: lista prvi equals: 7.
]

{ #category : #tests }
ListaTestovi >> testDodajPosleCvora [

	| lista cvor |
	lista := Lista new.
	lista dodajNaKraj: 1.
	cvor := lista dodajNaKraj: 2.
	lista dodajNaKraj: 4.
	lista dodaj: 3 posleCvora: cvor.
	self assert: lista prebaciUNizOdPrvog equals: #(1 2 3 4).
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

{ #category : #tests }
ListaTestovi >> testObrisiPoslednjiCvor [

	| lista cvor |
	lista := Lista new.
	lista dodajNaKraj:  1.
	lista dodajNaKraj:  2.
	cvor := lista dodajNaKraj:  3.
	lista obrisiCvor: cvor.
	self assert: lista prebaciUNizOdPrvog equals: #(1 2).
]

{ #category : #tests }
ListaTestovi >> testObrisiPrviCvor [

	| lista cvor |
	lista := Lista new.
	cvor := lista dodajNaKraj: 1.
	lista dodajNaKraj:  2.
	lista dodajNaKraj:  3.
	lista obrisiCvor: cvor.
	self assert: lista prebaciUNizOdPrvog equals: #(2 3).
]

{ #category : #tests }
ListaTestovi >> testObrisiUnutrasnjiCvor [

	| lista cvor |
	lista := Lista new.
	lista dodajNaKraj:  1.
	cvor := lista dodajNaKraj:  2.
	lista dodajNaKraj:  3.
	lista obrisiCvor: cvor.
	self assert: lista prebaciUNizOdPrvog equals: #(1 3).
]

{ #category : #tests }
ListaTestovi >> testOdPoslednjegDoPrvog [

	| lista niz |
	lista := Lista new.
	1 to: 5 do: [ :each | lista dodajNaKraj: each ].
	niz := lista prebaciUNizOdPoslednjeg.
	self assert: niz equals: #(5 4 3 2 1)
]

{ #category : #tests }
ListaTestovi >> testOdPrvogDoPoslednjeg [

	| lista niz |
	lista := Lista new.
	1 to: 5 do: [ :each | lista dodajNaKraj: each ].
	niz := lista prebaciUNizOdPrvog.
	self assert: niz equals: #(1 2 3 4 5)
]
