baselines
baseline: spec
	<baseline>
	
	spec
		for: #common
		do: [ 
	  		spec
				baseline: 'Seaside3'
				with: [
					spec
		  				repository: 'github://SeasideSt/Seaside:master/repository';
						loads:'JSON' ].
			
			spec
				package: 'Json-WebToken'
				with: [ spec requires: #('Cryptography' 'Seaside3') ].
				
			spec 
				group: 'default' with: #('Json-WebToken' 'Seaside3') ].
			
	spec 
		for: #pharo
		do: [ 
  			spec
				baseline: 'Cryptography'
				with:[ 
					spec
  						repository: 'github://pharo-contributions/Cryptography/source' ] ].
		
	spec
		for: #gemstone
		do: [  
			spec
				baseline: 'Cryptography'
   				with: [ spec repository: 'github://GsDevKit/Cryptography:master/repository' ].
			spec
				baseline: 'PharoCompatibility'
      			with: [ 
					spec 
						repository: 'github://glassdb/PharoCompatibility:master/repository';
      					loads: 'Core' ].
				
			spec 
				group: 'default' with: #('PharoCompatibility')
			
			 ]
