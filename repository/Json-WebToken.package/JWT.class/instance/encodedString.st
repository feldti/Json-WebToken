accessing
encodedString
	| content signature |
	content := self base64UrlEncoded: headerfields asJson. 
	content := content,'.',(self base64UrlEncoded: payload asJson).
	signature := self base64UrlEncoded: (self signatureOf: content).

	^ content , '.', signature.