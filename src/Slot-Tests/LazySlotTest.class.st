Class {
	#name : #LazySlotTest,
	#superclass : #SlotSilentTest,
	#category : #'Slot-Tests-Examples'
}

{ #category : #tests }
LazySlotTest >> testLazySlotCompiled [
	| slot object|
	slot := #slot1 => LazySlot default: 5 .
	aClass := self make: [ :builder | builder slots: {slot}].

	object := aClass new.
	"now compile an accessor and read"
	self compileAccessorsFor: slot.
	self assert: object slot1 equals: 5.
	

	
]

{ #category : #tests }
LazySlotTest >> testLazySlotReadReflective [
	| slot object|
	slot := #slot1 => LazySlot default: 5 .
	aClass := self make: [ :builder | builder slots: {slot } ].
	
	"test refletive write and read"
	object := aClass new.

	self assert: (slot read: object) equals: 5.
	slot write: 10 to: object.
	self assert: (slot read: object) equals: 10.
	
	
	
	
	
]
