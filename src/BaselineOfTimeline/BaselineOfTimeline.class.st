Class {
	#name : 'BaselineOfTimeline',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfTimeline',
	#package : 'BaselineOfTimeline'
}

{ #category : 'baselines' }
BaselineOfTimeline >> baseline: spec [

  <baseline>
  spec for: #common do: [
      self setUpDependencies: spec.
      spec
        package: 'Timeline-Model' with: [ spec requires: #( 'Chalten' ) ];
        package: 'Timeline-Tests' with: [ spec requires: #( 'Timeline-Model' ) ].

      spec
        group: 'default' with: #( 'core' 'tests' );
        group: 'core' with: #( 'Timeline-Model' );
        group: 'tests' with: #( 'Timeline-Tests' )
    ]
]

{ #category : 'baselines' }
BaselineOfTimeline >> setUpDependencies: spec [

  spec
    baseline: 'Chalten' with: [
        spec
          repository: 'github://ba-st/Chalten:v10.0.0/source';
          loads: #( 'Chalten-Gregorian-Calendar' )
      ];
    import: 'Chalten'
]
