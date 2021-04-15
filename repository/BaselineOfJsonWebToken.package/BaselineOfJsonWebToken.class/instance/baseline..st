baselines
baseline: spec
	<baseline>
	
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec
				package: 'Json-WebToken'
				with: [ spec requires: #('Cryptography') ].
				
			spec group: 'default' with: #('Json-WebToken') ].
			
	spec 
		for: #pharo
		do: [ 
  			spec
				baseline: 'Cryptography';
  				repository: 'github://pharo-contributions/Cryptography/source' ].
		
	spec
		for: #gemstone
		do: [  
			spec
				baseline: 'Cryptography';
   				repository: 'github://GsDevKit/Cryptography:master/repository' ]