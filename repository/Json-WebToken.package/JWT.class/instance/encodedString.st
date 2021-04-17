accessing
encodedString
	| content signature encoder |
	encoder := GRCodec forEncoding: 'utf-8'.
	content := self base64UrlEncoded: (encoder encode: headerfields asJson). 
	content := content,'.',(self base64UrlEncoded: (encoder encode: payload asJson)).
	signature := self base64UrlEncoded: (self signatureOf: content).

	^ content , '.', signature.