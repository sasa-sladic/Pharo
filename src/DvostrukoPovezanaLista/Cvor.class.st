Class {
	#name : #Cvor,
	#superclass : #Object,
	#instVars : [
		'vrednost',
		'prethodniCvor',
		'sledeciCvor'
	],
	#category : #DvostrukoPovezanaLista
}

{ #category : #accessing }
Cvor class >> value: anObject [

	^ self new vrednost: anObject.
]

{ #category : #accessing }
Cvor >> prethodniCvor [

	^ prethodniCvor.
]

{ #category : #accessing }
Cvor >> prethodniCvor: aCvor [

	prethodniCvor := aCvor.
]

{ #category : #accessing }
Cvor >> printOn: aStream [ 
	super printOn: aStream.
	aStream nextPut: $(.
	aStream print: vrednost.
	aStream nextPut: $).
]

{ #category : #accessing }
Cvor >> sledeciCvor [

	^ sledeciCvor.
]

{ #category : #accessing }
Cvor >> sledeciCvor: aCvor [

	sledeciCvor := aCvor.
]

{ #category : #accessing }
Cvor >> vrednost [

	^ vrednost.
]

{ #category : #accessing }
Cvor >> vrednost: aObject [

	vrednost := aObject.
]
