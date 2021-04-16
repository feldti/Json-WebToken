private
jsonSyntaxErrorException
	"Takes into account the name change from JSJson to WAJson in Seaside 3.x"
	^ Smalltalk at: #WAJsonSyntaxError ifAbsent:[ Smalltalk at: #JsJsonSyntaxError ]