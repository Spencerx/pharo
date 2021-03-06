Class {
	#name : #SliderPresenterTest,
	#superclass : #SpecSmokeTestCase,
	#category : #'Spec-Tests-Core-Widgets'
}

{ #category : #running }
SliderPresenterTest >> classToTest [
	^ SliderPresenter
]

{ #category : #running }
SliderPresenterTest >> initMinMax [
 presenter min: 0;
		max: 100
]

{ #category : #tests }
SliderPresenterTest >> testAbsoluteValue [
	self initMinMax.
	presenter absoluteValue: 0.5.
	self assert: presenter value == 50
]

{ #category : #tests }
SliderPresenterTest >> testAbsoluteValueToValueScales [
	self initMinMax.
	self assert:  (presenter absoluteValueToValue: 0.5) equals: 50
]

{ #category : #tests }
SliderPresenterTest >> testReset [
	self initMinMax.
	presenter
		value: 50;
		reset.
	self assert: presenter value == 0
]

{ #category : #tests }
SliderPresenterTest >> testValueToAbsoluteValueScales [
	self initMinMax.
	self assert:  (presenter valueToAbsoluteValue: 50) equals: 0.5
]
