testing jwt encoding
testBase64UrlEncodeDecode
	| testString encodedString |
	testString := 'Tesing the base64 encoding'.
	
	encodedString := JWT new base64UrlEncoded: testString.
	self assert: (JWT new base64UrlDecoded: encodedString) = testString.