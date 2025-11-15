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
        package: 'Timeline-Web' with: [ spec requires: #( 'Timeline-Model' 'Seaside3' ) ];
        package: 'Timeline-Tests' with: [ spec requires: #( 'Timeline-Model' ) ].

      spec
        group: 'core' with: #( 'Timeline-Model' );
        group: 'tests' with: #( 'Timeline-Tests' );
        group: 'web' with: #( 'Timeline-Web' );
        group: 'default' with: #( 'core' 'tests' 'web' )
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
    import: 'Chalten'.
  spec
    baseline: 'Seaside3' with: [
        spec
          repository: 'github://SeasideSt/Seaside:v3.4.5/repository';
          loads: #( 'Base' )
      ];
    import: 'Seaside3'
]
