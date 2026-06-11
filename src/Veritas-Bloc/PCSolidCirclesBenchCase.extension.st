Extension { #name : 'PCSolidCirclesBenchCase' }

{ #category : '*Veritas-Bloc' }
PCSolidCirclesBenchCase >> newElement [
	"Answer the Bloc element to be added to the root of the space to setup the benchmark scenario."

	^ BlElement new
        position: 100 asPoint;
        extent: 100 asPoint;
        border: (BlBorder paint: Color gray width: 4);
        addAnimation: (self newSteppingAnimation);
        yourself
]

{ #category : '*Veritas-Bloc' }
PCSolidCirclesBenchCase >> newSteppingAnimation [

    | colorGenerator |
    colorGenerator := Generator on: [ :generator | 
        | nextIndex wheel |

        nextIndex := 1.
        wheel := Color wheel: 50.
        [ generator yield: (wheel at: nextIndex).
        nextIndex := (nextIndex + 1) \\ wheel size + 1 ] repeat ].

    ^ BlNumberTransition new
          from: 0;
          to: 1;
          onStepDo: [ :t :element |
            element background: colorGenerator next ];
          beInfinite;
          yourself
]
